function [ child ] = Crossover( parent_1, parent_2 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    child_dna_size = length(parent_1);

    %Order 1 Crossover
    start_range = randi([1 5],1);
    end_range = start_range + 4;

    parent_1 = parent_1(1,start_range:end_range);

    %remove existing dna from parent_2
    for parent_1_dna = 1:length(parent_1)
        
        for dna = 1:length(parent_2)-1
            
            if parent_1(parent_1_dna) == parent_2(dna)
                parent_2(dna)=[];
            end
            
        end
    end

    child = zeros(1,10);
   
    %place the remaining dna from parent_1 in place
    child(start_range:end_range) = parent_1;
    
    parent_2_dna = 1;

    %place the remaining nonexisting dna from parent_2 in order
    for dna = 1:child_dna_size
       if child(dna) == 0
           child(dna) = parent_2(parent_2_dna);
           parent_2_dna = parent_2_dna + 1;
       end
    end
    
end

