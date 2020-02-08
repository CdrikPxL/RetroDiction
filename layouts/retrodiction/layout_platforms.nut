//*****RetroDiction: Platforms Menu*****

//RetroDiction Version 1.0
//Official Github Repository: https://github.com/randombyt/RetroDiction
//Official Thread on Attract-Mode Forums: http://forum.attractmode.org/index.php?topic=3199.0   


//#####LAYOUT AND BACKGROUND#####

//Layout Dimensions
fe.layout.width=1920;
fe.layout.height=1080;

//Load Modules & Plug-ins
fe.do_nut("scripts/objects/controls/module.nut") //load controls module
fe.do_nut("scripts/objects/keyboard-search/module.nut") //load keyboard search module
fe.do_nut("scripts/leap/plugin.nut") //load leap plugin
fe.do_nut("scripts/shuffle/module.nut") //load shuffle module

//Surface & Background
local background = fe.add_image("images/retromode_bg.png", 0,0,0,0);
background.mipmap = true;


//#####PLATFORMS: FLYERS, LOGOS & TITLE#####

//System Flyers
local sysflyers = fe.add_image("images/sysflyer/[Name].png", 660, 0, 0, 0);
sysflyers.mipmap = true;
sysflyers.trigger = Transition.EndNavigation;

//List Background
local listbg = fe.add_image("images/list_bg.png", 0, 0, 0, 0);
listbg.mipmap = true;

//System Logos
local syslogo = fe.add_image("images/syslogo/[Name].png", 490, 440, 0, 0);
syslogo.mipmap = true;
syslogo.zorder = 3;
syslogo.trigger = Transition.EndNavigation;

//Platforms Title
local platform_title = fe.add_image("images/titles/[DisplayName].png", 130, -4, 0, 0);
platform_title.mipmap = true;
platform_title.trigger = Transition.EndNavigation;

//List Sperators
local listseperator = fe.add_image("images/seperator_up.png", 50, 105, 560, 0);
listseperator.mipmap = true;

local listseperator = fe.add_image("images/seperator_down.png", 50, 995, 560, 0);
listseperator.mipmap = true;

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


//GAMELIST

//Shuffle Setup
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
	
//Extend the Shuffle class
class ShuffleList extends Shuffle
	{
		function refresh()
			{
				base.refresh();
			}

//Overwrite the _refreshSelected function
		function _refreshSelected(slot)
			{
				slot.font="TulpenOne-Regular-Caps.ttf";
				slot.align = Align.Left;
				slot.charsize = 40;
				slot.style = Style.Bold;
				slot.set_rgb ( 220, 220, 220 );
			}
	
//Overwrite the _refreshDeselected function
		function _refreshDeselected(slot)
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

// Overwrite the _refreshSelected function
		function _refreshSelected(slot)
			{
				slot.visible = true;
			}

// Overwrite the _refreshDeselected function
		function _refreshDeselected(slot)
			{
				slot.visible = false;
			}
	}

// Create an instance of the extended class
//local list: these options effect gamelist. local pow: these options effect linked image. save="themename": saves the location/position of item selected and returns to it. hide=true: hides the items in list if they exceed list size i.e. doesn't repeat items. loop=flase: does not repeat the list after reaching last item on list, reset=true resets so pointer is on the first item of the list.
local list = ShuffleList({ save="retrodiction", hide=true, loop=false, reset=false, slots=list }); 
local pow = ShufflePow({ save="retrodiction", hide=true, loop=false, reset=false, slots=pow});


//System Information

//List Entry/List Size
local lsize = fe.add_text("[ListEntry]/[ListSize]", 240,1040,300,0);
lsize.font="TulpenOne-Regular-Caps.ttf";
lsize.set_rgb(220,220,220);
lsize.style = Style.Bold;
lsize.align = Align.Left;
lsize.charsize = 60;


//#####System: Info Panel#####
local sys_info= fe.add_image ("images/sys_info.png", 890, 52, 0, 0);
sys_info.visible = false;

