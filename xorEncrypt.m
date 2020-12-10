function Enc_msg=xorEncrypt(plaintxt,key)
    % xorEncrypt  is a simple XOR cipher is a type of additive cipher
    % cipherText = xorEncrypt(msg,key) returns the ciphertext of the msg plaintext, 
    % where: msg and key is a string.    
    % msg: the string message to cipher it
    % key: the key that used to xoring with message
    %
    %     Example:
    %        msg='ABCDE!';
    %        key='key';
    %        cipherText=xorEncrypt(msg,key)
    %        cipherText =
    %             '*':/ X'

    msglen=length(plaintxt);
    keylen=length(key);
    newkey=key;
    for i=1:keylen:msglen
        newkey=[newkey key];
    end
    key=newkey(1:msglen);
    Enc_msg=char(bitxor(uint8(plaintxt),uint8(key)));
end
