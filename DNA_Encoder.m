function DNA_msg=DNA_Encoder(msg)
    %==============================%
    % Encode Message to DNA format %
    %        '00' => 'A'           %
    %        '01' => 'C'           %
    %        '10' => 'G'           %
    %        '11' => 'T'           %
    %  ============================%
    binary = reshape(dec2bin(msg, 8)' , 1, []);
    idx=1;
    for k = 1 : 2 : length(binary) 
        switch binary(k:k+1)
            case '00'
                DNA_code='A';
            case '01'
                DNA_code='C';
            case '10'
                DNA_code='G';
            case '11'
                DNA_code='T';
        end
        DNA_msg(idx)=DNA_code;
        idx=idx+1;
    end
end
