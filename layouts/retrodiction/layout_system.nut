//RetroDiction: System Menu

//RetroDiction Version 1.0
//Official Github Repository: https://github.com/randombyt/RetroDiction
//Official Thread on Attract-Mode Forums: http://forum.attractmode.org/index.php?topic=3199.0 


//#####LAYOUT AND BACKGROUND#####

//Layout Dimensions
fe.layout.width=1920;
fe.layout.height=1080;

//Custom Overlay Surface 
local coverlay_surface = fe.add_surface(1920, 1080);
coverlay_surface.visible = false;
	
//Custom Overlay Surface: Background
local coverlay_background = coverlay_surface.add_image("images/blacktint_pixel.png",0, 0, 1920, 1080);
coverlay_background.alpha = 255;

//Background
local background = fe.add_image("images/retromode_bg.png", 0,0,0,0);
background.mipmap = true;

//Load Modules & Plug-ins
fe.do_nut("scripts/objects/controls/module.nut") //load controls module
fe.do_nut("scripts/formatTime.nut") //load format time module
fe.do_nut("scripts/objects/keyboard-search/module.nut") //load keyboard search module
fe.do_nut("scripts/leap/plugin.nut") //load leap plugin
fe.do_nut("scripts/preserve-art.nut") //load preserve-art module
fe.do_nut("scripts/series_search.nut") //load series_search plugin
fe.do_nut("scripts/shuffle/module.nut") //load shuffle module


//#####ARTWORKS#####

//Layout items
local catfilter = fe.add_image("images/catfilter/[FilterName].png", 130, -5, 360, 117);
catfilter.mipmap = true;

local listseperator_up = fe.add_image("images/seperator_up.png", 50, 105, 560, 0);
listseperator_up.mipmap = true;

local listseperator_down = fe.add_image("images/seperator_down.png", 50, 995, 560, 0);
listseperator_down.mipmap = true;

//Game: Flyer
local flyer = PreserveArt( "flyer", 680, 20, 776, 656 );
flyer.trigger = Transition.EndNavigation;
flyer.set_anchor( ::Anchor.Center );
flyer.set_fit_or_fill( "fit" );
flyer.preserve_aspect_ratio = true;
flyer.mipmap = true;

//Game: Snap & Video
local snap = PreserveArt( "snap", 680,705,472,355);
snap.trigger = Transition.EndNavigation;
snap.set_anchor( ::Anchor.Center );
snap.set_fit_or_fill( "fit" );
snap.mipmap = true;


//Video Starts Playing After 1 Second In Place of Snap
local settings = 
	{
		delay_timer = 0,
		play_delay = 1000,
	}

local video = fe.add_artwork("video", 680,705,472,355)
video.video_flags = Vid.NoLoop;
video.preserve_aspect_ratio = true;
video.mipmap = true;
video.trigger = Transition.EndNavigation;

function vid_on_transition(ttype, var, transition_time) 
	{
		if (ttype == Transition.StartLayout || ttype == Transition.ToNewList || ttype == Transition.FromOldSelection) 
			{
				settings.delay_timer = fe.layout.time
				video.visible = false
			}
		return false
	}

function vid_on_tick(tick_time)
	{
		if (video.video_playing && tick_time - settings.delay_timer >= settings.play_delay) video.visible = true
	}

fe.add_ticks_callback(this, "vid_on_tick")
fe.add_transition_callback(this, "vid_on_transition")


//Snap is Hidden when Video is Playing. That is to ensure that if Snap size is bigger it does not show behind the video
function snap_on_tick(tick_time) {
  if ( video.visible == true ) snap.visible = false
  else if ( video.visible == false ) snap.visible = true
 }

fe.add_ticks_callback(this, "snap_on_tick")

//Game: System Logo & Frame 
local syslogo = fe.add_image("images/syslogo/[Emulator].png", 550, 646, 200,100.625);
syslogo.mipmap = true;
syslogo.trigger = Transition.EndNavigation;
syslogo.zorder = 4;

local syslogo_frame = fe.add_image ("images/syslogo_frame.png", 550, 646,200,100.625); 
syslogo_frame.mipmap = true;
syslogo_frame = 3;

//Game: Category Icon
local caticon = fe.add_image ("images/categories/[Category].png", 1497, 304, 100, 100);
caticon.mipmap = true;
caticon.trigger = Transition.EndNavigation;

 
//#####Indicator Bar and Related Items#####

//Blinking Arrows 

//Next/Previous Game
local image_up = fe.add_image ("images/arrow_up.png", 17.8, 155, 0, 0);
local image_down = fe.add_image ("images/arrow_down.png", 17.8,947, 0, 0);
image_up.visible = false;
image_down.visible = false;
fe.add_ticks_callback( "tick_up" );
fe.add_ticks_callback( "tick_down" );

