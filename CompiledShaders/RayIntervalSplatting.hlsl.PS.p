DXBC,о#jЧбпvьi	 Ош,╤   П     8   ░     <  А    RDEFp               <      	  <   RD11<          (   $          Microsoft (R) HLSL Shader Compiler 9.29.952.3111 лллISGNP         8                    D                   SV_POSITION DEPTH_WORLD OSGN,                              SV_TARGET ллSHEX<   P      j b     e        6        
    >  STATФ                                                                                                                                                   SDBGk  T   ,  ]  `  	                  (     ╕     ╨     p     └  Ь  ░      H   H   ║      6                                               А                                                                                                                                                                                                                                                                                                                                                >                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 	                     3         2          
      ж       3               3         2       3               5                 ж   	             ж   	                                                                                                                                                                                                                                                               C:\scan\BundleFusion-master\FriedLiver\Shaders\RayIntervalSplatting.hlsl
//Buffer<float4>	g_vertexBuffer	: register(t0);


//struct GS_INPUT
//{
//};

struct VS_OUTPUT
{
	float4 position	: SV_POSITION;
	float depth : DEPTH_WORLD;
};

VS_OUTPUT VS( float4 position : POSITION )
{
	VS_OUTPUT output;
	output.position = float4(position.xyz, 1.0f);
	output.depth = position.w;

	return output;
}

//[maxvertexcount(4)]
//void GS(point GS_INPUT points[1], uint primID : SV_PrimitiveID, inout TriangleStream<PS_INPUT> triStream)
//{
//	PS_INPUT output;
//
//	uint idx = primID * 4;
//
//	output.position = float4(g_vertexBuffer[idx].xyz, 1.0f);
//	output.depth = g_vertexBuffer[idx].w;
//	triStream.Append(output);				
//
//	output.position = float4(g_vertexBuffer[idx+1].xyz, 1.0f);
//	output.depth = g_vertexBuffer[idx+1].w;
//	triStream.Append(output);				
//
//	output.position = float4(g_vertexBuffer[idx+2].xyz, 1.0f);
//	output.depth = g_vertexBuffer[idx+2].w;
//	triStream.Append(output);				
//
//	output.position = float4(g_vertexBuffer[idx+3].xyz, 1.0f);
//	output.depth = g_vertexBuffer[idx+3].w;
//	triStream.Append(output);
//}

//void PS(PS_INPUT input) 
//{
//}
float PS( VS_OUTPUT In) : SV_TARGET
{
	return In.depth;
}GlobalsVS_OUTPUT::positionVS_OUTPUT::depthMicrosoft (R) HLSL Shader Compiler 9.29.952.3111 PS ps_5_0 