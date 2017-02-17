function [ ] = DisplayResult( best_chromosome )
%Display Summary of this function goes here
%   Detailed explanation goes here
    SCHOOL_COORD = [[2,5];[0,8];[7,4];[1,9];[6,3];[5,0];[4,8];[2,6];[10,2];[4,9]];
    SCHOOL_NAME = ['FEU     ';'CEU     ';'Adamson ';'UST     ';'TUP     ';'San Beda';'Arellano';'UE      ';'NU      ';'Mapua   '];
    x=[];
    y=[];
    z=[];
    
    for dna = 1:length(best_chromosome)
        data_link = best_chromosome(dna);
        x = cat(2,x,SCHOOL_COORD(data_link,1));
        y = cat(2,y,SCHOOL_COORD(data_link,2));
        z = vertcat(z,SCHOOL_NAME(data_link,:));
    end
    
    hold on;
    title(strcat('Route Distance:  ',num2str(Fitness(best_chromosome))));
    xlabel('x coordinates');
    ylabel('y coordinates');
    plot(x, y);
    plot(x, y, 'or');
    text(x, y, z, 'fontsize', 10, 'verticalalignment','cap');
    legend('Route');
    axis([-1 11 -1 10]);
    hold off;
end

