function [ parent_1, parent_2 ] = Selection( population )
%Selection Summary of this function goes here
%   Detailed explanation goes here
    max_fitness = 100;
    max_cost = 100;
        
    matingpool = [];
    
    for chromosome = 1:length(population)
       fitness_score = Fitness(population(chromosome));
       n = floor(max_cost - fitness_score);
       
       for entry = 1:n
           matingpool = cat(2, matingpool, population(chromosome,:));
       end
    end
    
    chosen_index = randi([1 length(matingpool)], 1);
    chosen_chromosome = matingpool(chosen_index);
    parent_1 = population(chosen_chromosome,:);
    
    chosen_index = randi([1 length(matingpool)], 1);
    chosen_chromosome = matingpool(chosen_index);
    parent_2 = population(chosen_chromosome,:);

end

