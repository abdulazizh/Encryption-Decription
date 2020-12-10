clc
clear all
close all

im=imread('C:\Users\UB\Desktop\MATLAB_\stegno\Green.jpg'); %read image
figure(1)
imshow(im)
title('Orginel');

text = fileread('C:\Users\UB\Desktop\MATLAB_\stegno\message.txt') %We Read The File.
fid=fopen('C:\Users\UB\Desktop\MATLAB_\stegno\message.txt');
dna=fread(fid,'*char');

key='key-test';     % Enter Key here>>>

binary = reshape(dec2bin(text, 8)' , 1, []);
binary
binaryArray = logical(binary - '0');

%==============================%
% Encode Message to DNA format %
%        '00' => 'A'           %
%        '01' => 'T'           %
%        '10' => 'G'           %
%        '11' => 'C'           %
%  ============================%
idx=1;
for k = 1 : 2 : length(binary) 
    switch binary(k:k+1)
        case '00'
            DNA_code='A';
        case '01'
            DNA_code='T';
        case '10'
            DNA_code='G';
        case '11'
            DNA_code='C';
    end
    DNA_msg(idx)=DNA_code;
    idx=idx+1;
end
% Display DNA Message
DNA_msg
% End of Encodeing Message to DNA format

%   xor Chipher Here!!!

cipher_DNA_msg=xorEncrypt(DNA_msg,key);

%-----------------
ascii_msg=double(cipher_DNA_msg);
binasc=dec2bin(ascii_msg,8);
[rt, ct]=size(binasc);

%if we use 3D image--------------
[r c f]=size(im);
% convert image to binary
imageBIN=dec2bin(im);
%----------LSB--------------
for i=1:1:rt*ct
    imageBIN(i,8) =binasc(i);
end
ENCimage=uint8(reshape(bin2dec(imageBIN),r,c,f ));
figure(2);
imshow(ENCimage)
title('ENCimage');

%Display Peak-to-Noise-Ratio
PSNR = psnr(im,ENCimage);

%--------------------%
BIN_Stego_img=dec2bin(ENCimage);
BIN_text=BIN_Stego_img(1:rt*ct,8);
ascimessage=bin2dec(reshape(BIN_text ,rt,ct ) );
messageDEc = char(ascimessage)'

% xor dechipher
cipher_DNA_msg=xorDecrypt(messageDEc,key);
%---------------%

DNA_msg=cipher_DNA_msg;
%--------------------%

%==============================%
% Decode Message From DNA format %
%        'A' => '00'           %
%        'T' => '01'           %
%        'G' => '10'           %
%        'C' => '11'           %
%  ============================%
idx=1;
for k = 1 : length(DNA_msg) 
    switch DNA_msg(k)
        case 'A'
            BIN_code='00';
        case 'T'
            BIN_code='01';
        case 'G'
            BIN_code='10';
        case 'C'
            BIN_code='11';
    end
    BIN_msg(idx:idx+1)=BIN_code;
    idx=idx+2;
end
% Display DNA Message
DNA_msg
BIN_msg
BIN_ASCII_msg=reshape(BIN_msg,8,[])';
Restored_msg=char(bin2dec(BIN_ASCII_msg))'
PSNR
% End of Decodeing Message from DNA format



