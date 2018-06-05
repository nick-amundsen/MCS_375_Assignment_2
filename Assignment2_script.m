%%%%% Nick Amundsen
%%%%% W01323151
%%%%% Assignment 3
%%%%% M/CS 375
%
%
%
%
%% PROBLEM 1:
%%% Newton's method
solNewton1 = ones(3,1);
solNewton1(1) = newtonx(-1,0.000000001, 1000, @problem_1);
solNewton1(2) = newtonx(-1-1i,0.000000001, 1000, @problem_1);
solNewton1(3) = newtonx(-1+1i,0.000000001, 1000, @problem_1);

%%% Secant method
solSecant1 = ones(3,1);
solSecant1(1) = secantx(1, 1.1, 0.000000001, 1000, @problem_1);
solSecant1(2) = secantx(-1-1i, 1.1-1i, 0.000000001, 1000, @problem_1);
solSecant1(3) = secantx(-1+1i, 1.1+1i, 0.000000001, 1000, @problem_1);

%%% Regula Falsi method
solRegula1 = ones(3,1);
solRegula1(1) = regulafalsix(0.1, 3, 0.000000001, 1000, @problem_1);
solRegula1(2) = regulafalsix(-1.5-1i, -.5-1i, 0.000000001, 1000, @problem_1);
solRegula1(3) = regulafalsix(-1.5+1i, -.5+1i, 0.000000001, 1000, @problem_1);


%% PROBLEM 2:
%%% Newton's method
[solNewton2, flagNewton2] = newtonx(1,0.000000001, 1000, @problem_2);

%%% Secant method
[solSecant2, flagSecant2] = secantx(1, 1.1, 0.000000001, 1000, @problem_2);

%%% Regula Falsi method
[solRegula2, flagRegula2] = regulafalsix(22, 30, 0.000000001, 1000, @problem_2);

%% PROBLEM 3:
%%% Newton's method
[solNewton3, flagNewton3] = newtonx(0.1,0.000000001, 10, @problem_3);

%%% Secant method
[solSecant3, flagSecant3] = secantx(0.1, 0.11, 0.000000001, 1000, @problem_3);

%%% Regula Falsi method
[solRegula3, flagRegula3] = regulafalsix(0.1, 0.6, 0.000000001, 1000, @problem_3);

%% PROBLEM 4:
%%% Newton's method
solNewton4 = ones(5,1);
solNewton4(1) = newtonx(-8,0.000000001, 100, @problem_4);
solNewton4(2) = newtonx(-5,0.000000001, 100, @problem_4);
solNewton4(3) = newtonx(-1,0.000000001, 100, @problem_4);
solNewton4(4) = newtonx(4.5,0.000000001, 100, @problem_4);
solNewton4(5) = newtonx(7.5,0.000000001, 100, @problem_4);

%%% Secant method
solSecant4 = ones(5,1);
solSecant4 (1) = secantx(-8, -7.9, 0.000000001, 100, @problem_4);
solSecant4 (2) = secantx(-5, -4.9, 0.000000001, 100, @problem_4);
solSecant4 (3) = secantx(-.1, -.09, 0.000000001, 100, @problem_4);
solSecant4 (4) = secantx(4.3, 4.4, 0.000000001, 100, @problem_4);
solSecant4 (5) = secantx(7.4, 7.5, 0.000000001, 100, @problem_4);

%%% Regula Falsi method
solRegula4 = ones(5,1);
solRegula4(1) = regulafalsix(-8, -7.999, 0.000000001, 1000, @problem_4);
solRegula4(2) = regulafalsix(-5, -4.999, 0.000000001, 1000, @problem_4);
solRegula4(3) = regulafalsix(-.001, .002, 0.000000001, 1000, @problem_4);
solRegula4(4) = regulafalsix(4, 4.001, 0.000000001, 1000, @problem_4);
solRegula4(5) = regulafalsix(7.5, 7.501, 0.000000001, 1000, @problem_4);

%% PROBLEM 5:
%%% Newton's method
solNewton5 = ones(8,1);
for k = 1:8
solNewton5(k) = newtonx(0.1+k,0.000000001, 100, @problem_5);
end

%%% Secant method
solSecant5 = ones(8,1);
for k = 0:7
solSecant5(k+1) = secantx(.7+k, .8+k, 0.000000001, 100, @problem_5);
end

%%% Regula Falsi method
solRegula5 = ones(8,1);
for k = 0:7
solRegula5(k+1) = regulafalsix(.5+k, 1.1+k, 0.000000001, 100, @problem_5);
end
