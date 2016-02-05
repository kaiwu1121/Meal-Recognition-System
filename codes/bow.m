type_num=10;
bin_size=100;

list_apple=dir('..\images\apple\*.jpg');
[lar, lac]=size(list_apple);
list_banana=dir('..\images\banana\*.jpg');
[lbr, lbc]=size(list_banana);
list_broccoli=dir('..\images\broccoli\*.jpg');
[lbrr, lbrc]=size(list_broccoli);
list_burger=dir('..\images\burger\*.jpg');
[lbur, lbuc]=size(list_burger);
list_fries=dir('..\images\fries\*.jpg');
[lfr, lfc]=size(list_fries);
list_hotdog=dir('..\images\hotdog\*.jpg');
[lhr, lhc]=size(list_hotdog);
list_pizza=dir('..\images\pizza\*.jpg');
[lpr, lpc]=size(list_pizza);
list_rice=dir('..\images\rice\*.jpg');
[lrr, lrc]=size(list_rice);
list_salad=dir('..\images\salad\*.jpg');
[lsr, lsc]=size(list_salad);
list_strawberry=dir('..\images\strawberry\*.jpg');
[lstr, lstc]=size(list_strawberry);

cd('..\images\apple\');
for i=1:lar
    if i==1;
        [image, total_descriptor, locs]=sift(list_apple(i).name);
    else
        [image, descriptor, locs]=sift(list_apple(i).name);
        total_descriptor=[total_descriptor; descriptor];
    end
    
end

cd('..\images\banana\');
for i=1:lbr
    [image, descriptor, locs]=sift(list_banana(i).name);
    total_descriptor=[total_descriptor; descriptor];
    
end

cd('..\images\broccoli\');
for i=1:lbrr
    [image, descriptor, locs]=sift(list_broccoli(i).name);
    total_descriptor=[total_descriptor; descriptor];
end

cd('..\images\burger\');
for i=1:lbur
    [image, descriptor, locs]=sift(list_burger(i).name);
    total_descriptor=[total_descriptor; descriptor];
end

cd('..\images\fries\');
for i=1:lfr
    [image, descriptor, locs]=sift(list_fries(i).name);
    total_descriptor=[total_descriptor; descriptor];
end

cd('..\images\hotdog\');
for i=1:lhr
    [image, descriptor, locs]=sift(list_hotdog(i).name);
    total_descriptor=[total_descriptor; descriptor];
end

cd('..\images\pizza\');
for i=1:lpr
    [image, descriptor, locs]=sift(list_pizza(i).name);
    total_descriptor=[total_descriptor; descriptor];
end

cd('..\images\rice\');
for i=1:lrr
    [image, descriptor, locs]=sift(list_rice(i).name);
    total_descriptor=[total_descriptor; descriptor];
end

cd('..\images\salad\');
for i=1:lsr
    [image, descriptor, locs]=sift(list_salad(i).name);
    total_descriptor=[total_descriptor; descriptor];
end

cd('..\images\strawberry\');
for i=1:lstr
    [image, descriptor, locs]=sift(list_strawberry(i).name);
    total_descriptor=[total_descriptor; descriptor];
end

[idx, c]=kmeans(total_descriptor, bin_size,'MaxIter',500);
type_matrix=eye(type_num);

cd('..\images\apple\');
for i=1:lar
    [image, descriptor, locs]=sift(list_apple(i).name);
    bin=zeros(bin_size,1);
    dist=zeros(bin_size,1);
    [dr, dc]=size(descriptor);
    for j=1:dr
        for k=1:bin_size
            for l=1:dc
                dist(k,1)=dist(k,1)+(descriptor(j,l)-c(k,l))^2;
                dist(k,1)=sqrt(dist(k,1));
            end
        end
        [mv,id]=min(dist);
        bin(id)=bin(id)+1;
    end
    for j=1:bin_size
        bin(j)=bin(j)/dr;
    end
    if i==1
        feature=bin;
        type=type_matrix(:,1);
    else
        feature=[feature,bin];
        type=[type,type_matrix(:,1)];
    end
end

cd('..\images\banana\');
for i=1:lbr
    [image, descriptor, locs]=sift(list_banana(i).name);
    bin=zeros(bin_size,1);
    dist=zeros(bin_size,1);
    [dr, dc]=size(descriptor);
    for j=1:dr
        for k=1:bin_size
            for l=1:dc
                dist(k,1)=dist(k,1)+(descriptor(j,l)-c(k,l))^2;
                dist(k,1)=sqrt(dist(k,1));
            end
        end
        [mv,id]=min(dist);
        bin(id)=bin(id)+1;
    end
    for j=1:bin_size
        bin(j)=bin(j)/dr;
    end
    feature=[feature,bin];
    type=[type,type_matrix(:,2)];
end

cd('..\images\broccoli\');
for i=1:lbrr
    [image, descriptor, locs]=sift(list_broccoli(i).name);
    bin=zeros(bin_size,1);
    dist=zeros(bin_size,1);
    [dr, dc]=size(descriptor);
    for j=1:dr
        for k=1:bin_size
            for l=1:dc
                dist(k,1)=dist(k,1)+(descriptor(j,l)-c(k,l))^2;
                dist(k,1)=sqrt(dist(k,1));
            end
        end
        [mv,id]=min(dist);
        bin(id)=bin(id)+1;
    end
    for j=1:bin_size
        bin(j)=bin(j)/dr;
    end
    feature=[feature,bin];
    type=[type,type_matrix(:,3)];
end

cd('..\images\burger\');
for i=1:lbur
    [image, descriptor, locs]=sift(list_burger(i).name);
    bin=zeros(bin_size,1);
    dist=zeros(bin_size,1);
    [dr, dc]=size(descriptor);
    for j=1:dr
        for k=1:bin_size
            for l=1:dc
                dist(k,1)=dist(k,1)+(descriptor(j,l)-c(k,l))^2;
                dist(k,1)=sqrt(dist(k,1));
            end
        end
        [mv,id]=min(dist);
        bin(id)=bin(id)+1;
    end
    for j=1:bin_size
        bin(j)=bin(j)/dr;
    end
    feature=[feature,bin];
    type=[type,type_matrix(:,4)];
end

cd('..\images\fries\');
for i=1:lfr
    [image, descriptor, locs]=sift(list_fries(i).name);
    bin=zeros(bin_size,1);
    dist=zeros(bin_size,1);
    [dr, dc]=size(descriptor);
    for j=1:dr
        for k=1:bin_size
            for l=1:dc
                dist(k,1)=dist(k,1)+(descriptor(j,l)-c(k,l))^2;
                dist(k,1)=sqrt(dist(k,1));
            end
        end
        [mv,id]=min(dist);
        bin(id)=bin(id)+1;
    end
    for j=1:bin_size
        bin(j)=bin(j)/dr;
    end
    feature=[feature,bin];
    type=[type,type_matrix(:,5)];
end

cd('..\images\hotdog\');
for i=1:lhr
    [image, descriptor, locs]=sift(list_hotdog(i).name);
    bin=zeros(bin_size,1);
    dist=zeros(bin_size,1);
    [dr, dc]=size(descriptor);
    for j=1:dr
        for k=1:bin_size
            for l=1:dc
                dist(k,1)=dist(k,1)+(descriptor(j,l)-c(k,l))^2;
                dist(k,1)=sqrt(dist(k,1));
            end
        end
        [mv,id]=min(dist);
        bin(id)=bin(id)+1;
    end
    for j=1:bin_size
        bin(j)=bin(j)/dr;
    end
    feature=[feature,bin];
    type=[type,type_matrix(:,6)];
end

cd('..\images\pizza\');
for i=1:lpr
    [image, descriptor, locs]=sift(list_pizza(i).name);
    bin=zeros(bin_size,1);
    dist=zeros(bin_size,1);
    [dr, dc]=size(descriptor);
    for j=1:dr
        for k=1:bin_size
            for l=1:dc
                dist(k,1)=dist(k,1)+(descriptor(j,l)-c(k,l))^2;
                dist(k,1)=sqrt(dist(k,1));
            end
        end
        [mv,id]=min(dist);
        bin(id)=bin(id)+1;
    end
    for j=1:bin_size
        bin(j)=bin(j)/dr;
    end
    feature=[feature,bin];
    type=[type,type_matrix(:,7)];
end

cd('..\images\rice\');
for i=1:lrr
    [image, descriptor, locs]=sift(list_rice(i).name);
    bin=zeros(bin_size,1);
    dist=zeros(bin_size,1);
    [dr, dc]=size(descriptor);
    for j=1:dr
        for k=1:bin_size
            for l=1:dc
                dist(k,1)=dist(k,1)+(descriptor(j,l)-c(k,l))^2;
                dist(k,1)=sqrt(dist(k,1));
            end
        end
        [mv,id]=min(dist);
        bin(id)=bin(id)+1;
    end
    for j=1:bin_size
        bin(j)=bin(j)/dr;
    end
    feature=[feature,bin];
    type=[type,type_matrix(:,8)];
end

cd('..\images\salad\');
for i=1:lsr
    [image, descriptor, locs]=sift(list_salad(i).name);
    bin=zeros(bin_size,1);
    dist=zeros(bin_size,1);
    [dr, dc]=size(descriptor);
    for j=1:dr
        for k=1:bin_size
            for l=1:dc
                dist(k,1)=dist(k,1)+(descriptor(j,l)-c(k,l))^2;
                dist(k,1)=sqrt(dist(k,1));
            end
        end
        [mv,id]=min(dist);
        bin(id)=bin(id)+1;
    end
    for j=1:bin_size
        bin(j)=bin(j)/dr;
    end
    feature=[feature,bin];
    type=[type,type_matrix(:,9)];
end

cd('..\images\strawberry\');
for i=1:lstr
    [image, descriptor, locs]=sift(list_strawberry(i).name);
    bin=zeros(bin_size,1);
    dist=zeros(bin_size,1);
    [dr, dc]=size(descriptor);
    for j=1:dr
        for k=1:bin_size
            for l=1:dc
                dist(k,1)=dist(k,1)+(descriptor(j,l)-c(k,l))^2;
                dist(k,1)=sqrt(dist(k,1));
            end
        end
        [mv,id]=min(dist);
        bin(id)=bin(id)+1;
    end
    for j=1:bin_size
        bin(j)=bin(j)/dr;
    end
    feature=[feature,bin];
    type=[type,type_matrix(:,10)];
end

size(feature)
size(type)

setdemorandstream(491218382)
net = patternnet(500);
[net,tr] = train(net,feature,type);
ttype = net(feature);
plotconfusion(type,ttype);
