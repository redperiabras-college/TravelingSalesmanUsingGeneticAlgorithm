function [ ] = GraphEvaluation( evaluation_history )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    x = []; y= []; z=[];
    for cnt = 1:ceil(length(evaluation_history)*0.06):length(evaluation_history)
        x = cat(1,x,cnt);
        y = vertcat(y,evaluation_history(cnt,1:2));
        z = cat(1,z,evaluation_history(cnt,3));
    end
    
    
    hold on;
    axis([-10 length(evaluation_history) 0 70]); 
    bar(x,y); 
    title('Overview of Performance');
    xlabel(strcat('Generations: ',num2str(length(evaluation_history))));
    ylabel('Fitness');
    plot(x,z);
    plot(x,z,'or');
    legend('Best', 'Worst', 'Average');
    hold off;

end

