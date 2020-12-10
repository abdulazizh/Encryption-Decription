function Restored_msg=DNA_Decoder(DNA_msg)
    %==============================%
    % Decode Message From DNA format %
    %        'A' => '00'           %
    %        'C' => '01'           %
    %        'G' => '10'           %
    %        'T' => '11'           %
    %  ============================%
    idx=1;
    for k = 1 : length(DNA_msg) 
        switch DNA_msg(k)
            case 'A'
                BIN_code='00';
            case 'C'
                BIN_code='01';
            case 'G'
                BIN_code='10';
            case 'T'
                BIN_code='11';
        end
        BIN_msg(idx:idx+1)=BIN_code;
        idx=idx+2;
    end
    BIN_ASCII_msg=reshape(BIN_msg,8,[])';
    Restored_msg=char(bin2dec(BIN_ASCII_msg))';
end