function tick_up(ttime)
	{
		if ((fe.overlay.is_up) == true)
			{
				(fe.get_input_state("Up") || fe.get_input_state("Joy0 Up")) ? image_up.visible = false : image_up.visible = false;
			}	
		else if ((fe.overlay.is_up) == false)
			{
				(fe.get_input_state("Up") || fe.get_input_state("Joy0 Up")) ? image_up.visible = true : image_up.visible = false;
			}
	}

function tick_down(ttime)
	{
		if ((fe.overlay.is_up) == true)
			{
				(fe.get_input_state("Down") || fe.get_input_state("Joy0 Down")) ? image_down.visible = false : image_down.visible = false;
			}	
		else if ((fe.overlay.is_up) == false)
			{
				(fe.get_input_state("Down") || fe.get_input_state("Joy0 Down")) ? image_down.visible = true : image_down.visible = false;
			}
	}

//Next/ Previous Letter/Page
local image_up = fe.add_image ("images/arrow_up_fast.png", 17.8, 149, 0, 0);
local image_down = fe.add_image ("images/arrow_down_fast.png", 17.8,947, 0, 0);
image_up.visible = false;
image_down.visible = false;
fe.add_ticks_callback( "tick_up_fast" );
fe.add_ticks_callback( "tick_down_fast" );

function tick_up_fast(ttime)
	{
		if ((fe.overlay.is_up) == true)
			{
				(fe.get_input_state("Joy0 PovYpos") || fe.get_input_state("Joy0 PovXneg") || fe.get_input_state("PageUp") || fe.get_input_state("Home")) ? image_up.visible = false : image_up.visible = false;
			}	
		else if ((fe.overlay.is_up) == false)
			{
				(fe.get_input_state("Joy0 PovYpos") || fe.get_input_state("Joy0 PovXneg") || fe.get_input_state("PageUp") || fe.get_input_state("Home"))? image_up.visible = true : image_up.visible = false;
			}
	}

function tick_down_fast(ttime)
	{
		if ((fe.overlay.is_up) == true)
			{
				(fe.get_input_state("Joy0 PovYneg") || fe.get_input_state("Joy0 PovXpos") || fe.get_input_state("PageDown") || fe.get_input_state("End"))  ? image_down.visible = false : image_down.visible = false;
			}	
		else if ((fe.overlay.is_up) == false)
			{
				(fe.get_input_state("Joy0 PovYneg") || fe.get_input_state("Joy0 PovXpos") || fe.get_input_state("PageDown") || fe.get_input_state("End")) ? image_down.visible = true : image_down.visible = false;
			}
	}

//Indicator Bar
local indicator_bar = fe.add_image( "images/indicator_bar.png", 21, 180, 12,760 );
local indicator_graph = fe.add_image( "images/indicator_graph.png", 23, 180, 8, 760 );
local indicator_position = fe.add_image( "images/indicator_circle.png", 5, 0, 42, 42 );

//Get First Letter of Title and Adjust Non-Alphabetical Chars
function first_letter ()
	{
		local expression = regexp("[a-zA-Z]");
		if ((fe.game_info(Info.Title).len() != 0) && (expression.match(rstrip(fe.game_info(Info.Title)).slice(0,1)) == true))
		return rstrip(fe.game_info(Info.Title)).slice(0,1)
		else return "#";
	}

local indicator_text = fe.add_text( "[!first_letter]",7, 0, 40, 40);
indicator_text.font="BebasNeue Book.ttf";
indicator_text.set_rgb(203,203,203);
indicator_text.style = Style.Bold;
indicator_text.align = Align.MiddleCentre;
indicator_text.charsize = 38;

function on_indextransition( ttype, var, ttime ) 
	{
		indicator_graph.height = (indicator_bar.height)/(fe.list.size) * (fe.list.index+1)
		indicator_position.y = (indicator_bar.height - 34)/(fe.list.size) * (fe.list.index+1) + 171
		indicator_text.y = (indicator_bar.height - 34)/(fe.list.size) * (fe.list.index+1) + 171
	}
fe.add_transition_callback( this, "on_indextransition" )


//TEXT ASSETS

//Game: Overview
local goverview = fe.add_text("[goverview]", 1185, 694, 656, 384);
goverview.font="BebasNeue Book.ttf";
goverview.align = Align.TopLeft;
goverview.word_wrap = true;
goverview.charsize = 26;
goverview.style = Style.Bold;
goverview.set_rgb(220,220,220);

fe.add_transition_callback("on_goverviewtransition")
function on_goverviewtransition(ttype, var, ttime)
	{
		if (ttype == Transition.EndNavigation)
       goverview.msg = fe.game_info(Info.Overview)
		if (ttype == Transition.StartLayout)
       goverview.msg = fe.game_info(Info.Overview)
		if (ttype == Transition.ToNewList)
       goverview.msg = fe.game_info(Info.Overview)
		if (fe.game_info(Info.Overview) == "")
	     goverview.msg = "Overview not avavilable."
	}

