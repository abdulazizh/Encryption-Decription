function Dec_msg=xorDecrypt(ciphertxt,key)
    % xorDecrypt  is a simple XOR cipher is a type of additive cipher
    % plaintext = xorDecrypt(msg,key) returns the plaintext from the ciphertext msg ,    
    % where: msg and key is a string.    
    % msg: the string message to cipher it
    % key: the key that used to xoring with message
    %
    %     Example:
    %         msg='ABCDE!';
    %         key='key';
    %         cipherText=xorEncrypt(msg,key)
    %         plaintext=xorDecrypt(cipherText,key)
    %         plaintext=
    %             'ABCDE!'
    %        
    
    
    msglen=length(ciphertxt);
    keylen=length(key);
    newkey=key;
    for i=1:keylen:msglen
        newkey=[newkey key];
    end
    key=newkey(1:msglen);
    Dec_msg=char(bitxor(uint8(ciphertxt),uint8(key)));
end
