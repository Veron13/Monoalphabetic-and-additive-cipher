function TheMonoalphabeticAdditiveCipher2

figure('MenuBar','None', ... % - создание графического окна без картинки и кнопок(они были бы, если был просто figure())
'Name','TheMonoalphabeticAdditiveCipher', ...          % - измен€ем название на наше
'NumberTitle','off', ...         % - убираем название перед нашим !!!
'Position', [400, 250, 570, 400])  % - «адаЄм позицию данного графичского окна, где первые два числа - это координаты, а далее ширина и высота графического окна  

uicontrol('Style','Text', ... % - создаЄм просто текст - название лабораторной работы, присваиваем еЄ —тилю определЄнное свойство Text
   'String', 'ћоноалфавитный и аддитивный шифр', ...             % - «адаЄм надпись, а именно "Ўифр ÷езар€ с переменным шагом"   
  'Position', [35, 190, 500, 200], ...  % - «адаЄм позицию текста, где первые два числа - это координаты, а далее ширина и высота текста
  'Fontsize',24)  % - задаЄм размер нашего текста

clc                             % - работает обычна€ очиста командного окна :)
clear all                      % - работает обычна€ очиста командного окна :)

uicontrol('Style','PushButton', ... % - создаЄм просто кнопку, присваиваем еЄ —тилю определЄнное свойство PushButton
   'String', 'ѕодключение текстового файла', ...             % - «адаЄм надпись на ней  "ѕодключение текстового файла" 
  'Position', [20, 260, 180, 30], ...  % - «адаЄм позицию кнопки, где первые два числа - это координаты, а далее ширина и высота кнопки    
  'CallBack',@theloadtext)   % - «адаЄм функцию  CallBack и еЄ действие с помощью ссылки на другую функцию theloadtext

%%%%%%%%%%%%%%%%%%%%
 function theloadtext(h,eventdata) % - подключаем наш текстовый файл
       load text Words; % - загружаем текст из нашего m-файла
  set(Text,'String',Words); % - загружаем текст в окно дл€ работы с ним
 end
%%%%%%%%%%%%%%%%%%%%

Important1 = uicontrol('Style','edit', ... % - создаЄм окно дл€ ввода ключа, присваиваем ей объект и определЄнное свойство  EditText
   'String', '', ...             % - «адаЄм на нЄм изначальную надпись    
  'Position', [300, 90, 100, 30])  % - «адаЄм позицию окна, где первые два числа - это координаты, а далее ширина и высота надписи 

uicontrol('Style','Text', ... % - создаЄм надпись дл€ ключа, присваиваем ей объект и определЄнное свойство  Text
   'String', '¬ведите ключ (целое число от 0 до 150):', ...      % - «адаЄм нашу надпись   
  'Position', [170, 84, 130, 40], ...  % - «адаЄм позицию окна, где первые два числа - это координаты, а далее ширина и высота кнопки
  'Fontsize',10)  % - задаЄм размер нашего текста

Toggle1 = uicontrol('Style','ToggleButton', ... % - создаЄм кнопку с задержкой дл€ вида, присваиваем ей объект и определЄнное свойство ToggleButton
   'String', ' одировка текстового файла', ...             % - «адаЄм надпись на ней своЄ название  " одировка текстового файла" 
  'Position', [25, 150, 170, 30], ...  % - «адаЄм позицию кнопки, где первые два числа - это координаты, а далее ширина и высота кнопки    
  'CallBack',@Togglewow1)   % - «адаЄм функцию  CallBack и еЄ действие в функции Togglewow1

Text = uicontrol('Style','edit', ... % - создаЄм окно дл€ работы с текстом, присваиваем ей объект и  определЄнное свойство EditText
   'String', '', ...             % - «адаЄм свою надпись ""   
  'Position', [200, 150, 170, 140]) ...  % - «адаЄм позицию кнопки, где первые два числа - это координаты, а далее ширина и высота кнопки  
  
%%%%%%%%%
   function Togglewow1(h,eventdata) % - создаЄм функцию дл€ кодировки нашего текста
       load text Words; % - загружаем текст из нашего m-файла
       load ourtext Words228;
        if get (Toggle1,'Value') == 0  % - если мы нажимаем на кнопку дл€ кодировки нашего текста, 
        set(Text,'String',Words228)          %  - возвращаем исходный текст
         set(Toggle1,'String',' одировка текстового файла') % - просто изменим надпись на кнопке дл€ большей €сности
        else
            Words228 = get(Text,'String');
             save ourtext Words228;     % - запоминаем наш текст дл€ его возврата
            Words = get(Text,'String'); % - запоминаем текст в текстовом окне дл€ кодировки
          
            %%%%%%%%%% - создаЄм новый алфавит из старого с помощью ключа
