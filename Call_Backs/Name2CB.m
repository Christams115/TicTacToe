%filename: Name2CB.m
%purpose: Name Two
%author: Christopher Tams



NameTwo = get(gcbo, 'string');
set(gcbo, 'string', '')
Message2 = ['Welcome, ', NameTwo];
Com = 0;
if NameTwo == ""
    NameTwo = 'Sherk';
    Message2 = ['Prepare to loose to ', NameTwo, "   "];
    Com = 1;
end

Name2TextHandle = findobj('tag', 'TwoPlayerPB');
set(Name2TextHandle, 'string', Message2)