% filename:  A3PB.m
% purpose:   First colluim last row button
% author:    Christopher Tams


A3PBHandle = findobj('tag', 'A3');
if rem(Turn, 2) == 1
    set(A3PBHandle, 'string', 'X')
    A3 = 1;
    GameX(3) = A3;
else
    set(A3PBHandle, 'string', '0')
    A3= 2;
    GameY(3) = A3;
    
end
Turn = Turn + 1;
pause(.25)
set(A3PBHandle, 'enable', 'off')


[win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand] = ScoreFunction(win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand, Ran);

if Stand == 0
    [Choice, Turn, GameX, GameY] = LevelFunction(Ran, Level, Com, GameX, GameY, Turn);

    [win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand] = ScoreFunction(win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand, Ran);
end

if Stand == 1
    open('TicTacToe2.fig')
end