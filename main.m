%% A Þýkký
clc
clear all
close all
alfa=1;
beta=0.05;


prompt = 'Hangi gündeki dozajý istiyorsunuz?';
n = input(prompt);

dozaj(n);

%hangi gündeki dozajý istiyorsunuz?
%how to take input in matlab?
%375. gündeki dozaj miktarý .. mg'dýr.
%% B þýkký


%% C þýkký
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




%C þýkký farklý çözüm yolu denemesi
%Recursive ve iterative
clc
clear all
close all
prompt = 'Hangi gündeki dozajý istiyorsunuz?';
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
