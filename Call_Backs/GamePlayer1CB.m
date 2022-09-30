% filename:  GamePlayer1CB.m
% purpose:   Saves the name of the first player
% author:    Christopher Tams


Player1Handle = findobj('tag', 'GamePlayer1');
set(Player1Handle, 'string', NameOne)
set(Player1Handle, 'enable', 'off')