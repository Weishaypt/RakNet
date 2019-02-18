const ID_AIM_SYNC = 117; //ID пакета

IPacket:ID_AIM_SYNC(playerid, BitStream:bs)

{

	new AIMSYNC[PR_AimSync];

	BS_IgnoreBits(bs, 8); //Игнорируем биты

	BS_ReadAimSync(bs, AIMSYNC);//Считываем информацию

	

  	//Выполняем проверку

 	if(AIMSYNC[PR_camFrontVec][0] != AIMSYNC[PR_camFrontVec][0] || floatcmp(floatabs(AIMSYNC[PR_camFrontVec][0]), 1.0000) == 1

		|| AIMSYNC[PR_camFrontVec][1] != AIMSYNC[PR_camFrontVec][1] || floatcmp(floatabs(AIMSYNC[PR_camFrontVec][1]), 1.0000) == 1

		|| AIMSYNC[PR_camFrontVec][2] != AIMSYNC[PR_camFrontVec][2] || floatcmp(floatabs(AIMSYNC[PR_camFrontVec][2]), 1.0000) == 1

		|| AIMSYNC[PR_camPos][0] != AIMSYNC[PR_camPos][0] || floatcmp(floatabs(AIMSYNC[PR_camPos][0]), 3500.0000) == 1

		|| AIMSYNC[PR_camPos][1] != AIMSYNC[PR_camPos][1] || floatcmp(floatabs(AIMSYNC[PR_camPos][1]), 3500.0000) == 1

		|| AIMSYNC[PR_camPos][2] != AIMSYNC[PR_camPos][2] || floatcmp(floatabs(AIMSYNC[PR_camPos][2]), 3500.0000) == 1)

	{

        	return false; // Делаем десинхронизацию

	}

    return 1;

}
