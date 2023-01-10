% Lab #1
clc
% ------ Problem # 1 ------

% Define row vectors
A = [1:6];
B = linspace(1,6,6);

% element by element addition
A+B

% element by element subtraction
A-B

% A*B cannot be performed because each element in Row 1 of
% A must have a column element in B to be multiplied by
B_col = [1;2;3;4;5;6];
A*B_col

% multiply element by element
A.*B

% multiply every element individually
A*2

% square each element individually
A.^2

% ------ Problem # 2 ------

% define row vector t
t = linspace(0.1,0.6,6)

% create math operation
y = (6*(t.^3)-(3*t)-4)./(8*sin(t))

% same answer for #3 on calculator, assuming t is in radians

% ------ Problem # 3 ------

A3 = ones(6,4) 
A3(3,3) = A3(2,4) + A3(4,1)

% A3 row 3 column 3 is what is expected

% ------ Problem # 4 ------

% define inputs
X_4 = linspace(-8,6,100);

% define outputs
Y_4 = -0.1*((X_4+2).^2).*(X_4-6);

% plot & plot config
plot(X_4,Y_4);
title("Problem 4 Function")
xlabel("x axis")
ylabel("y axis")

% ------ Problem # 5 ------

% function for Y
Y_5 = -0.4*((X_4.^2)-4).*(X_4-6);

% place to save negative values
Y_5_neg = zeros(1,100);

% loop through shared indicies
for i=1:1:100
    % check if value is negative
    if Y_5(i) < 0
        % display negative values
        fprintf("Negative Y Value: %6.2f \n",Y_5(i))
        fprintf("Corresponding X Value: %6.2f \n",X_4(i))
        % save negative values in zeros matrix
        Y_5_neg(i) = Y_5(i);
    end
end

% plot(X_4,Y_5_neg)
% title("Negative Values only")
