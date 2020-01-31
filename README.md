# RetroDiction
RetroDiction is a layout (theme) for Attract-Mode front-end. This theme only supports 1920x1080 (16:9) resolution at the moment but since every measurement is in plain numbers can be modified to support other resolutions.   

Attract-Mode Forum Thread: http://forum.attractmode.org/index.php?topic=3199.0  

I am much grateful to viking for allowing me to use his excellent Nostalgia platform set and Silver Ring Logo set. His work is of the highest quality and without that it would have taken me ages to find and fine-tune each system flyer and logo.  


#### _Note: This readme is a work in progress! I'll keep updating it with relevant information and credits. Since the scope of theme is extensive it might take a while!_


## A Brief History
This is a fork of an earlier layout I made (un-released) called Retro Mania. I changed the name once I found out that another theme with that name existed and could possibly create confusion.  

Retrodiction's dictionary meaning is:  

*"using present information to make an assertion about the past; an instance of such an assertion"*  

I found that fitting for a theme primarily dealing with past (retro) plus the fact that Retrodiction can also be taken as a word play on retro addiction :)  


## Aims
- **Light-weight:** Light on resources and able to run without any problems on any rig.  
- **Comprehensive:** Includes most of the systems in Arcades, Computers, Consoles and Handhelds. Placekeepers for many systemns which are not currently emulated.  
- **Adaptability:** Ablity to accomodate more systems and change the look of the layout with minimal effort.  
- **Compatibility:** Compatible with Windows, Linux and Mac Operating systems and any variation based on these systems.  
- **Origanization:** Ability to organize a very large amount of systems and roms in an easy to understand format plus arranging things in a way which makes it easy to find and access desired rom with minimal effort.  

## Showcase  
Snaps and Videos showcasing different aspects of layout. Please click to enlarge.  

