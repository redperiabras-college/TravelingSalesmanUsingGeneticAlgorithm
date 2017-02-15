init_population = input('Initial Population: ');
training_generation = input('Train for how many generations? ');

%rejected chromosomes
rejected_chromosomes = [];

%initialize population
population = Initialize(10, 10);

%evaluation of initialized population
[evaluation, best_fitness, best_chromosome] = Evaluate(population);

DisplayResult(best_chromosome);

generation = 0;
while generation ~= training_generation
    [parent_1, parent_2] = Selection(population);
    fprintf('Selection:\n');
    fprintf('\t\tParent 1:\t%d %d %d %d %d %d %d %d %d %d\n', parent_1);
    fprintf('\t\tParent 2:\t%d %d %d %d %d %d %d %d %d %d\n', parent_2);
    
    child = Crossover(parent_1, parent_2);
    fprintf('Crossover:\n');
    fprintf('\t\tChild:\t\t%d %d %d %d %d %d %d %d %d %d\n', child);
    
    child = Mutation(child);
    fprintf('Mutation:\n');
    fprintf('\t\tChild:\t\t%d %d %d %d %d %d %d %d %d %d\n', child);
    
    [population, rejected] = Deletion(population, child);
    fprintf('\nRejected:\t\t\t%d %d %d %d %d %d %d %d %d %d\n\n', rejected);
    rejected_chromosomes = cat(2, rejected_chromosomes, rejected);
    
    generation = generation + 1;
    
    prev_best = best_fitness;
    [evaluation, best_fitness, best_chromosome] = Evaluate(population);
    
    fprintf('Generation:\t\t\t%d\n', generation)
    fprintf('Evaluation:\t\t\t%f\n', evaluation);
    fprintf('Best Fitness:\t\t%f\n', best_fitness);
    fprintf('Best Chromosome:\t%d %d %d %d %d %d %d %d %d %d\n', best_chromosome);
    
end

DisplayResult(best_chromosome);
