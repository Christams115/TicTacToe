% filename:  GamePlaye2CB.m
% purpose:   Saves the name of the second player
% author:    Christopher



Player1Handle = findobj('tag', 'GamePlayer2');
set(Player1Handle, 'string', NameOne)
set(Player1Handle, 'enable', 'off')