% filename:  B2PB.m
% purpose:   Second collium second row button
% author:    Christopher Tams


B2PBHandle = findobj('tag', 'B2');
if rem(Turn, 2) == 1 
    set(B2PBHandle, 'string', 'X')
    B2 = 1;
    GameX(5) = B2;
else
    set(B2PBHandle, 'string', '0')
    B2= 2;
    GameY(5) = B2;
end
Turn = Turn + 1;
pause(.25)
set(B2PBHandle, 'enable', 'off')


[win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand] = ScoreFunction(win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand, Ran);

if Stand == 0
    [Choice, Turn, GameX, GameY] = LevelFunction(Ran, Level, Com, GameX, GameY, Turn);

    [win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand] = ScoreFunction(win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand, Ran);
end

if Stand == 1
    open('TicTacToe2.fig')
end