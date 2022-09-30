% filename:  B3PB.m
% purpose:   Second collium third row button
% author:    Christopher Tams

B3PBHandle = findobj('tag', 'B3');
if rem(Turn, 2) == 1
    set(B3PBHandle, 'string', 'X')
    B3 = 1;
    GameX(6) = B3;
else
    set(B3PBHandle, 'string', '0')
    B3= 2;
    GameY(6) = B3;
end
Turn = Turn + 1;
pause(.25)
set(B3PBHandle, 'enable', 'off')


[win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand] = ScoreFunction(win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand, Ran);

if Stand == 0
    [Choice, Turn, GameX, GameY] = LevelFunction(Ran, Level, Com, GameX, GameY, Turn);

    [win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand] = ScoreFunction(win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand, Ran);
end

if Stand == 1
    open('TicTacToe2.fig')
end