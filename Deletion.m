function [ population, rejected ] = Deletion( population, offspring )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
    worst_fitness = Fitness(offspring);
    rejected = offspring;
    
    for chromosome = 1:length(population)
        if(Fitness(population(chromosome,:)) > worst_fitness )
            worst_fitness = Fitness(population(chromosome,:));
            worst_chromosome_index = chromosome;
            rejected = population(chromosome,:);
        end
    end

    if(worst_fitness ~= Fitness(offspring))
        population(worst_chromosome_index,:) = offspring;
        fprintf('Status: Added');
    else
        fprintf('Status: Rejected');
    end
end