num = str2num(get(Important1,'String'));    % - проверим наличие ключа дл€ кодировки

        if length(num) == 0  | num == 0
            msgbox('¬ведите ключ!!!',' люч','Modal')   % - в случае отсутствие ключа или длинны наша программа работать не будет и об этом сообщат
        else        
Key1 = str2num(get(Important1,'String')); % ключ

        end
        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% - кодировка
Alpha = ' AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZzјаЅб¬в√гƒд≈е®Є∆ж«з»и…й кЋлћмЌнќоѕп–р—с“т”у‘ф’х÷ц„чЎшўщЏъџы№ьЁэёюя€1234567890!?.,()-+=_*&:^%$#@~"є;' % - задаЄм изначальный алфавит
Len = length(Alpha);
Alpha2 = '';
Alphab = [];

% - кодировка
for wow1=1:1:Len
       wow3 = 1;
   while wow3 > 0
          wow3 = 1;
   Alphab(wow1) = randi(Len);
   if wow1 == 1
       wow2 = Alphab(wow1);
      wow3 = 0; 
   end
   for ii=1:1:(wow1-1)
     if Alphab(ii) == Alphab(wow1)  
         wow3 = wow3+1;
     end
   end
   if wow3 == 1
  wow2 = Alphab(wow1);
  wow3 = 0;
   end
   end
   Alpha2(wow1) = Alpha(wow2);
end

%%%%%%%%% зашифруем наше слово
Words = get(Text,'String');  % - задаЄтс€ наше текстовое сообщение
Len2 = length(Words);

for evil = 1:1:Len2
  steam(evil) = findstr(Alpha,Words(evil));
  Words(evil) = Alpha2(steam(evil));
end

%%% - зашифруем его снова с помощью аддитивного шифра !!!!!!!!!!!!!!!!!!!

Key2 = str2num(get(Important1,'String')); % ключ
if Key2 > Len2
    Key2 = Len2;
end
KEY2 = [];
for back=1:1:Key2
    if back< Key2
       KEY2(back) =  randi(Len);
    else
 KEY2(back) =  findstr(Alpha2,Words(back));
    end
end



BKEY = 0;
for Carnage=1:1:Len2
    if Carnage > Key2
              BKEY = findstr(Alpha2,Words(Carnage-Key2));
    else
    BKEY = findstr(Alpha2,Words(Carnage));
      end
  if length(KEY2) < Len2
    KEY2 = [KEY2 BKEY];  
  end
end


Z2 = [];
max = 0;
for bombom=1:1:Len2
    KEYL2 = KEY2(bombom);
    GAMMA = dec2bin(KEYL2);
    GAMMA3 = str2num(GAMMA);
    Wordsgamma = findstr(Alpha2,Words(bombom));
    GAMMA2 = dec2bin(Wordsgamma);
    GAMMA4 = str2num(GAMMA2);
    goodluck = num2str(GAMMA3+GAMMA4);
   goodluck2 = 0;
   for ll=1:1:length(goodluck)
  goodluck2(ll) = mod(goodluck(ll),2);
end
luck = num2str(goodluck2);
Z = bin2dec(luck);
Z2 = [Z2 Z];
end
Z3 = Z2;
save Z3 Z3

for veron=1:1:Len2
    if Z2(veron) == 0
       Words(veron) = '>'; 
    else
        while Z2(veron) > Len
           Z2(veron) = Z2(veron) - Len; 
        end
    Words(veron) = Alpha2(Z2(veron));
    end
end


save addiv KEY2

%%%
% - дополнительна€ защита с помощью ключа
for good=1:1:Len
    if good+Key1 > Len
    Alpha3(good) = Alpha2(good+Key1-Len);
    else
        Alpha3(good) = Alpha2(good+Key1);
    end
end
Alpha3
save ouralphabet Alpha3

%%%%%%%%%%%%%%%%%%%%%%%%%%%
            set(Text,'String',Words) % - наш текст
              team = get(Text,'String');
            set(Toggle1,'String','¬озвращаем исходный текст') % - просто изменим надпись на кнопке дл€ большей €сности
            save strangetext team;
        end
   end
%%%%%%%%%%%

Toggle2 = uicontrol('Style','ToggleButton', ... % - создаЄм с задержкой дл€ вида, присваиваем ей объект и определЄнное свойство ToggleButton
   'String', '–асшифровка текстового файла', ...             % - «адаЄм надпись на нЄм свою надпись Toggle   
  'Position', [373, 260, 170, 30], ...  % - «адаЄм позицию кнопки, где первые два числа - это координаты, а далее ширина и высота кнопки    
  'CallBack',@Togglewow2)   % - «адаЄм функцию  CallBack и еЄ действие в функции Togglewow2