//Game: Release Year
local grelease = fe.add_text("[grelease]", 1430, 50, 250, 0);
grelease.font="BebasNeue Book.ttf";
grelease.align = Align.TopCentre;
grelease.word_wrap = true;
grelease.charsize = 36;
grelease.style = Style.Bold;
grelease.set_rgb(220,220,220);

fe.add_transition_callback("on_greleasetransition")
function on_greleasetransition(ttype, var, ttime)
	{
		if (ttype == Transition.EndNavigation)
			 grelease.msg = fe.game_info(Info.Year)
		if (ttype == Transition.StartLayout)
			 grelease.msg = fe.game_info(Info.Year)
		if (ttype == Transition.ToNewList)
			 grelease.msg = fe.game_info(Info.Year)
		if (fe.game_info(Info.Year) == "")
			 grelease.msg = "?"
	}

//Game: Number of Players
local gplayer = fe.add_text("[gplayer]", 1710, 50, 250, 0);
gplayer.font="BebasNeue Book.ttf";
gplayer.align = Align.TopCentre;
gplayer.word_wrap = true;
gplayer.charsize = 36;
gplayer.style = Style.Bold;
gplayer.set_rgb(220,220,220);

fe.add_transition_callback("on_gplayertransition")
function on_gplayertransition(ttype, var, ttime)
	{
		if (ttype == Transition.EndNavigation)
			 gplayer.msg = fe.game_info(Info.Players)
		if (ttype == Transition.StartLayout)
			 gplayer.msg = fe.game_info(Info.Players)
		if (ttype == Transition.ToNewList)
			 gplayer.msg = fe.game_info(Info.Players)
		if (fe.game_info(Info.Players) == "")
			 gplayer.msg = "?"
	}

//Game: Region
local gregion = fe.add_text("[gregion]", 1596, 146, 290, 0);
gregion.font="BebasNeue Book.ttf";
gregion.align = Align.TopCentre;
gregion.word_wrap = true;
gregion.charsize = 36;
gregion.style = Style.Bold;
gregion.set_rgb(220,220,220);

fe.add_transition_callback("on_gregiontransition")
function on_gregiontransition(ttype, var, ttime)
	{
		if (ttype == Transition.EndNavigation)
			 gregion.msg = fe.game_info(Info.Region)
		if (ttype == Transition.StartLayout)
			 gregion.msg = fe.game_info(Info.Region)
		if (ttype == Transition.ToNewList)
			 gregion.msg = fe.game_info(Info.Region)
		if (fe.game_info(Info.Region) == "")
			 gregion.msg = "Unknown"
	}

//Game: Language
local glan = fe.add_text("[glan]", 1596, 234, 290, 0);
glan.font="BebasNeue Book.ttf";
glan.align = Align.TopCentre;
glan.word_wrap = true;
glan.charsize = 36;
glan.style = Style.Bold;
glan.set_rgb(220,220,220);

fe.add_transition_callback("on_glantransition")
function on_glantransition(ttype, var, ttime)
	{
		if (ttype == Transition.EndNavigation)
       glan.msg = fe.game_info(Info.Language)
		if (ttype == Transition.StartLayout)
       glan.msg = fe.game_info(Info.Language)
		if (ttype == Transition.ToNewList)
       glan.msg = fe.game_info(Info.Language)
		if (fe.game_info(Info.Language) == "")
			glan.msg = "Unknown"
	}

//Game: Category/ Genre
local gcat = fe.add_text("[gcat]", 1596, 324, 290, 0);
gcat.font="BebasNeue Book.ttf";
gcat.align = Align.TopCentre;
gcat.word_wrap = true;
gcat.charsize = 36;
gcat.style = Style.Bold;
gcat.set_rgb(220,220,220);

fe.add_transition_callback("on_gcattransition")
function on_gcattransition(ttype, var, ttime)
	{
		if (ttype == Transition.EndNavigation)
       gcat.msg = fe.game_info(Info.Category)
		if (ttype == Transition.StartLayout)
       gcat.msg = fe.game_info(Info.Category)
		if (ttype == Transition.ToNewList)
       gcat.msg = fe.game_info(Info.Category)
		if (fe.game_info(Info.Category) == "")
	     gcat.msg = "Unknown"
	}

//Game: Series
local gseries = fe.add_text("[gseries]", 1596, 414, 290, 0);
gseries.font="BebasNeue Book.ttf";
gseries.align = Align.TopCentre;
gseries.word_wrap = true;
gseries.charsize = 36;
gseries.style = Style.Bold;
gseries.set_rgb(220,220,220);

