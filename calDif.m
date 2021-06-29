%保证img1和img2两个尺寸相同
function [dif]=calDif(img1,img2)
    size1=size(img1);
    size2=size(img2);
    if size1(1)~=size2(1)
        dif=-1;
        return;
    end
    if size1(2)~=size2(2)
        dif=-1;
        return;
    end
    dif_=0;
    dif=0;
    for i=1:size1(1)
        for j=1:size1(2)
            dif_=(double(img1(i,j))-double(img2(i,j)))^2;
            dif=dif+dif_;
        end
    end
    dif=dif/size1(1)/size1(2);
    
end