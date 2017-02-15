function [ child ] = Mutation( child )
%Muatation Summary of this function goes here
%   Detailed explanation goes here
    dna_size = length(child);
    
    point_1 = randi([1 dna_size], 1);
    point_2 = randi([1 dna_size], 1);

    temp = child(point_1);
    child(point_1) = child(point_2);
    child(point_2) = temp;

end