fe.add_transition_callback("on_gseriestransition")
function on_gseriestransition(ttype, var, ttime)
	{
		if (ttype == Transition.EndNavigation)
       gseries.msg = fe.game_info(Info.Series)
		if (ttype == Transition.StartLayout)
       gseries.msg = fe.game_info(Info.Series)
		if (ttype == Transition.ToNewList)
       gseries.msg = fe.game_info(Info.Series)
		if (fe.game_info(Info.Series) == "")
	     gseries.msg = "---"
	}

//Game: Status
local g_status = fe.add_image ("images/status/[Status].png", 701, 20, 60, 60);
g_status.mipmap = true;
g_status.trigger = Transition.EndNavigation;

//Game: Content Rating
local g_status = fe.add_image ("images/content_rating/[Rating].png", 1378, 20, 80, 80);
g_status.mipmap = true;
g_status.trigger = Transition.EndNavigation;	
	
//Game: Control Scheme
local controlicon = fe.add_image ("images/controllers/[Control].png", 1610, 498, 262, 70);
controlicon.mipmap = true;
controlicon.trigger = Transition.EndNavigation;

//Game: Manufacturer/ Producer
local gproduce = fe.add_text("[gproduce]", 1596, 590, 290, 0);
gproduce.font="BebasNeue Book.ttf";
gproduce.align = Align.TopCentre;
gproduce.word_wrap = true;
gproduce.charsize = 36;
gproduce.style = Style.Bold;
gproduce.set_rgb(220,220,220);

fe.add_transition_callback("on_gproducetransition")
function on_gproducetransition(ttype, var, ttime)
	{
		if (ttype == Transition.EndNavigation)
       gproduce.msg = fe.game_info(Info.Manufacturer)
		if (ttype == Transition.StartLayout)
       gproduce.msg = fe.game_info(Info.Manufacturer)
		if (ttype == Transition.ToNewList)
       gproduce.msg = fe.game_info(Info.Manufacturer)
		if (fe.game_info(Info.Manufacturer) == "")
	     gproduce.msg = "Unknown"
	}

//GameList: List Entry/List Size
local lsize = fe.add_text("[ListEntry]/[ListSize]", 240,1040,300,0);
lsize.font="TulpenOne-Regular-Caps.ttf";
lsize.set_rgb(220,220,220);
lsize.style = Style.Bold;
lsize.align = Align.Left;
lsize.charsize = 60;


//GAME-LIST
//Shuffle

//Shuffle Gamelist
local list = [];
	list.push(fe.add_text("[Title]", 76, 100, 400, 60));
	list.push(fe.add_text("[Title]", 76, 150, 400, 60));
	list.push(fe.add_text("[Title]", 76, 200, 400, 60));
	list.push(fe.add_text("[Title]", 76, 250, 400, 60));
	list.push(fe.add_text("[Title]", 76, 300, 400, 60));
	list.push(fe.add_text("[Title]", 76, 350, 400, 60));
	list.push(fe.add_text("[Title]", 76, 400, 400, 60));
	list.push(fe.add_text("[Title]", 76, 450, 400, 60));
	list.push(fe.add_text("[Title]", 76, 500, 400, 60));
	list.push(fe.add_text("[Title]", 76, 550, 400, 60));
	list.push(fe.add_text("[Title]", 76, 600, 400, 60));
	list.push(fe.add_text("[Title]", 76, 650, 400, 60));
	list.push(fe.add_text("[Title]", 76, 700, 400, 60));
	list.push(fe.add_text("[Title]", 76, 750, 400, 60));
	list.push(fe.add_text("[Title]", 76, 800, 400, 60));
	list.push(fe.add_text("[Title]", 76, 850, 400, 60));
	list.push(fe.add_text("[Title]", 76, 900, 400, 60));
	list.push(fe.add_text("[Title]", 76, 950, 400, 60));
	
// Extend the Shuffle class
class ShuffleList extends Shuffle
	{
		function refresh()
			{
				base.refresh();
			}

		function _refreshSelected(slot) // Overwrite the _refreshSelected function
			{
				slot.font="TulpenOne-Regular-Caps.ttf";
				slot.align = Align.Left;
				slot.charsize = 40;
				slot.style = Style.Bold;
				slot.set_rgb ( 220, 220, 220 );
			}

		function _refreshDeselected(slot) // Overwrite the _refreshDeselected function
			{
				slot.font="TulpenOne-Regular-Caps.ttf";
				slot.align = Align.Left;
				slot.charsize = 40;
				slot.style = Style.Bold;
				slot.set_rgb (100 , 100, 100);
			}
	}

