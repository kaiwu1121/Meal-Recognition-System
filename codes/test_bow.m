list_apple=dir('..\images\test\apple\*.jpg');
[lar, lac]=size(list_apple);
list_banana=dir('..\images\test\banana\*.jpg');
[lbr, lbc]=size(list_banana);
list_broccoli=dir('..\images\test\broccoli\*.jpg');
[lbrr, lbrc]=size(list_broccoli);
list_burger=dir('..\images\test\burger\*.jpg');
[lbur, lbuc]=size(list_burger);
list_fries=dir('..\images\test\fries\*.jpg');
[lfr, lfc]=size(list_fries);
list_hotdog=dir('..\images\test\hotdog\*.jpg');
[lhr, lhc]=size(list_hotdog);
list_pizza=dir('..\images\test\pizza\*.jpg');
[lpr, lpc]=size(list_pizza);
list_rice=dir('..\images\test\rice\*.jpg');
[lrr, lrc]=size(list_rice);
list_salad=dir('..\images\test\salad\*.jpg');
[lsr, lsc]=size(list_salad);
list_strawberry=dir('..\images\test\strawberry\*.jpg');
[lstr, lstc]=size(list_strawberry);


cd('..\images\test\apple\');
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
        test_feature=bin;
        test_type=type_matrix(:,1);
    else
        test_feature=[test_feature,bin];
        test_type=[test_type,type_matrix(:,1)];
    end
end

cd('..\images\test\banana\');
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
    test_feature=[test_feature,bin];
    test_type=[test_type,type_matrix(:,2)];
end

cd('..\images\test\broccoli\');
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
    test_feature=[test_feature,bin];
    test_type=[test_type,type_matrix(:,3)];
end

cd('..\images\test\burger\');
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
    test_feature=[test_feature,bin];
    test_type=[test_type,type_matrix(:,4)];
end

cd('..\images\test\fries\');
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
    test_feature=[test_feature,bin];
    test_type=[test_type,type_matrix(:,5)];
end

cd('..\images\test\hotdog\');
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
    test_feature=[test_feature,bin];
    test_type=[test_type,type_matrix(:,6)];
end

cd('..\images\test\pizza\');
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
    test_feature=[test_feature,bin];
    test_type=[test_type,type_matrix(:,7)];
end

cd('..\images\test\rice\');
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
    test_feature=[test_feature,bin];
    test_type=[test_type,type_matrix(:,8)];
end

cd('..\images\test\salad\');
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
    test_feature=[test_feature,bin];
    test_type=[test_type,type_matrix(:,9)];
end

cd('..\images\test\strawberry\');
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
    test_feature=[test_feature,bin];
    test_type=[test_type,type_matrix(:,10)];
end

ttest_type=net(test_feature);
plotconfusion(test_type, ttest_type);