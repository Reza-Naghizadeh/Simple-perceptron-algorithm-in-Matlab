input = [1 2; -4 5; 4 6; 0 -4; 0 0; -4 -5; -3 -2; -3 -1; -1 -6; -4 1]; % diffrent points as inputs
target = [1; 1; 1; 1; 1; 0; 0; 0; 0; 0]; %Desire targets for inputs

weight = [0.3, 0.3]; % Initial random weight
bias = 0.2; % Bias
epoch = 100; % Epoch max

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
%         disp('Point is :');
%         disp(point);
%         disp('Weight is :');
        
        plotpc(weight,bias); % Plot line with weight and bias
        hold on; % Keep everything on the figure
%         h
    end
    
end
plotpc(weight,bias, '-r'); % Plot line with weight and bias