//Shuffle Image (Arrow)
local pow = [];
	pow.push(fe.add_image("images/listarrow.png", 54, 117, 0, 0));
	pow.push(fe.add_image("images/listarrow.png", 54, 167, 0, 0));
	pow.push(fe.add_image("images/listarrow.png", 54, 217, 0, 0));
	pow.push(fe.add_image("images/listarrow.png", 54, 267, 0, 0));
	pow.push(fe.add_image("images/listarrow.png", 54, 317, 0, 0));
	pow.push(fe.add_image("images/listarrow.png", 54, 367, 0, 0));
	pow.push(fe.add_image("images/listarrow.png", 54, 417, 0, 0));
	pow.push(fe.add_image("images/listarrow.png", 54, 467, 0, 0));
	pow.push(fe.add_image("images/listarrow.png", 54, 517, 0, 0));
	pow.push(fe.add_image("images/listarrow.png", 54, 567, 0, 0));
	pow.push(fe.add_image("images/listarrow.png", 54, 617, 0, 0));
	pow.push(fe.add_image("images/listarrow.png", 54, 667, 0, 0));
	pow.push(fe.add_image("images/listarrow.png", 54, 717, 0, 0));
	pow.push(fe.add_image("images/listarrow.png", 54, 767, 0, 0));
	pow.push(fe.add_image("images/listarrow.png", 54, 817, 0, 0));
	pow.push(fe.add_image("images/listarrow.png", 54, 867, 0, 0));	
	pow.push(fe.add_image("images/listarrow.png", 54, 917, 0, 0));
	pow.push(fe.add_image("images/listarrow.png", 54, 967, 0, 0));
	
//Shufffle Pow Extend the Shuffle class
class ShufflePow extends Shuffle
	{
		function refresh()
			{
				base.refresh();
			}

		function _refreshSelected(slot) //Overwrite the _refreshSelected function
			{
				slot.visible = true;
			}
		function _refreshDeselected(slot) //Overwrite the _refreshDeselected function
			{
				slot.visible = false;
			}
	}

// Create an instance of the extended class
//local list: these options effect gamelist. local pow: these options effect linked image. save="themename": saves the location/position of item selected and returns to it. hide=true: hides the items in list if they exceed list size i.e. doesn't repeat items. loop=flase: does not repeat the list after reaching last item on list. 
local list = ShuffleList({ save="retrodiction", hide=true, loop=false, reset=true, slots=list }); 
local pow = ShufflePow({ save="retrodiction", hide=true, loop=false, reset=true, slots=pow});


//#####CUSTOM OVERLAY - GAME INFO#####

//Custom Overlay: Game Info: Surface & Order
local g_surface = fe.add_surface(796, 676);
g_surface.set_pos(670, 10);
g_surface.visible = false;  
g_surface.zorder = 1

//Custom Overlay: Game Info: Background Image
local game_info= g_surface.add_image ("images/game_info.png", 0, 0, 796, 676);

//Custom Overlay: Game Info: Title
local gtitle = g_surface.add_text("[gtitle]", 26, 70, 750, 0);
gtitle.font="TulpenOne-Regular-Caps.ttf";
gtitle.align = Align.MiddleCentre;
gtitle.word_wrap = true;
gtitle.charsize = 60;
gtitle.style = Style.Bold;
gtitle.set_rgb(220,220,220);

fe.add_transition_callback("on_gtitletransition")
function on_gtitletransition(ttype, var, ttime)
	{
		if (ttype == Transition.EndNavigation)
			 gtitle.msg = fe.game_info(Info.Title)
		if (ttype == Transition.StartLayout)
       gtitle.msg = fe.game_info(Info.Title)
		if (ttype == Transition.ToNewList)
       gtitle.msg = fe.game_info(Info.Title)
		if (fe.game_info(Info.Title) == "")
	     gtitle.msg = "---"
	}

//Custom Overlay: Game Info: Play Time
local gtime = g_surface.add_text("[gtime]", 120, 251, 290, 0);
gtime.font="BebasNeue Book.ttf";
gtime.align = Align.MiddleCentre;
gtime.word_wrap = true;
gtime.charsize = 32;
gtime.style = Style.Bold;
gtime.set_rgb(220,220,220);

fe.add_transition_callback("on_gtimetransition")
function on_gtimetransition(ttype, var, ttime)
	{
		if (ttype == Transition.EndNavigation) 
			 gtime.msg = "[PlayedTime]"
		if (ttype == Transition.StartLayout)
			 gtime.msg = "[PlayedTime]"
		if (ttype == Transition.ToNewList)
			 gtime.msg = "[PlayedTime]"
		if (fe.game_info(Info.PlayedTime) == "")
			 gtime.msg = "---"
	}

//Custom Overlay: Game Info: Play Count
local gcount = g_surface.add_text("[gcount]", 120, 343, 290, 0);
gcount.font="BebasNeue Book.ttf";
gcount.align = Align.MiddleCentre;
gcount.word_wrap = true;
gcount.charsize = 32;
gcount.style = Style.Bold;
gcount.set_rgb(220,220,220);

