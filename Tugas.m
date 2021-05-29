% Waffiq Aziz / 123190070
clc
clear

disp('PERCEPTRON POLA FUNGSI LOGIKA “OR”')
disp("TAHAP-TAHAPNYA : ");
% MENGHITUNG PERUBAHAN BOBOT
fprintf("1. Definisikan POLA INPUT yang akan dihitung\n")
fprintf("   dan TARGET\n")
    p1 = [1;1];
    p2 = [1;0];
    p3 = [0;1];
    p4 = [0;0];
    fprintf("\nPola")
    p = [p1 p2 p3 p4]

% Mendefinisikan TARGET 
% yang membedakan dengan logika “AND” adalah 
% logika OR targetnya akan bernilai 0 jika semua pola 0
    t1 = 1;
    t2 = 1;
    t3 = 1;
    t4 = 0; % t4 = 0, karena p4 bernilai 0 semua
    fprintf("Target")
    t = [t1 t2 t3 t4]

    
disp("*Hasil diatas merupakan Pola Input Logika “OR”,");
disp(" targetnya akan bernilai 0 jika semua nilai pola adalah 0")

fprintf("\n2. Membuat PERCEPTRON baru\n");
% PERCEPTRON adalah salah satu model yang dapat 
% diselesaikan secara sederhana dengan Matlab
    disp("   Dengan perintah -> net = newp([0 1;0 1],1)");
    net = newp([0 1;0 1],1);

fprintf("\n3. Mendefinisikan BOBOT awal\n");
    disp("   Dengan perintah");
    disp("   bobot = [-1 1]");
    disp("   net.IW {1,1} = bobot");
    bobot = [-1 1];
    net.IW {1,1} = bobot;

% Mendefinisikan NILAI BIAS awal
    fprintf("\n4. Mendefinisikan NILAI BIAS awal\n");
    disp("   Dengan perintah");
    disp("   bias = 1");
    disp("   net.b {1} = bias");
    bias = 1;
    net.b {1} = bias;
    

% Menghitung keluaran PERCEPTRON  pada setiap pola input 
    % Menghitung hasil keluaran PERCEPTRON 1
        fprintf("\n5. Menghitung keluaran PERCEPTRON pada setiap pola input\n");
        disp("Tahapan setiap pola inputan : ");
        disp("- Keluaran masing-masing pola PERCEPTRON -> a(n) = sim(net, p(n))");
        disp("- Kesalahan ->  e(n) = t(n)-a(n)");
        disp("- Pengubah Bobot -> dW = learnp(bobot,p(n),[],[],[],[],e(n),[],[],[],[],[])");
        disp("- Bobot setelah diubah -> bobot = bobot + dW");
        disp("Ket : n = index");
        
        fprintf("\nSehingga didapatkan masing masing pola input\n\n");
        disp ('Pola PERCEPTRON 1');
        a1 = sim(net, p1);
        e1 = t1-a1;
        % learnp  digunakan untuk menyimpan besarnya perubahan 
            dW = learnp(bobot,p1,[],[],[],[],e1,[],[],[],[],[]);
        % untuk mmperoleh bobot baru dengan cara hasil dW yang 
        % ditambahkan dengan vektor bobot pada variable dW
            bobot = bobot + dW;
        % ouput
            fprintf("a1\t\t: %i \n", a1);
            fprintf("e1\t\t: %i \n", e1);
            fprintf("dW\t\t: ");
            fprintf("%i ", dW);
            fprintf("\nbobot\t: ");
            fprintf("%i ", bobot);
            fprintf("\n\n");
            
    % Menghitung hasil keluaran PERCEPTRON 2   
        disp ('Pola PERCEPTRON 2');
        a2 = sim(net, p2);
        e2 = t2-a2;
        dW = learnp(bobot,p2,[],[],[],[],e2,[],[],[],[],[]);
        bobot = bobot + dW;
        % ouput
        fprintf("a2\t\t: %i \n", a2);
        fprintf("e2\t\t: %i \n", e2);
        fprintf("dW\t\t: ");
        fprintf("%i ", dW);
        fprintf("\nbobot\t: ");
        fprintf("%i ", bobot);
        fprintf("\n\n");
        
    % Menghitung hasil keluaran PERCEPTRON 3 
        disp ('Pola PERCEPTRON 3');
        a3 = sim(net, p3);
        e3 = t3-a3;
        dW = learnp(bobot,p3,[],[],[],[],e3,[],[],[],[],[]);
        bobot = bobot + dW;
        % ouput
        fprintf("a3\t\t: %i \n", a3);
        fprintf("e3\t\t: %i \n", e3);
        fprintf("dW\t\t: ");
        fprintf("%i ", dW);
        fprintf("\nbobot\t: ");
        fprintf("%i ", bobot);
        fprintf("\n\n");

    % Menghitung hasil keluaran PERCEPTRON 4 
        disp ('Pola PERCEPTRON 4');
        a4 = sim(net, p4);
        e4 = t4-a4;
        dW = learnp(bobot,p4,[],[],[],[],e4,[],[],[],[],[]);
        bobot = bobot + dW;
        % ouput
        fprintf("a4\t\t: %i \n", a4);
        fprintf("e4\t\t: %i \n", e4);
        fprintf("dW\t\t: ");
        fprintf("%i ", dW);
        fprintf("\nbobot\t: ");
        fprintf("%i ", bobot);
        fprintf("\n\n");
        
        disp("Dari hasil diatas tidak ada perubahan bobot");
        disp("dan terjadi kesalahan pada Pola PERCEPTRON 4");
        disp("Selanjutnya cek terlebih dahulu keluaran PERCEPTRON");
        fprintf("\n");
        
fprintf("\n6. Menghitung Keluaran PERCEPTRON\n");    
    disp("dengan perintah -> a = sim(net, p)");
    a = sim(net, p);
    disp("Hasilnya(a) : ");
    disp(a);
    
    disp("Dari hasil, dilihat bahwa hasil belum sama");
    disp("dengan target dan terdapat kesalahan : ");
    disp("Perintah untuk menghitung kesalahan dengan");
    disp("e = t - a");
    e = t - a;
    disp("Kesalahan(e) :");
    disp(e);
    disp("Nilai -1 berasal dari kesalahan Pola PERCEPTRON 4");
    
    disp("Hasil yang diinginkan seharusnya sama dengan target yakni : ");
    disp(t);
    disp("oleh karena itu untuk mencapai target perlu ada pelatihan lagi");
    disp("untuk epoch berikutnya hingga nilai e = 0 ");        
        
% Pelatihan Perceptron
    fprintf("\n7.  Pelatihan Perceptron\n");
    disp("Sebelum pelatihan : ")
    a
    
    disp("Untuk Pelatihan dengan perintah -> net = train(net, p , t)"); 
    net = train(net, p , t);
    
    disp("Setelah Pelatihan : ")
    a = sim (net, p)
    disp("Hasil sama dengan target : ")
    disp("Target")
    disp(t);
% tampilkan nilai bobot dan bias pada keadaan optimal
    disp("Nilai bobot dan bias pada keaddan optimal");
    disp("Bobot : ");
    disp (net.IW {1, 1});
    disp("Bias : ");
    disp (net.b {1});
    
        
        
        
        
        
        
        
        
        
        
