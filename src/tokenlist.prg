&& ======================================================================== &&
&& TokenList Template Class
&& Use this class as a template for listing your tokens constants.
&& ======================================================================== &&
Define Class TokenList As Custom
	EndOfStream 		= 0
	String 				= 7
	Integer 			= 8
	Float 				= 9
	True 				= 10
	False 				= 11
	Null 				= 12
	Value 				= 14
&& ======================================================================== &&
&& ToString
&& ======================================================================== &&
	Function ToString(toToken As Object) As String
		lcTokenStr = ""
		With This
			Do Case
			Case toToken.Code = This.String 
				lcTokenStr = "string: <'" + Transform(toToken.Value) + "'>"
			Case toToken.Code = This.Integer 
				lcTokenStr = "integer: <'" + Transform(toToken.Value) + "'>"
			Case toToken.Code = This.Float 
				lcTokenStr = "float: <'" + Transform(toToken.Value) + "'>"
			Case toToken.Code = This.True 
				lcTokenStr = "boolean: <'true'>"
			Case toToken.Code = This.False 
				lcTokenStr = "boolean: <'false'>"
			Case toToken.Code = This.Null 
				lcTokenStr = "null: <'null'>"
			Case toToken.Code = This.Value
				lcTokenStr = "value: <'" + Transform(toToken.Value) + "'>"
			Otherwise
				lcTokenStr = "unknown token code: <'" + Transform(toToken.Code) + "'>"
			Endcase
		Endwith
		Return lcTokenStr
	Endfunc
Enddefine