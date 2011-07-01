package com.reintroducing.data.slider{	import flash.display.Sprite;
	import flash.display.Stage;
	import com.reintroducing.data.base.ValueObject;	import flash.utils.getQualifiedClassName;	/**	 * Strongly typed data object for use with the Slider.	 *  	 * @author Matt Przybylski [http://www.reintroducing.com] 	 * @version 1.0 	 */	public class SliderData extends ValueObject	{//- PRIVATE & PROTECTED VARIABLES -------------------------------------------------------------------------				//- PUBLIC & INTERNAL VARIABLES ---------------------------------------------------------------------------				public static const AXIS_X:String = "x";		public static const AXIS_Y:String = "y";				public var stage:Stage;		public var axis:String;		public var track:Sprite;		public var slider:Sprite;		public var lowValue:Number;		public var highValue:Number;		public var startValue:Number = 0;		public var precision:int = 0;//- CONSTRUCTOR	-------------------------------------------------------------------------------------------			public function SliderData()		{			super();		}		//- PRIVATE & PROTECTED METHODS ---------------------------------------------------------------------------						//- PUBLIC & INTERNAL METHODS -----------------------------------------------------------------------------				//- EVENT HANDLERS ----------------------------------------------------------------------------------------				//- GETTERS & SETTERS -------------------------------------------------------------------------------------				//- HELPERS -----------------------------------------------------------------------------------------------			/**		 * @private		 */		override public function toString():String		{			return getQualifiedClassName(this);		}	//- END CLASS ---------------------------------------------------------------------------------------------	}}