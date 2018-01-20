function plotData(x, y)
%PLOTDATA Plots the data points x and y into a new figure 
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   population and profit.

figure; % open a new figure window

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the training data into a figure using the 
%               "figure" and "plot" commands. Set the axes labels using
%               the "xlabel" and "ylabel" commands. Assume the 
%               population and revenue data have been passed in
%               as the x and y arguments of this function.
%
% Hint: You can use the 'rx' option with plot to have the markers
%       appear as red crosses. Furthermore, you can make the
%       markers larger by using plot(..., 'rx', 'MarkerSize', 10);

% ========= Kod ispod nije neophodan jer se vec nalazi u ex1.m ==========
data = load('ex1data1.txt');    % read comma separated data
x = data(:, 1);
y = data(:, 2);
m = length(y);  % number of training examples
% ============= Odavde krece kod koji treba ispisati ==============

plot(x, y, 'rx', 'MarkerSize', 10);
% title('My first plot in Octave!'); % nije trazeno u zadatku, ali eto...
xlabel('population size in 10,000s');
ylabel('profit in $10,000s');


% ============================================================

end
