Encryption-Decription
Matlab Functions
1. xorEncrypt.
2. xorDecrypt.
3. DNA_Decoder.
4. DNA_Encoder.

usage:
     ----------------------------------xorEncrypt-------------------------------------------
     xorEncrypt  is a simple XOR cipher is a type of additive cipher
     cipherText = xorEncrypt(msg,key) returns the ciphertext of the msg plaintext, 
     where: msg and key is a string.    
     msg: the string message to cipher it
     key: the key that used to xoring with message
    
         Example:
            msg='ABCDE!';
            key='key';
            cipherText=xorEncrypt(msg,key)
            cipherText =
                 '*':/ X'
     ---------------------------------xorDecrypt---------------------------------------------
     xorDecrypt  is a simple XOR cipher is a type of additive cipher
     plaintext = xorDecrypt(msg,key) returns the plaintext from the ciphertext msg ,    
     where: msg and key is a string.    
     msg: the string message to cipher it
     key: the key that used to xoring with message
    
        Example:
             msg='ABCDE!';
             key='key';
             cipherText=xorEncrypt(msg,key)
             plaintext=xorDecrypt(cipherText,key)
             plaintext=
                 'ABCDE!'
     -----------------------------------DNA_Encoder--------------------------------------------
     DNA_msg=DNA_Encoder(msg)
    %==============================%
    % Encode Message to DNA format %
    %        '00' => 'A'           %
    %        '01' => 'C'           %
    %        '10' => 'G'           %
    %        '11' => 'T'           %
    %  ============================%
    -------------------------------------DNA_Decoder--------------------------------------------
    Restored_msg=DNA_Decoder(DNA_msg)
    %==============================%
    % Decode Message From DNA format %
    %        'A' => '00'           %
    %        'C' => '01'           %
    %        'G' => '10'           %
    %        'T' => '11'           %
    %  ============================%
    
    
