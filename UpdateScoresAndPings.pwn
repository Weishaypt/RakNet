new UpdateScoreAndPing[MAX_PLAYERS];
public OnIncomingRPC(playerid, rpcid, BitStream:bs)
{
    switch(rpcid)
    {
        case 105: //UpdateScoresAndPings
        {

			if((gettime()-UpdateScoreAndPing[playerid]) < 6) printf("[%d] возможно использует CR-MP Trainer, Project Armagedon v1-4", playerid);
			
        	UpdateScoreAndPing[playerid] = gettime();
        }
    }

    return 1;
}
