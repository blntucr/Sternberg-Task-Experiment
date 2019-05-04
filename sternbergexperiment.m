clc
clear all
letter_list = {'B', 'C', 'ÁD', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'X','Y','Z'};
color_list = {'red', 'green'};
trial_count = 30;
for i  = 1:trial_count       
    for j=1:8   
        temp1(i,j) = randperm(numel(letter_list),1);
        rndmLetter(i,j) =  letter_list(1,temp1(i,j));
         
    end
    for k=1:8
        temp2(i,k) = randperm(numel(color_list),1);
        rndmColor(i,k) = color_list(1,temp2(i,k));
        
    end
    maintenance(i,1) = (4-2).*rand(1,1,'double')+2;
end
H = rndmLetter(2,:);
for m=1:trial_count
    temp3(1,m) = randperm(numel(rndmLetter(m,:)),1);
    c = rndmLetter(m,temp3(1,m));
    rndmProbe(1,m) = c;
    UrndmProbe = transpose(rndmProbe);
    if temp2(m,temp3(1,m)) == 1
        corrAns(m,1) = {'left'};
        
    end
    if temp2(m,temp3(1,m)) == 2
        corrAns(m,1) = {'right'};
        end
end
maint = num2cell(maintenance);
A = [rndmLetter rndmColor maint UrndmProbe corrAns];
xlswrite('TRIAL', A);






    

        