%%%%%%%%%
   function Togglewow2(h,~)
        if get (Toggle1,'Value') == 1 % - сделаем так, чтобы –ј—Ў»‘–ќ¬ ј текста была только в том случае, если текст уже был зашифрован
        if get (Toggle2,'Value') == 0  % - если мы нажимаем на кнопку дл€ расшифровки нашего текста,
             load strangetext team;
        set(Text,'String',team) %  - возвращаем исходный зашифрованный текст
        set(Toggle2,'String','–асшифровка текстового файла') % - просто изменим надпись на кнопке дл€ большей €сности
        else
            
            %%%%%%%%%%%%%%%%%
             %%%%%%%%%% - создаЄм новый алфавит из старого с помощью ключа     
num = str2num(get(Important1,'String'));    % - проверим наличие ключа дл€ коровки
        if length(num) == 0 | num == 0
            msgbox('¬ведите ключ!!!',' люч','Modal')   % - в случае отсутствие ключа или длинны наша программа работать не будет и об этом сообщат
        else        
Key1 = str2num(get(Important1,'String')); % ключ
Key2 = str2num(get(Important1,'String')); % длинна
        end
%%%%%%%%%%%%%%%%%%%% расшифровка
Alpha = ' AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZzјаЅб¬в√гƒд≈е®Є∆ж«з»и…й кЋлћмЌнќоѕп–р—с“т”у‘ф’х÷ц„чЎшўщЏъџы№ьЁэёюя€1234567890!?.,()-+=_*&:^%$#@~"є;' % - задаЄм изначальный алфавит
load ouralphabet Alpha3;
Words = get(Text,'String');
Len = length(Alpha3);
Len2 = length(Words);
Alpha2 = ' ';
for good=1:1:Len
    if good-Key1 <= 0
    Alpha2(good) = Alpha3(Len+(good-Key1));
    else
        Alpha2(good) = Alpha3(good-Key1);
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% - аддитивный 
load addiv KEY2
load Z3 Z3

Z2 = [];
max = 0;
for bombom=1:1:Len2
   KEYL2 = KEY2(bombom);
    GAMMA = dec2bin(KEYL2);
    GAMMA3 = str2num(GAMMA);
    Wordsgamma =  Z3(bombom);
    GAMMA2 = dec2bin(Wordsgamma);
    GAMMA4 = str2num(GAMMA2);
    goodluck = num2str(GAMMA3+GAMMA4);
       goodluck2 = 0;
   for ll=1:1:length(goodluck)
  goodluck2(ll) = mod(goodluck(ll),2);
end
luck = num2str(goodluck2);
Z = bin2dec(luck);
Z2 = [Z2 Z];
end

for veron=1:1:Len2
         while Z2(veron) > Len
           Z2(veron) = Z2(veron) - Len; 
        end
    Words(veron) = Alpha2(Z2(veron));
end

% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



for evil = 1:1:Len2 
  steam = findstr(Alpha2,Words(evil));
  Words(evil) = Alpha(steam);
end
Words

            %%%%%%%%%%%%%%%%%%
            set(Text,'String',Words) % - наше исходное слово
             set(Toggle2,'String','¬озвращаем зашифрованный текст') % - просто изменим надпись на кнопке дл€ большей €сности
        end
        end
   end
%%%%%%%%%%%

uicontrol('Style','PushButton', ... % - создаЄм просто кнопку, присваиваем ей объект и определЄнное свойство PushButton
   'String', '—охранение текстового файла', ...             % - «адаЄм на ней свою надпись "—охранение текстового файла"
  'Position', [373, 150, 180, 30], ...  % - «адаЄм позицию кнопки, где первые два числа - это координаты, а далее ширина и высота кнопки    
  'CallBack',@thesavetext)   % - «адаЄм функцию CallBack и еЄ действие с помощью ссылки на функцию the savetext
%%%%%%%%%%%%%%%%%%%%
 function thesavetext(h,eventdata) % - сохран€ем наш текстовый файл
     Words = get(Text,'String');   % - присваиваем значение нашему новому файлу, а именно текст с объекта Text
        save text2 Words; % - сохран€ем текст из в новом m-файле
 end
%%%%%%%%%%%%%%%%%%%%

uicontrol('Style','PushButton', ... % - создаЄм просто кнопку, присваиваем еЄ —тилю определЄнное свойство PushButton
   'String', '«акрыть программу', ...             % - «адаЄм надпись на нЄм свою надпись «акрыть   
  'Position', [230, 30, 115, 30], ...  % - «адаЄм позицию кнопки, где первые два числа - это координаты, а далее ширина и высота кнопки    
  'CallBack','close')   % - «адаЄм функцию  CallBack и еЄ действие close - закрытие графического окна

end