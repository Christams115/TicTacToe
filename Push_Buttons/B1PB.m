% filename:  B1PB.m
% purpose:   Second collium first row button
% author:    Christopher Tams


B1PBHandle = findobj('tag', 'B1');
if rem(Turn, 2) == 1 
    set(B1PBHandle, 'string', 'X')
    B1 = 1;
    GameX(4) = B1;

else
    set(B1PBHandle, 'string', '0')
    B1= 2;
    GameY(4) = B1;
end
Turn = Turn + 1;
pause(.25)
set(B1PBHandle, 'enable', 'off')


[win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand] = ScoreFunction(win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand, Ran);

if Stand == 0
    [Choice, Turn, GameX, GameY] = LevelFunction(Ran, Level, Com, GameX, GameY, Turn);

    [win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand] = ScoreFunction(win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand, Ran);
end

if Stand == 1
    open('TicTacToe2.fig')
end