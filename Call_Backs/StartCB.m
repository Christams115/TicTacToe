% filename:  StartCB.m
% purpose:   Determines who starts
% author:    Christopher Tams

if Ran == 2
    rng('shuffle')
    Ran = randi([0,1]);

    %if ran is = to 1 computer/second player goes first
    if Ran == 1
        First = NameTwo;
    else
        First = NameOne;
    end
    if NameOne ~= "" && NameTwo ~= ""
        open('TicTacToeName.fig')
        for Size = 10:5:50
            FirstPlayerHandle = findobj('tag', 'FirstPlayer');
            Size2 = Size + 2.5;
            set(FirstPlayerHandle, 'string', NameTwo, 'fontsize', Size)
            pause(.2)
            set(FirstPlayerHandle, 'string', NameOne, 'fontsize', Size2)
            pause(.2)
        end
        set(FirstPlayerHandle, 'string', "", 'fontsize', Size2)
        pause(1)
        set(FirstPlayerHandle, 'string', First, 'fontsize', Size2)
        pause(1)
    
        close(gcf)
        open('TicTacToe2.fig')

    end
        if NameOne == "" && NameTwo ~= ""
            Message = "Please Enter Name";
            NameTextHandle = findobj('tag', 'OnePlayerPB');
            set(NameTextHandle, 'string', Message);
        elseif NameTwo == "" && NameOne ~= ""
            Message2 = "Type Name or Press Enter";
            Name2TextHandle = findobj('tag', 'TwoPlayerPB');
            set(Name2TextHandle, 'string', Message2)
        else
            Message = "Please Enter Name";
            Message2 = "Type Name or Press Enter";
            NameTextHandle = findobj('tag', 'OnePlayerPB');
            set(NameTextHandle, 'string', Message);
            Name2TextHandle = findobj('tag', 'TwoPlayerPB');
            set(Name2TextHandle, 'string', Message2)
        end
else
    if NameOne == "" && NameTwo ~= ""
        Message = "Please Enter Name";
        NameTextHandle = findobj('tag', 'OnePlayerPB');
        set(NameTextHandle, 'string', Message);
    elseif NameTwo == "" && NameOne ~= ""
        Message2 = "Type Name or Press Enter";
        Name2TextHandle = findobj('tag', 'TwoPlayerPB');
        set(Name2TextHandle, 'string', Message2)
    elseif NameOne == "" && NameTwo == ""
        Message = "Please Enter Name";
        Message2 = "Type Name or Press Enter";
        NameTextHandle = findobj('tag', 'OnePlayerPB');
        set(NameTextHandle, 'string', Message);
        Name2TextHandle = findobj('tag', 'TwoPlayerPB');
        set(Name2TextHandle, 'string', Message2)
    elseif NameOne ~= "" && NameTwo ~= ""
        close(gcf)
        open('TicTacToe2.fig')
    end
        
end
