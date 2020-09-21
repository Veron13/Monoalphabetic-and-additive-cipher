function TheMonoalphabeticAdditiveCipher2

figure('MenuBar','None', ... % - �������� ������������ ���� ��� �������� � ������(��� ���� ��, ���� ��� ������ figure())
'Name','TheMonoalphabeticAdditiveCipher', ...          % - �������� �������� �� ����
'NumberTitle','off', ...         % - ������� �������� ����� ����� !!!
'Position', [400, 250, 570, 400])  % - ����� ������� ������� ����������� ����, ��� ������ ��� ����� - ��� ����������, � ����� ������ � ������ ������������ ����  

uicontrol('Style','Text', ... % - ������ ������ ����� - �������� ������������ ������, ����������� � ����� ����������� �������� Text
   'String', '�������������� � ���������� ����', ...             % - ����� �������, � ������ "���� ������ � ���������� �����"   
  'Position', [35, 190, 500, 200], ...  % - ����� ������� ������, ��� ������ ��� ����� - ��� ����������, � ����� ������ � ������ ������
  'Fontsize',24)  % - ����� ������ ������ ������

clc                             % - �������� ������� ������ ���������� ���� :)
clear all                      % - �������� ������� ������ ���������� ���� :)

uicontrol('Style','PushButton', ... % - ������ ������ ������, ����������� � ����� ����������� �������� PushButton
   'String', '����������� ���������� �����', ...             % - ����� ������� �� ���  "����������� ���������� �����" 
  'Position', [20, 260, 180, 30], ...  % - ����� ������� ������, ��� ������ ��� ����� - ��� ����������, � ����� ������ � ������ ������    
  'CallBack',@theloadtext)   % - ����� �������  CallBack � � �������� � ������� ������ �� ������ ������� theloadtext

%%%%%%%%%%%%%%%%%%%%
 function theloadtext(h,eventdata) % - ���������� ��� ��������� ����
       load text Words; % - ��������� ����� �� ������ m-�����
  set(Text,'String',Words); % - ��������� ����� � ���� ��� ������ � ���
 end
%%%%%%%%%%%%%%%%%%%%

Important1 = uicontrol('Style','edit', ... % - ������ ���� ��� ����� �����, ����������� �� ������ � ����������� ��������  EditText
   'String', '', ...             % - ����� �� �� ����������� �������    
  'Position', [300, 90, 100, 30])  % - ����� ������� ����, ��� ������ ��� ����� - ��� ����������, � ����� ������ � ������ ������� 

uicontrol('Style','Text', ... % - ������ ������� ��� �����, ����������� �� ������ � ����������� ��������  Text
   'String', '������� ���� (����� ����� �� 0 �� 150):', ...      % - ����� ���� �������   
  'Position', [170, 84, 130, 40], ...  % - ����� ������� ����, ��� ������ ��� ����� - ��� ����������, � ����� ������ � ������ ������
  'Fontsize',10)  % - ����� ������ ������ ������

Toggle1 = uicontrol('Style','ToggleButton', ... % - ������ ������ � ��������� ��� ����, ����������� �� ������ � ����������� �������� ToggleButton
   'String', '��������� ���������� �����', ...             % - ����� ������� �� ��� ��� ��������  "��������� ���������� �����" 
  'Position', [25, 150, 170, 30], ...  % - ����� ������� ������, ��� ������ ��� ����� - ��� ����������, � ����� ������ � ������ ������    
  'CallBack',@Togglewow1)   % - ����� �������  CallBack � � �������� � ������� Togglewow1

Text = uicontrol('Style','edit', ... % - ������ ���� ��� ������ � �������, ����������� �� ������ �  ����������� �������� EditText
   'String', '', ...             % - ����� ���� ������� ""   
  'Position', [200, 150, 170, 140]) ...  % - ����� ������� ������, ��� ������ ��� ����� - ��� ����������, � ����� ������ � ������ ������  
  
%%%%%%%%%
   function Togglewow1(h,eventdata) % - ������ ������� ��� ��������� ������ ������
       load text Words; % - ��������� ����� �� ������ m-�����
       load ourtext Words228;
        if get (Toggle1,'Value') == 0  % - ���� �� �������� �� ������ ��� ��������� ������ ������, 
        set(Text,'String',Words228)          %  - ���������� �������� �����
         set(Toggle1,'String','��������� ���������� �����') % - ������ ������� ������� �� ������ ��� ������� �������
        else
            Words228 = get(Text,'String');
             save ourtext Words228;     % - ���������� ��� ����� ��� ��� ��������
            Words = get(Text,'String'); % - ���������� ����� � ��������� ���� ��� ���������
          
            %%%%%%%%%% - ������ ����� ������� �� ������� � ������� �����
