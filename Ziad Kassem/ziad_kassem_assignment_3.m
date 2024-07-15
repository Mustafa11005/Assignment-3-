%%12hrs to 24hrs time convertor

clc 
clear

%%Used variables:

flagA=0;
flagP=0;
flagbreak=0;
isaver=0;
colon1=0;
hrs=0;
spaces=0;
spacesCounter=1;
timeNoSpacesIndex=0;

timeNoSpaces=0;

%%Main code:
%%Input & searching for AM or PM

time = input("Please enter the time to convert:","s");
for i=1:length(time)
    if(time(i)=='a'||time(i)=='A')
        flagA=1;
        isaver=i-1;
    elseif(time(i)=='p'||time(i)=='P')  
        flagP=1;
        isaver=i-1;
    end
end
colon1 = find(time==':',1) ;
timeSimplified = time(1:isaver);
spaces = find(timeSimplified==' ');

%%Spaces remover
for j=1 : length(timeSimplified)
    if( j == spaces ( spacesCounter ) )
         spacesCounter = spacesCounter+1;
        continue
    else
        timeNoSpacesIndex = timeNoSpacesIndex + 1;
        timeNoSpaces = strcat(timeNoSpaces,timeSimplified(j));
        
    end
end

%% Hrs removing from string
TimeNoHours = timeNoSpaces(colon1-1:length(timeNoSpaces)) ;
string_hrs = (timeNoSpaces(1:colon1-2));
hrs = str2num(string_hrs);



%%Hrs conversion 
if(flagP && hrs ~= 12) 
   hrs=hrs+12;
   string_hrs = num2str(hrs) ;
end
if(hrs==12 && flagA)
    string_hrs='00';
end


%%output 
Time_after_conversion = strcat(string_hrs,TimeNoHours)
