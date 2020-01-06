# RetroDiction
RetroDiction is a layout (theme) for Attract-Mode front-end.  
Attract-Mode Forum Thread: http://forum.attractmode.org/index.php?topic=3199.0  


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


## Installation  
1. Download the latest version of Attract-Mode from this thread: http://forum.attractmode.org/index.php?topic=2324.0
2. Download Leap plugin and place it in the appropriate place: https://github.com/keilmillerjr/leap-plugin
3. Download this layout, unzip it and place in Attract-Mode folder.
4. Run Attract-Mode and turn on the Leap plugin.
5. Link the displays to appropriate layout nut file.  
    - layout.nut: The main/ start display
    - layout_platforms.nut: Used in platforms i.e. Arcades, Computers, Collections, Consoles and Handhelds
    - layout_system.nut: Used in system e.g. Atari 2600, Sega Game Gear, MAME etc  
    **Note: You can use the attract.am and attract.cfg in /extras either directly or in case of later as a template**  
  

## Controls
---  

## Contents of Downloaded Zip
- **extras:** Includes pre-made attract.cfg, attract.am, default-display.cfg and default-emulator.cfg files. Includes fonts utilized in layout
and some images which can be used as template.
- **layouts:** Includes the retrodiction layout with all the images.
- **scraper:** System overviews are stored in "scraper/@/overviews" when using nested displays. Folder has overviews in simple text files. For the moment I am using Chiculeo's ES theme overviews and Chicuelo-Mix layout overviews but they are place-holders and will chnage in future.
- **sounds:** Sound files used in theme.

## Credits  

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
All System Flyers are from viking's excellent Nostalgia Background Set (16:9). Exceptions are listed sperately below. Originally the source material was videos in 1920x1080, for this theme single frameshots were utilized after applying some filters on them.   

<details>
  <summary>Expand System Flyer Credits</summary>

**Viking's Nostalgia Set (16:9)**  
Direct Link: https://forums.launchbox-app.com/files/file/219-nostalgia-169-video-set/  


##### Exceptions  
The background in all cases is from viking.  

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
All System Logos are from viking's excellent Silver Ring Clear Logos Set. Exceptions are listed seperately below. Original dimensions of logos (set) was 1506x756, they were downsized to 320x161 for this theme.

<details>
  <summary>Expand System Logo Credits</summary>

**Viking's Clear Logo Silver Ring Set**  
Direct Link: https://forums.launchbox-app.com/topic/33151-silver-ring-clearlogo-set/  

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
All System Logos are from viking's excellent Silver Ring Clear Logos Set. Exceptions are listed seperately below. Original dimensions of logos (set) was 1506x756, they were downsized to 320x161 for this theme.

<details>
  <summary>Expand Icon Credits</summary>
</details>
