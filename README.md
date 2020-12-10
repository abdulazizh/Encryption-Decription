Encryption-Decription
Matlab Functions
1. xorEncrypt(msg,key).
2. xorDecrypt(msg,key).
3.
4.


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
  
	--------------------------------------------------------------------------------
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
   
