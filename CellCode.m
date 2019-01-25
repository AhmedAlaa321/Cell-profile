I= imread('E:\cell folder\cell.jpg');
m=rgb2gray(I);
[height,width]=size(m);
for x=1:height
    for y=1:width
        if(m(x,y)<240)
            j(x,y)=0;
        else
            j(x,y)=255;
        end
    end
end
n=im2bw(m);
l=bwlabel(n);
[l,num]=bwlabel(n);

% for i=1:num
%     A(i)=stats(i).Area;
% end

% [~,A_max]=max(A);
% l(l~=A_max)=0;
% l(l==A_max)=1;
BW2=n.*im2bw(l);

figure,subplot(221),imshow(I),title('original picture'),
subplot(222),imshow(m),title('gray value image'),
subplot(223),imshow(j),title('binary value image'),
subplot(224),imshow(BW2),title('neucleus');
