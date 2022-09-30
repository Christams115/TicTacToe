% filename:  A2PB.m
% purpose:   First colluim second row button
% author:    Christopher


A2PBHandle = findobj('tag', 'A2');
if rem(Turn, 2) == 1
    set(A2PBHandle, 'string', 'X')
    A2 = 1;
    GameX(2) = A2;
else
    set(A2PBHandle, 'string', '0')
    A2= 2;
    GameY(2) = A2;
end
Turn = Turn + 1;
pause(.25) 
set(A2PBHandle, 'enable', 'off')


[win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand] = ScoreFunction(win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand, Ran);

if Stand == 0
    [Choice, Turn, GameX, GameY] = LevelFunction(Ran, Level, Com, GameX, GameY, Turn);

    [win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand] = ScoreFunction(win1, win2, loss1, loss2, tie1, tie2, GameX, GameY, Turn, Stand, Ran);
end

if Stand == 1
    open('TicTacToe2.fig')
end