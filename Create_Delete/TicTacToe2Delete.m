% filename:  TicTacToe2Delete.m
% purpose:   Terminates the GUI
% author:    Christopher Tams


FigHandles = findobj('tag','TicTacToe2Fig');
close(FigHandles(FigHandles==gcf))