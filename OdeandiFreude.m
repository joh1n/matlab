clear
clc
fs=44100;
T=0.4;
t=1/fs : 1/fs :T;
%%%%%音%%%%%
do=sin(2*pi*261.63*t);
re=sin(2*pi*293.66*t);
mi=sin(2*pi*329.63*t);
fa=sin(2*pi*349.23*t);
so=sin(2*pi*392*t);
la=sin(2*pi*440*t);
si=sin(2*pi*493.88*t);
blk=sin(2*pi*0*t); %blank


yin=[blk,do,re,mi,fa,so,la,si];

%%%%%谱子%%%%%
pu='33455432112332203345543211232110223123431234321200334554321123211';

%%%%%%%%%%%%%%%
song=[];
for i=1:length(pu)

    xx=str2double(pu(i));
    song=[song,yin((1:T*fs)+T*fs*(xx))];

end
sound(song,fs)