//System: Overview
local sys_oview = fe.add_text("[sys_oview]", 910, 530, 690, 384);
sys_oview.font="BebasNeue Book.ttf";
sys_oview.align = Align.TopLeft;
sys_oview.word_wrap = true;
sys_oview.charsize = 26;
sys_oview.style = Style.Bold;
sys_oview.set_rgb(220,220,220);
sys_oview.visible = false;

fe.add_transition_callback("on_sys_oviewtransition")
function on_sys_oviewtransition(ttype, var, ttime)
	{
		if ( ttype == Transition.EndNavigation)
		sys_oview.msg = fe.game_info(Info.Overview)
		if ( ttype == Transition.StartLayout)
		sys_oview.msg = fe.game_info(Info.Overview)
		if ( ttype == Transition.ToNewList)
		sys_oview.msg = fe.game_info(Info.Overview)
		if  (fe.game_info(Info.Overview) == "")
		sys_oview.msg = "Overview not avavilable."
	}

//System: Release
local sys_release = fe.add_text("[sys_release]", 1024, 82, 250, 100);
sys_release.font="BebasNeue Book.ttf";
sys_release.align = Align.MiddleCentre;
sys_release.word_wrap = true;
sys_release.charsize = 40;
sys_release.style = Style.Bold;
sys_release.set_rgb(220,220,220);
sys_release.visible = false;

fe.add_transition_callback("on_sys_releasetransition")
function on_sys_releasetransition(ttype, var, ttime)
	{
		if ( ttype == Transition.EndNavigation)
		sys_release.msg = fe.game_info(Info.Year)
		if ( ttype == Transition.StartLayout)
		sys_release.msg = fe.game_info(Info.Year)
		if ( ttype == Transition.ToNewList)
		sys_release.msg = fe.game_info(Info.Year)
		if  (fe.game_info(Info.Year) == "")
		sys_release.msg = "---"
	}

//System: Number of Items
local sys_sumtotal = fe.add_text("[sys_sumtotal]", 1310, 82, 250, 100);
sys_sumtotal.font="BebasNeue Book.ttf";
sys_sumtotal.align = Align.MiddleCentre;
sys_sumtotal.word_wrap = true;
sys_sumtotal.charsize = 40;
sys_sumtotal.style = Style.Bold;
sys_sumtotal.set_rgb(220,220,220);
sys_sumtotal.visible = false;

fe.add_transition_callback("on_sys_sumtotaltransition")
function on_sys_sumtotaltransition(ttype, var, ttime)
	{
		if ( ttype == Transition.EndNavigation)
		sys_sumtotal.msg = "0"
		if ( ttype == Transition.StartLayout)
		sys_sumtotal.msg = "0"
		if ( ttype == Transition.ToNewList)
		sys_sumtotal.msg = "0"
		if  (fe.game_info(Info.Year) == "")
		sys_sumtotal.msg = "---"
	}

//System: Technology
local sys_tech = fe.add_text("[sys_tech]", 1200, 178, 280, 100);
sys_tech.font="BebasNeue Book.ttf";
sys_tech.align = Align.MiddleCentre;
sys_tech.word_wrap = true;
sys_tech.charsize = 30;
sys_tech.style = Style.Bold;
sys_tech.set_rgb(220,220,220);
sys_tech.visible = false;

fe.add_transition_callback("on_sys_techtransition")
function on_sys_techtransition(ttype, var, ttime)
	{
		if ( ttype == Transition.EndNavigation)
		sys_tech.msg = fe.game_info(Info.Extra) 
		if ( ttype == Transition.StartLayout)
		sys_tech.msg = fe.game_info(Info.Extra)
		if ( ttype == Transition.ToNewList)
		sys_tech.msg = fe.game_info(Info.Extra)
		if  (fe.game_info(Info.Extra) == "")
		sys_tech.msg = "---"
	}

//System: Generation
local sys_gen = fe.add_text("[sys_gen]", 1190, 266, 280, 100);
sys_gen.font="BebasNeue Book.ttf";
sys_gen.align = Align.MiddleCentre;
sys_gen.word_wrap = true;
sys_gen.charsize = 36;
sys_gen.style = Style.Bold;
sys_gen.set_rgb(220,220,220);
sys_gen.visible = false;

