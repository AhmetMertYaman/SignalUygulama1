%% A ��kk�
clc
clear all
close all
alfa=1;
beta=0.05;


prompt = 'Hangi g�ndeki dozaj� istiyorsunuz?';
n = input(prompt);

dozaj(n);

%hangi g�ndeki dozaj� istiyorsunuz?
%how to take input in matlab?
%375. g�ndeki dozaj miktar� .. mg'd�r.
%% B ��kk�


%% C ��kk�
%Recursive
function result=dozaj(n)
alfa=1
beta=0.05
    if(n<=1)
        result=alfa
    else
        result=alfa+beta*dozaj(n-1)
    end
end




%C ��kk� farkl� ��z�m yolu denemesi
%Recursive ve iterative
clc
clear all
close all
prompt = 'Hangi g�ndeki dozaj� istiyorsunuz?';
n = input(prompt);

alfa=1;
beta=0.5;
if (n<=2)
   result=alfa;
else
    for i=3:n
        a2=beta*alfa
        temp=alfa;
        alfa=alfa+a2;
        a2=temp;
    end
    result=a2;
end
sonuc=dozaj(n);
fprintf('Recursive: %f \n',sonuc)
fprintf('Iterative: %f \n',result)
