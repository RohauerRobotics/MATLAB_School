function [eq] = LAB2_DR(Q, A, t_max)
% Function computes trajectory of projectile
% Input 1 = flow rate (Q)
% Input 2 = cross sectional area of tank(A)
% Input 3 = time max
% Outputs = tank height

clc
% Check for correct number of inputs
% add default angle if needed
switch nargin
    case 0
        error("Must Enter flow rate of tank.")
    case 1
        error("Must Enter Cross Sectional Area of Tank.")
    case 2
        t_max = 10;
        fprintf("Default Time set to 10 seconds. \n")
    otherwise
        fprintf("All good! \n")
end

num_divs = 500;
time = linspace(0,t_max, num_divs);

eq = (3*(Q/A)*((1/2)*time-(1/4)*sin(2*time)))-(Q/A)*time;

for i = 1:num_divs
    if 0 < eq(i) && eq(i) < 2
        fprintf("Tank Height: %6.2f", eq(i))
        fprintf("\nOperation Nominal")
    elseif eq(i) > 2
        eq(i) = 2;
        fprintf("Tank Height: %6.2f", eq(i))
        fprintf("\nTank is full.\n")
    elseif eq(i) < 0
        fprintf("Tank Height: %6.2f", eq(i))
        fprintf("\nTank is low.\n")
    elseif eq(i) < -0.5
        fprintf("Tank Height: %6.2f", eq(i))
        fprintf("\nAbnormal Operation!\n")
    elseif eq(i) < -1.5
        fprintf("Tank Height: %6.2f", eq(i))
        fprintf("\nTank is crictically low. SHUT DOWN!\n")
    end
end

plot(time, eq)
title("Tank Level vs Time")
xlabel("Time(Day)")
ylabel("Tank Volume (m^3)")
