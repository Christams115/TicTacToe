% filename:  C3PB.m
% purpose:   Third collium third row button
% author:    Christopher Tams


C3PBHandle = findobj('tag', 'C3');
if rem(Turn, 2) == 1
    set(C3PBHandle, 'string', 'X')
    C3 = 1;
    GameX(9) = C3;
else
    set(C3PBHandle, 'string', '0')
    C3= 2;
    GameY(9) = C3;
end
Turn = Turn + 1;
pause(.25)
set(C3PBHandle, 'enable', 'off')


[win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand] = ScoreFunction(win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand, Ran);

if Stand == 0
    [Choice, Turn, GameX, GameY] = LevelFunction(Ran, Level, Com, GameX, GameY, Turn);

    [win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand] = ScoreFunction(win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand, Ran);
end

if Stand == 1
    open('TicTacToe2.fig')
end