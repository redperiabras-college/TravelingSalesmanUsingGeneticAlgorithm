function [ evaluation, best_chromosome, worst_chromosome ] = Evaluate( population )
%Evaluate Summary of this function goes here
%   Detailed explanation goes here
    evaluation = 0;
    best_fitness = 100;
    worst_fitness = 0;

    for chromosome = 1:length(population)
        evaluation = evaluation + Fitness(population(chromosome,:));
    end
    
    for chromosome = 1:length(population)
        if(Fitness(population(chromosome,:)) > worst_fitness )
            worst_fitness = Fitness(population(chromosome,:));
            worst_chromosome = population(chromosome,:);
        end
    end
    
    for chromosome = 1:length(population)
        if(Fitness(population(chromosome,:)) < best_fitness)
            best_fitness = Fitness(population(chromosome,:));
            best_chromosome = population(chromosome,:);
        end
    end
    
end

