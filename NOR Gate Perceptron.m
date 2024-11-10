input = [0 0; 0 1; 1 0; 1 1]; % Inputs of Nor gate
target = [1; 0; 0; 0]; % Nor Gates target (outputs as labels)

weight = [rand, rand]; % Initial random weight
bias = 0.2; % Bias
epoch = 5; % Epoch max

plotpv(input',target'); % Plot each point with desire target as class

% Epoch controller for loop
for round = 1:epoch
    % Each point for loop
    for i = 1:length(input)
        point = input(i,:); % Chossing each point
        desireTarget = target(i); % Chosing desire target
        output = weight*point'+bias; % Compute the output
        % Output checker
        if output < 0
            a = 0;
        else
            a = 1;
        end
        e = desireTarget - a; % Compute e (desire target minus a that we found inside output cheker)
        weight = weight + e * point; % Weight correction
        bias = bias + e; % Bias correction

        % Display points and outputs
        disp('Point is :');
        disp(point);
        disp('Weight is :');
        disp(weight);

    end
    
    plotpc(weight,bias); % Plot line with weight and bias
    hold on; % Keep everything on the figure
    pause(0.5); % To have animation effect and have a good view of each round
    
end