function [ population ] = Initialize(population_size, dna_size)
%Initialize Summary of this function goes here
%   Detailed explanation goes here
    population = zeros(population_size, dna_size);

    for chromosome = 1:population_size   
        population(chromosome,:) = randperm(dna_size, 10);
    end
end

