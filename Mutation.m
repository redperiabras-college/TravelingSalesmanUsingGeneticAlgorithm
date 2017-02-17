%*************************************************************************%
%@BeginVerbatim 
% Function: Mutation
% Description: Modify the given chromosome
% Parameter(s): chromosome, matrix
% Filename: Mutation.m
% Version: v00.02
% Author: Group 1
% Yr&Sec: 3-4
% Subject: Computational Intelligence
%@EndVebartim 
%*************************************************************************%

% Last Reviewed by: Periabras, 17 February 2017

%@Code Body***************************************************************%

function [ child ] = Mutation( child )
    %@Intialization*******************************************************%
    DNA_SIZE = length(child);
    %*********************************************************************%
    
    %Get 2 dna random points from the chromosome
    points = randperm(DNA_SIZE, 2);

    %Switch the 2 dna
    temp = child(points(1));
    child(points(1)) = child(points(2));
    child(points(2)) = temp;

end

%*************************************************************************%

%*************************************************************************%