fe.add_transition_callback("on_gcounttransition")
function on_gcounttransition(ttype, var, ttime)
	{
		if (ttype == Transition.EndNavigation)
			 gcount.msg = fe.game_info(Info.PlayedCount)+ " Times"
		if (ttype == Transition.StartLayout)
       gcount.msg = fe.game_info(Info.PlayedCount)+ " Times"
		if (ttype == Transition.ToNewList)
       gcount.msg = fe.game_info(Info.PlayedCount)+ " Times"
		if (fe.game_info(Info.PlayedCount) == "")
	     gcount.msg = "---"
	}

//Custom Overlay: Game Info: Database
local gdbase = g_surface.add_text("[gdbase]", 120, 431, 290, 0);
gdbase.font="BebasNeue Book.ttf";
gdbase.align = Align.MiddleCentre;
gdbase.word_wrap = true;
gdbase.charsize = 32;
gdbase.style = Style.Bold;
gdbase.set_rgb(220,220,220);

fe.add_transition_callback("on_gdbasetransition")
function on_gdbasetransition(ttype, var, ttime)
	{
		if (ttype == Transition.EndNavigation)
       gdbase.msg = fe.game_info(Info.Extra)
		if (ttype == Transition.StartLayout)
       gdbase.msg = fe.game_info(Info.Extra)
		if (ttype == Transition.ToNewList)
       gdbase.msg = fe.game_info(Info.Extra)
		if (fe.game_info(Info.Control) == "")
	     gdbase.msg = "---"
	}

//Custom Overlay: Game Info: Media Format
local gmedia = g_surface.add_image("images/format/[Buttons]", 170, 493, 80, 80);
gmedia.trigger = Transition.EndNavigation;

//Custom Overlay: Game Info: Media Count
local gmcount = g_surface.add_text("[gmcount]", 320, 529, 100, 0);
gmcount.font="BebasNeue Book.ttf";
gmcount.align = Align.MiddleCentre;
gmcount.word_wrap = true;
gmcount.charsize = 40;
gmcount.style = Style.Bold;
gmcount.set_rgb(220,220,220);

fe.add_transition_callback("on_gmcounttransition")
function on_gmcounttransition(ttype, var, ttime)
	{
		if(ttype == Transition.EndNavigation)
		  gmcount.msg = fe.game_info(Info.DisplayCount)
		if(ttype == Transition.StartLayout)
		  gmcount.msg = fe.game_info(Info.DisplayCount)
		if(ttype == Transition.ToNewList)
		  gmcount.msg = fe.game_info(Info.DisplayCount)
		if(fe.game_info(Info.DisplayCount) == "")
		  gmcount.msg =  "---"
	}


//Custom Overlay: Game Info: Control Module: Manager Class
local manager = FeControls
	(
		{
			enabled = false,
			selected = "label_start",                    
			clear_selection = true,
			key_up = "up",
			key_down = "down",
			key_left = "left",
			key_right = "right",
			key_select = "select"
		}
	)

	
//###Custom Overlay: Game Info: Control Module: Labels###

//Custom Overlay: Game Info: Control Module: Labels: Play
manager.add(FeLabel("label_start", 448, 148, 152, 84, 
	{
		surface = g_surface,
		up = "label_edit", down = "label_back", right = "label_back", left = "label_edit",
		state_default = 
			{
				msg = "Play",
				charsize = 32,
				rgb = [255, 255, 255],
			}
				state_selected = 
			{
				rgb = [255, 255, 255],
			}
	}
));

//Custom Overlay: Game Info: Control Module: Labels: Back
manager.add(FeLabel("label_back", 619, 148, 152, 84, 
	{
		surface = g_surface,
		up = "label_start", down = "label_favorite", right = "label_favorite", left = "label_start",
		select = function()
			{
				::fe.signal("back");
			}
		state_default = 
			{
				msg = "Back",
				charsize = 32,
				rgb = [255, 255, 255],
			}
		state_selected = 
			{
				rgb = [255, 255, 255],
			}
	}
));

//Custom Overlay: Game Info: Control Module: Labels: Add to Favorite
manager.add(FeLabel("label_favorite", 448, 250, 324, 84, 
	{
		surface = g_surface,
		up = "label_back", down = "label_queue", right = "label_queue", left = "label_back",
		select = function()
			{
				::fe.signal("add_favourite");
			}
		state_default = 
			{
				msg = "Add to Favorite",
				charsize = 32,
				rgb = [255, 255, 255],
			}
		state_selected = 
			{
				rgb = [255, 255, 255],
			}
	}
));

//Custom Overlay: Game Info: Control Module: Labels: Add to Queue
manager.add(FeLabel("label_queue", 448, 350, 324, 84, 
	{
		surface = g_surface,
		up = "label_favorite", down = "label_archive", right = "label_archive", left = "label_favorite",
		select = function()
			{
				::fe.signal("add_tags");
			}
		state_default = 
			{
				msg = "Add to Queue",
				charsize = 32,
				rgb = [255, 255, 255],
			}
		state_selected = 
			{
				rgb = [255, 255, 255],
			}
	}
));

