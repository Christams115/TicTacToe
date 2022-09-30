% filename:  FirstPlayerCB.m
% purpose:  Chooses the first player and makes it appear while getting 
%increasingly larger
% author:    Christopher Tams

for Size = 10:10:100
    FirstPlayerHandle = findobj('tag', 'FirstPlayer')
    set(FirstPlayerHandle, 'string', NameOne, 'fontsize', Size)
    pause(.5)
    FirstPlayerHandle = findobj('tag', 'FirstPlayer')
    set(FirstPlayerHandle, 'string', NameTwo, 'fontsize', Size + 5)
end
pause(1)