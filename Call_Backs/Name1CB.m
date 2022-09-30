%filename: Name1CB.m
%purpose: Name One
%author: Christopher Tams


NameOne = get(gcbo, 'string');
set(gcbo, 'string', '');
Message = ['Welcome, ', NameOne];
NameTextHandle = findobj('tag', 'OnePlayerPB');
set(NameTextHandle, 'string', Message);