public OnIncomingRPC(playerid, rpcid, BitStream:bs)
{
    switch(rpcid)
    {
        case 81: //ClientJoin 
        {
            new iVersion,
            byteMod,
            byteNameLen,
            NickName[24],
            uiClientChallengeResponse,
            byteAuthBSLen,
            auth_bs[4*16],
            iClientVerLen,
            ClientVersion[30];
 
            BS_ReadValue(
                bs,
                PR_INT32, iVersion,
                PR_UINT8, byteMod,
                PR_UINT8, byteNameLen,
                PR_STRING, NickName, byteNameLen,
                PR_UINT32, uiClientChallengeResponse,
                PR_UINT8, byteAuthBSLen,
                PR_STRING, auth_bs, byteAuthBSLen,
                PR_UINT8, iClientVerLen,
                PR_STRING, ClientVersion, iClientVerLen
            );
            //printf("ClientVersion[%d]: %s\n", playerid, ClientVersion);
            if(strcmp(ClientVersion, "0.3e") == 0) printf("%s[%d] использует версию CR-MP: %s", NickName, playerid, ClientVersion);
            else printf("%s[%d] использует версию CR-MP: %s. Возможно RakSamp, S0beit, Обход", NickName, playerid, ClientVersion);
        }
    }

    return 1;
}