//Custom Overlay: Game Info: Control Module: Labels: Add to Archive
manager.add(FeLabel("label_archive", 448, 452, 324, 84, 
	{
		surface = g_surface,
		up = "label_queue", down = "label_edit", right = "label_edit", left = "label_queue",
		select = function()
			{
				::fe.signal("add_tags");
			}
		state_default = 
			{
				msg = "Add to Archive",
				charsize = 32,
				rgb = [255, 255, 255],
			}
		state_selected = 
			{
				rgb = [255, 255, 255],
			}
	}
));

//Custom Overlay: Game Info: Control Module: Labels: Edit Game
manager.add(FeLabel("label_edit", 448, 554, 324, 84, 
	{
		surface = g_surface,
		up = "label_archive", down = "label_start", right = "label_start", left = "label_archive",
		select = function()
			{
				::fe.signal("edit_game");
			}
		state_default = 
			{
				msg = "Edit Game",
				charsize = 32,
				rgb = [255, 255, 255],
			}
		state_selected = 
			{
				rgb = [255, 255, 255],
			}
	}
));


//#####CUSTOM OVERLAY - OPTIONS MENU#####

//Custom Overlay: Options: Control Module: Surface & Order
local g_surface2 = fe.add_surface(1920, 1080);
g_surface2.visible = false;  
g_surface2.zorder = 2

//Custom Overlay: Options: Control Module: Background Image
local game_info= g_surface2.add_image ("images/option_menu.png", 670, 10, 796, 679);

//Custom Overlay: Options: Control Module: Manager Class
local manager2 = FeControls2(
	{
		enabled = false,
		selected = "label_random",                    
		clear_selection = true,
		key_up = "up",
		key_down = "down",
		key_left = "left",
		key_right = "right",
		key_select = "select"
	}
);

//###Custom Overlay: Options: Control Module: Labels###

//Custom Overlay: Options: Control Module: Random
manager2.add(FeLabel2("label_random", 861, 52, 500, 60,
	{
		surface = g_surface2,
		up = "label_exit", down = "label_search", right = "label_search", left = "label_exit",
		select = function()
			{
				::fe.signal("random_game");
			}
		state_default =
			{
				msg = "Random",
				charsize = 32,
				rgb = [255, 255, 255],
			}
		state_selected = 
			{
				rgb = [255, 255, 255],
			}
	}
));

//Custom Overlay: Options: Control Module: Search
manager2.add(FeLabel2("label_search", 861, 142, 500, 60,
	{
		surface = g_surface2,
		up = "label_random", down = "label_filters", right = "label_filters", left = "label_random",
		select = function()
			{
				::fe.signal("custom1");
			}
		state_default =
			{
				msg = "Search",
				charsize = 32,
				rgb = [255, 255, 255],
			}
		state_selected = 
			{
				rgb = [255, 255, 255],
			}
	}
));

//Custom Overlay: Options: Control Module: Filters
manager2.add(FeLabel2("label_filters", 861, 230, 500, 60,
	{
		surface = g_surface2,
		up = "label_search", down = "label_screensaver", right = "label_screensaver", left = "label_search",
		select = function()
			{
				::fe.signal("filters_menu");
			}
		state_default =
			{
				msg = "Filters",
				charsize = 32,
				rgb = [255, 255, 255],
			}
		state_selected = 
			{
				rgb = [255, 255, 255],
			}
	}
));

//Custom Overlay: Options: Control Module: Screensaver
manager2.add(FeLabel2("label_screensaver", 861, 316, 500, 60,
	{
		surface = g_surface2,
		up = "label_filters", down = "label_reload", right = "label_reload", left = "label_filters",
		select = function()
			{
				::fe.signal("screen_saver");
			}
		state_default =
			{
				msg = "Screensaver",
				charsize = 32,
				rgb = [255, 255, 255],
			}
		state_selected = 
			{
				rgb = [255, 255, 255],
			}
	}
));

//Custom Overlay: Options: Control Module: Reload
manager2.add(FeLabel2("label_reload", 861, 404, 500, 60,
	{
		surface = g_surface2,
		up = "label_screensaver", down = "label_configure", right = "label_configure", left = "label_screensaver",
		select = function()
			{
				::fe.signal("reload");
			}
		state_default =
			{
				msg = "Reload",
				charsize = 32,
				rgb = [255, 255, 255],
			}
		state_selected = 
			{
				rgb = [255, 255, 255],
			}
	}
));

//Custom Overlay: Options: Control Module: Configure
manager2.add(FeLabel2("label_configure", 861, 492, 500, 60,
	{
		surface = g_surface2,
		up = "label_reload", down = "label_exit", right = "label_exit", left = "label_reload",
		select = function()
			{
				::fe.signal("configure");
			}
		state_default =
			{
				msg = "Configure",
				charsize = 32,
				rgb = [255, 255, 255],
			}
		state_selected = 
			{
				rgb = [255, 255, 255],
			}
	}
));

