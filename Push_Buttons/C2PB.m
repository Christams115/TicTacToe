% filename:  C2PB.m
% purpose:   Third collium second row button
% author:    Christopher Tams


C2PBHandle = findobj('tag', 'C2');
if rem(Turn, 2) == 1
    set(C2PBHandle, 'string', 'X')
    C2 = 1;
    GameX(8) = C2;
else
    set(C2PBHandle, 'string', '0')
    C2= 2;
    GameY(8) = C2;
end
Turn = Turn + 1;
pause(.25)
set(C2PBHandle, 'enable', 'off')


[win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand] = ScoreFunction(win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand, Ran);

if Stand == 0
    [Choice, Turn, GameX, GameY] = LevelFunction(Ran, Level, Com, GameX, GameY, Turn);

    [win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand] = ScoreFunction(win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand, Ran);
end

if Stand == 1
    open('TicTacToe2.fig')
end