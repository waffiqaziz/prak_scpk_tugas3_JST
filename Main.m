% Waffiq Aziz / 123190070
clc
clear

% PERCEPTRON POLA FUNGSI LOGIKA “AND”

% PEMBENTUKAN INPUT DAN TARGET
    % rumus umum -> net= newp (PR,S,TF,LF)
    
    % PR	:	Merupakan matriks dengan ordo Rx2 yang menyatakan nilai minimum 
    %           dan maksimum dari tiap unit input. (terdapat R buah unit input)
    % S     :	Jumlah neuron target
    % TF	:	Fungsi aktifasi (default : fungsi threshold yang pada MATLAB 
    %           disebut hardlim)
    % LF	:	Fungsi pelatihan (default: Learnp)
    
%     net = newp ([0 1; 0 1],1);
    % Matrik [0 1] nilai X1 dan yang kedua nilai X2
    % 1 menunjukkan bahwa perceptron tersebut hanya memiliki sebuah target 
    
    % MENGUBAH BOBOT
%         net.IW{1,1} = [-1 1];
    % PENENTUAN BIAS
%         net.b{1} = (1);
    % POLA
%         p = [[1;1],[1;0],[0;1],[0;0]];
    % TARGET    
%         t = [1 0 0 0];

% MENGHITUNG KELUARAN PERCEPTRON (HITUNG OUTPUT NETWORK)
    % format sim -> [Y, Pf, Af, E, perf] = sim(n, P, Pi, Ai, T)
    % Parameter Masukan
        %  n : variabel jaringan dalam perintah newp.
        %  P : vektor masukan jaringan.
        %  Pi : kondisi delay awal masukan, dengan nilai default adalah 0.
        %  Ai : kondisi delay layar, dengan nilai default adalah 0.
        %  T : target dai ja ringan, dengan nilai default adalah 0.
    % Parameter Hasil
        %  Y : keluaran jaringan.
        %  Pf : kondisi delay akhir masukan.
        %  Af : kondisi akhir delay layar.
        %  E : error jaringan ( T – Y ).
        %  perf : kinerja jaringan.

    % Dari format sim  Pi, Ai, Pf, dan Af 
    % hanya digunakan ketika jaringan memiliki delay, 
    % jika tidak diketahui nilai delay untuk jaringan tersebut dan hanya 
    % digunakan untuk menghitung nilai keluran nya saja bisa menggunakan
    % statemen sim secara sederhana yaitu :
%         y = sim(net,p);
    % output yang ditampilkan hanya hasil keluaran jaringan  
    % perceptron berdasarkan bobot dan bias yang sudah dibentuk
    
    % Uutuk mengetahui besarnya error dan performansi dari jaringan 
    % tersebut maka parameter untuk statement sim akan ditambah menjadi:
%         [a, Pf, Af, e, perf] = sim(net,p,[],[],t);
    
% MENAMPILKAN OUTPUT
% Y 
% Pf 
% Af 
% E 
% perf

% MENGHITUNG PERUBAHAN BOBOT
% Definisikan pola input yang akan dihitung
    p1 = [1;1];
    p2 = [1;0];
    p3 = [0;1];
    p4 = [0;0];
    p = [p1 p2 p3 p4];

% Definisikan target
    t1 = 1;
    t2 = 0;
    t3 = 0;
    t4 = 0;
    t = [t1 t2 t3 t4];        

% Buat perceptronnya
    net = newp([0 1;0 1],1);

% Definisikan bobot awalnya
    bobot = [-1 1];
    net.IW {1,1} = bobot;

% Definisikan nilai bias awalnya
    bias = 1;
    net.b {1} = bias;
        
disp ('pola p1: ')
a1 = sim(net, p1)
e1 = t1-a1
dW = learnp(bobot,p1,[],[],[],[],e1,[],[],[],[],[])
bobot = bobot + dW
disp ('pola p2: ')
a2 = sim(net, p2)
e2 = t2-a2
dW = learnp(bobot,p2,[],[],[],[],e2,[],[],[],[],[])
bobot = bobot + dW
disp ('pola p3: ')
a3 = sim(net, p3)
e3 = t3-a3
dW = learnp(bobot,p3,[],[],[],[],e3,[],[],[],[],[])
bobot = bobot + dW
disp ('pola p4: ')
a4 = sim(net, p4)
e4 = t4-a4
dW = learnp(bobot,p4,[],[],[],[],e4,[],[],[],[],[])
bobot = bobot + dW        

% Pelatihan Perceptron
    a = sim (net, p)
    e = t - a

    net = train(net, p , t);
    
    % mengetahui bobot dan bias pada keadaan optimal
    disp (net.IW {1, 1})
    disp (net.b {1})
    
        
        
        
        
        
        
        
        
        
        
