//*****Retrodiction: Displays Menu*****

//RetroDiction Version 1.0
//Official Github Repository: https://github.com/randombyt/RetroDiction
//Official Thread on Attract-Mode Forums: http://forum.attractmode.org/index.php?topic=3199.0 


//#####LAYOUT AND BACKGROUND#####

//Layout Dimensions
fe.layout.width=1920;
fe.layout.height=1080;

//Surface & Background
local background = fe.add_image("images/retromode_bg.png", 0,0,0,0);
background.mipmap = true;

//Load Modules & Plug-ins
fe.do_nut("scripts/leap/plugin.nut") //load leap plugin
fe.do_nut("scripts/shuffle/module.nut") //load shuffle module


//#####SYSTEMS: FLYERS, LOGOS & TITLE#####

//System Flyers
local sysflyers = fe.add_image("images/sysflyer/[Name].png", 0, 0, 0, 0);
sysflyers.mipmap = true;
sysflyers.trigger = Transition.EndNavigation;

local listbg = fe.add_image("images/list_bg.png", 0, 0, 0, 0);
listbg.mipmap = true;

//System Logo
local syslogo = fe.add_image("images/syslogo/[Name].png", 490, 440, 0, 0);
syslogo.mipmap = true;
syslogo.trigger = Transition.EndNavigation;

//Platforms Title
local platformstitle = fe.add_image("images/platstitle/[DisplayName].png", 130, 0, 0, 0);
platformstitle.mipmap = true;

local listseperator = fe.add_image("images/seperator_up.png", 50, 368, 560, 0);
listseperator.mipmap = true;

local listseperator = fe.add_image("images/seperator_down.png", 50, 650, 560, 0);
listseperator.mipmap = true;

//Info Button
local info_button = fe.add_image ("images/info_button.png", 1260,0,0,0);
info_button.mipmap = true;

//Blinking Arrows 
local image_up = fe.add_image ("images/arrow_up.png", 17.8, 396, 0, 0);
local image_down = fe.add_image ("images/arrow_down.png", 17.8, 620, 0, 0);
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

//Indicator Bar
local indicator_bar = fe.add_image( "images/indicator_bar.png", 21, 424, 12,186 );
local indicator_graph = fe.add_image( "images/indicator_graph.png", 23, 424, 8, 186 );
local indicator_position = fe.add_image( "images/indicator_circle.png", 5, 0, 42, 42 );

//Get First Letter of Title and Adjust Non-Alphabetical Chars
function first_letter ()
	{
		local first_char = rstrip(fe.game_info(Info.Title)).slice(0,1);
		local expression = regexp("[a-zA-Z]");
		if (expression.match(first_char) == true) return first_char
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
		indicator_position.y = (indicator_bar.height)/(fe.list.size) * (fe.list.index) +418
		indicator_text.y = (indicator_bar.height)/(fe.list.size) * (fe.list.index) + 418
	}

fe.add_transition_callback( this, "on_indextransition" )


//PLATFORM LIST

//Shuffle
//Shuffle Gamelist
local list = [];
	list.push(fe.add_text("[Title]", 76, 360, 400, 60));
	list.push(fe.add_text("[Title]", 76, 410, 400, 60));
	list.push(fe.add_text("[Title]", 76, 460, 400, 60));
	list.push(fe.add_text("[Title]", 76, 510, 400, 60));
	list.push(fe.add_text("[Title]", 76, 560, 400, 60));
	list.push(fe.add_text("[Title]", 76, 610, 400, 60));

	
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
	pow.push(fe.add_image("images/listarrow.png", 54, 372, 0, 0));
	pow.push(fe.add_image("images/listarrow.png", 54, 422, 0, 0));
	pow.push(fe.add_image("images/listarrow.png", 54, 472, 0, 0));
	pow.push(fe.add_image("images/listarrow.png", 54, 522, 0, 0));
	pow.push(fe.add_image("images/listarrow.png", 54, 572, 0, 0));
	pow.push(fe.add_image("images/listarrow.png", 54, 622, 0, 0));
	
//Shufffle Pow Extend the Shuffle class
class ShufflePow extends Shuffle
	{
		function refresh()
			{
				base.refresh();
			}

//Overwrite the _refreshSelected function
		function _refreshSelected(slot)
			{
				slot.visible = true;
			}

//Overwrite the _refreshDeselected function
		function _refreshDeselected(slot)
			{
				slot.visible = false;
			}
	}

// Create an instance of the extended class
//local list: these options effect gamelist. local pow: these options effect linked image. save="themename": saves the location/position of item selected and returns to it. hide=true: hides the items in list if they exceed list size i.e. doesn't repeat items. loop=flase: does not repeat the list after reaching last item on list, reset=true resets so pointer is on the first item of the list.
local list = ShuffleList({ save="retrodiction", hide=true, loop=false, reset=true, slots=list }); 
local pow = ShufflePow({ save="retrodiction", hide=true, loop=false, reset=true, slots=pow});


//#####Main Menu: Info Panel######

//Platform: Info Panel
local plat_info= fe.add_image ("images/plat_info.png", 890, 52, 0, 0);
plat_info.visible = false;

//Platform: Overview
local plat_oview = fe.add_text("[plat_oview]", 910, 530, 690, 384);
plat_oview.font="BebasNeue Book.ttf";
plat_oview.align = Align.TopLeft;
plat_oview.word_wrap = true;
plat_oview.charsize = 26;
plat_oview.style = Style.Bold;
plat_oview.set_rgb(220,220,220);
plat_oview.visible = false;

fe.add_transition_callback("on_plat_oviewtransition")

