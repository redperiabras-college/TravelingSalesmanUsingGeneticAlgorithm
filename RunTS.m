init_population = input('Initial Population: ');
evaluation_history = [];

%rejected chromosomes
rejected_chromosomes = [];

%initialize population
population = Initialize(10, 10);

%evaluation of initialized population
[evaluation, best_chromosome, worst_chromosome] = Evaluate(population);
best_fitness = Fitness(best_chromosome);

generation = 0;

while Fitness(best_chromosome) ~= Fitness(worst_chromosome)
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
    [evaluation, best_chromosome, worst_chromosome] = Evaluate(population);
    
    best_fitness = Fitness(best_chromosome);
    worst_fitness = Fitness(worst_chromosome);
    
    fprintf('Generation:\t\t\t%d\n', generation);
    fprintf('Evaluation:\t\t\t%f\n', evaluation);
    fprintf('Best Chromosome:\t%d %d %d %d %d %d %d %d %d %d\n', best_chromosome);
    fprintf('Best Fitness:\t\t%f\n', best_fitness);
    fprintf('Worst Chromosome:\t%d %d %d %d %d %d %d %d %d %d\n', worst_chromosome);
    fprintf('Worst Fitness:\t\t%f\n', worst_fitness);
    average = (best_fitness + worst_fitness) / 2;
    
    evaluation_history = vertcat(evaluation_history, [best_fitness worst_fitness average]);
end

hold on;
subplot(211);
DisplayResult(best_chromosome);
subplot(212);
GraphEvaluation(evaluation_history);
hold off;