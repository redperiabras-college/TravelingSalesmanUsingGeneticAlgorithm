function [ evaluation, best_fitness, best_chromosome ] = Evaluate( population )
%Evaluate Summary of this function goes here
%   Detailed explanation goes here
    evaluation = 0;
    best_fitness = 100;

    for chromosome = 1:length(population)
        if(Fitness(population(chromosome,:)) < best_fitness)
            best_fitness = Fitness(population(chromosome,:));
            best_chromosome = population(chromosome,:);
        end
        
        evaluation = evaluation + Fitness(population(chromosome,:));
    end
    
end

