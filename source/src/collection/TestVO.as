package collection{	import com.reintroducing.data.base.ValueObject;	import flash.utils.getQualifiedClassName;	/** 	 * @author Matt Przybylski [http://www.reintroducing.com] 	 * @version 1.0 	 */	public class TestVO extends ValueObject	{//- PRIVATE & PROTECTED VARIABLES -------------------------------------------------------------------------				//- PUBLIC & INTERNAL VARIABLES ---------------------------------------------------------------------------				public var id:*;		public var name:String;		//- CONSTRUCTOR	-------------------------------------------------------------------------------------------			public function TestVO():void		{			super();		}		//- PRIVATE & PROTECTED METHODS ---------------------------------------------------------------------------						//- PUBLIC & INTERNAL METHODS -----------------------------------------------------------------------------				//- EVENT HANDLERS ----------------------------------------------------------------------------------------				//- GETTERS & SETTERS -------------------------------------------------------------------------------------				//- HELPERS -----------------------------------------------------------------------------------------------			override public function toString():String		{			return getQualifiedClassName(this);		}	//- END CLASS ---------------------------------------------------------------------------------------------	}}