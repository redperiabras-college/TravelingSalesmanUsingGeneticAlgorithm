function [ score ] = Fitness( chromosome )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    score = 0;
    data = [[2,5];[0,8];[7,4];[1,9];[6,3];[5,0];[4,8];[2,6];[10,2];[4,9]];
    
    for dna = 1:length(chromosome)-1
        curr_dna = chromosome(dna);
        next_dna = chromosome(dna+1);
        
        x1 = data(curr_dna,1);
        x2 = data(next_dna,1);
        
        y1 = data(curr_dna,2);
        y2 = data(next_dna,2);
        
        x = (x2 - x1) ^ 2;
        y = (y2 - y1) ^ 2;
        
        distance = sqrt(x + y);
        
        score = score + distance;
    end

end