num = str2num(get(Important1,'String'));    % - �������� ������� ����� ��� ���������

        if length(num) == 0  | num == 0
            msgbox('������� ����!!!','����','Modal')   % - � ������ ���������� ����� ��� ������ ���� ��������� �������� �� ����� � �� ���� �������
        else        
Key1 = str2num(get(Important1,'String')); % ����

        end
        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% - ���������
Alpha = ' AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz�����������娸����������������������������������������������������1234567890!?.,()-+=_*&:^%$#@~"�;' % - ����� ����������� �������
Len = length(Alpha);
Alpha2 = '';
Alphab = [];

% - ���������
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

%%%%%%%%% ��������� ���� �����
Words = get(Text,'String');  % - ������� ���� ��������� ���������
Len2 = length(Words);

for evil = 1:1:Len2
  steam(evil) = findstr(Alpha,Words(evil));
  Words(evil) = Alpha2(steam(evil));
end

%%% - ��������� ��� ����� � ������� ����������� ����� !!!!!!!!!!!!!!!!!!!

Key2 = str2num(get(Important1,'String')); % ����
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
% - �������������� ������ � ������� �����
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
            set(Text,'String',Words) % - ��� �����
              team = get(Text,'String');
            set(Toggle1,'String','���������� �������� �����') % - ������ ������� ������� �� ������ ��� ������� �������
            save strangetext team;
        end
   end
%%%%%%%%%%%

Toggle2 = uicontrol('Style','ToggleButton', ... % - ������ � ��������� ��� ����, ����������� �� ������ � ����������� �������� ToggleButton
   'String', '����������� ���������� �����', ...             % - ����� ������� �� �� ���� ������� Toggle   
  'Position', [373, 260, 170, 30], ...  % - ����� ������� ������, ��� ������ ��� ����� - ��� ����������, � ����� ������ � ������ ������    
  'CallBack',@Togglewow2)   % - ����� �������  CallBack � � �������� � ������� Togglewow2

%%%%%%%%%
   function Togglewow2(h,~)
        if get (Toggle1,'Value') == 1 % - ������� ���, ����� ����������� ������ ���� ������ � ��� ������, ���� ����� ��� ��� ����������
        if get (Toggle2,'Value') == 0  % - ���� �� �������� �� ������ ��� ����������� ������ ������,
             load strangetext team;
        set(Text,'String',team) %  - ���������� �������� ������������� �����
        set(Toggle2,'String','����������� ���������� �����') % - ������ ������� ������� �� ������ ��� ������� �������
        else
            
            %%%%%%%%%%%%%%%%%
             %%%%%%%%%% - ������ ����� ������� �� ������� � ������� �����     
num = str2num(get(Important1,'String'));    % - �������� ������� ����� ��� �������
        if length(num) == 0 | num == 0
            msgbox('������� ����!!!','����','Modal')   % - � ������ ���������� ����� ��� ������ ���� ��������� �������� �� ����� � �� ���� �������
        else        
Key1 = str2num(get(Important1,'String')); % ����
Key2 = str2num(get(Important1,'String')); % ������
        end
%%%%%%%%%%%%%%%%%%%% �����������
Alpha = ' AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz�����������娸����������������������������������������������������1234567890!?.,()-+=_*&:^%$#@~"�;' % - ����� ����������� �������
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% - ���������� 
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
            set(Text,'String',Words) % - ���� �������� �����
             set(Toggle2,'String','���������� ������������� �����') % - ������ ������� ������� �� ������ ��� ������� �������
        end
        end
   end
%%%%%%%%%%%

uicontrol('Style','PushButton', ... % - ������ ������ ������, ����������� �� ������ � ����������� �������� PushButton
   'String', '���������� ���������� �����', ...             % - ����� �� ��� ���� ������� "���������� ���������� �����"
  'Position', [373, 150, 180, 30], ...  % - ����� ������� ������, ��� ������ ��� ����� - ��� ����������, � ����� ������ � ������ ������    
  'CallBack',@thesavetext)   % - ����� ������� CallBack � � �������� � ������� ������ �� ������� the savetext
%%%%%%%%%%%%%%%%%%%%
 function thesavetext(h,eventdata) % - ��������� ��� ��������� ����
     Words = get(Text,'String');   % - ����������� �������� ������ ������ �����, � ������ ����� � ������� Text
        save text2 Words; % - ��������� ����� �� � ����� m-�����
 end
%%%%%%%%%%%%%%%%%%%%

uicontrol('Style','PushButton', ... % - ������ ������ ������, ����������� � ����� ����������� �������� PushButton
   'String', '������� ���������', ...             % - ����� ������� �� �� ���� ������� �������   
  'Position', [230, 30, 115, 30], ...  % - ����� ������� ������, ��� ������ ��� ����� - ��� ����������, � ����� ������ � ������ ������    
  'CallBack','close')   % - ����� �������  CallBack � � �������� close - �������� ������������ ����

end