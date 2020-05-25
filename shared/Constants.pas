{*******************************************************}
{                                                       }
{       Constants Unit                                  }
{                                                       }
{       Copyright (c) 2011 Gregor A. Cieslak            }
{                                                       }
{*******************************************************}

unit Constants;

interface

{$DEFINE GFXID}
{$INCLUDE gfx.inc}
{$UNDEF GFXID}

const
  DEFAULT_FONT = 'play-regular.ttf';

  HEADSTYLE_NONE   = 0;
  HEADSTYLE_HELMET = 34;
  HEADSTYLE_HAT    = 124;

  DEFAULT_WIDTH  = 640;
  DEFAULT_HEIGHT = 480;

  DEFAULT_GOALTICKS = 60;

  SCALE = 3;

  MAX_FOV = 1.78;
{$IFDEF SERVER}
  MAX_GAME_WIDTH = 480 * MAX_FOV;
{$ELSE}
  MIN_FOV = 1.25;
  MAX_BIG_MESSAGES = 255;
{$ENDIF}

  // speeds
  RUNSPEED       = 0.118;
  RUNSPEEDUP     = RUNSPEED / 6;
  FLYSPEED       = 0.03;
  JUMPSPEED      = 0.66;
  CROUCHRUNSPEED = RUNSPEED / 0.6;
  PRONESPEED     = RUNSPEED * 4.0;
  ROLLSPEED      = RUNSPEED / 1.2;
  JUMPDIRSPEED   = 0.30;
  JETSPEED       = 0.10;
  CAMSPEED       = 0.14;

  CLUSTER_GRENADES = 3;

  // aimdistances
  DEFAULTAIMDIST = 7;
  SNIPERAIMDIST  = 3.5;
  CROUCHAIMDIST  = 4.5;
  SPECTATORAIMDIST = 30;
  AIMDISTINCR = 0.05;

  BULLETCHECKARRAYSIZE = 20;
  MAX_LOGFILESIZE = 512000;
  SOUND_MAXDIST = 750;
  SOUND_PANWIDTH = 1000;
  SOUND_METERLENGTH = 2000;

  // trails
  BULLETTRAIL = 13;
  M79TRAIL    = 6;

{$IFNDEF SERVER}
  BULLETLENGTH = 21;
{$ENDIF}

  // healths
  DEFAULT_HEALTH      = 150;
  REALISTIC_HEALTH    = 65;
  BRUTALDEATHHEALTH   = -400;
  HEADCHOPDEATHHEALTH = -90;
  HELMETFALLHEALTH    = 70;
  HURT_HEALTH         = 25;

  // time
  PERMANENT      = -1000;
  SECOND         = 60;
  HALF_MINUTE    = SECOND * 30;
  MINUTE         = SECOND * 60;
  FIVE_MINUTES   = MINUTE * 5;
  TWENTY_MINUTES = MINUTE * 20;
  HALF_HOUR      = MINUTE * 30;
  SIXTY_MINUTES  = MINUTE * 60;
  HOUR           = SIXTY_MINUTES;
  DAY            = HOUR * 24;

