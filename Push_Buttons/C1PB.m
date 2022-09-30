% filename:  C1PB.m
% purpose:   Third collium first row button
% author:    Christopher Tams

C1PBHandle = findobj('tag', 'C1');
if rem(Turn, 2) == 1
    set(C1PBHandle, 'string', 'X')
    C1 = 1;
    GameX(7) = C1;
else
    set(C1PBHandle, 'string', '0')
    C1= 2;
    GameY(7) = C1;
end
Turn = Turn + 1;
pause(.25)
set(C1PBHandle, 'enable', 'off')


[win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand] = ScoreFunction(win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand, Ran);

if Stand == 0
    [Choice, Turn, GameX, GameY] = LevelFunction(Ran, Level, Com, GameX, GameY, Turn);

    [win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand] = ScoreFunction(win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand, Ran);
end

if Stand == 1
    open('TicTacToe2.fig')
end