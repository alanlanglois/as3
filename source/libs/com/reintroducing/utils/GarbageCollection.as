package com.reintroducing.utils{	import flash.net.LocalConnection;	import flash.utils.getQualifiedClassName;	/**	 * Static utility methods to aid in running the garbage collector in the Flash Player.	 * 	 * @author Matt Przybylski [http://www.reintroducing.com] 	 * @version 1.0 	 */	public class GarbageCollection 	{//- PRIVATE & PROTECTED VARIABLES -------------------------------------------------------------------------				//- PUBLIC & INTERNAL VARIABLES ---------------------------------------------------------------------------						//- CONSTRUCTOR	-------------------------------------------------------------------------------------------			public function GarbageCollection()		{					}		//- PRIVATE & PROTECTED METHODS ---------------------------------------------------------------------------						//- PUBLIC & INTERNAL METHODS -----------------------------------------------------------------------------			/**		 * Forces the Flash Player to run garbage collection.		 * Use only as a development aide. Not recommended for production.		 * 		 * @return void		 */		public static function force():void		{			try			{				new LocalConnection().connect("gc");				new LocalConnection().connect("gc");			}			catch (e:*)			{							}		}	//- EVENT HANDLERS ----------------------------------------------------------------------------------------				//- GETTERS & SETTERS -------------------------------------------------------------------------------------				//- HELPERS -----------------------------------------------------------------------------------------------			/**		 * @private		 */		public function toString():String		{			return getQualifiedClassName(this);		}	//- END CLASS ---------------------------------------------------------------------------------------------	}}