{$IFNDEF SERVER}
  MORECHATTEXT = 60;
  MAXCHATTEXT  = 85;
  // display time for chars
  SPACECHARDELAY = 68;
  CHARDELAY      = 25;
{$ENDIF}
  MAX_CHATDELAY = SECOND * 7 + 40;

  KILLCONSOLE_SEPARATE_HEIGHT = 8;

  // sound
  DEFAULT_VOLUME_SETTING = 50;

  // animations
  EXPLOSION_ANIMS = 16;
  SMOKE_ANIMS     = 10;

  EXPLOSION_IMPACT_MULTIPLY     = 3.75;
  EXPLOSION_DEADIMPACT_MULTIPLY = 4.5;

  BULLET_TIMEOUT   = SECOND * 7;
  GRENADE_TIMEOUT  = SECOND * 3;
  M2BULLET_TIMEOUT = SECOND;
  FLAMER_TIMEOUT   = 32;
  MELEE_TIMEOUT    = 1;

  M2HITMULTIPLY  = 2;
  M2GUN_OVERAIM  = 4;
  M2GUN_OVERHEAT = 18;
  GUNRESISTTIME  = SECOND * 20;

  GUN_RADIUS  = 10;
  BOW_RADIUS  = 20;
  KIT_RADIUS  = 12;
  STAT_RADIUS = 15;

  ARROW_RESIST = 280;
  ILUMINATESPEED = 0.085;
  MINMOVEDELTA  = 0.63;

  POSDELTA = 60.0;
  VELDELTA = 0.27;

  MOUSEAIMDELTA = 30;
  SPAWNRANDOMVELOCITY = 25;

  FLAG_TIMEOUT     = SECOND * 25;
  WAYPOINTTIMEOUT  = SECOND * 5 + 20;  // = 320
  WAYPOINT_TIMEOUT = 480; // TODO: why the duplication?

  WAYPOINTSEEKRADIUS = 21;

  DEFAULT_INTEREST_TIME = SECOND * 5 + 50;
  FLAG_INTEREST_TIME    = SECOND * 25;
  BOW_INTEREST_TIME     = SECOND * 41 + 40;

  DEFAULT_MAPCHANGE_TIME = SECOND * 5 + 20;

  MEDIKITTHINGSDIV    = 23;
  GRENADEKITTHINGSDIV = 23;

  CONNECTIONPROBLEM_TIME  = SECOND * 4;
  CONNECTIONPROBLEM_TIME2 = SECOND * 5;

  DISCONNECTION_TIME        = SECOND * 15;

  KILLMESSAGEWAIT       = SECOND * 4;
  CAPTUREMESSAGEWAIT    = SECOND * 6;
  GAMESTARTMESSAGEWAIT  = SECOND * 5 + 20;
  CAPTURECTFMESSAGEWAIT = SECOND * 7;


  BLOOD_RANDOM_NORMAL = 10;
  BLOOD_RANDOM_LOW    = 22;
  BLOOD_RANDOM_HIGH   = 6;

  TORCH_RANDOM_NORMAL = 6;
  TORCH_RANDOM_LOW    = 12;

  FIRE_RANDOM_HIGH   = 30;
  FIRE_RANDOM_NORMAL = 50;
  FIRE_RANDOM_LOW    = 70;


  CLIENTMAXPOSITIONDELTA = 169;
  DEFAULT_CEASEFIRE_TIME = 90;
  PREDATORALPHA = 5;
  DEFAULTVEST = 100;

  FLAMERBONUSTIME    = 600;
  PREDATORBONUSTIME  = 1500;
  BERSERKERBONUSTIME = 900;

  FLAMERBONUS_RANDOM    = 5;
  PREDATORBONUS_RANDOM  = 5;
  VESTBONUS_RANDOM      = 4;
  BERSERKERBONUS_RANDOM = 4;
  CLUSTERBONUS_RANDOM   = 4;

  BONUS_NONE      = 0;
  BONUS_GRENADES  = 17;
  BONUS_FLAMEGOD  = 18;
  BONUS_PREDATOR  = 19;
  BONUS_VEST      = 20;
  BONUS_BERSERKER = 21;
  BONUS_CLUSTERS  = 22;

  CURSORSPRITE_DISTANCE = 15;
  CLIENTSTOPMOVE_RETRYS = 90;
  MULTIKILLINTERVAL = 180;

  DEFAULT_IDLETIME = SECOND * 8;
  LONGER_IDLETIME  = HALF_MINUTE;

  FRAGSMENU_PLAYER_HEIGHT = 15;
  GRENADEEFFECT_DIST = 38;
  HTF_SEC_POINT = 300;

  BACKGROUND_WIDTH = 64;

  MAX_ADMIN_FLOOD_IPS = 200;
  MAX_LAST_ADMIN_IPS  = 5;

  WAVERESPAWN_TIME_MULITPLIER = 1;

  PARA_SPEED    = -0.5 * 0.06; // GRAV
  PARA_DISTANCE = 500;

  MAX_OLDPOS = 125;
{$IFDEF SERVER}
  MAX_PUSHTICK = 0;
{$ELSE}
  MAX_PUSHTICK = 125;
{$ENDIF}
  MAX_INACCURACY = 0.5;

  THING_PUSH_MULTIPLIER    = 9;
  THING_COLLISION_COOLDOWN = 60;

  FIREINTERVAL_NET = 5;
  MELEE_DIST = 12;

  MULTIKILLMESSAGE: array[2..17] of WideString = ('DOUBLE KILL', 'TRIPLE KILL',
    'MULTI KILL', 'MULTI KILL X2', 'SERIAL KILL', 'INSANE KILLS', 'GIMME MORE!',
    'MASTA KILLA!', 'MASTA KILLA!', 'MASTA KILLA!', 'STOP IT!!!!',
    'MERCY!!!!!!!!!!', 'CHEATER!!!!!!!!',
    'Phased-plasma rifle in the forty watt range',
    'Hey, just what you see, pal', 'just what you see, pal...');


  DEFAULT_JETCOLOR = $FFFFBD24;

  IDLE_KICK      = MINUTE * 3;
  MENU_TIME      = SECOND;
  LESSBLEED_TIME = SECOND * 2;
  NOBLEED_TIME   = SECOND * 5;
  ONFIRE_TIME    = SECOND * 4;

  SURVIVAL_RESPAWNTIME = SECOND * 5;
  DEFAULT_VOTE_TIME    = MINUTE * 2;
  DEFAULT_VOTING_TIME  = SECOND * 20;

