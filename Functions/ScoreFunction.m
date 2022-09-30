% filename:  ScoreFunction.m
% purpose:   Keeps track of the points
% author:    Christopher Tams


function[win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand, LastX, LastY]...
    = ScoreFunction(win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand, Ran)



Stand = 0;
SumVX = sum(GameX);
SumHX = sum(GameX, 2);

SumVY = sum(GameY);
SumHY = sum(GameY, 2);
%Goes through all the possiblities of winning
if SumVX(1) == 3 || SumVX(2) == 3 || SumVX(3) == 3
    win1 = win1 + 1;
    loss2 = loss2 + 1;
    %open('TicTacToe2.fig')
    GameX = [0 0 0; 0 0 0; 0 0 0];
    GameY = [0 0 0; 0 0 0; 0 0 0];
    Stand = 1;
elseif SumHX(1) == 3 || SumHX(2) == 3 || SumHX(3) == 3
    win1 = win1 + 1;
    loss2 = loss2 + 1;
    %open('TicTacToe2.fig')
    GameX = [0 0 0; 0 0 0; 0 0 0];
    GameY = [0 0 0; 0 0 0; 0 0 0];
    Stand = 1;
elseif SumVY(1) == 6 || SumVY(2) == 6 || SumVY(3) == 6
    win2 = win2 +1;
    loss1 = loss1 + 1;
    %open('TicTacToe2.fig')
    GameX = [0 0 0; 0 0 0; 0 0 0];
    GameY = [0 0 0; 0 0 0; 0 0 0];
    Stand = 1;
elseif SumHY(1) == 6 || SumHY(2) == 6 || SumHY(3) == 6
    win2 = win2 +1;
    loss1 = loss1 + 1;
    %open('TicTacToe2.fig')
    GameX = [0 0 0; 0 0 0; 0 0 0];
    GameY = [0 0 0; 0 0 0; 0 0 0];
    Stand = 1;
elseif GameX(1) == 1 && GameX(5) == 1 && GameX(9) == 1
    win1 = win1 + 1;
    loss2 = loss2 + 1;
    %open('TicTacToe2.fig')
    GameX = [0 0 0; 0 0 0; 0 0 0];
    GameY = [0 0 0; 0 0 0; 0 0 0];
    Stand = 1;
elseif GameX(3) == 1 && GameX(5) == 1 && GameX(7) == 1
    win1 = win1 + 1;
    loss2 = loss2 + 1;
    %open('TicTacToe2.fig')
    GameX = [0 0 0; 0 0 0; 0 0 0];
    GameY = [0 0 0; 0 0 0; 0 0 0];
    Stand = 1;
elseif GameY(1) == 2 && GameY(5) == 2 && GameY(9) == 2
    win2 = win2 +1;
    loss1 = loss1 + 1;
    %open('TicTacToe2.fig')
    GameX = [0 0 0; 0 0 0; 0 0 0];
    GameY = [0 0 0; 0 0 0; 0 0 0];
    Stand = 1;
elseif GameY(3) == 2 && GameY(5) == 2 && GameY(7) == 2
    win2 = win2 +1;
    loss1 = loss1 + 1;
    %open('TicTacToe2.fig')
    GameX = [0 0 0; 0 0 0; 0 0 0];
    GameY = [0 0 0; 0 0 0; 0 0 0];
    Stand = 1;
elseif Turn == 10
    tie1 = tie1 + 1;
    tie2 = tie2 + 1;
    %open('TicTacToe2.fig')
    GameX = [0 0 0; 0 0 0; 0 0 0];
    GameY = [0 0 0; 0 0 0; 0 0 0];
    Stand = 1;
end

end
