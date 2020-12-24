xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 180;
 0.01359;3.36210;1.02553;,
 -1.22831;3.36810;0.97673;,
 -1.28421;2.01110;3.15473;,
 -0.03751;2.11710;3.25283;,
 -1.29361;0.02710;3.99613;,
 1.73269;3.56510;1.19913;,
 1.66729;2.44210;3.69263;,
 1.72119;3.36110;-1.23867;,
 0.00909;3.15610;-0.93267;,
 1.62569;2.06410;-3.37557;,
 -0.02441;1.82610;-3.01767;,
 -1.23261;3.16710;-0.89927;,
 -1.37641;1.78110;-2.80377;,
 1.55719;-1.59990;-4.44217;,
 -0.06241;-1.53090;-3.77337;,
 1.63379;-3.91990;-3.59577;,
 0.10269;-3.75290;-2.97667;,
 1.64519;-4.46790;-1.34917;,
 0.12189;-4.07890;-1.12317;,
 1.66499;-4.46590;0.50323;,
 0.12939;-4.09390;0.41833;,
 1.70409;-4.09490;2.85473;,
 0.14459;-3.95690;2.46113;,
 -1.13111;-3.91290;-0.98237;,
 -1.12471;-3.91090;0.39853;,
 -1.15051;-3.58290;-2.75387;,
 -1.29581;-1.58490;-3.67727;,
 1.65099;-1.91690;4.45283;,
 0.04879;-1.77990;3.82583;,
 -1.15761;-3.91490;2.46673;,
 -1.20331;-1.85590;3.71183;,
 1.61369;0.29910;4.54273;,
 -0.06351;0.16910;4.11823;,
 3.53779;0.53510;5.10623;,
 3.52509;-2.12790;4.98863;,
 3.51819;-4.27190;3.42813;,
 3.50809;-5.01390;0.67363;,
 5.84359;-4.28990;3.64923;,
 5.85639;-5.23590;0.74523;,
 3.50939;-5.00990;-1.78487;,
 5.86889;-5.22090;-2.11787;,
 3.48889;-4.06590;-4.46397;,
 5.86089;-4.10490;-4.77777;,
 3.46609;-1.62890;-5.27007;,
 3.55409;2.33010;-3.85777;,
 3.65409;3.61410;-1.51217;,
 5.96659;2.26710;-4.17157;,
 6.03449;3.63910;-1.56847;,
 3.67259;3.74810;1.34653;,
 6.04439;3.74010;1.36633;,
 3.61419;2.72810;4.08773;,
 5.98719;2.66810;4.29163;,
 1.61369;0.29910;4.54273;,
 -0.06351;0.16910;4.11823;,
 3.53779;0.53510;5.10623;,
 7.45719;3.03810;-1.36377;,
 7.46619;3.11510;1.20943;,
 5.92579;0.48610;5.30213;,
 7.43599;2.16310;3.78483;,
 7.39579;1.75310;-3.69877;,
 8.15019;1.21810;-2.97187;,
 8.18739;2.11310;-1.07107;,
 8.34669;0.81210;-2.37957;,
 8.37639;1.52810;-0.85997;,
 7.36929;0.32210;4.80053;,
 8.31139;-1.13190;-3.31957;,
 8.10619;-1.29490;-4.14767;,
 7.32429;-1.57890;-5.12557;,
 8.08609;-3.06790;-3.45767;,
 7.30839;-3.71590;-4.26727;,
 8.07789;-4.12890;-1.57177;,
 7.30749;-4.98790;-1.91337;,
 8.06769;-4.14590;0.53693;,
 8.28069;-3.47590;0.42553;,
 8.28879;-3.46290;-1.26027;,
 7.29579;-5.00390;0.66523;,
 7.28559;-3.97790;3.24373;,
 9.11669;-3.44090;0.41713;,
 9.12489;-3.42590;-1.25577;,
 8.29539;-2.61490;-2.76797;,
 9.13519;-2.58490;-2.73267;,
 9.15329;-1.11890;-3.27417;,
 9.18249;0.73410;-2.33697;,
 9.20539;1.42210;-0.83337;,
 8.38229;1.56810;0.76993;,
 9.21129;1.45610;0.75173;,
 8.37159;1.05810;2.40953;,
 8.18139;1.52510;3.01863;,
 8.19479;2.16310;0.96773;,
 8.13819;0.10710;3.89653;,
 8.33709;-0.07690;3.11133;,
 9.20629;0.96310;2.35143;,
 9.17769;-0.11890;3.05383;,
 9.33829;1.38410;0.72743;,
 9.33339;0.90610;2.27993;,
 9.30559;-0.14490;2.96143;,
 9.33259;1.35110;-0.81067;,
 9.31029;0.68310;-2.26987;,
 9.28189;-1.11490;-3.17937;,
 9.26449;-2.53690;-2.65387;,
 9.25449;-3.35390;-1.22067;,
 9.24639;-3.36890;0.40273;,
 9.24809;-2.77690;2.02443;,
 9.11839;-2.83090;2.08823;,
 8.27929;-2.83990;2.11023;,
 9.14549;-1.72990;2.97163;,
 8.30409;-1.72590;3.02553;,
 8.06589;-3.34990;2.64423;,
 8.09699;-1.95690;3.78913;,
 7.31749;-2.26590;4.70483;,
 8.13819;0.10710;3.89653;,
 7.36929;0.32210;4.80053;,
 5.86689;-2.32590;5.29143;,
 5.92579;0.48610;5.30213;,
 9.17769;-0.11890;3.05383;,
 8.33709;-0.07690;3.11133;,
 9.30559;-0.14490;2.96143;,
 9.27439;-1.70790;2.88183;,
 5.88029;-1.70390;-5.74497;,
 -1.29361;0.02710;3.99613;,
 16.19759;-3.29990;-1.06937;,
 15.51669;-2.51690;-2.31997;,
 16.19099;-2.54490;-2.29287;,
 15.52509;-1.13890;-2.74607;,
 16.19619;-1.14190;-2.70487;,
 15.54059;0.35710;-1.85117;,
 16.20599;0.35110;-1.81777;,
 15.55189;0.86110;-0.58357;,
 16.21369;0.83810;-0.60047;,
 14.04189;0.37910;-1.91387;,
 14.02829;-1.15490;-2.78587;,
 14.01519;-2.43990;-2.32277;,
 11.34169;-1.16590;-2.92437;,
 11.33059;-2.42190;-2.42527;,
 6.47249;-1.09590;-3.11097;,
 6.46139;-2.37290;-2.62857;,
 14.00859;-3.21490;-1.10327;,
 11.32449;-3.19690;-1.15997;,
 14.00569;-3.22790;0.37593;,
 11.31969;-3.20890;0.38383;,
 14.00789;-2.74390;1.86293;,
 11.32099;-2.72490;1.91613;,
 6.48789;0.63010;-2.22137;,
 11.35469;0.42410;-2.01967;,
 6.45059;-3.15590;0.40473;,
 6.45129;-2.56590;2.05373;,
 11.33459;-1.76490;2.56903;,
 6.46679;-1.57190;2.85963;,
 11.35089;-0.32190;2.63613;,
 6.48369;-0.07890;2.93423;,
 11.36519;0.57710;2.09583;,
 6.49919;0.85110;2.33213;,
 6.45539;-3.14990;-1.23867;,
 11.36529;0.97710;0.68133;,
 14.04809;0.90210;0.66863;,
 14.04539;0.50210;2.00013;,
 6.50159;1.29710;0.79553;,
 6.49849;1.26710;-0.78927;,
 11.36269;0.97110;-0.67437;,
 6.50159;1.29710;0.79553;,
 11.36529;0.97710;0.68133;,
 14.04739;0.89810;-0.62867;,
 14.04809;0.90210;0.66863;,
 15.55429;0.86410;0.65733;,
 15.55019;0.44710;1.97803;,
 14.02909;-0.41490;2.53243;,
 15.53319;-0.56690;2.53493;,
 16.22099;0.42310;1.95803;,
 16.20849;-0.61590;2.50423;,
 15.52069;-1.75790;2.47273;,
 16.20119;-1.75690;2.44263;,
 15.51699;-2.83390;1.88273;,
 16.20319;-2.83590;1.83243;,
 14.01579;-1.78090;2.46983;,
 15.51949;-3.33490;0.35553;,
 16.20389;-3.32390;0.36863;,
 15.51939;-3.32190;-1.08187;,
 16.21969;0.83910;0.62793;,
 15.55429;0.86410;0.65733;,
 16.21969;0.83910;0.62793;;
 
 286;
 3;0,1,2;,
 3;0,2,3;,
 3;3,2,4;,
 3;5,0,3;,
 3;5,3,6;,
 3;7,0,5;,
 3;7,8,0;,
 3;8,1,0;,
 3;9,8,7;,
 3;9,10,8;,
 3;10,11,8;,
 3;8,11,1;,
 3;10,12,11;,
 3;10,9,13;,
 3;10,13,14;,
 3;14,12,10;,
 3;14,13,15;,
 3;14,15,16;,
 3;17,16,15;,
 3;17,18,16;,
 3;19,18,17;,
 3;19,20,18;,
 3;21,20,19;,
 3;21,22,20;,
 3;20,23,18;,
 3;20,24,23;,
 3;22,24,20;,
 3;18,23,25;,
 3;18,25,16;,
 3;16,25,26;,
 3;16,26,14;,
 3;22,21,27;,
 3;22,27,28;,
 3;28,29,22;,
 3;22,29,24;,
 3;28,30,29;,
 3;28,27,31;,
 3;28,31,32;,
 3;32,30,28;,
 3;27,33,31;,
 3;27,34,33;,
 3;21,34,27;,
 3;21,35,34;,
 3;35,21,19;,
 3;35,19,36;,
 3;37,35,36;,
 3;37,36,38;,
 3;38,36,39;,
 3;38,39,40;,
 3;40,39,41;,
 3;40,41,42;,
 3;36,19,17;,
 3;36,17,39;,
 3;39,17,15;,
 3;39,15,41;,
 3;13,41,15;,
 3;13,43,41;,
 3;43,42,41;,
 3;9,43,13;,
 3;9,44,43;,
 3;44,9,7;,
 3;44,7,45;,
 3;46,44,45;,
 3;46,45,47;,
 3;47,45,48;,
 3;47,48,49;,
 3;49,48,50;,
 3;49,50,51;,
 3;45,7,5;,
 3;45,5,48;,
 3;48,5,6;,
 3;48,6,50;,
 3;52,50,6;,
 3;53,52,6;,
 3;53,6,3;,
 3;52,54,50;,
 3;54,51,50;,
 3;55,47,49;,
 3;55,49,56;,
 3;56,49,51;,
 3;54,57,51;,
 3;56,51,58;,
 3;57,58,51;,
 3;59,46,47;,
 3;59,47,55;,
 3;60,59,55;,
 3;60,55,61;,
 3;61,55,56;,
 3;61,62,60;,
 3;61,63,62;,
 3;57,64,58;,
 3;60,62,65;,
 3;60,65,66;,
 3;59,60,66;,
 3;59,66,67;,
 3;46,59,67;,
 3;67,66,68;,
 3;67,68,69;,
 3;70,69,68;,
 3;70,71,69;,
 3;72,71,70;,
 3;70,73,72;,
 3;70,74,73;,
 3;68,74,70;,
 3;72,75,71;,
 3;71,42,69;,
 3;71,40,42;,
 3;75,40,71;,
 3;75,38,40;,
 3;76,38,75;,
 3;76,37,38;,
 3;77,73,74;,
 3;77,74,78;,
 3;78,74,79;,
 3;68,79,74;,
 3;78,79,80;,
 3;65,80,79;,
 3;65,81,80;,
 3;62,81,65;,
 3;62,82,81;,
 3;82,62,63;,
 3;82,63,83;,
 3;83,63,84;,
 3;83,84,85;,
 3;85,84,86;,
 3;87,86,84;,
 3;87,84,88;,
 3;88,84,63;,
 3;89,86,87;,
 3;89,90,86;,
 3;64,89,87;,
 3;64,87,58;,
 3;88,58,87;,
 3;90,91,86;,
 3;85,86,91;,
 3;90,92,91;,
 3;88,56,58;,
 3;88,63,61;,
 3;61,56,88;,
 3;91,93,85;,
 3;91,94,93;,
 3;92,94,91;,
 3;92,95,94;,
 3;85,93,96;,
 3;85,96,83;,
 3;83,96,97;,
 3;83,97,82;,
 3;82,97,98;,
 3;82,98,81;,
 3;81,98,99;,
 3;81,99,80;,
 3;80,99,100;,
 3;80,100,78;,
 3;78,100,101;,
 3;78,101,77;,
 3;77,101,102;,
 3;77,102,103;,
 3;103,73,77;,
 3;103,104,73;,
 3;104,103,105;,
 3;104,105,106;,
 3;107,104,106;,
 3;107,106,108;,
 3;76,107,108;,
 3;76,108,109;,
 3;109,108,110;,
 3;109,110,111;,
 3;112,109,111;,
 3;112,111,113;,
 3;34,112,113;,
 3;35,112,34;,
 3;35,37,112;,
 3;37,76,109;,
 3;37,109,112;,
 3;34,113,33;,
 3;106,105,114;,
 3;106,114,115;,
 3;108,106,115;,
 3;108,115,110;,
 3;107,76,75;,
 3;107,75,72;,
 3;72,104,107;,
 3;72,73,104;,
 3;105,116,114;,
 3;105,117,116;,
 3;103,117,105;,
 3;103,102,117;,
 3;14,26,12;,
 3;43,118,42;,
 3;44,118,43;,
 3;44,46,118;,
 3;118,69,42;,
 3;118,67,69;,
 3;46,67,118;,
 3;66,65,79;,
 3;66,79,68;,
 3;32,119,30;,
 3;3,4,53;,
 3;120,121,122;,
 3;123,122,121;,
 3;123,124,122;,
 3;125,124,123;,
 3;125,126,124;,
 3;126,125,127;,
 3;126,127,128;,
 3;129,125,123;,
 3;129,123,130;,
 3;130,123,121;,
 3;130,121,131;,
 3;132,130,131;,
 3;132,131,133;,
 3;134,132,133;,
 3;134,133,135;,
 3;136,133,131;,
 3;136,137,133;,
 3;137,135,133;,
 3;138,137,136;,
 3;138,139,137;,
 3;140,139,138;,
 3;140,141,139;,
 3;142,132,134;,
 3;142,143,132;,
 3;143,130,132;,
 3;141,144,139;,
 3;141,145,144;,
 3;145,141,146;,
 3;145,146,147;,
 3;147,146,148;,
 3;147,148,149;,
 3;149,148,150;,
 3;149,150,151;,
 3;139,144,152;,
 3;139,152,137;,
 3;137,152,135;,
 3;153,151,150;,
 3;154,153,150;,
 3;154,150,155;,
 3;148,155,150;,
 3;153,156,151;,
 3;143,142,157;,
 3;143,157,158;,
 3;158,157,159;,
 3;158,159,160;,
 3;161,158,160;,
 3;129,158,161;,
 3;129,143,158;,
 3;161,160,162;,
 3;143,129,130;,
 3;163,154,155;,
 3;163,155,164;,
 3;165,164,155;,
 3;165,166,164;,
 3;166,167,164;,
 3;166,168,167;,
 3;169,168,166;,
 3;169,170,168;,
 3;171,170,169;,
 3;171,172,170;,
 3;173,169,166;,
 3;173,166,165;,
 3;140,171,169;,
 3;140,169,173;,
 3;172,171,174;,
 3;172,174,175;,
 3;175,174,176;,
 3;175,176,120;,
 3;120,176,121;,
 3;141,140,173;,
 3;141,173,146;,
 3;146,173,165;,
 3;146,165,148;,
 3;148,165,155;,
 3;176,131,121;,
 3;176,136,131;,
 3;174,136,176;,
 3;174,138,136;,
 3;171,138,174;,
 3;171,140,138;,
 3;177,164,167;,
 3;177,163,164;,
 3;128,127,178;,
 3;128,178,179;,
 3;127,162,178;,
 3;127,161,162;,
 3;125,161,127;,
 3;125,129,161;;
 
 MeshMaterialList {
  4;
  286;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1;;
  Material {
   0.400000;0.400000;0.400000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.300000;0.300000;0.300000;;
   TextureFilename {
    "data/model/akazukin/clothes.png";
   }
  }
  Material {
   0.400000;0.400000;0.400000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.300000;0.300000;0.300000;;
   TextureFilename {
    "data/model/akazukin/skin.png";
   }
  }
  Material {
   0.400000;0.400000;0.400000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.300000;0.300000;0.300000;;
   TextureFilename {
    "data/model/akazukin/hair.png";
   }
  }
  Material {
   0.400000;0.400000;0.400000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.300000;0.300000;0.300000;;
   TextureFilename {
    "data/model/akazukin/skirt.png";
   }
  }
 }
 MeshNormals {
  176;
  -0.111101;0.221014;0.968922;,
  -0.081561;0.735363;0.672747;,
  -0.000632;0.993808;0.111109;,
  -0.090328;0.973410;0.210510;,
  -0.189663;0.672164;0.715698;,
  -0.151120;0.971274;0.183819;,
  -0.247765;0.687022;0.683091;,
  -0.169894;0.939999;-0.295869;,
  -0.094648;0.941893;-0.322304;,
  -0.275934;0.597853;-0.752617;,
  -0.201729;0.569890;-0.796574;,
  -0.040958;0.906919;-0.419310;,
  -0.128412;0.449416;-0.884045;,
  -0.377214;-0.034189;-0.925495;,
  -0.250566;-0.058197;-0.966349;,
  -0.355047;-0.699671;-0.620001;,
  -0.242569;-0.751611;-0.613385;,
  -0.267734;-0.957997;-0.102760;,
  -0.199667;-0.975884;-0.088221;,
  -0.243163;-0.965419;0.094013;,
  -0.167583;-0.984789;0.045904;,
  -0.239060;-0.839201;0.488458;,
  -0.167841;-0.862516;0.477384;,
  -0.142417;-0.987841;-0.062356;,
  -0.107466;-0.993957;0.022356;,
  -0.193070;-0.870732;-0.452271;,
  -0.125501;-0.180478;-0.975539;,
  -0.312777;-0.309387;0.898026;,
  -0.188008;-0.329761;0.925154;,
  -0.034589;-0.769307;0.637942;,
  -0.070178;-0.278951;0.957738;,
  -0.286371;0.152972;0.945828;,
  -0.188231;0.120774;0.974671;,
  -0.184975;0.194072;0.963390;,
  -0.214301;-0.314698;0.924684;,
  -0.178446;-0.826333;0.534164;,
  -0.184067;-0.973107;0.138501;,
  0.128290;-0.829612;0.543403;,
  0.055678;-0.984846;0.164252;,
  -0.192459;-0.969848;-0.149516;,
  0.040013;-0.980972;-0.189984;,
  -0.250566;-0.684882;-0.684217;,
  0.107973;-0.679729;-0.725473;,
  -0.270194;-0.007603;-0.962776;,
  -0.179836;0.641552;-0.745701;,
  -0.082369;0.959018;-0.271108;,
  0.183654;0.657817;-0.730444;,
  0.209029;0.943968;-0.255403;,
  -0.071419;0.983732;0.164835;,
  0.208331;0.965032;0.159099;,
  -0.148116;0.725604;0.671983;,
  0.203651;0.714034;0.669837;,
  0.614195;0.763501;-0.199578;,
  0.626644;0.767106;0.137351;,
  0.142413;0.208278;0.967646;,
  0.632654;0.564744;0.529919;,
  0.608524;0.538531;-0.582823;,
  0.892145;0.319562;-0.319307;,
  0.891874;0.440550;-0.102358;,
  0.962111;0.207212;-0.177215;,
  0.955728;0.289225;-0.054161;,
  0.591522;0.168340;0.788520;,
  0.968953;0.038139;-0.244286;,
  0.898376;0.036254;-0.437729;,
  0.619965;0.026095;-0.784195;,
  0.902118;-0.274894;-0.332591;,
  0.623320;-0.509674;-0.593047;,
  0.883493;-0.450899;-0.127004;,
  0.533076;-0.821572;-0.202113;,
  0.870570;-0.485845;0.077858;,
  0.954093;-0.297140;0.037621;,
  0.960725;-0.263301;-0.087637;,
  0.480452;-0.863695;0.152307;,
  0.532817;-0.704046;0.469494;,
  0.276476;-0.947664;0.159670;,
  0.288780;-0.923830;-0.251285;,
  0.050972;-0.735176;-0.675957;,
  0.326089;-0.608070;-0.723821;,
  0.350020;0.061270;-0.934736;,
  0.344189;0.679447;-0.647986;,
  0.326693;0.921478;-0.210120;,
  0.133289;0.987526;0.083829;,
  0.324765;0.936268;0.133902;,
  0.134336;0.851922;0.506145;,
  0.897583;0.325873;0.296904;,
  0.886192;0.456400;0.079763;,
  0.895058;0.072628;0.439996;,
  0.970074;0.014019;0.242403;,
  0.350817;0.739253;0.574833;,
  0.353801;0.225124;0.907824;,
  0.509369;0.844751;0.164130;,
  0.581851;0.584051;0.565980;,
  0.596472;0.111271;0.794884;,
  0.501382;0.854197;-0.137710;,
  0.536137;0.670101;-0.513344;,
  0.582669;0.159327;-0.796939;,
  0.580238;-0.456430;-0.674533;,
  0.524709;-0.801580;-0.286618;,
  0.491924;-0.865225;0.096931;,
  0.518191;-0.741903;0.425509;,
  0.296383;-0.782403;0.547725;,
  0.031924;-0.755222;0.654692;,
  0.332386;-0.353791;0.874272;,
  0.061209;-0.258119;0.964172;,
  0.874112;-0.408734;0.262421;,
  0.891134;-0.202662;0.405967;,
  0.590453;-0.319804;0.741007;,
  0.120025;-0.340913;0.932401;,
  0.570532;-0.384852;0.725522;,
  0.122957;-0.002783;-0.992408;,
  0.024565;-0.505254;-0.862621;,
  0.019211;-0.926941;-0.374715;,
  0.019632;-0.994991;0.098019;,
  0.032440;-0.847057;0.530510;,
  0.003556;-0.612101;-0.790771;,
  0.041559;0.117621;-0.992189;,
  0.057631;0.266511;-0.962107;,
  0.041546;0.759898;-0.648713;,
  0.034074;0.828018;-0.559665;,
  0.028531;0.981411;-0.189784;,
  0.032158;0.991381;-0.127003;,
  0.043646;0.978529;0.201434;,
  0.034344;0.754179;-0.655770;,
  0.030323;0.092886;-0.995215;,
  -0.002118;-0.628033;-0.778184;,
  0.046564;0.067452;-0.996635;,
  0.023206;-0.639732;-0.768248;,
  0.038449;-0.095893;-0.994649;,
  0.016913;-0.730150;-0.683077;,
  -0.031133;-0.959211;-0.280970;,
  -0.000888;-0.963188;-0.268828;,
  -0.036079;-0.987609;0.152732;,
  -0.007291;-0.988562;0.150639;,
  -0.015652;-0.783583;0.621090;,
  0.002490;-0.795017;0.606582;,
  0.053498;0.651781;-0.756518;,
  0.051585;0.747056;-0.662757;,
  -0.013903;-0.976729;0.214026;,
  0.001790;-0.739858;0.672760;,
  0.032178;-0.329629;0.943562;,
  0.047977;-0.253619;0.966114;,
  0.056905;0.240676;0.968936;,
  0.072146;0.348595;0.934493;,
  0.058362;0.794733;0.604147;,
  0.073452;0.868596;0.490047;,
  -0.007190;-0.985195;-0.171285;,
  0.048105;0.989498;0.136304;,
  0.028523;0.989564;0.141243;,
  0.041045;0.784135;0.619232;,
  0.066061;0.994129;0.085695;,
  0.061587;0.960454;-0.271541;,
  0.047682;0.979440;-0.196021;,
  0.029632;0.981029;-0.191581;,
  0.035746;0.988195;0.148972;,
  0.045320;0.774796;0.630585;,
  0.034074;0.233180;0.971837;,
  0.034330;0.220497;0.974783;,
  0.057107;0.676836;0.733915;,
  0.054916;0.122787;0.990913;,
  0.015511;-0.283407;0.958874;,
  0.049772;-0.349927;0.935454;,
  -0.007503;-0.770848;0.636975;,
  0.013115;-0.306045;0.951927;,
  -0.026793;-0.987678;0.154189;,
  -0.013606;-0.957469;-0.288217;,
  0.035107;-0.971891;0.232799;,
  0.043615;-0.983869;-0.173494;,
  0.969941;-0.145687;-0.194908;,
  0.053601;-0.093562;-0.994170;,
  0.082246;0.624657;-0.776556;,
  0.122823;0.947996;-0.293631;,
  0.970448;0.162714;0.178198;,
  0.957483;0.282809;0.056965;,
  0.093151;0.350416;0.931950;,
  0.957130;-0.253342;0.140428;,
  0.965705;-0.137044;0.220527;;
  286;
  3;3,2,1;,
  3;3,1,4;,
  3;4,1,0;,
  3;5,3,4;,
  3;5,4,6;,
  3;7,3,5;,
  3;7,8,3;,
  3;8,2,3;,
  3;9,8,7;,
  3;9,10,8;,
  3;10,11,8;,
  3;8,11,2;,
  3;10,12,11;,
  3;10,9,13;,
  3;10,13,14;,
  3;14,12,10;,
  3;14,13,15;,
  3;14,15,16;,
  3;17,16,15;,
  3;17,18,16;,
  3;19,18,17;,
  3;19,20,18;,
  3;21,20,19;,
  3;21,22,20;,
  3;20,23,18;,
  3;20,24,23;,
  3;22,24,20;,
  3;18,23,25;,
  3;18,25,16;,
  3;16,25,26;,
  3;16,26,14;,
  3;22,21,27;,
  3;22,27,28;,
  3;28,29,22;,
  3;22,29,24;,
  3;28,30,29;,
  3;28,27,31;,
  3;28,31,32;,
  3;32,30,28;,
  3;27,33,31;,
  3;27,34,33;,
  3;21,34,27;,
  3;21,35,34;,
  3;35,21,19;,
  3;35,19,36;,
  3;37,35,36;,
  3;37,36,38;,
  3;38,36,39;,
  3;38,39,40;,
  3;40,39,41;,
  3;40,41,42;,
  3;36,19,17;,
  3;36,17,39;,
  3;39,17,15;,
  3;39,15,41;,
  3;13,41,15;,
  3;13,43,41;,
  3;43,42,41;,
  3;9,43,13;,
  3;9,44,43;,
  3;44,9,7;,
  3;44,7,45;,
  3;46,44,45;,
  3;46,45,47;,
  3;47,45,48;,
  3;47,48,49;,
  3;49,48,50;,
  3;49,50,51;,
  3;45,7,5;,
  3;45,5,48;,
  3;48,5,6;,
  3;48,6,50;,
  3;31,50,6;,
  3;32,31,6;,
  3;32,6,4;,
  3;31,33,50;,
  3;33,51,50;,
  3;52,47,49;,
  3;52,49,53;,
  3;53,49,51;,
  3;33,54,51;,
  3;53,51,55;,
  3;54,55,51;,
  3;56,46,47;,
  3;56,47,52;,
  3;57,56,52;,
  3;57,52,58;,
  3;58,52,53;,
  3;58,59,57;,
  3;58,60,59;,
  3;54,61,55;,
  3;57,59,62;,
  3;57,62,63;,
  3;56,57,63;,
  3;56,63,64;,
  3;46,56,64;,
  3;64,63,65;,
  3;64,65,66;,
  3;67,66,65;,
  3;67,68,66;,
  3;69,68,67;,
  3;67,70,69;,
  3;67,71,70;,
  3;65,71,67;,
  3;69,72,68;,
  3;68,42,66;,
  3;68,40,42;,
  3;72,40,68;,
  3;72,38,40;,
  3;73,38,72;,
  3;73,37,38;,
  3;74,165,166;,
  3;74,166,75;,
  3;75,166,76;,
  3;65,167,71;,
  3;75,76,77;,
  3;168,77,76;,
  3;168,78,77;,
  3;169,78,168;,
  3;169,79,78;,
  3;79,169,170;,
  3;79,170,80;,
  3;80,170,81;,
  3;80,81,82;,
  3;82,81,83;,
  3;84,171,172;,
  3;84,172,85;,
  3;85,172,60;,
  3;86,171,84;,
  3;86,87,171;,
  3;61,86,84;,
  3;61,84,55;,
  3;85,55,84;,
  3;173,88,83;,
  3;82,83,88;,
  3;173,89,88;,
  3;85,53,55;,
  3;85,60,58;,
  3;58,53,85;,
  3;88,90,82;,
  3;88,91,90;,
  3;89,91,88;,
  3;89,92,91;,
  3;82,90,93;,
  3;82,93,80;,
  3;80,93,94;,
  3;80,94,79;,
  3;79,94,95;,
  3;79,95,78;,
  3;78,95,96;,
  3;78,96,77;,
  3;77,96,97;,
  3;77,97,75;,
  3;75,97,98;,
  3;75,98,74;,
  3;74,98,99;,
  3;74,99,100;,
  3;100,165,74;,
  3;100,101,165;,
  3;101,100,102;,
  3;101,102,103;,
  3;104,174,175;,
  3;104,175,105;,
  3;73,104,105;,
  3;73,105,106;,
  3;106,105,86;,
  3;106,86,61;,
  3;107,106,61;,
  3;107,61,54;,
  3;34,107,54;,
  3;35,107,34;,
  3;35,37,107;,
  3;37,73,106;,
  3;37,106,107;,
  3;34,54,33;,
  3;103,102,89;,
  3;103,89,173;,
  3;105,175,87;,
  3;105,87,86;,
  3;104,73,72;,
  3;104,72,69;,
  3;69,174,104;,
  3;69,70,174;,
  3;102,92,89;,
  3;102,108,92;,
  3;100,108,102;,
  3;100,99,108;,
  3;14,26,12;,
  3;43,109,42;,
  3;44,109,43;,
  3;44,46,109;,
  3;109,66,42;,
  3;109,64,66;,
  3;46,64,109;,
  3;63,62,167;,
  3;63,167,65;,
  3;32,0,30;,
  3;4,0,32;,
  3;111,114,110;,
  3;115,110,114;,
  3;115,116,110;,
  3;117,116,115;,
  3;117,118,116;,
  3;118,117,119;,
  3;118,119,120;,
  3;122,117,115;,
  3;122,115,123;,
  3;123,115,114;,
  3;123,114,124;,
  3;125,123,124;,
  3;125,124,126;,
  3;127,125,126;,
  3;127,126,128;,
  3;129,126,124;,
  3;129,130,126;,
  3;130,128,126;,
  3;131,130,129;,
  3;131,132,130;,
  3;133,132,131;,
  3;133,134,132;,
  3;135,125,127;,
  3;135,136,125;,
  3;136,123,125;,
  3;134,137,132;,
  3;134,138,137;,
  3;138,134,139;,
  3;138,139,140;,
  3;140,139,141;,
  3;140,141,142;,
  3;142,141,143;,
  3;142,143,144;,
  3;132,137,145;,
  3;132,145,130;,
  3;130,145,128;,
  3;146,144,143;,
  3;147,146,143;,
  3;147,143,148;,
  3;141,148,143;,
  3;146,149,144;,
  3;136,135,150;,
  3;136,150,151;,
  3;151,150,149;,
  3;151,149,146;,
  3;152,151,146;,
  3;122,151,152;,
  3;122,136,151;,
  3;152,146,147;,
  3;136,122,123;,
  3;153,147,148;,
  3;153,148,154;,
  3;155,154,148;,
  3;155,156,154;,
  3;156,157,154;,
  3;156,158,157;,
  3;159,158,156;,
  3;159,160,158;,
  3;161,160,159;,
  3;161,113,160;,
  3;162,159,156;,
  3;162,156,155;,
  3;133,161,159;,
  3;133,159,162;,
  3;113,161,163;,
  3;113,163,112;,
  3;112,163,164;,
  3;112,164,111;,
  3;111,164,114;,
  3;134,133,162;,
  3;134,162,139;,
  3;139,162,155;,
  3;139,155,141;,
  3;141,155,148;,
  3;164,124,114;,
  3;164,129,124;,
  3;163,129,164;,
  3;163,131,129;,
  3;161,131,163;,
  3;161,133,131;,
  3;121,154,157;,
  3;121,153,154;,
  3;120,119,153;,
  3;120,153,121;,
  3;119,147,153;,
  3;119,152,147;,
  3;117,152,119;,
  3;117,122,152;;
 }
 MeshTextureCoords {
  180;
  0.919840;0.215880;,
  0.913690;0.204000;,
  0.939290;0.191680;,
  0.944810;0.204280;,
  0.960730;0.182000;,
  0.928270;0.230930;,
  0.952790;0.221130;,
  0.907940;0.240670;,
  0.901430;0.224980;,
  0.888690;0.251830;,
  0.879810;0.238370;,
  0.895330;0.213590;,
  0.872420;0.225830;,
  0.862030;0.271230;,
  0.851000;0.258350;,
  0.847070;0.286510;,
  0.834220;0.277090;,
  0.832100;0.300250;,
  0.819960;0.290960;,
  0.821280;0.313130;,
  0.809810;0.302910;,
  0.808660;0.331760;,
  0.796450;0.320430;,
  0.809260;0.282960;,
  0.799800;0.294320;,
  0.823340;0.266770;,
  0.842630;0.248980;,
  0.794350;0.353800;,
  0.779820;0.343190;,
  0.784360;0.311960;,
  0.768940;0.334880;,
  0.781050;0.371920;,
  0.767260;0.360080;,
  0.797650;0.385330;,
  0.809930;0.363290;,
  0.821060;0.343540;,
  0.833770;0.324170;,
  0.836080;0.354030;,
  0.848380;0.335110;,
  0.845900;0.309350;,
  0.860250;0.318790;,
  0.860200;0.295210;,
  0.871500;0.304750;,
  0.872920;0.283480;,
  0.896950;0.265740;,
  0.914630;0.256000;,
  0.904220;0.280890;,
  0.922070;0.272350;,
  0.935900;0.246560;,
  0.942610;0.264580;,
  0.959700;0.238720;,
  0.966220;0.257730;,
  0.973980;0.210550;,
  0.965430;0.194260;,
  0.982660;0.230630;,
  0.926840;0.282820;,
  0.945790;0.276710;,
  0.988530;0.256060;,
  0.967760;0.271040;,
  0.909370;0.290260;,
  0.914110;0.297650;,
  0.930450;0.291900;,
  0.917960;0.303100;,
  0.932960;0.297370;,
  0.987160;0.272050;,
  0.900470;0.313480;,
  0.895090;0.308360;,
  0.888690;0.302700;,
  0.884730;0.317910;,
  0.878180;0.311600;,
  0.874600;0.331430;,
  0.867740;0.325640;,
  0.865370;0.345810;,
  0.870770;0.349190;,
  0.879540;0.336250;,
  0.857800;0.340890;,
  0.846810;0.358520;,
  0.877400;0.353130;,
  0.885640;0.340650;,
  0.889810;0.323930;,
  0.895240;0.328920;,
  0.905300;0.319510;,
  0.921310;0.310180;,
  0.935420;0.305010;,
  0.948130;0.293350;,
  0.949820;0.301420;,
  0.965480;0.290310;,
  0.967010;0.281990;,
  0.947590;0.286840;,
  0.983210;0.283930;,
  0.979150;0.292230;,
  0.965570;0.298710;,
  0.977890;0.300580;,
  0.949980;0.302830;,
  0.965360;0.300210;,
  0.977330;0.302100;,
  0.935890;0.306290;,
  0.922010;0.311370;,
  0.906270;0.320630;,
  0.896200;0.329980;,
  0.886670;0.341570;,
  0.878570;0.353800;,
  0.871290;0.367620;,
  0.869940;0.367230;,
  0.862640;0.364200;,
  0.866080;0.379400;,
  0.858240;0.377970;,
  0.855620;0.362130;,
  0.849920;0.376650;,
  0.839680;0.374140;,
  0.848580;0.396290;,
  0.836170;0.397730;,
  0.827860;0.371330;,
  0.820200;0.395440;,
  0.865120;0.394440;,
  0.857510;0.394280;,
  0.866690;0.394260;,
  0.867540;0.379590;,
  0.882530;0.295670;,
  0.757400;0.351680;,
  0.881100;0.614070;,
  0.899470;0.604970;,
  0.899120;0.613490;,
  0.917870;0.604960;,
  0.917690;0.613630;,
  0.940500;0.606220;,
  0.940200;0.614930;,
  0.958390;0.607770;,
  0.957340;0.616460;,
  0.941210;0.586420;,
  0.917820;0.585480;,
  0.899780;0.585570;,
  0.917730;0.562660;,
  0.900030;0.562930;,
  0.918200;0.498360;,
  0.900020;0.498610;,
  0.880840;0.586150;,
  0.880600;0.563670;,
  0.861570;0.586870;,
  0.860390;0.564510;,
  0.841200;0.588010;,
  0.839370;0.565550;,
  0.944130;0.498930;,
  0.941790;0.563570;,
  0.857030;0.500360;,
  0.833740;0.501490;,
  0.824160;0.566520;,
  0.816780;0.502460;,
  0.805190;0.568290;,
  0.797010;0.504140;,
  0.791420;0.570170;,
  0.782430;0.506070;,
  0.878870;0.499440;,
  0.772180;0.573550;,
  0.776260;0.596100;,
  0.794500;0.592850;,
  0.761500;0.509690;,
  0.964950;0.500250;,
  0.961000;0.564960;,
  0.985960;0.502040;,
  0.978970;0.566560;,
  0.959570;0.587820;,
  0.976780;0.589380;,
  0.779850;0.615870;,
  0.797730;0.612360;,
  0.808390;0.590830;,
  0.812470;0.610050;,
  0.799180;0.620940;,
  0.814050;0.618590;,
  0.827570;0.608370;,
  0.828450;0.616950;,
  0.842900;0.607220;,
  0.843920;0.615720;,
  0.826330;0.589030;,
  0.862900;0.606320;,
  0.863090;0.614860;,
  0.880890;0.605540;,
  0.781330;0.624630;,
  0.974780;0.609380;,
  0.973520;0.618160;;
 }
}