// Attract-Mode Frontend - RetroDiction Layout - Series Search Plugin
// Based on Andrew Mickelson's excellent keyboard-search plugin, I modified it a bit to accomodate series search. The original plugin (keyboard-search) is a part of official Attract-Mode release package. I plan to add other options like search by year, producer, region and so on (every possible magic token) provided I can find a way to force the pseudo romlist (search result) to display items based on a custom standard like year, manufacturer etc.
// Original Plugin Github Repo: https://github.com/mickelson/attract/blob/master/config/plugins/KeyboardSearch.nut

class series_search
{
	_last_search="";
	_trigger="custom3";

	constructor()
	{
		fe.add_signal_handler( this, "on_signal" )
	}

	function _message( str )
	{
		local words = split( str, " " );

		local temp="";
		foreach ( w in words )
		{
			if ( temp.len() > 0 )
				temp += " ";

			local f = w.slice( 0, 1 );
			temp += "["+f.toupper()+f.tolower()+"]"+w.slice(1);
		}

		return temp;
	}

	function _select( emu, game, series )
	{
		for ( local i=0; i<fe.list.size; i++ )
		{
			if (( fe.game_info( Info.Emulator, i ) == emu )
					&& ( fe.game_info( Info.Name, i ) == game )
					&& ( fe.game_info( Info.Series, i ) == series ))
			{
				fe.list.index += i;
				return true;
			}
		}

		return false;
	}

	function on_signal( signal )
	{
		if ( signal == _trigger )
		{
			_last_search = fe.game_info( Info.Series );

			{
				local sel_emu = fe.game_info( Info.Emulator );
				local sel_game = fe.game_info( Info.Name );
				local sel_series = fe.game_info( Info.Series );

				if ( _last_search.len() < 1 )
					fe.list.search_rule = "";
				else
				{
					fe.list.search_rule = "Series contains "
						+ _message( _last_search );

					_select( sel_emu, sel_game, sel_series );
				}
				return true;
			}
		}
				else if (( fe.list.search_rule.len() > 0 )
					&& ( signal == "back" ))
			{
				local sel_emu = fe.game_info( Info.Emulator );
				local sel_game = fe.game_info( Info.Name );
				local sel_series = fe.game_info( Info.Series );

				fe.list.search_rule = "";

				_select( sel_game, sel_emu, sel_series );
				return true;
			}

		return false;
	}
}

fe.plugin[ "series_search" ] <- series_search();