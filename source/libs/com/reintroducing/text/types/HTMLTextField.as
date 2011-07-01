package com.reintroducing.text.types{	import com.reintroducing.data.text.config.ITextConfig;
	import com.reintroducing.data.text.config.HTMLTextConfig;	import com.reintroducing.data.text.lang.Language;	import flash.text.TextField;	import flash.utils.getQualifiedClassName;	/**	 * Utility class used to create an HTML TextField in the TextManager.	 *  	 * @author Matt Przybylski [http://www.reintroducing.com] 	 * @version 1.0 	 */	public class HTMLTextField	{//- PRIVATE & PROTECTED VARIABLES -------------------------------------------------------------------------				//- PUBLIC & INTERNAL VARIABLES ---------------------------------------------------------------------------						//- CONSTRUCTOR	-------------------------------------------------------------------------------------------			public function HTMLTextField()		{					}		//- PRIVATE & PROTECTED METHODS ---------------------------------------------------------------------------						//- PUBLIC & INTERNAL METHODS -----------------------------------------------------------------------------				/**		 * Creates the TextField.		 * 		 * @param $language The Language to use from the TextManager		 * @param $config The text configuration to use		 * @param $content The text which will populate the TextField		 * 		 * @return TextField		 */		public static function create($language:Language, $config:ITextConfig, $content:String):TextField		{			var config:HTMLTextConfig = ($config as HTMLTextConfig);			var tf:TextField = new TextField();			tf.styleSheet = $language.styleSheet;			tf.antiAliasType = config.antiAliasType;			tf.embedFonts = $language.embed;			tf.autoSize = config.autoSize;			tf.selectable = config.selectable;			tf.wordWrap = config.wordWrap;			tf.multiline = config.multiline;			tf.width = config.width;			tf.height = config.height;			tf.htmlText = $content;						return tf;		}	//- EVENT HANDLERS ----------------------------------------------------------------------------------------				//- GETTERS & SETTERS -------------------------------------------------------------------------------------				//- HELPERS -----------------------------------------------------------------------------------------------			/**		 * @private		 */		public function toString():String		{			return getQualifiedClassName(this);		}	//- END CLASS ---------------------------------------------------------------------------------------------	}}