{$IFNDEF SERVER}
  WEP_RESTRICT_WIDTH  = 64;
  WEP_RESTRICT_HEIGHT = 64;
  GOS_RESTRICT_WIDTH  = 16;
  GOS_RESTRICT_HEIGHT = 16;
{$ENDIF}

  TEXTSTYLE  = 0;
  HORIZONTAL = 1;
  VERTICAL   = 2;

  // Colors
  DEFAULT_MESSAGE_COLOR = $EECCFFAA;
  DEBUG_MESSAGE_COLOR   = $EEFF8989;
  GAME_MESSAGE_COLOR    = $EE71F981;
  WARNING_MESSAGE_COLOR = $EEE36952;

  SERVER_MESSAGE_COLOR = $F9FBDA22;
  CLIENT_MESSAGE_COLOR = $F9FCD822;

  ENTER_MESSAGE_COLOR = $F1C3C3C3;

  ABOVECHAT_MESSAGE_COLOR = $FDFDF9;
  CHAT_MESSAGE_COLOR      = $EEEFFEEA;
  TEAMCHAT_MESSAGE_COLOR  = $EEFEDA7C;

  KILL_MESSAGE_COLOR    = $FFEA3530;
  SUICIDE_MESSAGE_COLOR = $D6B3A717;
  DIE_MESSAGE_COLOR     = $FFC53025;

  DEATH_MESSAGE_COLOR  = $EE801304;
  KILLER_MESSAGE_COLOR = $EE52D119;

  GAMESTART_MESSAGE_COLOR = $FFD3CA34;

  CAPTURE_MESSAGE_COLOR = $FF77D334;
  RETURN_MESSAGE_COLOR  = $FF71A331;

  ALPHA_MESSAGE_COLOR   = $FFDF3131;
  BRAVO_MESSAGE_COLOR   = $FF3131DF;
  CHARLIE_MESSAGE_COLOR = $FFDFDF31;
  DELTA_MESSAGE_COLOR   = $FF31DF31;

  ALPHAJ_MESSAGE_COLOR   = $FFE15353;
  BRAVOJ_MESSAGE_COLOR   = $FF5353E1;
  CHARLIEJ_MESSAGE_COLOR = $FFDFDF53;
  DELTAJ_MESSAGE_COLOR   = $FF53DF53;

  BONUS_MESSAGE_COLOR   = $FFEF3121;
  VOTE_MESSAGE_COLOR    = $EEDDEE99;
  MUSIC_MESSAGE_COLOR   = $EEADFE99;
  INFO_MESSAGE_COLOR    = $EEDDDEA2;
  REGINFO_MESSAGE_COLOR = $EEA2DEDD;
  MODE_MESSAGE_COLOR    = $EE81DA41;

  OUTOFSCREEN_MESSAGE_COLOR     = $99DF99;
  OUTOFSCREENDEAD_MESSAGE_COLOR = $983333;
  OUTOFSCREENFLAG_MESSAGE_COLOR = $DCDC33;

  AC_MESSAGE_COLOR = $EEE739B1;

  ALPHA_K_MESSAGE_COLOR   = $EBFFE3E3;
  BRAVO_K_MESSAGE_COLOR   = $EBD3E3FF;
  CHARLIE_K_MESSAGE_COLOR = $EBFFFFE3;
  DELTA_K_MESSAGE_COLOR   = $EBD3FFE3;

  ALPHA_D_MESSAGE_COLOR     = $EBDAB0B0;
  BRAVO_D_MESSAGE_COLOR     = $EBA0B0DA;
  CHARLIE_D_MESSAGE_COLOR   = $EBD0D0B0;
  DELTA_D_MESSAGE_COLOR     = $EBA0D0BA;
  SPECTATOR_D_MESSAGE_COLOR = $EBD3B727;

  ALPHA_C_MESSAGE_COLOR     = $F5FEE8E8;
  BRAVO_C_MESSAGE_COLOR     = $F5E3E8FE;
  CHARLIE_C_MESSAGE_COLOR   = $F5FEFEE8;
  DELTA_C_MESSAGE_COLOR     = $F5E8FEE8;
  SPECTATOR_C_MESSAGE_COLOR = $F5DF7AB0;

  // 0 represents in some cases all players
  ALL_PLAYERS = 0;

  // Player teams
  TEAM_NONE      = 0;
  TEAM_ALPHA     = 1;
  TEAM_BRAVO     = 2;
  TEAM_CHARLIE   = 3;
  TEAM_DELTA     = 4;
  TEAM_SPECTATOR = 5;

  // Game styles
  GAMESTYLE_DEATHMATCH = 0;
  GAMESTYLE_POINTMATCH = 1;
  GAMESTYLE_TEAMMATCH  = 2;
  GAMESTYLE_CTF        = 3;
  GAMESTYLE_RAMBO      = 4;
  GAMESTYLE_INF        = 5;
  GAMESTYLE_HTF        = 6;

  // Vote types
  VOTE_MAP  = 0;
  VOTE_KICK = 1;

  COLOR_TRANSPARENCY_UNREGISTERED = $FF000000;
  COLOR_TRANSPARENCY_REGISTERED   = $FE000000;
  COLOR_TRANSPARENCY_SPECIAL      = $FD000000;
  COLOR_TRANSPARENCY_BOT          = $FB000000;

  // Polygon types
  PT_ONLYBULLETS        = 1;
  PT_ONLYPLAYERS        = 2;
  PT_DOESNTCOLLIDE      = 3;
  PT_ICE                = 4;
  PT_DEADLY             = 5;
  PT_BLOODYDEADLY       = 6;
  PT_HURTS              = 7;
  PT_REGENERATES        = 8;
  PT_LAVA               = 9;
  PT_ALPHABULLETS       = 10;
  PT_ALPHAPLAYERS       = 11;
  PT_BRAVOBULLETS       = 12;
  PT_BRAVOPLAYERS       = 13;
  PT_CHARLIEBULLETS     = 14;
  PT_CHARLIEPLAYERS     = 15;
  PT_DELTABULLETS       = 16;
  PT_DELTAPLAYERS       = 17;
  PT_BOUNCY             = 18;
  PT_EXPLOSIVE          = 19;
  PT_HURTFLAGGERS       = 20;
  PT_FLAGGERCOLLIDES    = 21;
  PT_NONFLAGGERCOLLIDES = 22;
  PT_FLAGCOLLIDES       = 23;

  // Game objects
  OBJECT_NUM_NONWEAPON   = 12;
  OBJECT_NUM_FLAGS       = 3;

  OBJECT_ALPHA_FLAG      = 1;
  OBJECT_BRAVO_FLAG      = 2;
  OBJECT_POINTMATCH_FLAG = 3;
  OBJECT_USSOCOM         = 4;
  OBJECT_DESERT_EAGLE    = 5;
  OBJECT_HK_MP5          = 6;
  OBJECT_AK74            = 7;
  OBJECT_STEYR_AUG       = 8;
  OBJECT_SPAS12          = 9;
  OBJECT_RUGER77         = 10;
  OBJECT_M79             = 11;
  OBJECT_BARRET_M82A1    = 12;
  OBJECT_MINIMI          = 13;
  OBJECT_MINIGUN         = 14;
  OBJECT_RAMBO_BOW       = 15;
  OBJECT_MEDICAL_KIT     = 16;
  OBJECT_GRENADE_KIT     = 17;
  OBJECT_FLAMER_KIT      = 18;
  OBJECT_PREDATOR_KIT    = 19;
  OBJECT_VEST_KIT        = 20;
  OBJECT_BERSERK_KIT     = 21;
  OBJECT_CLUSTER_KIT     = 22;
  OBJECT_PARACHUTE       = 23;
  OBJECT_COMBAT_KNIFE    = 24;
  OBJECT_CHAINSAW        = 25;
  OBJECT_LAW             = 26;
  OBJECT_STATIONARY_GUN  = 27;

  // Sound effects
  SFX_AK74_FIRE          = 1;
  SFX_ROCKETZ            = 2;
  SFX_AK74_RELOAD        = 3;
  SFX_M249_FIRE          = 5;
  SFX_RUGER77_FIRE       = 6;
  SFX_RUGER77_RELOAD     = 7;
  SFX_M249_RELOAD        = 8;
  SFX_MP5_FIRE           = 9;
  SFX_MP5_RELOAD         = 10;
  SFX_SPAS12_FIRE        = 11;
  SFX_SPAS12_RELOAD      = 12;
  SFX_STANDUP            = 13;
  SFX_FALL               = 14;
  SFX_SPAWN              = 15;
  SFX_M79_FIRE           = 16;
  SFX_M79_EXPLOSION      = 17;
  SFX_M79_RELOAD         = 18;
  SFX_GRENADE_THROW      = 19;
  SFX_GRENADE_EXPLOSION  = 20;
  SFX_GRENADE_BOUNCE     = 21;
  SFX_BRYZG              = 22;
  SFX_INFILTMUS          = 23;
  SFX_HEADCHOP           = 24;
  SFX_EXPLOSION_ERG      = 25;
  SFX_WATER_STEP         = 26;
  SFX_BULLETBY           = 27;
  SFX_BODYFALL           = 28;
  SFX_DESERTEAGLE_FIRE   = 29;
  SFX_DESERTEAGLE_RELOAD = 30;
  SFX_STEYRAUG_FIRE      = 31;
  SFX_STEYRAUG_RELOAD    = 32;
  SFX_BARRETM82_FIRE     = 33;
  SFX_BARRETM82_RELOAD   = 34;
  SFX_MINIGUN_FIRE       = 35;
  SFX_MINIGUN_RELOAD     = 36;
  SFX_MINIGUN_START      = 37;
  SFX_MINIGUN_END        = 38;
  SFX_PICKUPGUN          = 39;
  SFX_CAPTURE            = 40;
  SFX_COLT1911_FIRE      = 41;
  SFX_COLT1911_RELOAD    = 42;
  SFX_CHANGEWEAPON       = 43;
  SFX_SHELL              = 44;
  SFX_SHELL2             = 45;
  SFX_DEAD_HIT           = 46;
  SFX_THROWGUN           = 47;
  SFX_BOW_FIRE           = 48;
  SFX_TAKEBOW            = 49;
  SFX_TAKEMEDIKIT        = 50;
  SFX_WERMUSIC           = 51;
  SFX_TS                 = 52;
  SFX_CTF                = 53;
  SFX_BERSERKER          = 54;
  SFX_GODFLAME           = 55;
  SFX_FLAMER             = 56;
  SFX_PREDATOR           = 57;
  SFX_KILLBERSERK        = 58;
  SFX_VESTHIT            = 59;
  SFX_BURN               = 60;
  SFX_VESTTAKE           = 61;
  SFX_CLUSTERGRENADE     = 62;
  SFX_CLUSTER_EXPLOSION  = 63;
  SFX_GRENADE_PULLOUT    = 64;
  SFX_SPIT               = 65;
  SFX_STUFF              = 66;
  SFX_SMOKE              = 67;
  SFX_MATCH              = 68;
  SFX_ROAR               = 69;
  SFX_STEP               = 70;
  SFX_STEP2              = 71;
  SFX_STEP3              = 72;
  SFX_STEP4              = 73;
  SFX_HUM                = 74;
  SFX_RIC                = 75;
  SFX_RIC2               = 76;
  SFX_RIC3               = 77;
  SFX_RIC4               = 78;
  SFX_DIST_M79           = 79;
  SFX_DIST_GRENADE       = 80;
  SFX_DIST_GUN1          = 81;
  SFX_DIST_GUN2          = 82;
  SFX_DIST_GUN3          = 83;
  SFX_DIST_GUN4          = 84;
  SFX_DEATH              = 85;
  SFX_DEATH2             = 86;
  SFX_DEATH3             = 87;
  SFX_CROUCH_MOVE        = 88;
  SFX_HIT_ARG            = 89;
  SFX_HIT_ARG2           = 90;
  SFX_HIT_ARG3           = 91;
  SFX_GOPRONE            = 92;
  SFX_ROLL               = 93;
  SFX_FALL_HARD          = 94;
  SFX_ONFIRE             = 95;
  SFX_FIRECRACK          = 96;
  SFX_SCOPE              = 97;
  SFX_SCOPEBACK          = 98;
  SFX_PLAYERDEATH        = 99;
  SFX_CHANGESPIN         = 100;
  SFX_ARG                = 101;
  SFX_LAVA               = 102;
  SFX_REGENERATE         = 103;
  SFX_PRONE_MOVE         = 104;
  SFX_JUMP               = 105;
  SFX_CROUCH             = 106;
  SFX_CROUCH_MOVEL       = 107;
  SFX_STEP5              = 108;
  SFX_STEP6              = 109;
  SFX_STEP7              = 110;
  SFX_STEP8              = 111;
  SFX_STOP               = 112;
  SFX_BULLETBY2          = 113;
  SFX_BULLETBY3          = 114;
  SFX_BULLETBY4          = 115;
  SFX_BULLETBY5          = 116;
  SFX_WEAPONHIT          = 117;
  SFX_CLIPFALL           = 118;
  SFX_BONECRACK          = 119;
  SFX_GAUGESHELL         = 120;
  SFX_COLLIDERHIT        = 121;
  SFX_KIT_FALL           = 122;
  SFX_KIT_FALL2          = 123;
  SFX_FLAG               = 124;
  SFX_FLAG2              = 125;
  SFX_TAKEGUN            = 126;
  SFX_INFILT_POINT       = 127;
  SFX_MENUCLICK          = 128;
  SFX_KNIFE              = 129;
  SFX_SLASH              = 130;
  SFX_CHAINSAW_D         = 131;
  SFX_CHAINSAW_M         = 132;
  SFX_CHAINSAW_R         = 133;
  SFX_PISS               = 134;
  SFX_LAW                = 135;
  SFX_CHAINSAW_O         = 136;
  SFX_M2FIRE             = 137;
  SFX_M2EXPLODE          = 138;
  SFX_M2OVERHEAT         = 139;
  SFX_SIGNAL             = 140;
  SFX_M2USE              = 141;
  SFX_SCOPERUN           = 142;
  SFX_MERCY              = 143;
  SFX_RIC5               = 144;
  SFX_RIC6               = 145;
  SFX_RIC7               = 146;
  SFX_LAW_START          = 147;
  SFX_LAW_END            = 148;
  SFX_BOOMHEADSHOT       = 149;
  SFX_SNAPSHOT           = 150;
  SFX_RADIO_EFCUP        = 151;
  SFX_RADIO_EFCMID       = 152;
  SFX_RADIO_EFCDOWN      = 153;
  SFX_RADIO_FFCUP        = 154;
  SFX_RADIO_FFCMID       = 155;
  SFX_RADIO_FFCDOWN      = 156;
  SFX_RADIO_ESUP         = 157;
  SFX_RADIO_ESMID        = 158;
  SFX_RADIO_ESDOWN       = 159;
  SFX_BOUNCE             = 160;
  SFX_RAIN               = 161;
  SFX_SNOW               = 162;
  SFX_WIND               = 163;

implementation

end.