//Custom Overlay: Options: Control Module: Exit
manager2.add(FeLabel2("label_exit", 861, 582, 500, 60,
	{
		surface = g_surface2,
		up = "label_configure", down = "label_random", right = "label_random", left = "label_configure",
		select = function()
			{
				::fe.signal("exit");
			}
		state_default =
			{
				msg = "Exit Attract-Mode",
				charsize = 32,
				rgb = [255, 255, 255],
			}
		state_selected = 
			{
				rgb = [255, 255, 255],
			}
	}
));

 
//Custom Overlay: Game Info & Options Menu: Control Module: Signal Handlers
function start_menu()
	{
		g_surface.visible = true;
		manager.enabled = true;
	}

function stop_menu()
	{
		g_surface.visible = false;
		manager.enabled = false;
	}

function start_menu2()
	{
		g_surface2.visible = true;
		manager2.enabled = true;
	}

function stop_menu2()
	{
		g_surface2.visible = false;
		manager2.enabled = false;
	}

function cmenu_start()
	{
		manager.enabled = true;
	}

function cmenu_stop()
	{
		manager.enabled = false;
	}

function cmenu2_start()
	{
		manager2.enabled = true;
	}

function cmenu2_stop()
	{
		manager2.enabled = false;
	}

function g_surface_show()
	{
		g_surface.visible = true;
	}

function g_surface_hide()
	{
		g_surface.visible = false;
	}

function g_surface2_show()
	{
		g_surface2.visible = true;
	}

function g_surface2_hide()
	{
		g_surface2.visible = false;
	}

function control_signals( signal )
	{
		if (signal == "select")
			{
				if (manager.enabled) return; else start_menu();
				return true;
			}
		else if ( signal == "back" )
			{
				if (manager.enabled) cmenu_stop(); 
				else if (manager2.enabled) stop_menu2(); 
				else if (g_surface.visible) g_surface_hide(); 
				else if (g_surface2.visible) g_surface2_hide(); else return
				return true;
			}
		else if (signal == "custom2")
			{
				if (g_surface2.visible) stop_menu2; else start_menu2();
				return true;
			}	
		return false;
	}

fe.add_signal_handler("control_signals");

//Game: info Panel: Control Module: Iniitialize Controls Manager
manager.init();
manager2.init();


//#####Custom Overlay Menu#####

	
//Custom Overlay: Options Menu Surface
local coverlay_optmenusurface = coverlay_surface.add_surface(920, 571);
coverlay_optmenusurface.set_pos(510, 240);

//Custom Overlay: Options Menu Background
local coverlay_optmenubg = coverlay_optmenusurface.add_image("images/c_overlay.png", 0, 0, 920, 571); 

//Custom Overlay Menu List Box
local coverlay_optmenu_listbox = coverlay_optmenusurface.add_listbox(0, 380, 920, 150);
coverlay_optmenu_listbox.rows = 1;
coverlay_optmenu_listbox.set_rgb(150, 150, 150);
coverlay_optmenu_listbox.font = "TulpenOne-Regular-Caps.ttf";
coverlay_optmenu_listbox.charsize  = 80;
coverlay_optmenu_listbox.align = Align.MiddleCentre;
coverlay_optmenu_listbox.sel_style = Style.Bold;
coverlay_optmenu_listbox.selbg_alpha = 0;
coverlay_optmenu_listbox.set_sel_rgb( 255, 255, 255 );

//Overlay Menu Title
local coverlay_optmenu_title = coverlay_optmenusurface.add_text("Exit Attract-Mode?", 40, 40, 860, 100);
coverlay_optmenu_title.font = "TulpenOne-Regular-Caps.ttf";
coverlay_optmenu_title.charsize = 80;
coverlay_optmenu_title.align = Align.MiddleCentre;
coverlay_optmenu_title.style = Style.Bold;

//Keyboard Search Module & Settings
local search_surface = fe.add_surface(796, 679)
search_surface.zorder = 3;
search_surface.set_pos(670, 10);
KeyboardSearch(search_surface)
	.bg ( "images/search_bg.png" )
	.bg_color( 255, 255, 255, 255 )
	.text_pos ([0.35, 0.1, 2, 0.1])
	.text_color( 250, 250, 250)
	.text_font( "BebasNeue Book.ttf" )
	.keys_image_folder( "images/search_keys" )
	.keys_pos ([0.1, 0.35, 0.8, 0.6])
	.keys_color( 100, 100, 100 )
	.keys_selected_color( 220, 220, 220 )
	.init()

//Temporary Fix for Screen Flickering in FullScreen Mode
fe.add_ticks_callback("tick_pixel");
local pixel = fe.add_image("images/white_pixel.png", 1920, 1080, 1, 1 )

function tick_pixel (tick_time)
	{
		pixel.x = 1 - pixel.x;
	}

//*****END*****//