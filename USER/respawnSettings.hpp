//WAVE RESPAWN =================================================================
waveRespawnEnabled = 1;                                                         //Wave Respawn ein-/ausschalten (1/0)

bluforWaveSize = -1;                                                            //Wellengröße Blufor (-1 == automatisch)
opforWaveSize = -1;                                                             //Wellengröße Opfor (-1 == automatisch)
indepWaveSize = -1;                                                             //Wellengröße Independent (-1 == automatisch)

bluforWaveLifes = 1;                                                         //Wie oft ein Blufor Spieler respawnen kann
opforWaveLifes = 1;                                                          //Wie oft ein Opfor Spieler respawnen kann
indepWaveLifes = 1;                                                          //Wie oft ein Independent Spieler respawnen kann

bluforInterruptCondition = "false";                                             //Bedingung nach der der Blufor Waverespawn deaktiviert wird
opforInterruptCondition = "false";                                              //Bedingung nach der der Opfor Waverespawn deaktiviert wird
indepInterruptCondition = "false";                                              //Bedingung nach der der Independent Waverespawn deaktiviert wird

waverespawntimePlayer = 180;                                                     //Spielerrespawnzeit, bevor er der Welle hinzugefügt wird

waverespawntimeBlu = 300;                                                        //Wellenrespawnzeit Blufor in Sekunden
waverespawntimeOpf = 300;                                                        //Wellenrespawnzeit Opfor in Sekunden
waverespawntimeInd = 300;                                                        //Wellenrespawnzeit Independent in Sekunden


//NORMALER RESPAWN =============================================================//Diese Einträge sind nur bei ausgeschaltetem Wave Respawn wichtig
respawntimeBlu = 9999;                                                          //Respawnzeit Blufor in Sekunden
respawntimeOpf = 9999;                                                          //Respawnzeit Opfor in Sekunden
respawntimeInd = 9999;                                                          //Respawnzeit Independent in Sekunden