fe.add_transition_callback("on_sys_gentransition")
function on_sys_gentransition(ttype, var, ttime)
	{
		if ( ttype == Transition.EndNavigation)
		sys_gen.msg = fe.game_info(Info.Category)+" Gen"
		if ( ttype == Transition.StartLayout)
		sys_gen.msg = fe.game_info(Info.Category)+" Gen"
		if ( ttype == Transition.ToNewList)
		sys_gen.msg = fe.game_info(Info.Category)+" Gen"
		if  (fe.game_info(Info.Category) == "")
		sys_gen.msg = "---"
	}

//Function to Display/ Hide Info
function pm_infopanel_start()
	{
		sys_info.visible = true;
		sys_oview.visible = true;
		sys_release.visible = true;
		sys_sumtotal.visible = true;
		sys_tech.visible = true;
		sys_gen.visible = true;
	}

function pm_infopanel_stop()
	{
		sys_info.visible = false;
		sys_oview.visible = false;
		sys_release.visible = false;
		sys_sumtotal.visible = false;
		sys_tech.visible = false;
		sys_gen.visible = false;
	}

function pminfopanel_signals( signal )
	{
		if (signal == "custom4")
			{
				if (sys_info.visible) pm_infopanel_stop(); else pm_infopanel_start();
				return true;
			}

		else if (signal == "back")
			{
				if (sys_info.visible) pm_infopanel_stop(); else return;
				return true;
			}
		return false;
	}

fe.add_signal_handler("pminfopanel_signals");


//#####CUSTOM OVERLAY - OPTIONS MENU#####

//Custom Overlay: Options: Control Module: Surface & Order
local g_surface = fe.add_surface(1920, 1080);
g_surface.visible = false;  
g_surface.zorder = 1

//Custom Overlay: Options: Control Module: Background Image
local game_info= g_surface.add_image ("images/options_menu_pm.png", 660, 0, 0, 0);

//Custom Overlay: Options: Control Module: Manager Class
local manager = FeControls(
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
manager.add(FeLabel("label_random", 1084, 284, 500, 60,
	{
		surface = g_surface,
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
manager.add(FeLabel("label_search", 1084, 372, 500, 60,
	{
		surface = g_surface,
		up = "label_random", down = "label_screensaver", right = "label_screensaver", left = "label_random",
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

//Custom Overlay: Options: Control Module: Screensaver
manager.add(FeLabel("label_screensaver", 1084, 464, 500, 60,
	{
		surface = g_surface,
		up = "label_search", down = "label_reload", right = "label_reload", left = "label_search",
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
manager.add(FeLabel("label_reload", 1084, 552, 500, 60,
	{
		surface = g_surface,
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
manager.add(FeLabel("label_configure", 1084, 640, 500, 60,
	{
		surface = g_surface,
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
manager.add(FeLabel("label_exit", 1084, 728, 500, 60,
	{
		surface = g_surface,
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

function cmenu_start()
	{
		manager.enabled = true;
	}

function cmenu_stop()
	{
		manager.enabled = false;
	}

function g_surface_show()
	{
		g_surface.visible = true;
	}

function g_surface_hide()
	{
		g_surface.visible = false;
	}

function control_signals( signal )
	{
		if (signal == "custom2")
			{
				if (g_surface.visible) stop_menu(); else start_menu();
				return true;
			}	
		else if ( signal == "back" )
			{
				if (manager.enabled) stop_menu(); 
				else if (g_surface.visible) g_surface_hide(); else return
				return true;
			}
		return false;
	}

fe.add_signal_handler("control_signals");

//Game: info Panel: Control Module: Iniitialize Controls Manager
manager.init();

//Keyboard Search Module & Settings
local search_surface = fe.add_surface(1260, 1080)
search_surface.zorder = 2;
search_surface.set_pos(660, 0);
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
fe.add_ticks_callback( "tick_pixel" );
local pixel = fe.add_image("images/white_pixel.png", 1920, 1080, 1, 1 )

function tick_pixel ( tick_time )
	{
		pixel.x = 1 - pixel.x;
	}

//*****END*****//