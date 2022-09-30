% filename:  A1PB.m
% purpose:   First row first colluim button
% author:    Christopher Tams


A1PBHandle = findobj('tag', 'A1');
if rem(Turn, 2) == 1
    set(A1PBHandle, 'string', 'X')
    A1= 1;
    GameX(1) = A1;
else
    set(A1PBHandle, 'string', '0')
    A1= 2;
    GameY(1) = A1;
end
Turn = Turn + 1;
pause(.25)
set(A1PBHandle, 'enable', 'off')

[win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand] = ScoreFunction(win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand, Ran);

if Stand == 0
    [Choice, Turn, GameX, GameY] = LevelFunction(Ran, Level, Com, GameX, GameY, Turn);

    [win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand] = ScoreFunction(win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand, Ran);
end

if Stand == 1
    open('TicTacToe2.fig')
end