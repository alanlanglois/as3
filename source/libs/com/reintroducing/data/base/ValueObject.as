package com.reintroducing.data.base{	import flash.utils.describeType;	import flash.utils.getQualifiedClassName;	/**	 * A base class for storing strongly typed data.	 * 	 * @author Matt Przybylski [http://www.reintroducing.com] 	 * @version 1.0 	 */	public class ValueObject implements IValueObject	{//- PRIVATE & PROTECTED VARIABLES -------------------------------------------------------------------------				//- PUBLIC & INTERNAL VARIABLES ---------------------------------------------------------------------------						//- CONSTRUCTOR	-------------------------------------------------------------------------------------------			public function ValueObject()		{					}		//- PRIVATE & PROTECTED METHODS ---------------------------------------------------------------------------						//- PUBLIC & INTERNAL METHODS -----------------------------------------------------------------------------			/**		 * Outputs the data in the value object.		 * 		 * @return void		 */		public function output():void		{			trace(this.toString());			trace("\t-----------------------------------------");						var props:XMLList = describeType(this).variable;						for (var i:int = 0; i < props.length(); i++)			{				trace("\t" + props[i].@name + ":" + props[i].@type + " = " + this[props[i].@name]);			}						trace("\t-----------------------------------------\n");		}	//- EVENT HANDLERS ----------------------------------------------------------------------------------------				//- GETTERS & SETTERS -------------------------------------------------------------------------------------				//- HELPERS -----------------------------------------------------------------------------------------------			/**		 * @private		 */		public function toString():String		{			return getQualifiedClassName(this);		}	//- END CLASS ---------------------------------------------------------------------------------------------	}}