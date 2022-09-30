% filename:  TicTacToe2Create.m
% purpose:   Creates the next GUI
% author:    Christopher Tams


if Level ~= 0
    Comon = 1;
    Com = 1;
else
    Comon = 0;
    Com = 0;
end

Stand = 0;
rng('shuffle')
Player1Handle = findobj('tag', 'GamePlayer1');
set(Player1Handle, 'string', NameOne)
Player2Handle = findobj('tag', 'GamePlayer2');
set(Player2Handle, 'string', NameTwo)

Player1Win = win1;
Player1Loss = loss1;
Player1Tie = tie1;

Player2Win = win2;
Player2Loss = loss2;
Player2Tie = tie2;

Winner = [Player1Win, Player2Win];
Losser = [Player1Loss, Player2Loss];
Tie = [Player1Tie, Player2Tie];

play1 = 1;
play2 = 2;

if Ran == 1
    play1 = 2;
    play2 = 1;
else
    play1 = 1;
    play2 = 2;
end



Score2 =  string(Winner(play2)) + ' - ' + string(Tie(play2))+ ' - ' + string(Losser(play2));
Player2ScoreHandle = findobj('tag', 'GamePlayer2Score');
set(Player2ScoreHandle, 'string', Score2)


Score1 = string(Winner(play1)) + ' - ' + string(Tie(play1))+ ' - ' + string(Losser(play1));
Player1ScoreHandle = findobj('tag', 'GamePlayer1Score');
set(Player1ScoreHandle, 'string', Score1)

%This is setting up all of the names and scores^

FigHandles = findobj('tag','TicTacToe1Fig');
close(FigHandles(FigHandles~=gcf))
Turn = 1;

SBImage = imread('TicTacToeBackground.jpg','jpeg');
axes('position', [0 0 1 1])
image(SBImage)
set(gca,'visible','off')


if Ran == 1 && Level ~= 3 && Com == 1
    Display = ["A1", "B1", "C1"; "A2", "B2", "C2"; "A3", "B3", "C3"];
    RandomNumber = randi(9, 1);
    Handle = findobj('tag', Display(RandomNumber));
    set(Handle, 'string', 'X')
    set(Handle, 'enable', 'off')
    GameX(RandomNumber) = 1;
    Turn = Turn + 1;  
    pause(.25)
elseif Ran == 1 && Level == 3 && Com == 1
    [Choice, Turn, GameX, GameY] = LevelFunction(Ran, Level, Com, GameX, GameY, Turn);
end


