clc
clear
userTime = input("Please, enter the time: ", "s");
nonspaces= find(userTime ~= ' ');

%% Return time without spaces
for i = 1:length(nonspaces)
    cleanTime(i) = userTime(nonspaces(i));
end

hours = str2double(cleanTime(1:find(cleanTime == ':', 1) - 1));
nonhours = cleanTime(find(cleanTime == ':', 1): length(cleanTime));

if (hours == 0)
    finalTime = ['12' nonhours ' am']

elseif (hours > 12)
    finalTime = [num2str(hours - 12) nonhours ' pm']
    
elseif (hours < 12)
    finalTime = [cleanTime ' am']
    
else
    finalTime = [cleanTime ' pm']
end
