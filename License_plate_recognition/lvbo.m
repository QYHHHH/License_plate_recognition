function CuDingWeiErZhi = lvbo(Image);  
[y,x]=size(Image);%size������������������ص���һ�������������������������ص��ڶ����������
Image=double(Image);
%%%%%%%%%ȷ���е���ʼλ�ú���ֹλ��%%%%%%%%%%%
Y1=zeros(y,1);%����y��1��ȫ������
for i=1:y
    for j=1:x
        if(Image(i,j)==1)
            Y1(i,1)= Y1(i,1)+1;%��ɫ���ص�ͳ��
        end
    end
end
[temp,MaxY]=max(Y1);%Y����������ȷ��������������temp��MaxY��temp������¼Y1��ÿ�е����ֵ��MaxY������¼Y1ÿ�����ֵ���к�
PY1=MaxY;
while ((Y1(PY1,1)>=50)&&(PY1>1))%����ߵ㿪ʼ�������ұ߽�
        PY1=PY1-1;
end
PY2=MaxY;
while ((Y1(PY2,1)>=50)&&(PY2<y))
        PY2=PY2+1;
end
IY=Image(PY1:PY2,:,:);
%%%%%%%%%%���ƴֶ�λ֮��ȷ���е���ʼλ�ú���ֹλ��%%%%%%%%%%%
%%%%%%%%%%���зָͬ����Ǵ��������м���%%%%%%%%%%%%%%
X1=zeros(1,x);%����1��x��ȫ������
for j=1:x
    for i=PY1:PY2
        if(Image(i,j)==1)
                X1(1,j)= X1(1,j)+1;               
         end  
    end       
end

PX1=1;
while ((X1(1,PX1)<10)&&(PX1<x))
       PX1=PX1+1;
end    
PX3=x;
while ((X1(1,PX3)<10)&&(PX3>PX1))
        PX3=PX3-1;
end
CuDingWeiErZhi=Image(PY1:PY2,PX1:PX3);