### Displays Menu
![Displays Menu](https://i.imgur.com/760RxqA.jpg)  

This display is the starting display and lists all platforms and collections menu. At the top of heirarchy, this is known as Displays Menu in Attract-Mode. Platforms include Arcades, Computers, Consoles and Handhelds. There is no romnlist for this display, we add the enteries directly in attrcat.cfg for the items we want to see listed here.

### Platform Menu
![Platform Menu](https://i.imgur.com/a5Nt7l5.jpg)  

This display lists all the systems within a platform e.g. all systems within the Arcades platform. This can be thought of as a sub-folder to Displays Menu. It is essentially a romlist which lists systems instead of roms. Platforms and Collections have their own romlist enteries listing their systems/ items.  

### System Menu
![System Menu](https://i.imgur.com/9PhzuOd.jpg)  
This display lists all the items within the system romlist. If Displays Menu/ platforms are not utilized this will be the default display in Attract-Mode. In heirarchy this can be treated as sub-folder of Platforms Menu or sub sub-folder of Displays Menu.  

### Game Launcher
![Game Launcher](https://i.imgur.com/bOnSKNy.jpg)  

Game launcher is launched when a game is selected. This shows rom specific information.  

### Options
![Options](https://i.imgur.com/hpTWdyZ.jpg)  

These options are custom created and differ from Attract-Mode's default options. These allow to access functions already built into Attract-Mode so could be considered a list of shortcuts to said functions.

### Collections
![Collections](https://i.imgur.com/pZQIPRw.jpg)  

Collections is listed in Displays Menu with other platforms but its a selection of custom folders like Series, Genres etc. Its supposed to be used with the Unified-List of all systems.  

### YouTube Links
Youtube videos showcasing soem aspects of layout. There will be small differences to current version.  

#### Video Showcasing Arcades
[![Video Showcasing Arcades](http://img.youtube.com/vi/lIxxbKcdZHY/0.jpg)](http://www.youtube.com/watch?v=lIxxbKcdZHY)  

#### Video Showcasing Consoles
[![Video Showcasing Consoles](http://img.youtube.com/vi/uX7qQCiw7Fk/0.jpg)](http://www.youtube.com/watch?v=uX7qQCiw7Fk)  

#### Video Showcasing Game Launcher and Custom Options
[![Video Showcasing Game Launcher and Custom Options](http://img.youtube.com/vi/9IDcp_46agM/0.jpg)](http://www.youtube.com/watch?v=9IDcp_46agM)  
 
## Installation  
1. Download and extract the latest version of Attract-Mode from this thread (first Porst): http://forum.attractmode.org/index.php?topic=2324.0
2. Download this layout, unzip it and place in Attract-Mode folder, overwriting as needed. Overwriting is safe in most cases but take a look at contents just in case.

**Note: The current size of download will be around 1.2 GB**  

### Experienced Attract-Mode User
3. Link the displays to appropriate layout nut file.  
    - layout.nut: The main/ start display aka Displays Menu
    - layout_platforms.nut: Used in platform systems i.e. Arcades, Computers, Collections, Consoles and Handhelds
    - layout_system.nut: System roms e.g. Atari 2600, Sega Game Gear, MAME etc  
    **Note: You can use the attract.am and attract.cfg in /extras either directly or in case of later as a template**  

### New Attract-Mode User  
3. Copy attract.cfg and attract.am from /extras to Attract-Mode folder root. This will setup all displays and controls.  

**Note: Some controls are xbox 360 controller based and may require mapping to keyboard or any other device in use**  

### Important Wiki Entries
Please read the following wiki entries for a better understanding of how the layout functions.  

1. Attract-Mode Romlists: https://github.com/randombyt/RetroDiction/wiki/Attract-Mode-Romlists  


## Controls
### Displays Menu
| Description | XBox 360 Controller | Keyboard | 
| --- | --- | --- |
| Move Up | Left Analog Up | Up |
| Move Down | Left Analog Down | Down |
| Previous Display (filter, loop) | Left Analog Left (disabled) | Left (disabled) |
| Next Display (filter, loop) | Left Analog Right (disabled) | Right (disabled) |
| Previous Letter | D-pad Left (disabled) | Home (disabled) |
| Next Letter | D-pad Right (disabled) | End (disabled) |
| Previous Page | D-pad Up (disabled) | Page Up (disabled) |
| Next Page | D-pad Down (disabled) | Page Down (disabled) |
| Select | A | Enter |
| Back (exit) | B | Escape |
| Search (Series) | Y (disabled) | Y (disabled) |
| Info Panel | X (hold) | X (hold) |

### Platform Menu
| Description | XBox 360 Controller | Keyboard | 
| --- | --- | --- |
| Move Up | Left Analog Up | Up |
| Move Down | Left Analog Down | Down |
| Previous Display (filter, loop) | Left Analog Left (disabled) | Left (disabled) |
| Next Display (filter, loop) | Left Analog Right (disabled) | Right (disabled) |
| Previous Letter | D-pad Left | Home |
| Next Letter | D-pad Right | End |
| Previous Page | D-pad Up | Page Up |
| Next Page | D-pad Down | Page Down |
| Select | A | Enter |
| Back | B | Escape |
| Search (Series) | Y (disabled) | Y (disabled) |
| Info Panel | X (hold) | X (hold) |

### System Menu
| Description | XBox 360 Controller | Keyboard | 
| --- | --- | --- |
| Move Up | Left Analog Up | Up |
| Move Down | Left Analog Down | Down |
| Previous Display (filter, loop) | Left Analog Left | Left |
| Next Display (filter, loop) | Left Analog Right | Right |
| Previous Letter | D-pad Left | Home |
| Next Letter | D-pad Right | End |
| Previous Page | D-pad Up | Page Up |
| Next Page | D-pad Down | Page Down |
| Select | A | Enter |
| Back | B | Escape |
| Search (Series) | Y | Y |

### Custom Option Menu (System Menu)
| Description | XBox 360 Controller | Keyboard | 
| --- | --- | --- |
| Options Menu | X | X |
| Select | A | Enter |
| Exit Selection | B | Escape |
| Exit Options Menu | B (after exiting Selection)| Escape (after Exiting Selection) |

**Notes**  
* (disabled) means that function has been disabled i,e, key press is ignored.  
* (exit) means that pressing the button on displays menu will show the exit prompt dialogue.  
* (filter) means that previous/ next displays are filter specific display i.e. display is based on filter.  
* (hold) means that function/ item will be displayed until the key is held down.  
* (loop) means that function is in a loop i.e. for items A, B and C it moves A>B>C>A or C<B<A<C.   


## Hierarchies
### Displays Hierarchies
![Display Hierarchy Flow Chart](https://i.imgur.com/2TM8lSg.png)

### Filters Hierarchies
![Filters Hierarchy Flow Chart](https://i.imgur.com/u5Re6W4.png)

* Entering any System Menu, Atari 2600 in above case, will always open All Filter Display unless user moves between System Menu and Platform menu in which case last opened Filter Display is opened when moving from Platform Menu to System Menu.  

* All filter display is the default filter display if no other filter displays are configured.  

* After All filter, rest of the filters are accessed in an alphabetical order i.e. A > B > C ...  

* Filter Displays are in a loop so moving forward from last filter will open first filter and moving backward from first filter will open the last filter.  

* Using Leap plugin allows users to skip empty filters this allows for creating a default-display.cfg which creates all the filters in use. This allows for easier addition of systems as system pick default values from default-display and if a filter display has no roms within in rather then showing an empty filter display leap skips/ jumps over it.  

* This organization setup with D-pad set to next/ previous letter and next /previous page allows to acces desired item in a very efficient manner and flows naturally just like moving between folders and sub-folders. Though for best utilization this requires one item to be listed in only one category requiring manual edit as most online sources don't work this way.

### Standard Filters
Following category filters are being utilized in the layout:

| Name | Description | 
| --- | --- |
| All (default) | Lists all items in all categories/ filters in a system |
| Action | Action and Multiple genre items like Metal Gear Solid |
| Adventure | Adventure items including visual novels, text adventures etc |  
| Beat 'Em Up | Beat 'Em Up (brawlers) |
| Cards | All Card games go here. Most retro PC systems have enough titles to warrant a place |
| Fighting | Fighting titles go here including wrestling, boxing etc |
| Horror | Horror titles go here, this one is subject based rather then game mechanic based |
| Mahjong | Mahjong titles go here, again a huge number of titles which warrant a separate category |
| Platform | All platform titles go here including run 'n gun |
| Puzzle | Puzzle items |
| Racing | Racing items |
| Rhythem | Rhythem based items |
| RPG | Role playing items |
| Shooter | Shooter items including shoot 'em up (vertical or horizental rotation) and FPS go here |
| Sports | Sports based items |
| Strategy | Startegy items |

**Note**  
Layout has specific icons and flyers for the above mentioned category filters, adding new ones is simple but retaining the layout design will require new icons and flyers for additional categories.  


## System Naming Convention
Following table lists the full stnadard name of system/ item, layout name (under Attract-Mode) and Emulation Station/ Retropie name. The emulator name and romlist name of each system must match the Attract-Mode name given below for this layout to work properly.  

### Displays Menu
| Name | Attract Mode | EmulationStation/ Retropie |
| --- | --- | --- |
| Arcades | arcades | arcade |
| Computers | computers | computer |
| Consoles | consoles | console |
| Handhelds | handhelds | handheld |
| Collections | collections | custom-collections |

### Platforms Menu: Arcades
| Name | Attract Mode | EmulationStation/ Retropie |
| --- | --- | --- |
| American Laser Games | american_laser_games | |
| Another Arcade Emulator | another_arcade_emulator | aae |
| Atari G42 | atari_g42 | |
| Atari System 1 | atari_system1 | |
| Atari System 2 | atari_system2 | |
| Capcom Play System I | capcom_play_systemI | cps1 |
| Capcom Play System II | capcom_play_systemII | cps2 |
| Capcom Play System III | capcom_play_systemIII | cps3 |
| Capcom Sony ZN-1 | capcom_sony_zn1 | |
| Capcom Sony ZN-2 | capcom_sony_zn2 | |
| Cave | cave | cave |
| Daphne | daphne | daphne |
| DICE | dice | dice |
| Examu Ex-Board | examu_exboard | examu |
| FinalBurn Alpha | finalburn_alpha | fba |
| Gaelco | gaelco | gaelco |
| IGS PolyGame Master | IGS_PolyGame_Master | igs |
| Irem M10-M15 | irem_m10m15 | |
| MAME | mame | mame |
| Namco System 22 | namco_system22 | |
| NESiCAxLive | nesicaxlive | nesicaxlive |
| Nintendo Arcade Systems | nintendo_arcade_systems | |
| Psikyo | psikyo | psikyo |
| Sammy Atomiswave | sammy_atomiswave | atomiswave |
| Sega Classics | sega_classics | sega |
| Sega Hikaru | sega_hikaru | hikaru |
| Sega Model 1 | sega_model1 | model1 |
| Sega Model 2 | sega_model2 | model2 |
| Sega Model 3 | sega_model3 | model3 |
| Sega Naomi | sega_naomi | naomi |
| Sega Naomi 2 | sega_naomi2 | naomi2 |
| Sega ST-V | sega_st_v | |
| Sega System 1 | sega_system1 | |
| Sega System 16 | sega_system16 | |
| Sega System 18 | sega_system18 | |
| Sega System 24 | sega_system24 | |
| Sega System 32 | sega_system32 | |
| Sega TriForce | sega_triforce | triforce |
| Sega X Board | sega_xboard | xboard |
| Sega Y Board | sega_yboard | yboard |
| SNK NeoGeo MVS | snk_neogeo_mvs | |
| Taito Type X | taito_typex | typex |
| Taito Type X2 | taito_typex2 | typex2 |
| ZiNc | zinc | zinc |

### Platforms Menu: Computers
| Name | Attract Mode | EmulationStation/ Retropie |
| --- | --- | --- |
| Aamber Pegasus | aamber_pegasus | |
| Acorn Archimedes | acorn_archimedes | |
| Acorn BBC Micro | acorn_bbc_micro | bbcmicro |
| Acorn Electron | acorn_electron | |
| Adventure Game Studio | adventure_game_studio | ags |
| Amstrad CPC | amstrad_cpc | amstradcpc |
| Amstrad CPC Plus | amstrad_cpcplus | |
| Apogee BK-01 | apogee_bk01 | |
| Apple II | apple_ii | apple2 |
| Apple IIGS | apple_iigs | apple2gs |
| Apple Macintosh | apple_macintosh | macintosh |
| Apple Macintosh OS 9 | apple_macintosh_os9 | |
| Atari 800 | atari_800 | atari800 |
| Atari Falcon | atari_falcon | atarifalcon |
| Atari ST | atari_st | atarist |
| Camputers Lynx | camputers_lynx | |
| Chip-8 | chip_8 | |
| Coleco ADAM | coleco_adam | |
| Commodore 16 | commodore_16 | c16 |
| Commodore 128 | commodore_128 | c128 |
| Commodore 64 | commodore_64 | c64 |
| Commodore Amiga | commodore_amiga | amiga |
| Commodore MAX Machine | commodore_max_machine | |
| Commodore PET | commodore_pet | |
| Commodore Plus-4 | commodore_plus4 | |
| Commodore VIC-20 | commodore_vic20 | |
| Dragon 32-64 | dragon_32_64 | dragon32 |
| EACA EG2000 Colour Genie | eaca_eg2000_colour_genie | |
| Elektronika BK | elektronika_bk | |
| Enterprise | enterprise | enterprise |
| Exelvision EXL 100 | exelvision_exl100 | |
| Exidy Sorcerer | exidy_sorcerer | |
| Fan-Made Games | fanmade_games | fanmade |
| Flash Games | flash_games | flash |
| Fujitsu FM Towns | fujitsu_fmtowns | fmtowns |
| Fujitsu FM-7 | fujitsu_fm7 | fm7 |
| Hector HRX | hector_hrx | |
| Infocom Z-Machine | infocom_zmachine | zmachine |
| Intertec Superbrain | intertec_superbrain | |
| Jupiter ACE | jupiter_ace | |
| Luxor ABC 80 | luxor_abc80 | |
| Lviv PC-01 | lviv_pc01 | |
| Matra and Hachette Alice | matra&hachette_alice | |
| Mattel Aquarius | mattel_aquarius | |
| Memotech MTX | memotech_mtx | |
| MGT SAM Coupe | mgt_samcoupe | samcoupe |
| Microsoft DOS | microsoft_dos | dos |
| Microsoft MSX | microsoft_msx | msx |
| Microsoft MSX LaserDisc | microsoft_msx | msx |
| Microsoft MSX2 | microsoft_msx2 | msx2 |
| Microsoft MSX2+ | microsoft_msx2+ | msx2+ |
| Microsoft Windows 3x | microsoft_windows3x | win3x |
| Microsoft Windows 9x | microsoft_windows9x | win9x |
| Microsoft Windows Indie | microsoft_windows_indie | |
| Microsoft Windows XP+ | microsoft_windowsxp+ | winxp |
| MUGEN | mugen | mugen |
| NEC PC-6000 | nec_pc6000 | pc-60 |
| NEC PC-8800 | nec_pc8800 | pc-88 |
| NEC PC-9800 | nec_pc9800 | pc-98 |
| OpenBOR | openbor | openbor |
| Pecom 64 | pecom_64 | |
| Philips VG5000 | philips_vg5000 | |
| Ports | ports | ports |
| Radio-86RK | radio_86rk | |
| ResidualVM | residualvm | residualvm |
| ScummVM | scummvm | scummvm |
| Sega SC-3000 | sega_sc3000 | |
| Sharp MZ-700 | sharp_mz700 | |
| Sharp MZ-2500 | sharp_mz2500 | |
| Sharp X1 | sharp_x1 | x1 |
| Sharp X1 Turbo | sharp_x1turbo | x1turbo |
| Sharp X68000 | sharp_x68000 | x68000 |
| Sinclair ZX Spectrum | sinclair_zxspectrum | zxspectrum |
| Sinclair ZX81 | sinclair_zx81 | zx81 |
| Sord M5 | sord_m5 | |
| Spectravideo | spectravideo | |
| Steam | steam | steam |
| Tandy TRS-80 | tandy_trs80 | trs-80 |
| Tandy TRS-80 Color Computer | tandy_trs80_color_computer | coco |
| Tangerine Oric Atmos | tangerine_oric_atmos | |
| Tangerine Oric-1 | tangerine_oric1 | oric |
| Tangerine Oric Telestrat | tangerine_oric_telestrat | |
| Texas Instruments TI-99 | texas_instruments_ti99 | ti99 |
| Thomson TO8 | thomson_to8 | |
| Tomy Tutor | tomy_tutor | |
| Vector-06C | vector_06c | |

### Platforms Menu: Consoles
| Name | Attract Mode | EmulationStation/ Retropie |
| --- | --- | --- |
| ALF TV Game | alf_tvgame | |
| Amstrad GX4000 | amstrad_gx4000 | |
| APF Imagination Machine | apf_imagination_machine | |
| Apple Bandai Pippin | apple_bandai_pippin | |
| Atari 2600 | atari_2600 | atari2600 |
| Atari 5200 | atari_5200 | atari5200 |
| Atari 7800 | atari_7800 | atari7800 |
| Atari Jaguar | atari_jaguar | atarijaguar |
| Atari Jaguar CD | atari_jaguarcd | atarijaguarcd |
| Atari XEGS | atari_xegs | atarixe |
| Bally Astrocade | bally_astrocade | astrocade |
| Bandai Super Vision 8000 | bandai_supervision_8000 | supervision8000 |
| Casio Loopy | casio_loopy | loopy |
| Casio PV-1000 | casio_pv1000 | pv1000 |
| Coleco ColecoVision | coleco_colecovision | colecovision |
| Coleco Gemini | coleco_gemini | colecogemini |
| Coleco Telstar | coleco_telstar | colecotelstar |
| Commodore Amiga CD32 | commodore_amiga_cd32 | amigacd32 |
| Commodore CDTV | commodore_cdtv | |
| Emerson Arcadia 2001 | emerson_arcadia2001 | arcadia |
| Entex Adventure Vision | entex_adventure_vision | |
| Epoch Super Cassette Vision | epoch_supercassette_vision | |
| Fairchild Channel F | fairchild_channelf | channelf |
| Fujitsu FM Towns Marty | fujitsu_fmtowns_marty | |
| Funtech Super Acan | funtech_superacan | |
| Game Wave Family Entertainment System | game_wave_family_entertainment_system | |
| GCE Vectrex | gce_vectrex | vectrex |
| Interton VC 4000 | interton_vc4000 | |
| Magnavox Odyssey | magnavox_odyssey | odyssey |
| Magnavox Odyssey 2 | magnavox_odyssey2 | odyssey2 |
| Mattel HyperScan | mattel_hyperscan | hyperscan |
| Mattel Intellivision | mattel_intellivision | intellivision |
| Microsoft XBOX | microsoft_xbox | xbox |
| Microsoft XBOX 360 | microsoft_xbox360 | xbox360 |
| Microsoft XBOX One | microsoft_xboxone | xboxone |
| NEC PC-Engine | nec_pcengine | pcengine |
| NEC PC-Engine CD | nec_pcengine_cd | pce-cd |
| NEC PC-Engine Duo | nec_pcengine_duo | pce-duo |
| NEC PC-Engine SuperGrafx | nec_pcengine_supergrafx | pce-supergrafx |
| NEC PC-FX | nec_pcfx | pcfx |
| NEC SuperGrafx | nec_supergrafx | supergrafx |
| NEC TurboDuo | nec_turboduo | tg-td |
| NEC TurboGrafx-16 | nec_turbografx16 | tg16 |
| NEC TurboGrafx-CD | nec_turbografxcd | tg-cd |
| Nintendo 64 | nintendo_64 | n64 |
| Nintendo Entertainment System | nintendo_entertainment_system | nes |
| Nintendo Famicom | nintendo_famicom | famicom |
| Nintendo Famicom Disk System | nintendo_famicom_disk_system | fds |
| Nintendo Gamecube | nintendo_gamecube | gc |
| Nintendo Satellaview | nintendo_satellaview | satellaview |
| Nintendo Sufami Turbo | nintendo_sufami_turbo | sufamiturbo |
| Nintendo Super Famicom | nintendo_super_famicom | sfc |
| Nintendo Super GameBoy | nintendo_super_gameboy | |
| Nintendo TV Game | nintendo_tvgame | |
| Nintendo Virtual Boy | nintendo_virtualboy | virtualboy |
| Nintendo Wii | nintendo_wii | wii |
| Nintendo Wii U | nintendo_wiiu | wiiu |
| Nintendo WiiWare | nintendo_wiiware | wiiware |
| Nuon | nuon | nuon |
| Othello Multivision | othello_multivision | |
| Panasonic 3DO | panasonic_3do | 3do |
| Philips CD-i | philips_cdi | cdi |
| Philips Videopac G7000 | philips_videopac_g7000 | |
| Philips Videopac G7200 | philips_videopac_g7200 | |
| Philips Videopac+ G7400 | philips_videopac+_g7400 | videopac |
| RCA Studio II | rca_studio_ii | |
| Sega 32X | sega_32x | sega32x |
| Sega CD | sega_cd | segacd |
| Sega CD 32X | sega_cd_32x | |
| Sega Dreamcast | sega_dreamcast | dreamcast |
| Sega Genesis | sega_genesis | gen |
| Sega Mark III | sega_mark_iii | |
| Sega Master System | sega_master_system | mastersystem |
| Sega Master System II | sega_master_system_ii | mastersystem2 |
| Sega Mega 32x (Europe) | sega_mega_32x_(europe) | |
| Sega Mega CD (Europe) | sega_mega_cd_(europe) | megacd |
| Sega Mega Drive (Europe) | sega_mega_drive_(europe) | megadrive |
| Sega Mega Drive (Japan) | sega_mega_drive_(japan) | megadrive_japan |
| Sega Pico | sega_pico | pico |
| Sega Saturn | sega_saturn | saturn |
| Sega SG-1000 | sega_sg_1000 | sg-1000 |
| SNK NeoGeo AES | snk_neogeo_aes | neogeo |
| SNK NeoGeo CD | snk_neogeo_cd | neogeocd |
| Sony PlayStation | sony_playstation | psx |
| Sony PlayStation 2 | sony_playstation2 | ps2 |
| Sony PlayStation 3 | sony_playstation3 | ps3 |
| Sony PlayStation 4 | sony_playstation4 | ps4 |
| Super Nintendo Entertainment System | super_nintendo_entertainment_system | snes |
| Super Nintendo Entertainment System | super_nintendo_entertainment_system | snes |
| View-Master Interactive Vision | viewmaster_interactive_vision | |
| VTech CreatiVision | vtech_creativision | crvision |
| VTech Socrates | vtech_socrates | |
| WoW Action Max | wow_actionmax | |
| Zeebo | zeebo | zeebo |

### Platforms Menu: Handhelds
| Name | Attract Mode | EmulationStation/ Retropie |
| --- | --- | --- |
| Android | android | |
| Apple iOS | apple_ios | |
| Atari Lynx | atari_lynx | atarilynx |
| Bandai Wonderswan | bandai_wonderswan | wonderswan |
| Bandai Wonderswan Color | bandai_wonderswan_color | wonderswancolor |
| Bandai SwanCrystal | bandai_swancrystal | swancrystal |
| Creatronic Mega Duck | creatronic_megaduck | megaduck |
| Epoch Game Pocket Computer | epoch_gamepocket_computer | gamepocket |
| GamePark 32 | gamepark32 | gamepark32 |
| Gizmondo | gizmondo | gizmondo |
| Hartung Game Master | hartung_gamemaster | gamemaster |
| NEC PC-Engine GT | nec_pcengine_gt | pce-gt |
| NEC TurboExpress | nec_turboexpress | turboexpress |
| Nintendo 3DS | nintendo_3ds | n3ds |
| Nintendo DS | nintendo_ds | nds |
| Nintendo Game & Watch | nintendo_game&watch | gameandwatch |
| Nintendo Game Boy | nintendo_gameboy | gb |
| Nintendo Game Boy Advance | nintendo_gameboy_advance | gba |
| Nintendo Game Boy Color | nintendo_gameboy_color | gbc |
| Nintendo Pokemon Mini | nintendo_pokemon_mini | |
| Nintendo Switch | nintendo_switch | switch |
| Nokia N-Gage | nokia_ngage | ngage |
| Sega Game Gear | sega_gamegear | gamegear |
| Sega Nomad | sega_nomad | nomad |
| SNK NeoGeo Pocket | snk_neogeo_pocket | ngp |
| SNK NeoGeo Pocket Color | snk_neogeo_pocket_color | ngpc |
| Sony PlayStation Portable | sony_playstation_portable | psp |
| Sony PlayStation Portable Minis | sony_playstation_portable_minis | |
| Sony Playstation Vita | sony_playstation_vita | psvita |
| Tiger Game Com | tiger_game_com | gamecom |
| Watara Supervision | watara_supervision | |

### Platforms Menu: Collections
| Name | Attract Mode | EmulationStation/ Retropie |
| --- | --- | --- |
| Favorites | favorites | auto-favorites |
| Last Played | last_played | auto-lastplayed |
| Series | series | series |

### Collections Menu: Genres
| Name | Attract Mode | EmulationStation/ Retropie |
| --- | --- | --- |
| All | all | auto-allgames |
| Action | action | action |
| Adventure | adventure | adventure |
| Beat 'Em Up | beat_'em_up | btmups |
| Cards | cards | cards |
| Fighting | fighting | fighting |
| Horror | horror | horror |
| Mahjong | mahjong | mahjong |
| Pinball | pinball | pinball |
| Platform | platform | platformer |
| Puzzle | puzzle | puzzle |
| Racing | racing | racing |
| Rhythem | rhythem | rhythem |
| RPG | rpg | rpg |
| Shooter | shooter | shmups |
| Sports | sports | sports |
| Strategy | strategy | strategy |

### Other Apps
| Name | Attract Mode | EmulationStation/ Retropie |
| --- | --- | --- |
| RetroPie | retropie | retropie |
| Steam | steam | steam |
| Stratagus | stratagus | stratagus |
| XBMC Kodi | xbmc_kodi | kodi |


## Contents of Downloaded Zip
- **extras:** Includes pre-made attract.cfg, attract.am, default-display.cfg and default-emulator.cfg files. Includes fonts utilized in layout
and some images which can be used as template.
- **layouts:** Includes the retrodiction layout with all the images.
- **romlists:** Includes all main platforms system romlists and collection romlist. Also includes same list in excel .xlsx format and xls format for older office versions.
- **scraper:** System overviews are stored in "scraper/@/overviews" when using nested displays. Folder has overviews in simple text files. For the moment I am using Chiculeo's ES theme overviews and Chicuelo-Mix layout overviews but they are place-holders and will chnage in future.
- **sounds:** Sound files used in theme.


## Credits  

I am much grateful to viking for his excellent nostalgia platform set and clear silver ring logo set. Viking's artwork was not only aesthetically very pleasing but was very thorough as it included a very large number fo systems. much thanks to him for sharing his work with emulation community!  

I am also grateful to helpful folks in Attrcat-Mode forums and discord channel. Firstly thanks to Andrews for creating and sharing Attract-Mode. Andrew also graciousoly added some stuff in Attract-mode which I requested (additional romlist fields).  

A huge thanks to Keil Miller, my go-to person when I faced any problems in coding. Keil's shuffle module and leap plugin made it possible for me to design this layout the way I wanted. Keil also graciously expanded leap and shuffle to accomodote some requests I made.  

I am also grateful to liquid8, his modules and plugins were very helpful. He was very helpful in guiding me in understanding and tailoring those to my needs.  

I am also grateful to other mebers of Attract-Mode community like Oomek, Jedione, progets, hermine.potter, liquid8d, zpaolo11x, kent79, calle81 & qqplayer for their help. I learned a lot from their discussions and their layouts.  


### Plugins and Modules  
Following Plugins and Modules are utilized in this layout:  

#### Controls Module  
Controls module is created by liquid8d. It allows us to create custom buttons and labels.  
Official Repo: https://github.com/liquid8d/attract-extra/tree/master/modules/objects/controls  

#### Format Time  
Format Time module is created by Keil Miller. It allows us to display time in a more effective way.  

#### Keyboard Search Module  
Keyboard Search module is created by liquid8d. This module allows us to search roms through gamepad. 
Official Repo: https://github.com/liquid8d/attract-extra/tree/master/modules/objects/keyboard-search  

#### Leap Plugin  
Leap plugin is created by Keil Miller. This plugin skips the empty filters, essential in this layout as we are using a set template of filters for all the systems.  
Official Repo: https://github.com/keilmillerjr/leap-plugin  

#### Preserve Art Module  
Preserve Art module is created by liquid8d. This module helps us in better adjusting the artworkby offering fit and fill options while keeping the aspect ratio intact, it also offers anchoring the artwork to specific side. In this layout "Flyers" artwork utilizes this. There are small modficatiosn made to get desired results.  
Official Repo: https://github.com/liquid8d/attract-extra/tree/master/modules  

#### Shuffle Module  
Shuffle module is created by Keil Miller. Shuffle module allows us to use slots for better handling of game list. It is used as an alternate to Attract-Mode's default list box. There are small modifications made in the module to support moving between filters.  
Official Repo: https://github.com/keilmillerjr/shuffle-module  


### Artwork  


#### System Flyers  
All System Flyers are from viking's excellent Nostalgia Background Set (16:9). Exceptions are listed seperately below. Originally the source material was videos in 1920x1080, for this theme single frameshots were utilized after applying some filters on them.   

**Viking's Nostalgia Set (16:9)**  
Direct Link: https://forums.launchbox-app.com/files/file/219-nostalgia-169-video-set/  

<details>
  <summary>Expand System Flyer Exceptions</summary>
 
##### Exceptions  
The background in all cases are from viking's original background.  

**Archives**  
Safe: http://icons.iconarchive.com/icons/artua/mac/512/Archive-manage-icon.png  

**Current**  
Clock: https://www.vectorstock.com/royalty-free-vector/timer-icon-fast-time-logo-fast-delivery-express-vector-20000364  

**Exit Attract Mode**  
Direct Link: https://www.lathamssteeldoors.co.uk/wp-content/uploads/2018/07/grey-fire-exit-door-with-vision-panel.jpg  

**Gizmondo** 
Console: https://en.wikipedia.org/wiki/List_of_Gizmondo_games#/media/File:Gizmondo.jpg  
Game Snap: https://i.ytimg.com/vi/wGkwjEa1piI/hqdefault.jpg  

**Microsoft Windows 9x**  
Snap: https://storage.googleapis.com/nilh-pasionmovil.appspot.com/1/2015/08/Windows-95-PC.jpg  

**NEC TurboExpress**  
Console: https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/NEC-TurboExpress-Upright-FL.jpg/800px-NEC-TurboExpress-Upright-FL.jpg  

**Nintendo Switch**  
Console: https://i.kym-cdn.com/photos/images/original/001/241/508/3e6.jpg  
Accessories: https://upload.wikimedia.org/wikipedia/commons/0/07/Nintendo-Switch-Cartridge.jpg  
Cover: https://www.notebookcheck.net/fileadmin/_processed_/b/3/csm_Nintendo_Switch_Console_Docked_wJoyConRB_9afb098ff5.jpg  

**Ports**  
Snap: https://img-new.cgtrader.com/items/697882/af277e32f8/vintage-pc-old-personal-computer-3d-model-max-obj-fbx-mtl.jpg  

**Queue**  
Snap: https://cdn0.iconfinder.com/data/icons/business-268/32/82_candidate_resume_search_examine_find_shortlist-512.png  

**Tatung Einstein TC-01**  
Computer: https://upload.wikimedia.org/wikipedia/commons/1/1a/Tatung-einstein-computer.png  

**Zeebo**  
Snap: http://res.publicdomainfiles.com/pdf_view/52/13525969815546.png  
Snap II: https://www.lg.com/us/images/tvs/MD05802269/gallery/large01.jpg 

</details>

#### System Logos  
All System Logos are from viking's excellent Silver Ring Clear Logos Set. Exceptions are listed seperately below. Original dimensions of logos was 1506x756, they were downsized to 320x161 for this theme.

**Viking's Clear Logo Silver Ring Set**  
Direct Link: https://forums.launchbox-app.com/topic/33151-silver-ring-clearlogo-set/  

<details>
  <summary>Expand System Logo Exceptions</summary>

##### Exceptions  
"All" by "mario64"
Direct Link: https://forums.launchbox-app.com/uploads/monthly_2019_01/1034685067_AllGames.png.34954176fbf86d79985f8b1083748ab4.png  
Thread: https://forums.launchbox-app.com/topic/33151-silver-ring-clearlogo-set/?page=32  

**Archives**  
Safe: http://icons.iconarchive.com/icons/artua/mac/512/Archive-manage-icon.png  

**Atari XEGS II**  
by "razzo100"  
Thread: https://forums.launchbox-app.com/topic/33151-silver-ring-clearlogo-set/?page=20  

**Collections I**
by "sundogak"  
Direct Link https://forums.launchbox-app.com/uploads/monthly_2019_01/Collections2.png.37b89d3ee1b0995ebd6200903d9a9d25.png  
Thread: https://forums.launchbox-app.com/topic/33151-silver-ring-clearlogo-set/?page=32  

**Collections II**
by "sundogak"  
Direct Link: https://forums.launchbox-app.com/uploads/monthly_2019_01/Collections_blue.png.2f24ae780646e777fe102577791f080a.png  
Thread: https://forums.launchbox-app.com/topic/33151-silver-ring-clearlogo-set/?page=32  

**Collections II**
by "sundogak"  
Direct Link: https://forums.launchbox-app.com/uploads/monthly_2019_01/Collections2.png.36bbec9b7039173efefd1a98c2da447d.png  
Thread: https://forums.launchbox-app.com/topic/33151-silver-ring-clearlogo-set/?page=32  

**Collections III**
by "drgaon57"  
Direct Link: https://forums.launchbox-app.com/uploads/monthly_2018_10/Collections2.png.0dd7bdf4d7029d19c2403512b2df0479.png  
Thread: https://forums.launchbox-app.com/topic/33151-silver-ring-clearlogo-set/?page=27  

**Current**  
Clock: https://www.vectorstock.com/royalty-free-vector/timer-icon-fast-time-logo-fast-delivery-express-vector-20000364  

**PC-Engine Duo**  
Direct Link: http://www.pcengine.co.uk/omake/omake_pictures/RX-1.jpg  

**Ports**  
by "dragon57"  
Direct Link: https://forums.launchbox-app.com/uploads/monthly_2018_12/Ports.png.ae237714fd5e40c62148af4bcc9782e9.png  
Thread: https://forums.launchbox-app.com/topic/33151-silver-ring-clearlogo-set/?page=29  

**Residual VM**  
by "sundogak"  
Direct Link: https://forums.launchbox-app.com/uploads/monthly_2019_01/ResidualVM.png.974b2ecd498d106f1debfa1fb409dbfe.png  
Thread: https://forums.launchbox-app.com/topic/33151-silver-ring-clearlogo-set/?page=32  

**Sega Europa-R**  
by "OOKAMI"  
Direct Link: https://forums.launchbox-app.com/uploads/monthly_2017_09/59ba653c16792_SegaEuropa-R.png.cb00edfcf88f3631326b28e8778302aa.png  
Thread: https://forums.launchbox-app.com/topic/33151-silver-ring-clearlogo-set/page/19/  

**Sonic Collection**  
by "razoo100" (modified a bit)  
Direct Link: https://forums.launchbox-app.com/uploads/monthly_2017_11/5a0dafde4c5a6_SonicCollection.png.c10fca45af707f178b098c86205d1831.png  
Thread: https://forums.launchbox-app.com/topic/33151-silver-ring-clearlogo-set/?page=20  

**Sord M5**  
Direct Link: https://forums.launchbox-app.com/uploads/monthly_2018_12/1324577176_SordM5.png.fba589c723bafbae9625783e60d65fbf.png  
Thread Link: https://forums.launchbox-app.com/files/file/1632-sord-m5-covers-snaps-videos/  

**Tandy TRS-80 Color Computer**  
by "razzo 100"  
Direct Link: https://forums.launchbox-app.com/uploads/monthly_2017_11/5a0ef2cfe8cd5_TandyTRS-80ColorComputer.png.441ef8dc9d07f38f90d048defa004ef1.png  
Thread: https://forums.launchbox-app.com/topic/33151-silver-ring-clearlogo-set/?page=20  

**Tatung Einstein TC-01**  
Direct Link: https://i.ebayimg.com/images/g/iSwAAOSwyKlc0LSL/s-l1600.jpg  

**Thompson TO8**  
by "ap3demak"  
Direct Link: https://forums.launchbox-app.com/uploads/monthly_2018_11/515563099_ThomsonTO8.png.8ec9d40d561a5d1e1fc09b1b483d8b9a.png  
Thread: https://forums.launchbox-app.com/files/file/1567-thomson-to8-clear-logo/  

#### Self Made  
**Beat 'Em Up**  
Text (robin55): https://forums.launchbox-app.com/uploads/monthly_2017_10/59ee84f43b707_BeatEmUpLOGO.thumb.png.610e4b074b03fbd5c33be4d93f8f05b3.png  
Background (part): https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTC3qC0V1kNpp3grfdwxVbfLkoWTcufgWsGLt-3h06nIqzXc5qacg  

**Chip-8**  
Logo: https://hackadaycom.files.wordpress.com/2012/11/chip8.jpeg  

**Commodore 16**  
Text/ BG: From viking's "Commodore 128"  

**Elektronika BK**  
Logo: spotUP's Elektronika BK Logo Redraw (modified): https://hyperspin-fe.com/forums/topic/28631-project-main-menu-wheels-minting/?page=2  
Direct:  http://i.imgur.com/GivFT0s.png  

**Fighting**  
Text (robin55): https://forums.launchbox-app.com/topic/41431-console-playlistgenre-intro-videos/  
Background: https://www.deviantart.com/azgaralth/art/Render-Street-Fighter-V-Ryu-516416467  

**Horror**  
Text (robin55): https://forums.launchbox-app.com/topic/41431-console-playlistgenre-intro-videos/  

**Luxor ABC 80**  
Logo: razzo's "Luxor ABC 80"  https://forums.launchbox-app.com/uploads/monthly_2017_11/5a0e1a73e8e07_LuxorABC80.png.ee87bc1f734f112763d11214b5b3e030.png Modified  

**Lvuv PC-01**  
Logo: http://i.imgur.com/5UeVUmq.png  
Thread: https://hyperspin-fe.com/forums/topic/28631-project-main-menu-wheels-minting/?do=findComment&comment=257537  

**Mario Bros**  
Background + Text: https://images-na.ssl-images-amazon.com/images/I/81UZxTCn%2BpL.jpg  

**Matra and Hachette Alice**  
Direct:spot up's  http://i.imgur.com/BJ0itbh.png  
Thread: https://hyperspin-fe.com/profile/41741-spotup/content/?type=forums_topic_post&page=8  

**MGT Sam Coupe**  
Logo: https://static.wixstatic.com/media/4b1885_831a8321dcf84c08a7a25ac4630dfb5d~mv2.png/v1/fill/w_784,h_189,al_c,usm_0.66_1.00_0.01/4b1885_831a8321dcf84c08a7a25ac4630dfb5d~mv2.png  

**Microsoft MSX LaserDisc**  
Logo: viking's "Microsoft MSX" modification  

**NEC PC-Engine GT**  
Logo: https://upload.wikimedia.org/wikipedia/en/5/54/PC_Engine_GT_Logo.png  

**NEC TurboExpress**  
Logo: https://upload.wikimedia.org/wikipedia/en/thumb/b/b7/TurboExpress_Logo.png/460px-TurboExpress_Logo.png  

**Philips Videopac G7200**  
Logo: https://assets.fontsinuse.com/static/use-media-items/10/9971/full-906x1243/56702262/G7200%20instruction%20manual.jpeg?resolution=0  

**Picom 64**  
Logo: http://oldcomputer.info/8bit/pecom/pecom-logo.png modified  

**Queue**  
Logo: https://cdn0.iconfinder.com/data/icons/business-268/32/82_candidate_resume_search_examine_find_shortlist-512.png  

**RPG**  
Logo: by RetroHumanoid, Thread: https://forums.launchbox-app.com/topic/46572-calling-all-media-and-theme-creators/  
Background: https://orig0.hdxwallpaper.com/dl/hd/30/zelda_breath_of_the_wild-fantasy-night-scenery-(3012)-728x410.jpg  

**Sega CD 32X**  
Logo: viking's "Sega CD" & Sega 32X" modified  

**Sega Chihiro**  
Logo: https://www.netclipart.com/pp/m/115-1151263_138-1384304-sega-chihiro-arcade-clipart-sega-chihiro.png  

**Sega Dreamxcast VMU**  
Logo: viking's "Sega dreamcast" modified  

**Sega Master System II**  
Logo: viking's "Sega Master System" modified  

**Sharp MZ-700**  
Logo: viking's "Sharp MZ-2500" modification  

**Sharp X1 Turbo**  
Logo: viking's "Sharp X1" modification  

**Shooter**  
Logo: https://forums.launchbox-app.com/uploads/monthly_2018_11/1558862415_ShooterGames.png.df8beb1b2115933ca43103af85b7648f.png  

**Strategy**  
Background: https://cdn-images-1.medium.com/max/2600/1*J_zbH5WpRoMSr5CG0zRYZQ.jpeg  

**Tomy Tutor**  
Logo/ Text: Custom, following "Tomy Tutor" in "Crylen Plus" wheel set.  

**Windows 9x**  
Logo: http://pngimg.com/download/23566  

**Zeebo**  
Logo: http://www.betterthanone.net/wp-content/uploads/2011/01/zeebo_3D_logo.jpg  

##### Genres  
**Adventure**  
Picture: https://img00.deviantart.net/93b1/i/2017/014/c/9/day_of_the_tentacle_chibis_by_equilibrik-dac83lb.png  

**All**  
Picture: https://www.deviantart.com/godofdarness18 (Background)  
Picture: https://cdn4.iconfinder.com/data/icons/ios-edge-glyph-11/25/Sum-512.png (Sum Total Sign)  

**Beat 'Em Up**  
Picture: https://cdna.artstation.com/p/assets/images/images/001/878/088/large/josef-axner-mightyfinalfight.jpg?1454121280  

**Fighting**  
Picture: https://www.kisspng.com/png-street-fighter-ii-champion-edition-ryu-marvel-vs-c-118701/preview.html  

**Fighting II**  
Picture: http://2.bp.blogspot.com/_QZpIJ9oVwJQ/TTZQpFP8uYI/AAAAAAAAAKI/C-0cM1633Gs/s1600/sf4-ken_ryu-illust.jpg  

**Horror**  
Picture: https://mondotees.com/products/castlevania-iii-regular-poster  

**Platform**  
Picture: https://i.pinimg.com/originals/8a/a9/b4/8aa9b4bb02306fd296b7c16be051d3cd.jpg  

**Puzzle**  
Picture (edited): https://i.pinimg.com/originals/ee/a7/34/eea734fe0dfac548518be2dfa92c3394.jpg  

**Racing**  
Picture: http://www.pngmart.com/files/3/Need-For-Speed-Transparent-Background.png  

**RPG**  
Picture: http://www.stencilkingdom.com/catalogue/dragon/catalogue_body_dragon_dragon31.php (background)  
Pixcture II: https://www.clipartmax.com/middle/m2i8H7i8i8A0H7m2_dark-souls-oscar-knight-of-astora-16th-scale-statue-dark-souls-knight/  

**Shooter**  
Picture (edited): https://www.kisspng.com/png-alien-shooter-shooter-game-sprite-pac-man-shoot-em-1502814/  

**Sports**  
Picture: http://www.emuline.org/uploads/gallery/album_1/gallery_1_1_613965.jpg  

**Stratgey**  
Picture: https://imgur.com/gallery/ClrNy6M  

</details>


#### Icons (Genre & Misc)
All icons are from Game-icons.net, excepetions are listed seperately.

<details>
  <summary>Expand Icon Credits</summary>
To be added!
</details>
