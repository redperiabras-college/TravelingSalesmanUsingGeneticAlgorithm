function [ ] = DisplayResult( best_chromosome )
%Display Summary of this function goes here
%   Detailed explanation goes here
    data = [[2,5];[0,8];[7,4];[1,9];[6,3];[5,0];[4,8];[2,6];[10,2];[4,9]];
    x=[];
    y=[];
    
    for dna = 1:length(best_chromosome)
        data_link = best_chromosome(dna);
        x = cat(2,x,data(data_link,1));
        y = cat(2,y,data(data_link,2));
    end
    
    plot(x, y);
end