function on_plat_oviewtransition(ttype, var, ttime)
	{
		if ( ttype == Transition.EndNavigation)
		   plat_oview.msg = fe.game_info(Info.Overview)
		if ( ttype == Transition.StartLayout)
		   plat_oview.msg = fe.game_info(Info.Overview)
		if ( ttype == Transition.ToNewList)
		   plat_oview.msg = fe.game_info(Info.Overview)
		if  (fe.game_info(Info.Overview) == "")
		   plat_oview.msg = "Overview not avavilable."
	}

fe.add_ticks_callback( "tick_plat_oview" );

//Platform: Number of Systems
local plat_sumtotal = fe.add_text("[plat_sumtotal]", 1200, 86, 250, 100);
plat_sumtotal.font="BebasNeue Book.ttf";
plat_sumtotal.align = Align.MiddleCentre;
plat_sumtotal.word_wrap = true;
plat_sumtotal.charsize = 36;
plat_sumtotal.style = Style.Bold;
plat_sumtotal.set_rgb(220,220,220);
plat_sumtotal.visible = false;

fe.add_transition_callback("on_plat_sumtotaltransition")

function on_plat_sumtotaltransition(ttype, var, ttime)
	{
		if ( ttype == Transition.EndNavigation)
		   plat_sumtotal.msg = "0"+" Items in List"
		if ( ttype == Transition.StartLayout)
		   plat_sumtotal.msg = "0"+" Items in List"
		if ( ttype == Transition.ToNewList)
		   plat_sumtotal.msg = "0"+" Items in List"
		if  (fe.game_info(Info.Year) == "")
		   plat_sumtotal.msg = "0"+" Items in List"
	}

fe.add_ticks_callback( "tick_plat_sumtotal" );

//Function to Display/ Hide Info
function tick_plat_info(ttime)
	{
		(fe.get_input_state("Joy0 Button2") || fe.get_input_state("X")) ? plat_info.visible = true : plat_info.visible = false;
		(fe.get_input_state("Joy0 Button2") || fe.get_input_state("X")) ? plat_oview.visible = true : plat_oview.visible = false;
		(fe.get_input_state("Joy0 Button2") || fe.get_input_state("X")) ? plat_sumtotal.visible = true : plat_sumtotal.visible = false;
	}

fe.add_ticks_callback( "tick_plat_info" );

//Ignore Button Presses
function on_signal( sig )
{
	switch ( sig )	
		{
			case "left":
			fe.signal( "" );
			return true;

			case "right":
			fe.signal( "" );
			return true;

			case "prev_letter":
			fe.signal( "" );
			return true;

			case "next_letter":
			fe.signal( "" );
			return true;

			case "prev_page":
			fe.signal( "" );
			return true;

			case "next_page":
			fe.signal( "" );
			return true;	
		}
	return false;
}
fe.add_signal_handler(this, "on_signal");


//#####Custom Overlay Menu#####

//Overlay Surface
local overlay_surface = fe.add_surface(1920, 1080);
overlay_surface.visible = false;
	
//Overlay Background
local overlay_background = overlay_surface.add_image("images/blackt.png",0, 0, 1920, 1080);
overlay_background.alpha = 255;
	
//Overlay Menu Surface
local overlay_menusurface = overlay_surface.add_surface(920, 571);
overlay_menusurface.set_pos(510, 240);

//Overlay Menu Background
local overlay_menubg = overlay_menusurface.add_image("images/c_overlay.png", 0, 0, 920, 571); 

//Overlay Menu List Box
local overlay_listbox = overlay_menusurface.add_listbox(0, 380, 920, 150);
overlay_listbox.rows = 1;
overlay_listbox.set_rgb(150, 150, 150);
overlay_listbox.font = "TulpenOne-Regular-Caps.ttf";
overlay_listbox.charsize  = 80;
overlay_listbox.align = Align.MiddleCentre;
overlay_listbox.sel_style = Style.Bold;
overlay_listbox.selbg_alpha = 0;
overlay_listbox.set_sel_rgb( 255, 255, 255 );

//Overlay Menu Title
local overlay_menutitle = overlay_menusurface.add_text("Exit Attract-Mode?", 40, 40, 860, 100);
overlay_menutitle.font = "TulpenOne-Regular-Caps.ttf";
overlay_menutitle.charsize = 80;
overlay_menutitle.align = Align.MiddleCentre;
overlay_menutitle.style = Style.Bold;

// tell Attractmode we are using a custom overlay menu
fe.overlay.set_custom_controls( overlay_menutitle, overlay_listbox );

//  The following function shows or hides the display menu properly

fe.add_transition_callback( "coverlay_transition" );
function coverlay_transition( ttype, var, ttime )
	{
		switch ( ttype )
		{
			case Transition.ShowOverlay:
			overlay_surface.visible = true;
			if ( ttime < 255 )
				{
					overlay_surface.alpha = ttime;
					return true;
				}
			else
				{
					overlay_surface.alpha = 255;
				}
			break;
			case Transition.HideOverlay:
			if ( ttime < 255 )
				{
					overlay_surface.alpha = 255 - ttime;
					return true;
				}
			else
				{
					local old_alpha;
					old_alpha = overlay_surface.alpha;
					overlay_surface.alpha = 0;

			if ( old_alpha != 0 )
				return true;
				}
			overlay_surface.visible = false;
			break;
		}
		return false;
	}

//Temporary Fix for Screen Flickering in FullScreen Mode
fe.add_ticks_callback( "tick_pixel" );
local pixel = fe.add_image("images/white_pixel.png", 1920, 1080, 1, 1 )

function tick_pixel ( tick_time )
	{
		pixel.x = 1 - pixel.x;
	}

//*****END*****//