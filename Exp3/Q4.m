clc
clear all
close all
temp= [58 73 73 53 50 48 56 73 73 66 69 63 74 82 84 91 93 89 91	80 59 69 56 64 63 66 64 74 63 69];
above75=0;
btwn60_80=0;
btwn50_60=0;
for i=1:numel(temp)
    if temp(i)>75
        above75= above75+1;
  
    else if(temp(i)>=60 && temp(i)<=80)
            btwn60_80= btwn60_80+1;
           
    else if(temp(i)>=50 && temp(i)<=60)
            btwn50_60= btwn50_60+1;
        end
        end
    end
end

disp('Count of numbers above 75= ')
disp(above75)

disp('Count of numbers between 60 and 80= ')
disp(btwn60_80)

disp('Count of numbers between 50 and 60= ')
disp(btwn50_60)