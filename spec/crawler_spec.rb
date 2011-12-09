#encoding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "the crawler" do
  before do
    FakeWeb.register_uri(:get, "http://legendas.tv", body: %Q{
    <html>
    <head>
    	<title>LEGENDAS.TV - </title>
    	<link href="estilos.css" rel="stylesheet" type="text/css" />
    	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    	<meta name="title" content="Legendas.tv" />
    	<meta name="description" content="Portal de legendas para filmes, séries, anime e desenhos em português e diversas outras línguas." />
    	<meta name="keywords" content="legenda, legendas, dialogo, tradução, subtitle, sincronia, filme, seriado, filmes, seriados, smallville, small ville, house, supernatural, lost, prison break, vanished, the OC, the o.c, heroes, dexter, jericho, CSI, The Office, theOffice, my name is earl, nip tuck, bones, criminal minds, weeds, desperates housewives, numbers, numb3rs, simpsons, 24, 24 Horas, Séries, Tv, FOX, galeria, fotos, CBS, ABC, NBC, CW, Série, My name is Earl, Stargate, Atlantis, Jack, Kate, Boone, Locke, Dharma, Ilha, Oceanic Air, legendas.tv, www.legendas.tv, Equipe Legendas, Enquete, Everwood, Lana, Clark, Lex, One Tree Hill, OTH, Peyton, Brooke, Invasion, Four Kings, The Office, Season Finale, American Idol, American Dad, C.S.I., CSI, DH, Desperate Housewives, Everybody Hates Chris, Ghost Whisperer, Gilmore girls, Greys's Anatomy, How I Met Your Mother, Medium,  Supernatural, The Unit, Veronica Mars, Big Love, Close to Home, N.C.I.S, Nip/Tuck, Robot Chicken, Sleeper Cell, Sopranos, The 4400, Two and a Half Men, Without a Trace" />
    	<meta name="classification" content="Internet" />
    	<meta name="robots" content="index,follow" />
    	<meta name="googlebot" content="index,follow" />
    	<meta name="ratting" content="General" />
    	<meta name="geo.region" content="BR" />
    	<meta name="author" content="legendas.tv" />
    	<meta name="language" content="pt-br" />
    	<meta name="generator" content="http://www.legendas.tv">
    	<link rel="alternate" type="application/rss+xml" title="LEGENDAS.TV - Ultimas Legendas" href="http://www.legendas.tv/rss.html">
    	<link rel="alternate" type="application/rss+xml" title="LEGENDAS.TV - Ultimos Destaques" href="http://www.legendas.tv/rss-destaques.html">    
        <link rel="alternate" type="application/rss+xml" title="LEGENDAS.TV - Ultimos Destaques - Series" href="http://www.legendas.tv/rss-destaques-series.html"> 
        <link rel="alternate" type="application/rss+xml" title="LEGENDAS.TV - Ultimos Destaques - Filmes" href="http://www.legendas.tv/rss-destaques-filmes.html"> 
    	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />



    <script language="JavaScript" type="text/javascript" src="javascript/ajax.js"></script>
    <script type="text/JavaScript">
    	<!--
    	function MM_swapImgRestore() { //v3.0
    	  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
    	}

    	function MM_preloadImages() { //v3.0
    	  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    		var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    		if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
    	}

    	function MM_findObj(n, d) { //v4.01
    	  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    		d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
    	  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
    	  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
    	  if(!x && d.getElementById) x=d.getElementById(n); return x;
    	}

    	function MM_swapImage() { //v3.0
    	  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
    	   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
    	}
    	//-->
    </script>
    <script src="AC_RunActiveContent.js" type="text/javascript"></script>
    <script src="swfobject.js" type="text/javascript"></script>
    <script type="text/javascript">
    function gpop(p1,p2,p3,p4,p5,p6,p7,p8,p9) {
    return '<div class=\'pop\' style=\'background:#009999\'><h3>'+p1+'<br />'+p2+'</h3><p>'+p3+'</p><ul><li><strong>Cds:</strong> '+p4+'</li><li><strong>FPS:</strong> '+p5+'</li><li><strong>Tamanho:</strong> '+p6+'</li></ul><ul><li><strong>Downloads:</strong> '+p7+'</li><li><strong>'+p8+'</strong></li><li>'+p9+'</li></ul></div>';
    }
    function poptraducao(release,user,filmeint,filmenac,eobs,obs,cor,inicio,previsao,termino,progresso,porcentagem,atu) {
    result = '<div class="thread"><div class="hd">'+release+' <span class="user">('+user+')</span></div><div class="filme">'+filmeint+filmenac+'</div><div class="more">';
    if (eobs == 1) {
    result = result + '<div class="obs"><strong>Observações:</strong> '+obs+'</div>';
    }
    result = result + '<div class="adicional">Tradu&ccedil;&atilde;o Iniciada <b style="color:'+cor+'">'+inicio+'</b>, ';
    if (previsao == 1) {
    result = result+'sem previs&atilde;o de conclus&atilde;o.';
    } else if (previsao == 2) {
    result = result+'provavelmente j&aacute; conclu&iacute;da. ';
    } else if ( previsao == 3) {
    result = result+'<b>Tradu&ccedil;&atilde;o conclu&iacute;da!</b>';
    } else {
    result = result+'previsão de conclusão em <b>'+termino+'</b>';
    }
    result = result + '</div><div class="progresso">Status da tradução: (atualizado '+atu+')';
    if (progresso == 2) {	  
    result = result +'Sem informa&ccedil;&atilde;o';
    } else {
    result = result+'<div class="restante"><div class="overlay" align="center">'+porcentagem+'%</div><div class="did" style="width:'+porcentagem+'%"></div></div>';
    }
    result = result +'</div></div></div>';
    return result;
    }
    </script>
    <style type="text/css">
    <!--
    #peticao {
    	position:absolute;
    	left:121px;
    	top:195px;
    	width:532px;
    	height:404px;
    	z-index:1;
    	background-color: #FFFFFF;
    	border:solid 1px #CCCCCC;
    }
    -->
    </style>

    </head>
    <body>
    <div id="holder" style="display: none"></div>

    <script type="text/javascript">

    function abredown(download) {
    	window.open('info.php?d='+download,'','width=510,height=550,left=250,top=50,screenX=250,screenY=50,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,copyhistory=no,resizable=no,name=infolegenda');
    }

    function abremail() {
    	window.open('email.php','','width=480,height=250,left=250,top=50,screenX=250,screenY=50,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,copyhistory=no,resizable=no,name=infolegenda');
    }

    function abrerec() {
    	window.open('formulario.php','','width=500,height=520,left=250,top=50,screenX=250,screenY=50,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,copyhistory=no,resizable=no');
    }

    function abreforum() {
    	window.open('http://forum.legendas.tv','','width=750,height=550,left=10,top=10,screenX=250,screenY=50,toolbar=yes,location=yes,directories=no,status=no,menubar=no,scrollbars=yes,copyhistory=no,resizable=yes');
    }

    function abreup(download) {
    	window.open('upload.php','','width=617,height=500,left=250,top=50,screenX=250,screenY=50,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,copyhistory=no,resizable=no,name=upload');
    }

    function todosonline() {
    	window.open('allonline.php','','width=270,height=380,left=250,top=50,screenX=250,screenY=50,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,copyhistory=no,resizable=no,name=allonline');
    }

    function abrechat() {
    	window.open('chat/index.php','','width=800,height=500,left=250,top=50,screenX=250,screenY=50,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,copyhistory=no,resizable=no,name=chat');
    }

    function abreinfousuario(u) {
    	window.open('usuario_info.php?u='+u,'','width=550,height=500,left=250,top=50,screenX=250,screenY=50,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,copyhistory=no,resizable=no,name=InfoUsuario');
    }
    </script>
    <!-- BEGIN STANDARD TAG - 120 x 600 --->
    <!-- <IFRAME FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO WIDTH=120 HEIGHT=600 SRC="http://ad.harrenmedianetwork.com/st?ad_type=iframe&ad_size=120x600&section=2649588" align=top></IFRAME> -->
    <IFRAME FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO WIDTH=120 HEIGHT=600 SRC="http://ad.adnetwork.net/st?ad_type=iframe&ad_size=120x600&section=1251777"></IFRAME>
    <table width="790" border="0" align="left" cellpadding="0" cellspacing="0">
      <tr>
        <td><table id="Table_01" width="780" height="153" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="153" rowspan="2">
    		<script type="text/javascript">
    AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0','name','logo','width','157','height','153','id','logo','src','flash','quality','high','pluginspage','http://www.macromedia.com/go/getflashplayer','movie','flash' ); //end AC code
    </script><noscript><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" name="logo" width="157" height="153" id="logo">
              <param name="movie" value="flash.swf">
              <param name="quality" value="high">
              <param name="wmode" value="transparent">
              <embed src="flash.swf" width="157" height="153" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" name="logo"></embed></object></noscript></td><td width="138" height="114" background="images/header_04.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="25"><table width="84%" border="0" align="left" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><div align="center"><a href="#"></a><a href="index.php" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Inicio','','images/ainicio.gif',1)"><img src="images/inicio.gif" alt="Início" name="Inicio" width="92" height="23" border="0"></a></div></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="25"><table width="98%" border="0" align="left" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><div align="center"><a href="#"></a><a href="index.php?opcao=legenda" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Legendas','','images/alegendas.gif',1)"><img src="images/legendas.gif" alt="Legendas" name="Legendas" width="92" height="23" border="0"></a></div></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="25"><table width="90%" border="0" align="left" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><div align="right"><a href="javascript:abreforum();" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Forum','','images/aforum.gif',1)"><img src="images/forum.gif" alt="Forum" name="Forum" width="92" height="23" border="0"></a></div></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="25"><table width="97%" border="0" align="left" cellpadding="0" cellspacing="0">
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
            <td width="477" height="153" rowspan="2" valign="top" background="images/sitebackup_05.gif"><div align="center" style="margin-top:30px">
    <!-- BEGIN STANDARD TAG - 468 x 60 - ROS: Run-of-site - DO NOT MODIFY -->
    <!-- <IFRAME FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO WIDTH=468 HEIGHT=60 SRC="http://ad.harrenmedianetwork.com/st?ad_type=iframe&ad_size=468x60&section=2649588"></IFRAME> -->
    <IFRAME FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO WIDTH=468 HEIGHT=60 SRC="http://ad.adnetwork.net/st?ad_type=iframe&ad_size=468x60&section=1251777"></IFRAME>
    </div>
    </td>
            <td width="8" height="153" rowspan="2" valign="top" background="images/header_06.gif">&nbsp;</td>
          </tr>
          <tr>
            <td><img src="images/header_07.gif" width="138" height="39" alt=""></td>
          </tr>
        </table></td>
        <td width="10" rowspan="4" background="images/borda.gif">&nbsp;</td>
      </tr>
      <tr>
        <td height="424" align="left" valign="top"><table id="Table_01" width="780" height="26" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td><img src="images/faixa_01.gif" width="295" height="26" alt=""></td>
            <td><img src="images/faixa_02.gif" width="278" height="26" alt=""></td>
            <td width="207" height="26" valign="bottom" background="images/faixa_03.gif"><div align="right" class="style3">
           <div align="center"></div>
            </div></td>
          </tr>
        </table>
          <table width="780" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="153" valign="top" class="bgesquerda"><table width="127" border="0" align="center" cellpadding="0" cellspacing="0">
               <tr><td>
    <div align="center"><br />
    <center>
    <a href="doacao/donate.php" onclick="javascript:urchinTracker('/banner/donate');"><br><img src="colab.gif" alt="Colabore" border="0"></a>
    </center>
    <br /><br /></td></tr>
     <tr>
                      <td height="13" background="images/entrarcima.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td align="center" valign="middle"><div align="center" class="brancob">Entrar</div></td>
                        </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td class="login">                  <table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                            <td>
    							<form name="form1" method="post" action="login_verificar.php">
    							  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
    							  <tr>
    								<td class="fonte">Login:</td>
    							  </tr>
    							  <tr>
    								<td><div align="center">
    									<input name="txtLogin" type="text" class="campos" size="15" maxlength="15">
    								</div></td>
    							  </tr>
    							  <tr>
    								<td class="fonte">Senha:</td>
    							  </tr>
    							  <tr>
    								<td><div align="center">
    									<input name="txtSenha" type="password" class="campos" size="15" maxlength="32">
    								</div></td>
    							  </tr>
    							  <tr>
    								<td><div align="center">
    								  <input name="entrar" type="image" id="entrar" src="images/entrarbt.png" align="middle">
    								</div></td>
    							  </tr>
    							  <tr>
    								<td><div align="left">
    							  		Lembrar senha?<input id="chkLogin" name="chkLogin" type="checkbox" value="1">
    								</div></td>
    							  </tr>

    							  <tr>
    								<td><span class="rosa"><br>
    								  *</span> <span class="fonte"><a href="index.php?opcao=cadastrarusuario">Cadastre-se</a></span><br>
    								  <span class="rosa">*</span> <span class="fonte"><a href="index.php?opcao=reenviarsenha">Esqueceu a senha?</a></span>								</td>								  
    							  </tr>
    							  <tr>
    								  <td align="center"><span class="rosa"><br>
       									  <span class="rosa">*</span> <span class="fonte"><b><a href="index.php?opcao=reenviaremail"><font color="#FF0000">Reenviar e-mail de confirmação?</font></a></b></span>								  </td>
    							  </tr>
    							</table>
    						</form></td>
                          </tr>
                      </table>
    				  </td></tr>
                  </table>
    <br>
    <div align="center"><br /><iframe src="http://smartad.mercadolivre.com.br/jm/SmartAd?tool=5802148&creativity=40601&new=N&ovr=N&bgcol=f0f0f0&brdcol=46cad6&txtcol=006600&lnkcol=000080&hvrcol=FF0000&prccol=FF0000&word=mp3&word=notebook&word=nokia&site=MLB" width="125" height="125" scrolling="no" frameborder="0" marginheight="0" marginwidth="0">
    </iframe><br /><br />            </div>
                <table width="125" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td><img src="images/busca.png" alt="Busca" width="127" height="13"></td>
                    </tr>
                    <tr>
                      <td class="login"><table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
                          <tr>
                            <td><form name="form1" method="post" action="index.php?opcao=buscarlegenda">
                                <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
    							  <tr>
                          			<td><script language="javascript" src="AnchorPosition.js"></script><div id="divbanner" style="position: absolute; display: none;"><table width="224" border="0" cellspacing="0" cellpadding="0" class="filmresult">
      <tr>
        <td width="224"><strong>Busca Inteligente Legendas.TV</strong><br />
          Digite o nome do filme ou nome da legenda e escolha o idioma caso queira, ap&oacute;s isso clique em OK. </td>
      </tr>
    </table></div></td>
                        		  </tr>
                                  <tr>
                                    <td align="left" class="fonte">Busca:</td>
                                  </tr>
                                  <tr>
                                    <td><div align="center"><span class="fonte">
                                      <input name="txtLegenda" id="txtLegenda" type="text" class="campos" size="15" maxlength="50">
                                    </span></div></td>
                                  </tr>
                                  <tr>
                                    <td align="left" class="fonte">Tipo:</td>
                                  </tr>
                                  <tr>
                                    <td align="center" class="fonte"><select name="selTipo" id="selTipo" class="campos">
                                      <option value="1">Release</option>
                                      <option value="2">Filme</option>
                                      <option value="3">Usuario</option>
                                    </select>                                </td>
                                  </tr>
                                  <tr>
                                    <td align="left" class="fonte">Idioma:</td>
                                  </tr>
                                  <tr>
                                    <td><div align="center">
                                      <select name="int_idioma" class="campos" id="int_idioma">
                                        <option value="1" selected>Portugu&ecirc;s-BR</option>
                                        <option value="10">Portugu&ecirc;s-PT</option>
                                        <option value="2">Ingl&ecirc;s</option>
                                        <option value="3">Espanhol</option>
                                        <option value="100">Outros</option>
                                        <option value="99">Todos</option>
                                      </select>
                                    </div></td>
                                  </tr>
                                  <tr>
                                    <td><div align="center"> <br>
                                            <input name="btn_buscar" type="image" src="images/entrarbt.png" align="middle" >
                                    </div></td>
                                  </tr>
                                  <tr>
                                    <td>&nbsp;</td>
                                  </tr>
                                </table>
                            </form></td>
                          </tr>
                      </table></td>
                    </tr>
                </table>
                  <div align="center"><br>
                    <table width="140" border="0" cellpadding="0" cellspacing="0" class="confirmcad">
                      <tr>
                        <td><div align="center"><img src="tiosam.gif" alt="Recrutamento" border="0" onClick="javascript:abrerec();" title="Clique aqui para preencher o formulario de recrutamento!" style="cursor:hand;"></div></td>
                      </tr>
                      <tr>
                        <td><div align="center"><span onClick="javascript:abrerec();">Sabe traduzir e quer ajudar?<br>
                          Clique aqui!</span></div></td>
                      </tr>
                    </table>
                    <br>

                  <table width="135" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="135" height="13" background="images/ativos.gif"><table width="127" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td><div align="center" class="style17">Membros Online </div></td>
                        </tr>
                      </table></td>
                    </tr>
                    <tr>
                      <td class="login">
    				    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
    					<tr>
                          <td>&nbsp;</td>
                        </tr>
                        <tr bgcolor="#DDDDDD">                      <td bgcolor="#F0F0F0"><div align="center">487 visitante(s)</div></td>
                        </tr>
                        <tr bgcolor="#DDDDDD">
                          <td bgcolor="#F0F0F0"><div align="center">687 registrado(s)</div></td>
                        </tr>
                        <tr bgcolor="#DDDDDD">
                          <td bgcolor="#F0F0F0"><div align="center"><b>Total</b>: 1174</div></td>
                        </tr>

                        <tr>
                          <td bgcolor="#F0F0F0"><div align="center"><strong><a href="javascript:todosonline();">ver todos</a></strong></div></td>
                        </tr>
    					<tr>
                          <td>&nbsp;</td>
                        </tr>
                      </table></td>
                    </tr>
                  </table>
              </div>

                  <br>
                  <div align="center">
                    <table width="140" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="177" height="20" valign="middle" background="images/template.gif"><table width="114" border="0" align="left" cellpadding="0" cellspacing="0">
          <tr>
            <td width="114"><div align="right"><span class="style17">Top Uploaders</span></div></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td class="noticias"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr bgcolor="#E5E5E5">
            <td height="12"><strong><img src="images/seta.gif" width="12" height="10" /> <a href="javascript:abreinfousuario(241436)">AARAO_REIS</a></strong></td>
          </tr>
          <tr>
            <td height="12"><span class="style16">Envios: <strong>
              9427        </strong></span> </td>
          </tr>
                <tr bgcolor="#E5E5E5">
            <td height="12"><strong><img src="images/seta.gif" width="12" height="10" /> <a href="javascript:abreinfousuario(10293)">gitobeto</a></strong></td>
          </tr>
          <tr>
            <td height="12"><span class="style16">Envios: <strong>
              4146        </strong></span> </td>
          </tr>
                <tr bgcolor="#E5E5E5">
            <td height="12"><strong><img src="images/seta.gif" width="12" height="10" /> <a href="javascript:abreinfousuario(549848)">PT-Subs</a></strong></td>
          </tr>
          <tr>
            <td height="12"><span class="style16">Envios: <strong>
              3529        </strong></span> </td>
          </tr>
                <tr bgcolor="#E5E5E5">
            <td height="12"><strong><img src="images/seta.gif" width="12" height="10" /> <a href="javascript:abreinfousuario(323359)">InSUBs</a></strong></td>
          </tr>
          <tr>
            <td height="12"><span class="style16">Envios: <strong>
              3315        </strong></span> </td>
          </tr>
              </table></td>
      </tr>
    </table>
    <br />
    <iframe src="http://smartad.mercadolivre.com.br/jm/SmartAd?tool=5801214&creativity=38002&new=N&ovr=N&bgcol=46cad6&brdcol=000000&txtcol=FFFFFF&lnkcol=000000&hvrcol=FFFFFF&prccol=FFFF00&word=divx&word=dvd-r&word=notebook&site=MLB" width="120" height="600" scrolling="no" frameborder="0" marginheight="0" marginwidth="0">
    </iframe><br />          </div></td>
              <td valign="top"><div align="center">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><div align="right">
                      <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td height="24" class="smembros"></td>
                          </tr>
                      </table>
                    </div></td>
                  </tr>
                </table>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                	<tr>
                    	<td width="100%" valign="top">
    					  <div align="center">
    							<br>
    								<table width="400"  height="50" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/noticiasup.gif" alt="Not&iacute;cias" width="403" height="23"></td>
      </tr>
      <tr>
        <td class="noticias"><div style="overflow:auto;height:150px;font-family:Verdana, Arial, Helvetica, sans-serif;font-size:10px">
                    <div style="margin-bottom:3px;padding:3px;background-color:#F9F9F9">
            <div style="background-color:#46cad6;font-weight:bold;">legendas.tv no Twitter</div>
            <div align="justify">Para informa&ccedil;&atilde;o das &uacute;ltimas legendas em destaque:<br />
    <small><a href="http://twitter.com/legendas" target="_blank" rel="nofollow">http://twitter.com/legendas</a></small></div>
            <div style="text-align:right;padding-right:5px;font-size:9px;font-weight:bold;border-top:1px dotted #CCCCCC">LegendasTV @ 08/09/2009 06:16</div>
            </div>      </div></td>
      </tr>
    </table>
    <br>
    						<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
    						  <tr>
    						    <td height="15" colspan="3"><div align="center"><img src="images/bordafilm.gif" width="100%" height="15"></div></td>
    						  </tr>
    						  <tr>
    						    <td width="5">&nbsp;</td>
    									  <td id="conteudodest" width="100%" bgcolor="#46CAD6">
    									    <div align="center">
    									      <script type="text/javascript" src="topd.js"></script>
    <div style="width:430px;height:145px;background-color:#FFFFFF;border:solid 1px #EBEBEB;margin:0px 2px">
    <div class="topdsetad" rolagem="rcont, maisbaixados, dir" onclick="this.blur(); return false;"></div>
    <div class="topdsetae" rolagem="rcont, maisbaixados, esq" onclick="this.blur(); return false;"></div>
    <div style="float:left;margin-left:5px"><strong>Destaques mais baixados na semana:</strong></div>
    <div id="rcont" style="width:430px;height:133px;overflow:hidden;display:block;clear:both">
      <div id="maisbaixados" style="width:2975px;height:133px;;display:block"><div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Dexter - 6th Season','Dexter - 6&ordf; Temporada','Dexter.S06E10.HDTV.XviD-ASAP/IMMERSE/mSD/Fizo','1','23','550MB','27762','<img src=\'images/flag_br.gif\' border=\'0\'>','05/12/2011 - 18:00'))" class="Ldestaque" style="width:134px;cursor:pointer;float:left;margin-left:5px" onclick="javascript:abredown('3943aad95f9d7db96b7eb10f7101dfa2');"><span id="topd3943aad95f9d7db96b7eb10f7101dfa2"><img src="destaques/235839-cae43f337b5b8f68fc5e8a740c38cd02.jpg" width="132" height="80" border="0" /></span>
        <div align="center" style="height:18px;"><img src="images/equipes/LegendasTV.jpg" width="132" height="18" alt="Equipe Legendas.tv"/></div>
    <div class="destrlsb"><small>HDTV.XviD-ASAP/IMMERSE/mSD/Fizo</small></div>
    </div>
      <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Two and a Half Men - 9th Season','Two and a Half Men - 9&ordf; Temporada','Two.and.a.Half.Men.S09E11.HDTV.XviD-ASAP/IMMERSE/mSD','1','23','175MB','20124','<img src=\'images/flag_br.gif\' border=\'0\'>','06/12/2011 - 09:34'))" class="Ldestaque" style="width:134px;cursor:pointer;float:left;margin-left:5px" onclick="javascript:abredown('82d636cd9f237e2e658e17a8029073b8');"><span id="topd82d636cd9f237e2e658e17a8029073b8"><img src="destaques/235893-1671f8c68f37e82391af501de6514966.gif" width="132" height="80" border="0" /></span>
        <div align="center" style="height:18px;"><img src="images/equipes/InSUBs.jpg" width="132" height="18" alt="Equipe InSUBs"/></div>
    <div class="destrlsb"><small>HDTV.XviD-ASAP/IMMERSE/mSD</small></div>
    </div>
      <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Supernatural - 7th Season','Supernatural - 7&ordf; Temporada','Supernatural.S07E10.HDTV.XviD-ASAP/720p','1','0','350MB','17567','<img src=\'images/flag_br.gif\' border=\'0\'>','04/12/2011 - 00:24'))" class="Ldestaque" style="width:134px;cursor:pointer;float:left;margin-left:5px" onclick="javascript:abredown('ac0ea8649402a2d2643d5fa598f8cbb6');"><span id="topdac0ea8649402a2d2643d5fa598f8cbb6"><img src="destaques/235688-72581a616bdaa968c2d3ec3332318d1c.jpeg" width="132" height="80" border="0" /></span>
        <div align="center" style="height:18px;"><img src="images/equipes/ispuki.jpg" width="132" height="18" alt="ispuki"/></div>
    <div class="destrlsb"><small>HDTV.XviD-ASAP/720p</small></div>
    </div>
      <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('How I Met Your Mother - 7th Season','How I Met Your Mother - 7&ordf; Temporada','How.I.Met.Your.Mother.S07E12.HDTV.XviD-LOL/DIMENSION','1','23','175MB','13445','<img src=\'images/flag_br.gif\' border=\'0\'>','06/12/2011 - 04:28'))" class="Ldestaque" style="width:134px;cursor:pointer;float:left;margin-left:5px" onclick="javascript:abredown('22c4385cc5cd1fb2d3ab33ac3f6467ae');"><span id="topd22c4385cc5cd1fb2d3ab33ac3f6467ae"><img src="destaques/235879-ddd9a64ca0e8c64f39955e9b7eb694b0.gif" width="132" height="80" border="0" /></span>
        <div align="center" style="height:18px;"><img src="images/equipes/InSUBs.jpg" width="132" height="18" alt="Equipe InSUBs"/></div>
    <div class="destrlsb"><small>HDTV.XviD-LOL/DIMENSION</small></div>
    </div>
      <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Glee - 3rd Season','Glee - 3&ordf; Temporada','Glee.S03E08.HDTV.XviD-LOL/DIMENSION','1','23','0MB','6775','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 01:05'))" class="Ldestaque" style="width:134px;cursor:pointer;float:left;margin-left:5px" onclick="javascript:abredown('c05a9345ba3a9fb36a8fdcf7dfb0254d');"><span id="topdc05a9345ba3a9fb36a8fdcf7dfb0254d"><img src="destaques/236041-978deb86e9da8d5ee0d7870559277c03.jpg" width="132" height="80" border="0" /></span>
        <div align="center" style="height:18px;"><img src="images/equipes/_DARKSIDE_.jpg" width="132" height="18" alt="Equipe DarkSide"/></div>
    <div class="destrlsb"><small>HDTV.XviD-LOL/DIMENSION</small></div>
    </div>
      <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Once Upon A Time - 1th Season','Once Upon A Time - 1a Temporada','Once.Upon.a.Time.S01E06.HDTV.XviD-LOL/DIMENSION/ECI','1','23','349MB','6661','<img src=\'images/flag_br.gif\' border=\'0\'>','05/12/2011 - 21:28'))" class="Ldestaque" style="width:134px;cursor:pointer;float:left;margin-left:5px" onclick="javascript:abredown('5b2a9f50a39eb945b0d9010023265f76');"><span id="topd5b2a9f50a39eb945b0d9010023265f76"><img src="destaques/235859-eeb8513d16ab00c1214e948e204750e6.jpg" width="132" height="80" border="0" /></span>
        <div align="center" style="height:18px;"><img src="images/equipes/inSanos.jpg" width="132" height="18" alt="Equipe InSanos"/></div>
    <div class="destrlsb"><small>HDTV.XviD-LOL/DIMENSION/ECI</small></div>
    </div>
      <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Nikita - 2th Season','Nikita - 2&ordf; Temporada','Nikita.S02E10.HDTV.XviD-2HD/2HD/mSD/KiNGS','1','23','350MB','6347','<img src=\'images/flag_br.gif\' border=\'0\'>','03/12/2011 - 17:38'))" class="Ldestaque" style="width:134px;cursor:pointer;float:left;margin-left:5px" onclick="javascript:abredown('4b81d84953c7d57bf179ddfd91ac5cf7');"><span id="topd4b81d84953c7d57bf179ddfd91ac5cf7"><img src="destaques/235653-36cd39113fa725d217f3515d5b8fec29.gif" width="132" height="80" border="0" /></span>
        <div align="center" style="height:18px;"><img src="images/equipes/keader.png" width="132" height="18" alt="keader"/></div>
    <div class="destrlsb"><small>HDTV.XviD-2HD/2HD/mSD/KiNGS</small></div>
    </div>
      <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Immortals (War of Gods)','Imortais','Immortals.2011.DVDSCR','1','29','699MB','6203','<img src=\'images/flag_br.gif\' border=\'0\'>','03/12/2011 - 19:09'))" class="Ldestaque" style="width:134px;cursor:pointer;float:left;margin-left:5px" onclick="javascript:abredown('bdd8be7bc9e9537306a37799c7672269');"><span id="topdbdd8be7bc9e9537306a37799c7672269"><img src="destaques/235656-887178d6e8760b960f2c822fba44a88d.jpg" width="132" height="80" border="0" /></span>
        <div align="center" style="height:18px;"><img src="images/equipes/inSanos.jpg" width="132" height="18" alt="Equipe InSanos"/></div>
    <div class="destrlsb"><small>2011.DVDSCR</small></div>
    </div>
      <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('New Girl - 1st Season','New Girl - 1a Temporada','New.Girl.S01E07.HDTV.XviD-LOL/DIMENSION','1','23','174MB','5218','<img src=\'images/flag_br.gif\' border=\'0\'>','03/12/2011 - 16:56'))" class="Ldestaque" style="width:134px;cursor:pointer;float:left;margin-left:5px" onclick="javascript:abredown('13f90dcc082af6805ff88af9ebc1f802');"><span id="topd13f90dcc082af6805ff88af9ebc1f802"><img src="destaques/235648-33767a9196d19146cd78ad9641c0bdf9.jpg" width="132" height="80" border="0" /></span>
        <div align="center" style="height:18px;"><img src="images/equipes/N.E.R.D.S..jpg" width="132" height="18" alt="NERDS"/></div>
    <div class="destrlsb"><small>HDTV.XviD-LOL/DIMENSION</small></div>
    </div>
      <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Merlin - 4th Season','Merlin - 4&ordf; Temporada','Merlin.S04E10.HDTV.XviD-FoV/FoV ','1','25','350MB','4456','<img src=\'images/flag_br.gif\' border=\'0\'>','04/12/2011 - 15:19'))" class="Ldestaque" style="width:134px;cursor:pointer;float:left;margin-left:5px" onclick="javascript:abredown('ab4de5c4cbaedcb62a3e337b6cc25f94');"><span id="topdab4de5c4cbaedcb62a3e337b6cc25f94"><img src="destaques/235732-49f7c29a741dc6a16438bb90ac9c1b50.gif" width="132" height="80" border="0" /></span>
        <div align="center" style="height:18px;"><img src="images/equipes/InSUBs.jpg" width="132" height="18" alt="Equipe InSUBs"/></div>
    <div class="destrlsb"><small>HDTV.XviD-FoV/FoV </small></div>
    </div>
      <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Hawaii Five-0 - 2nd Season','Hawaii Five-0 - 2a Temporada','Hawaii.Five-0.2010.S02E11.HDTV.XviD-LOL/DIMENSION','1','23','350MB','4331','<img src=\'images/flag_br.gif\' border=\'0\'>','07/12/2011 - 20:06'))" class="Ldestaque" style="width:134px;cursor:pointer;float:left;margin-left:5px" onclick="javascript:abredown('afbc7de9dec23f8d4b67cfe1506e6173');"><span id="topdafbc7de9dec23f8d4b67cfe1506e6173"><img src="destaques/236011-78e00ab1dc3589f6b622651cdec9bb69.gif" width="132" height="80" border="0" /></span>
        <div align="center" style="height:18px;"><img src="images/equipes/Leg_Series.jpg" width="132" height="18" alt="Legendas em Série"/></div>
    <div class="destrlsb"><small>HDTV.XviD-LOL/DIMENSION</small></div>
    </div>
      <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Homeland - 1st Season','Homeland - 1a Temporada','Homeland.S01E10.HDTV.XviD-ASAP-IMMERSE-REPACK IMMERSE','3','23','550MB','4301','<img src=\'images/flag_br.gif\' border=\'0\'>','06/12/2011 - 23:03'))" class="Ldestaque" style="width:134px;cursor:pointer;float:left;margin-left:5px" onclick="javascript:abredown('84027af017ed52f25d70a19a506d0616');"><span id="topd84027af017ed52f25d70a19a506d0616"><img src="destaques/235942-60543e5148707131a5eb8d3049b8a92a.jpg" width="132" height="80" border="0" /></span>
        <div align="center" style="height:18px;"><img src="images/equipes/IdiotasI.jpg" width="132" height="18" alt="IdiotasInferiores"/></div>
    <div class="destrlsb"><small>HDTV.XviD-ASAP-IMMERSE-REPACK IMMERSE</small></div>
    </div>
      <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Gossip Girl - 5th Season','Gossip Girl - 5&ordf; Temporada','Gossip.Girl.S05E10.HDTV.XviD-ASAP/IMMERSE','1','23','350MB','4299','<img src=\'images/flag_br.gif\' border=\'0\'>','07/12/2011 - 23:38'))" class="Ldestaque" style="width:134px;cursor:pointer;float:left;margin-left:5px" onclick="javascript:abredown('92c22c4fd28a4e2c037704f7c373c405');"><span id="topd92c22c4fd28a4e2c037704f7c373c405"><img src="destaques/236034-71254df6cc708e552f3d3e9dc179880b.gif" width="132" height="80" border="0" /></span>
        <div align="center" style="height:18px;"><img src="images/equipes/InSUBs.jpg" width="132" height="18" alt="Equipe InSUBs"/></div>
    <div class="destrlsb"><small>HDTV.XviD-ASAP/IMMERSE</small></div>
    </div>
      <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Boardwalk Empire - 2nd Season','Boardwalk Empire - 2&ordf; Temporada','Boardwalk.Empire.S02E11.HDTV.XviD-ASAP/IMMERSE','1','23','350MB','4095','<img src=\'images/flag_br.gif\' border=\'0\'>','07/12/2011 - 09:45'))" class="Ldestaque" style="width:134px;cursor:pointer;float:left;margin-left:5px" onclick="javascript:abredown('183bb810d0da0adeaeae9a33cc0f8517');"><span id="topd183bb810d0da0adeaeae9a33cc0f8517"><img src="destaques/235970-64db1ff93315e3ebd5bb810d6ebf23c4.gif" width="132" height="80" border="0" /></span>
        <div align="center" style="height:18px;"><img src="images/equipes/_DARKSIDE_.jpg" width="132" height="18" alt="Equipe DarkSide"/></div>
    <div class="destrlsb"><small>HDTV.XviD-ASAP/IMMERSE</small></div>
    </div>
      <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Castle - 4th Season','Castle - 4&ordf; Temporada','Castle.2009.S04E10.HDTV.XviD-LOL-DIMENSION','1','23','350MB','3593','<img src=\'images/flag_br.gif\' border=\'0\'>','07/12/2011 - 16:47'))" class="Ldestaque" style="width:134px;cursor:pointer;float:left;margin-left:5px" onclick="javascript:abredown('16f9d407061f62984f47927fb39681e8');"><span id="topd16f9d407061f62984f47927fb39681e8"><img src="destaques/235993-924d2fcbb67a0dad27d636a114ca08f2.jpg" width="132" height="80" border="0" /></span>
        <div align="center" style="height:18px;"><img src="images/equipes/_DARKSIDE_.jpg" width="132" height="18" alt="Equipe DarkSide"/></div>
    <div class="destrlsb"><small>HDTV.XviD-LOL-DIMENSION</small></div>
    </div>
      <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Warrior','Guerreiro','Warrior.DVDRip/BRRip/BluRay','2','23','1400MB','3586','<img src=\'images/flag_br.gif\' border=\'0\'>','07/12/2011 - 23:18'))" class="Ldestaque" style="width:134px;cursor:pointer;float:left;margin-left:5px" onclick="javascript:abredown('16006571cc86fa6a231c6a40c24b10ae');"><span id="topd16006571cc86fa6a231c6a40c24b10ae"><img src="destaques/236031-a2c82385fa507b9eec4224b408ab3114.jpg" width="132" height="80" border="0" /></span>
        <div align="center" style="height:18px;"><img src="images/equipes/Alcobor.jpg" width="132" height="18" alt="Alcobor + Daddy"/></div>
    <div class="destrlsb"><small>Warrior.DVDRip/BRRip/BluRay</small></div>
    </div>
      <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Hell on Wheels - 1th Season','Hell on Wheels - 1a Temporada','Hell.on.Wheels.S01E05.HDTV.XviD-2HD/COMPULSION','1','23','350MB','3553','<img src=\'images/flag_br.gif\' border=\'0\'>','06/12/2011 - 06:28'))" class="Ldestaque" style="width:134px;cursor:pointer;float:left;margin-left:5px" onclick="javascript:abredown('7a5e2157259c41200d9781754693d3a3');"><span id="topd7a5e2157259c41200d9781754693d3a3"><img src="destaques/235880-809e6887d6093545bbcfbd9bc2185d7c.jpg" width="132" height="80" border="0" /></span>
        <div align="center" style="height:18px;"><img src="images/equipes/_DARKSIDE_.jpg" width="132" height="18" alt="Equipe DarkSide"/></div>
    <div class="destrlsb"><small>HDTV.XviD-2HD/COMPULSION</small></div>
    </div>
      <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Hart of Dixie - 1st Season','Hart of Dixie - 1&ordf; Temporada','Hart.of.Dixie.S01E10.HDTV.XviD-2HD/IMMERSE/ViPER','1','23','350MB','3100','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 01:28'))" class="Ldestaque" style="width:134px;cursor:pointer;float:left;margin-left:5px" onclick="javascript:abredown('0ac4d07911209cce79a0acde01605709');"><span id="topd0ac4d07911209cce79a0acde01605709"><img src="destaques/236045-50c34bb81489b920ecbbfb0c372a75eb.gif" width="132" height="80" border="0" /></span>
        <div align="center" style="height:18px;"><img src="images/equipes/InSUBs.jpg" width="132" height="18" alt="Equipe InSUBs"/></div>
    <div class="destrlsb"><small>HDTV.XviD-2HD/IMMERSE/ViPER</small></div>
    </div>
      <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('The Good Wife - 3rd Season','The Good Wife - 3&ordf; Temporada','The.Good.Wife.S03E10.HDTV.XviD-LOL/DIMENSION','1','23','350MB','3058','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 05:28'))" class="Ldestaque" style="width:134px;cursor:pointer;float:left;margin-left:5px" onclick="javascript:abredown('887cc9b6a128461e14e23f11ded34a48');"><span id="topd887cc9b6a128461e14e23f11ded34a48"><img src="destaques/236047-d4fa5378e0db0f47341e25ff05b234b6.gif" width="132" height="80" border="0" /></span>
        <div align="center" style="height:18px;"><img src="images/equipes/InSUBs.jpg" width="132" height="18" alt="Equipe InSUBs"/></div>
    <div class="destrlsb"><small>HDTV.XviD-LOL/DIMENSION</small></div>
    </div>
      <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Neverland - Miniss&eacute;rie','Neverland - Miniss&eacute;rie','neverland.2011.part.one.hdtv.xvid-2hd/720p/420p','1','23','698MB','3009','<img src=\'images/flag_br.gif\' border=\'0\'>','07/12/2011 - 21:59'))" class="Ldestaque" style="width:134px;cursor:pointer;float:left;margin-left:5px" onclick="javascript:abredown('cf4ddaaa5d9ce8838c2a74d43e34938b');"><span id="topdcf4ddaaa5d9ce8838c2a74d43e34938b"><img src="destaques/236022-d1d4912819b379351067b97f908959d0.jpg" width="132" height="80" border="0" /></span>
        <div align="center" style="height:18px;"><img src="images/equipes/inSanos.jpg" width="132" height="18" alt="Equipe InSanos"/></div>
    <div class="destrlsb"><small>hdtv.xvid-2hd/720p/420p</small></div>
    </div>
      </div>
    </div>
    </div>
    <style type="text/css">
    <!--
    .borda {
    	color: #EEEEEE;
    	border: 1px solid #000000;
    }
    .pequeno {
    	font-family: Verdana, Arial, Helvetica, sans-serif;
    	font-size: 10px;
    	font-style: normal;
    	color: #000000;
    }
    .bgrls {
    	background-attachment: fixed;
    	background-image: url(images/bgrls.gif);
    	background-repeat: no-repeat;
    	background-position: center bottom;
    	font-family: Verdana;
    	font-size: 10px;
    	color: #000000;
    }
    .bordam {
    	font-family: Verdana, Arial, Helvetica, sans-serif;
    	font-size: 10px;
    	font-style: normal;
    	color: #000000;
    	border: 1px solid #999999;
    }
    .style2 {font-size: 9}
    -->
    </style>
     <div align="center"><strong>&Uacute;ltimos Destaques[Filmes e S&eacute;ries]:</strong><br>
     </div>
     <div align="center"><strong><font color="#000000"><span style="cursor:pointer; background-color:#CCCCCC;" onclick="ajaxGet('destaques.php?show=1',document.getElementById('conteudodest'),true);">[Filmes]</span> <span style="cursor:pointer; background-color:#CCCCCC;" onclick="ajaxGet('destaques.php?show=2',document.getElementById('conteudodest'),true);">[Seriados]</span></font></strong> <strong><font color="#000000"><span onclick="ajaxGet('destaques.php?show=3',document.getElementById('conteudodest'),true);" style="cursor:pointer; background-color:#FF9900;">[Ambos]</span></font></strong>
      <strong><font color="#000000"><span onclick="ajaxGet('destaques.php?show=4',document.getElementById('conteudodest'),true);" style="cursor:pointer; background-color:#CCCCCC;">[Portugu&ecirc;s-PT]</span></font></strong>
        <br />
     </div>
     <div style="margin:2px auto">
       <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Final Destination 5 / 5nal Destination','Premoni&ccedil;&atilde;o 5','Final.Destination.5.DVDRip/BRRip.480/720/1080','1','23','700MB','408','<img src=\'images/flag_br.gif\' border=\'0\'>','09/12/2011 - 05:45'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('3f08e4ef549c60b5bc3a38bac046d2a3');">
      <span id="imgd3f08e4ef549c60b5bc3a38bac046d2a3">
    <img src="destaques/236161-a962d5065c98db41424ed795f9d90e0d.jpg" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/creepysubs.jpg" width="132" height="18" alt="creepysubs"/></div>
    <div class="destrlsb"><small>DVDRip/BRRip.480/720/1080</small></div>
    </div>
        <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('The Big Bang Theory - 5th Season','The Big Bang Theory - 5&ordf; Temporada','The.Big.Bang.Theory.S05E11.HDTV.XviD-ASAP/2HD','1','23','175MB','1675','<img src=\'images/flag_br.gif\' border=\'0\'>','09/12/2011 - 05:07'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('1af982f09b4c90b9946cba24f4c40d88');">
      <span id="imgd1af982f09b4c90b9946cba24f4c40d88">
    <img src="destaques/236159-e68cd40be68109c7540cb9ef4ab4daeb.jpg" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/N.E.R.D.S..jpg" width="132" height="18" alt="NERDS"/></div>
    <div class="destrlsb"><small>HDTV.XviD-ASAP/2HD</small></div>
    </div>
        <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Lost Girl - 2th Season','Lost Girl - 2a Temporada','Lost.Girl.S02E11.HDTV.XviD-2HD/720p.HDTV.x264-2HD/720p.WEB-DL.AAC2.0.h.264-ECI','3','23','350MB','489','<img src=\'images/flag_br.gif\' border=\'0\'>','09/12/2011 - 01:18'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('dcf851e3e0561a0fc8c09a46e0a45672');">
      <span id="imgddcf851e3e0561a0fc8c09a46e0a45672">
    <img src="destaques/236152-e9fb9498d773ed7fad6ba511d3ef6f8e.jpg" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/IdiotasI.jpg" width="132" height="18" alt="IdiotasInferiores"/></div>
    <div class="destrlsb"><small>h.264-ECI</small></div>
    </div>
      <div class="quebra"></div>  <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('New Girl - 1st Season','New Girl - 1a Temporada','New.Girl.S01E08.HDTV.XviD-LOL/720p','1','23','175MB','1033','<img src=\'images/flag_br.gif\' border=\'0\'>','09/12/2011 - 00:57'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('35481f9ff86f0747caf5cc476201ad0c');">
      <span id="imgd35481f9ff86f0747caf5cc476201ad0c">
    <img src="destaques/236151-130104ac9133b34721f248c5a8fb7394.jpg" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/N.E.R.D.S..jpg" width="132" height="18" alt="NERDS"/></div>
    <div class="destrlsb"><small>HDTV.XviD-LOL/720p</small></div>
    </div>
        <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('American Horror Story - 1st season','American Horror Story - 1&ordf; temporada','American.Horror.Story.S01E10.HDTV.XviD-FQM/ORENJI/CtrlHD','1','23','350MB','2527','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 22:52'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('ee0833c144a2004d13eb395875c2f4f6');">
      <span id="imgdee0833c144a2004d13eb395875c2f4f6">
    <img src="destaques/236136-5c57b7078034c7a3751bea239724f7af.gif" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/InSUBs.jpg" width="132" height="18" alt="Equipe InSUBs"/></div>
    <div class="destrlsb"><small>HDTV.XviD-FQM/ORENJI/CtrlHD</small></div>
    </div>
        <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Criminal Minds - 7th Season','Criminal Minds - 7&ordf; Temporada','Criminal.Minds.S07E09.HDTV.XviD-LOL/DIMENSION/mSD','1','23','350MB','1410','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 22:22'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('c715b9395cfa301d68683513bc747e0c');">
      <span id="imgdc715b9395cfa301d68683513bc747e0c">
    <img src="destaques/236134-13cefdfb8e42bf08d240bf1a0f213a63.jpg" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/UnitedTeam.jpg" width="132" height="18" alt="Equipe United"/></div>
    <div class="destrlsb"><small>HDTV.XviD-LOL/DIMENSION/mSD</small></div>
    </div>
      <div class="quebra"></div>  <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Hot in Cleveland - 3th Season','Hot in Cleveland - 3&ordf; Temporada','Hot.in.Cleveland.S03E02.DSR.XviD-FQM','1','23','174MB','265','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 21:00'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('e6221e16101c745e101d2a1791083f06');">
      <span id="imgde6221e16101c745e101d2a1791083f06">
    <img src="destaques/236120-74a3853a6a0ad42808082df58aa04811.jpg" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/_DARKSIDE_.jpg" width="132" height="18" alt="Equipe DarkSide"/></div>
    <div class="destrlsb"><small>DSR.XviD-FQM</small></div>
    </div>
        <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Family Guy - 10th Season','Family Guy - 10&ordf; Temporada','Family.Guy.S10E08.HDTV.XviD-LOL/DIMENSION','1','23','175MB','1264','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 20:14'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('962dfafe94423dfa464b2a60ad42ccb2');">
      <span id="imgd962dfafe94423dfa464b2a60ad42ccb2">
    <img src="destaques/236115-ca22fd0fd24b740290f2b4c44bc7f654.gif" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/Tuunz.jpg" width="132" height="18" alt="Equipe Tuunz"/></div>
    <div class="destrlsb"><small>HDTV.XviD-LOL/DIMENSION</small></div>
    </div>
        <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('90210 - 4th Season','90210 - 4&ordf; Temporada','90210.S04E12.HDTV.XviD-ASAP-COMPULSiON','1','23','350MB','1683','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 17:28'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('495d35bb4323038f994cf46cb6c7b6f8');">
      <span id="imgd495d35bb4323038f994cf46cb6c7b6f8">
    <img src="destaques/236104-c26f05155f85517322e0204b96197baa.gif" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/GriotsTeam.jpg" width="132" height="18" alt="GriotsTeam"/></div>
    <div class="destrlsb"><small>HDTV.XviD-ASAP-COMPULSiON</small></div>
    </div>
      <div class="quebra"></div>  <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Call Me Fitz - 2nd Season','Call Me Fitz - 2&ordf; Temporada','Call.Me.Fitz.S02E12.HDTV.XviD-2HD','1','23','230MB','105','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 17:07'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('68d970d0bbc7bfc741f9f1039aa4b20f');">
      <span id="imgd68d970d0bbc7bfc741f9f1039aa4b20f">
    <img src="destaques/236102-d0dbdae23a964dbb1ab7d9e52167b0bb.gif" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/GriotsTeam.jpg" width="132" height="18" alt="GriotsTeam"/></div>
    <div class="destrlsb"><small>HDTV.XviD-2HD</small></div>
    </div>
        <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Haven - 2nd Season','Haven - 2&ordf; Temporada','Haven.S02E13.HDTV.XviD-LOL/DIMENSION/mSD/ECI','1','23','358MB','2098','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 16:26'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('c1a40d88b5423031e5b7a9b04159cac1');">
      <span id="imgdc1a40d88b5423031e5b7a9b04159cac1">
    <img src="destaques/236100-73f38fe6e57315489e6a50a619713021.gif" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/the_tozz.jpg" width="132" height="18" alt="The Tozz"/></div>
    <div class="destrlsb"><small>HDTV.XviD-LOL/DIMENSION/mSD/ECI</small></div>
    </div>
        <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Man Up - 1st Season','Man Up - 1a Temporada','Man.Up.S01E08.HDTV.XviD-LOL/DIMENSION','1','23','175MB','1171','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 16:14'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('6d506b6daa9393ff628a6865897c7590');">
      <span id="imgd6d506b6daa9393ff628a6865897c7590">
    <img src="destaques/236099-f7713538cc5b7353bc6347d20d01a814.gif" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/InSUBs.jpg" width="132" height="18" alt="Equipe InSUBs"/></div>
    <div class="destrlsb"><small>HDTV.XviD-LOL/DIMENSION</small></div>
    </div>
      <div class="quebra"></div>  <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('The Cleveland Show - 3th Season','The Cleveland Show - 3&ordf; Temporada','The.Cleveland.Show.S03E06.HDTV.XviD-LOL/DIMENSION','1','23','175MB','584','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 15:35'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('ee9ebcbf601657dcf4a44ab274f57951');">
      <span id="imgdee9ebcbf601657dcf4a44ab274f57951">
    <img src="destaques/236098-a2658c2ef477b790117a8ab571f6ce79.gif" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/Tuunz.jpg" width="132" height="18" alt="Equipe Tuunz"/></div>
    <div class="destrlsb"><small>HDTV.XviD-LOL/DIMENSION</small></div>
    </div>
        <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('2 Broke Girls - 1st Season','2 Broke Girls - 1a Temporada','2.Broke.Girls.S01E11.HDTV.XviD-ASAP/IMMERSE','1','24','175MB','2128','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 13:46'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('fbdd86cbb32e444a5316c2ee7f88d878');">
      <span id="imgdfbdd86cbb32e444a5316c2ee7f88d878">
    <img src="destaques/236094-69f81d6af8149f8ce2de666348035b1a.jpg" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/tecsubs.jpg" width="132" height="18" alt="tecsubs"/></div>
    <div class="destrlsb"><small>HDTV.XviD-ASAP/IMMERSE</small></div>
    </div>
        <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Leverage - 4rd Season','Leverage - 4&ordf; Temporada','Leverage.S04E12.HDTV.XviD-ASAP/IMMERSE','1','23','350MB','1967','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 12:27'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('6212c8809084d770f261bfee5b2380bc');">
      <span id="imgd6212c8809084d770f261bfee5b2380bc">
    <img src="destaques/236085-28098a6ee5d620b275ba2d2f7f4e6aa5.gif" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/_DARKSIDE_.jpg" width="132" height="18" alt="Equipe DarkSide"/></div>
    <div class="destrlsb"><small>HDTV.XviD-ASAP/IMMERSE</small></div>
    </div>
      <div class="quebra"></div>  <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('The Good Wife - 3rd Season','The Good Wife - 3&ordf; Temporada','The.Good.Wife.S03E10.HDTV.XviD-LOL/DIMENSION','1','23','350MB','3058','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 05:28'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('887cc9b6a128461e14e23f11ded34a48');">
      <span id="imgd887cc9b6a128461e14e23f11ded34a48">
    <img src="destaques/236047-d4fa5378e0db0f47341e25ff05b234b6.gif" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/InSUBs.jpg" width="132" height="18" alt="Equipe InSUBs"/></div>
    <div class="destrlsb"><small>HDTV.XviD-LOL/DIMENSION</small></div>
    </div>
        <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Hart of Dixie - 1st Season','Hart of Dixie - 1&ordf; Temporada','Hart.of.Dixie.S01E10.HDTV.XviD-2HD/IMMERSE/ViPER','1','23','350MB','3100','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 01:28'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('0ac4d07911209cce79a0acde01605709');">
      <span id="imgd0ac4d07911209cce79a0acde01605709">
    <img src="destaques/236045-50c34bb81489b920ecbbfb0c372a75eb.gif" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/InSUBs.jpg" width="132" height="18" alt="Equipe InSUBs"/></div>
    <div class="destrlsb"><small>HDTV.XviD-2HD/IMMERSE/ViPER</small></div>
    </div>
        <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Glee - 3rd Season','Glee - 3&ordf; Temporada','Glee.S03E08.HDTV.XviD-LOL/DIMENSION','1','23','0MB','6775','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 01:05'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('c05a9345ba3a9fb36a8fdcf7dfb0254d');">
      <span id="imgdc05a9345ba3a9fb36a8fdcf7dfb0254d">
    <img src="destaques/236041-978deb86e9da8d5ee0d7870559277c03.jpg" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/_DARKSIDE_.jpg" width="132" height="18" alt="Equipe DarkSide"/></div>
    <div class="destrlsb"><small>HDTV.XviD-LOL/DIMENSION</small></div>
    </div>
      <div class="quebra"></div>  <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Being Erica - 4th Season','Being Erica - 4&ordf; Temporada','Being.Erica.S04E10.HDTV.XviD-2HD/mSD/720p/ECI','1','23','350MB','488','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 00:51'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('5a6c223f815aa5cbf774e0a13cfa1852');">
      <span id="imgd5a6c223f815aa5cbf774e0a13cfa1852">
    <img src="destaques/236040-b71a97268d8c9131f849aafb5770c8cd.gif" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/Maniacs.gif" width="132" height="18" alt="ManiacSubs"/></div>
    <div class="destrlsb"><small>HDTV.XviD-2HD/mSD/720p/ECI</small></div>
    </div>
        <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Gossip Girl - 5th Season','Gossip Girl - 5&ordf; Temporada','Gossip.Girl.S05E10.HDTV.XviD-ASAP/IMMERSE','1','23','350MB','4299','<img src=\'images/flag_br.gif\' border=\'0\'>','07/12/2011 - 23:38'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('92c22c4fd28a4e2c037704f7c373c405');">
      <span id="imgd92c22c4fd28a4e2c037704f7c373c405">
    <img src="destaques/236034-71254df6cc708e552f3d3e9dc179880b.gif" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/InSUBs.jpg" width="132" height="18" alt="Equipe InSUBs"/></div>
    <div class="destrlsb"><small>HDTV.XviD-ASAP/IMMERSE</small></div>
    </div>
        <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Warrior','Guerreiro','Warrior.DVDRip/BRRip/BluRay','2','23','1400MB','3586','<img src=\'images/flag_br.gif\' border=\'0\'>','07/12/2011 - 23:18'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('16006571cc86fa6a231c6a40c24b10ae');">
      <span id="imgd16006571cc86fa6a231c6a40c24b10ae">
    <img src="destaques/236031-a2c82385fa507b9eec4224b408ab3114.jpg" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/Alcobor.jpg" width="132" height="18" alt="Alcobor + Daddy"/></div>
    <div class="destrlsb"><small>Warrior.DVDRip/BRRip/BluRay</small></div>
    </div>
      <div class="quebra"></div>  <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Body of Proof - 2nd Season','Body of Proof - 2a Temporada','Body.of.Proof.S02E10.HDTV.XviD-LOL/DIMENSION/NFHD','1','23','350MB','1817','<img src=\'images/flag_br.gif\' border=\'0\'>','07/12/2011 - 22:56'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('1761eef7a33223dbe4e36bb723197959');">
      <span id="imgd1761eef7a33223dbe4e36bb723197959">
    <img src="destaques/236030-312fc5aa45947134079a30cec70d8ca7.gif" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/InSUBs.jpg" width="132" height="18" alt="Equipe InSUBs"/></div>
    <div class="destrlsb"><small>HDTV.XviD-LOL/DIMENSION/NFHD</small></div>
    </div>
        <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Neverland - Miniss&eacute;rie','Neverland - Miniss&eacute;rie','neverland.2011.part.one.hdtv.xvid-2hd/720p/420p','1','23','698MB','3009','<img src=\'images/flag_br.gif\' border=\'0\'>','07/12/2011 - 21:59'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('cf4ddaaa5d9ce8838c2a74d43e34938b');">
      <span id="imgdcf4ddaaa5d9ce8838c2a74d43e34938b">
    <img src="destaques/236022-d1d4912819b379351067b97f908959d0.jpg" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/inSanos.jpg" width="132" height="18" alt="Equipe InSanos"/></div>
    <div class="destrlsb"><small>hdtv.xvid-2hd/720p/420p</small></div>
    </div>
        <div align="center" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Enlightened - 1st Season','Enlightened - 1a Temporada','Enlightened.S01E09.HDTV.XviD-2HD/2HD/mSD','1','23','233MB','431','<img src=\'images/flag_br.gif\' border=\'0\'>','07/12/2011 - 21:49'))" class="Ldestaque" style="width:134px;cursor:pointer" onclick="javascript:abredown('a37266910dbfd4af23e9d7630fdd7d69');">
      <span id="imgda37266910dbfd4af23e9d7630fdd7d69">
    <img src="destaques/236020-bc1fe85aed872291c4a8de052c6bdc61.jpg" width="132" height="80" border="0" />
    </span>
    <div align="center" style="height:18px;"><img src="images/equipes/_DARKSIDE_.jpg" width="132" height="18" alt="Equipe DarkSide"/></div>
    <div class="destrlsb"><small>HDTV.XviD-2HD/2HD/mSD</small></div>
    </div>
      <div class="quebra"></div> </div>
    <div align="center"><span onclick="ajaxGet('destaques.php?start=0',document.getElementById('conteudodest'),true);" style="cursor:pointer; background-color:#CCCCCC;">&lt; Anterior</span> :: <span onclick="ajaxGet('destaques.php?start=24',document.getElementById('conteudodest'),true);" style="cursor:pointer; background-color:#CCCCCC;">Pr&oacute;xima &gt;</span><br /><a href="index.php?opcao=legenda&amp;lista=3"><strong>[Todos os Destaques]</strong></a></div>
     								        </div>									  </td>
    									  <td width="5">&nbsp;</td>
    						  </tr>
    						  <tr>
    						    <td height="15" colspan="3"><div align="center"><img src="images/bordafilm.gif" width="100%" height="15"></div></td>
    						  </tr>
    					    </table>
    			            <br>
    					    <!-- BEGIN STANDARD TAG - 300 x 250 - ROS: Run-of-site - DO NOT MODIFY -->
    <IFRAME FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO WIDTH=300 HEIGHT=250 SRC="http://ad.adnetwork.net/st?ad_type=iframe&ad_size=300x250&section=1251777"></IFRAME>
    <!-- END TAG -->
    <script type="text/javascript">
    	bb_bid = "467239";
    	bb_lang = "pt-BR";
    	bb_keywords = "";
    	bb_name = "custom";
    	bb_limit = "6";
    	bb_format = "bbn";
    </script>

    					  </div></td>
                    	<td width="184" valign="top" style="">                	  <div align="center">


                          <div class="traducoes" style="border:solid 1px #46cad6;background-color:#f7f7f7">
                          <div style="background-image:url(template1.gif);width:177px;height:20px;line-height:20px;color:#FFFFFF;margin-top:-10px;float:left;font-weight:bold">Tradu&ccedil;&otilde;es em Andamento</div>
                            <div class="itemtrad" onMouseOver="this.T_OPACITY=100; this.T_WIDTH=500; this.T_BGCOLOR='#F7F7F7'; return escape(poptraducao('Straw Dogs 2011 BRRip XVID AbSurdiTy - Previs&atilde;o 17 de Dezembro','Nightcrawlersp','STRAW DOGS',' - Sob o Dom&iacute;nio do Mal','1','O sonho de um pacato matem&aacute;tico de encontrar o lugar perfeito se desfaz quando os homens que contratou para reformar sua garagem  invadem sua casa, amea&ccedil;ando a ele e sua esposa.','orange','1 semana atr&aacute;s','4','1 semana','1','29','1 dia atr&aacute;s'))"><a href="http://forum.legendas.tv/showthread.php?t=29937" target="_blank"><span class="nomefilme">STRAW DOGS</span> - Nightcrawlersp</a></div>
        <div class="itemtrad itemtradb" onMouseOver="this.T_OPACITY=100; this.T_WIDTH=500; this.T_BGCOLOR='#F7F7F7'; return escape(poptraducao('Final.Destination.5.DVDRip.XviD-TWiZTED - Previs&atilde;o 10 de Dezembro','CreepySubs','Final Destination 5',' - Premoni&ccedil;&atilde;o 5','1','Revis&atilde;o e ressincs.','black','1 dia atr&aacute;s','3','1 dia','1','100','2 horas atr&aacute;s'))"><a href="http://forum.legendas.tv/showthread.php?t=29961" target="_blank"><span class="nomefilme">Final Destination 5</span> - CreepySubs</a></div>
        <div class="itemtrad" onMouseOver="this.T_OPACITY=100; this.T_WIDTH=500; this.T_BGCOLOR='#F7F7F7'; return escape(poptraducao('We_Need_to_Talk_About_Kevin_2011_DVDSCR_x264-NoGrp','hirschen','WE NEED TO TALK ABOUT KEVIN',' - Precisamos falar sobre o Kevin','1','Do &aacute;udio. 8.0 no IMDB','black','20 horas atr&aacute;s','4','2 semanas','1','10','14 horas atr&aacute;s'))"><a href="http://forum.legendas.tv/showthread.php?t=29962" target="_blank"><span class="nomefilme">WE NEED TO TALK ABOUT KEVIN</span> - hirschen</a></div>
        <div class="itemtrad itemtradb" onMouseOver="this.T_OPACITY=100; this.T_WIDTH=500; this.T_BGCOLOR='#F7F7F7'; return escape(poptraducao('La.Piel.Que.Habito.2011.DVDRip.AC3.HORiZON-ArtSubs - Previs&atilde;o 25 de Dezembro','art_subs','La Piel Que Habito',' - A Pele Que Habito','1','O novo e excelente filme do grande mestre Pedro Almodovar','black','3 dias atr&aacute;s','4','6 dias','1','22','17 horas atr&aacute;s'))"><a href="http://forum.legendas.tv/showthread.php?t=29952" target="_blank"><span class="nomefilme">La Piel Que Habito</span> - art_subs</a></div>
        <div class="itemtrad" onMouseOver="this.T_OPACITY=100; this.T_WIDTH=500; this.T_BGCOLOR='#F7F7F7'; return escape(poptraducao('Minis&eacute;rie justice (2011) 5 epis&oacute;dios','_fernandoshow_','JUSTICE 2011',' - JUSTICE 2011','1','Legenda feita pelo subpack','black','2 dias atr&aacute;s','3','4 horas','1','100','1 dia atr&aacute;s'))"><a href="http://forum.legendas.tv/showthread.php?t=29959" target="_blank"><span class="nomefilme">JUSTICE 2011</span> - _fernandoshow_</a></div>
        <div class="itemtrad itemtradb" onMouseOver="this.T_OPACITY=100; this.T_WIDTH=500; this.T_BGCOLOR='#F7F7F7'; return escape(poptraducao('Born.Bad.2011.UNCUT.720p.BluRay.x264-UNTOUCHABLES - Previs&atilde;o 17 de Dezembro','CiCiNHA','Born Bad',' - ','1','tradu&ccedil;&atilde;o do &aacute;udio','red','1 semana atr&aacute;s','4','5 dias','1','58','1 dia atr&aacute;s'))"><a href="http://forum.legendas.tv/showthread.php?t=29924" target="_blank"><span class="nomefilme">Born Bad</span> - CiCiNHA</a></div>
        <div class="itemtrad" onMouseOver="this.T_OPACITY=100; this.T_WIDTH=500; this.T_BGCOLOR='#F7F7F7'; return escape(poptraducao('Trois Fois Vingt Ans FRENCH DVDRip XviD-AYMO - Previs&atilde;o 22 de Janeiro','pinguim_sp','Late Bloomers aka 3 fois 20 ans',' - O amor n&atilde;o tem fim','1','Late.Bloomers.2011.DVDRip.AC3.HORiZON-ArtSubs','orange','1 semana atr&aacute;s','4','1 mes','1','2','4 dias atr&aacute;s'))"><a href="http://forum.legendas.tv/showthread.php?t=29939" target="_blank"><span class="nomefilme">Late Bloomers aka 3 fois 20 ans</span> - pinguim_sp</a></div>
        <div class="itemtrad itemtradb" onMouseOver="this.T_OPACITY=100; this.T_WIDTH=500; this.T_BGCOLOR='#F7F7F7'; return escape(poptraducao('Black Mirror - Miniss&eacute;rie em 3 epis&oacute;dios','ivanzsantana','Black Mirror',' - Black Mirror','1','Tradu&ccedil;&atilde;o da CC e ser&aacute; conferido o &aacute;udio.','black','3 dias atr&aacute;s','2','-1323502814 segundo','1','23','10 horas atr&aacute;s'))"><a href="http://forum.legendas.tv/showthread.php?t=29954" target="_blank"><span class="nomefilme">Black Mirror</span> - ivanzsantana</a></div>
        <div class="itemtrad" onMouseOver="this.T_OPACITY=100; this.T_WIDTH=500; this.T_BGCOLOR='#F7F7F7'; return escape(poptraducao('Neverland - Miniss&eacute;rie em 2 epis&oacute;dios','inSanos','Neverland',' - Neverland','1','Miniss&eacute;rie em 2 epis&oacute;dios sobre a origem de Peter Pan.','orange','5 dias atr&aacute;s','4','1 semana','1','72','2 dias atr&aacute;s'))"><a href="http://forum.legendas.tv/showthread.php?t=29945" target="_blank"><span class="nomefilme">Neverland</span> - inSanos</a></div>
        <div class="itemtrad itemtradb" onMouseOver="this.T_OPACITY=100; this.T_WIDTH=500; this.T_BGCOLOR='#F7F7F7'; return escape(poptraducao('The.Ides.of.March.2011.DVDScr.XVID.AC3.HQ.Hive-CM8 - Previs&atilde;o 20 de Dezembro','alcobor','The Ides of March',' - Tudo Pelo Poder','1','&Aacute;udio - Nota 7,5 - Grandes atua&ccedil;&otilde;es','black','3 dias atr&aacute;s','4','1 semana','1','0','13 horas atr&aacute;s'))"><a href="http://forum.legendas.tv/showthread.php?t=29950" target="_blank"><span class="nomefilme">The Ides of March</span> - alcobor</a></div>
        <div class="itemtrad" onMouseOver="this.T_OPACITY=100; this.T_WIDTH=500; this.T_BGCOLOR='#F7F7F7'; return escape(poptraducao('Red Dog 2011 BRRip XviD-REFiLL - Previs&atilde;o 26 de Dezembro','Keader','Red Dog',' - ','1','Tradu&ccedil;&atilde;o a partir do subpack em ingl&ecirc;s.','black','3 dias atr&aacute;s','4','1 dia','1','37','3 dias atr&aacute;s'))"><a href="http://forum.legendas.tv/showthread.php?t=29956" target="_blank"><span class="nomefilme">Red Dog</span> - Keader</a></div>
        <div class="itemtrad itemtradb" onMouseOver="this.T_OPACITY=100; this.T_WIDTH=500; this.T_BGCOLOR='#F7F7F7'; return escape(poptraducao('Catch .44 2011 720p Bluray x264 DTS-HDChina - Previs&atilde;o 10 de Dezembro','virtualnet','Catch.44',' - Catch.44','1','Filme com Bruce Willis e tradu&ccedil;&atilde;o usando o subpack.','orange','1 semana atr&aacute;s','4','5 dias','1','67','1 dia atr&aacute;s'))"><a href="http://forum.legendas.tv/showthread.php?t=29932" target="_blank"><span class="nomefilme">Catch.44</span> - virtualnet</a></div>
        <div class="itemtrad" onMouseOver="this.T_OPACITY=100; this.T_WIDTH=500; this.T_BGCOLOR='#F7F7F7'; return escape(poptraducao('The.River.Why.2010.DVDRip.XviD-playXD - Previs&atilde;o 24 de Dezembro','drcaio','The River Why',' - The River Why','1','Romance com Zach Gilford, Amber Heard e William Hurt','orange','4 dias atr&aacute;s','4','2 semanas','1','51','12 horas atr&aacute;s'))"><a href="http://forum.legendas.tv/showthread.php?t=29946" target="_blank"><span class="nomefilme">The River Why</span> - drcaio</a></div>
        <div class="itemtrad itemtradb" onMouseOver="this.T_OPACITY=100; this.T_WIDTH=500; this.T_BGCOLOR='#F7F7F7'; return escape(poptraducao('Circumstance.2011.LIMITED.DVDRip.XviD-Counterfeit - Previs&atilde;o 18 de dezembro','Rafael_UPD','Circumstance',' - Circumstance','0','','red','1 semana atr&aacute;s','2','-1323502814 segundo','1','33','6 horas atr&aacute;s'))"><a href="http://forum.legendas.tv/showthread.php?t=29928" target="_blank"><span class="nomefilme">Circumstance</span> - Rafael_UPD</a></div>
        <div class="itemtrad" onMouseOver="this.T_OPACITY=100; this.T_WIDTH=500; this.T_BGCOLOR='#F7F7F7'; return escape(poptraducao('The Art of Getting By 2011 LIMITED DVDRipXviD-AMIABLE - Previs&atilde;o 02 de Dezembro','starmaniaco','The Art of Getting',' - A Arte da Conquista','1','[FEITA DO SUBPACK]','red','3 semanas atr&aacute;s','2','-117614 segundo','1','79','21 horas atr&aacute;s'))"><a href="http://forum.legendas.tv/showthread.php?t=29888" target="_blank"><span class="nomefilme">The Art of Getting</span> - starmaniaco</a></div>
                            </div>
                    	    <br>
                   	      <table width="177" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="177" height="20" background="images/template.gif"><table width="123" border="0" align="left" cellpadding="0" cellspacing="0">
          <tr>
            <td width="123"><div align="right"><span class="style17">&Uacute;ltimas legendas </span></div></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td class="noticias"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr bgcolor="#E5E5E5">
    <td><strong><a href="javascript:abredown('3f08e4ef549c60b5bc3a38bac046d2a3');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Final Destination 5 / 5nal Destination','Premoni&ccedil;&atilde;o 5','Final.Destination.5.DVDRip/BRRip.480/720/1080','1','23','700MB','408','<img src=\'images/flag_br.gif\' border=\'0\'>','09/12/2011 - 05:45'));"><span title="Final.Destination.5.DVDRip/BRRip.480/720/1080"><img src='images/flag_br.gif' border='0'>Final Destination 5 / 5nal Destination</span></a></strong></td></tr><tr><td><span class="style16">Enviada por: <a href="javascript:abreinfousuario(1878774)"> <strong>creepysubs</strong></a></span></td></tr><tr bgcolor="#E5E5E5">
    <td><strong><a href="javascript:abredown('1af982f09b4c90b9946cba24f4c40d88');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('The Big Bang Theory - 5th Season','The Big Bang Theory - 5&ordf; Temporada','The.Big.Bang.Theory.S05E11.HDTV.XviD-ASAP/2HD','1','23','175MB','1675','<img src=\'images/flag_br.gif\' border=\'0\'>','09/12/2011 - 05:07'));"><span title="The.Big.Bang.Theory.S05E11.HDTV.XviD-ASAP/2HD"><img src='images/flag_br.gif' border='0'>The Big Bang Theory - 5th Season</span></a></strong></td></tr><tr><td><span class="style16">Enviada por: <a href="javascript:abreinfousuario(822805)"> <strong>N.E.R.D.S.</strong></a></span></td></tr><tr bgcolor="#E5E5E5">
    <td><strong><a href="javascript:abredown('dcf851e3e0561a0fc8c09a46e0a45672');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Lost Girl - 2th Season','Lost Girl - 2a Temporada','Lost.Girl.S02E11.HDTV.XviD-2HD/720p.HDTV.x264-2HD/720p.WEB-DL.AAC2.0.h.264-ECI','3','23','350MB','489','<img src=\'images/flag_br.gif\' border=\'0\'>','09/12/2011 - 01:18'));"><span title="Lost.Girl.S02E11.HDTV.XviD-2HD/720p.HDTV.x264-2HD/720p.WEB-DL.AAC2.0.h.264-ECI"><img src='images/flag_br.gif' border='0'>Lost Girl - 2th Season</span></a></strong></td></tr><tr><td><span class="style16">Enviada por: <a href="javascript:abreinfousuario(1522341)"> <strong>IdiotasI</strong></a></span></td></tr><tr bgcolor="#E5E5E5">
    <td><strong><a href="javascript:abredown('35481f9ff86f0747caf5cc476201ad0c');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('New Girl - 1st Season','New Girl - 1a Temporada','New.Girl.S01E08.HDTV.XviD-LOL/720p','1','23','175MB','1033','<img src=\'images/flag_br.gif\' border=\'0\'>','09/12/2011 - 00:57'));"><span title="New.Girl.S01E08.HDTV.XviD-LOL/720p"><img src='images/flag_br.gif' border='0'>New Girl - 1st Season</span></a></strong></td></tr><tr><td><span class="style16">Enviada por: <a href="javascript:abreinfousuario(822805)"> <strong>N.E.R.D.S.</strong></a></span></td></tr><tr bgcolor="#E5E5E5">
    <td><strong><a href="javascript:abredown('ee0833c144a2004d13eb395875c2f4f6');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('American Horror Story - 1st season','American Horror Story - 1&ordf; temporada','American.Horror.Story.S01E10.HDTV.XviD-FQM/ORENJI/CtrlHD','1','23','350MB','2527','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 22:52'));"><span title="American.Horror.Story.S01E10.HDTV.XviD-FQM/ORENJI/CtrlHD"><img src='images/flag_br.gif' border='0'>American Horror Story - 1st season</span></a></strong></td></tr><tr><td><span class="style16">Enviada por: <a href="javascript:abreinfousuario(323359)"> <strong>InSUBs</strong></a></span></td></tr><tr bgcolor="#E5E5E5">
    <td><strong><a href="javascript:abredown('c715b9395cfa301d68683513bc747e0c');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Criminal Minds - 7th Season','Criminal Minds - 7&ordf; Temporada','Criminal.Minds.S07E09.HDTV.XviD-LOL/DIMENSION/mSD','1','23','350MB','1410','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 22:22'));"><span title="Criminal.Minds.S07E09.HDTV.XviD-LOL/DIMENSION/mSD"><img src='images/flag_br.gif' border='0'>Criminal Minds - 7th Season</span></a></strong></td></tr><tr><td><span class="style16">Enviada por: <a href="javascript:abreinfousuario(283714)"> <strong>UnitedTeam</strong></a></span></td></tr><tr bgcolor="#E5E5E5">
    <td><strong><a href="javascript:abredown('da36fe61372235e6e5a5710d15e06455');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Law and Order: Criminal Intent - 3rd Season','Law and Order: Criminal Intent - 3rd Season','Law.and.Order.CI.S03E17.Conscience.AC3.DVDRip.XviD-FQM','1','24','356MB','17','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 22:15'));"><span title="Law.and.Order.CI.S03E17.Conscience.AC3.DVDRip.XviD-FQM"><img src='images/flag_br.gif' border='0'>Law and Order: Criminal Intent - 3rd Season</span></a></strong></td></tr><tr><td><span class="style16">Enviada por: <a href="javascript:abreinfousuario(1859382)"> <strong>grissonalves</strong></a></span></td></tr><tr bgcolor="#E5E5E5">
    <td><strong><a href="javascript:abredown('0c1024d734f90f9d285682c02e870c3d');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Blackthorn','Blackthorn','Blackthorn.2011.LIMITED.DVDRip.XviD-AMIABLE','1','23','699MB','30','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 21:47'));"><span title="Blackthorn.2011.LIMITED.DVDRip.XviD-AMIABLE"><img src='images/flag_br.gif' border='0'>Blackthorn</span></a></strong></td></tr><tr><td><span class="style16">Enviada por: <a href="javascript:abreinfousuario(700713)"> <strong>jefe</strong></a></span></td></tr><tr bgcolor="#E5E5E5">
    <td><strong><a href="javascript:abredown('dd3d0096a469520705f3cf4054c14cab');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Lifes Too Short - 1th Season','Lifes Too Short - 1a Temporada','Lifes.Too.Short.S01E05.HDTV.XviD-FoV','1','0','0MB','3','<img src=\'images/flag_us.gif\' border=\'0\'>','08/12/2011 - 21:39'));"><span title="Lifes.Too.Short.S01E05.HDTV.XviD-FoV"><img src='images/flag_us.gif' border='0'>Lifes Too Short - 1th Season</span></a></strong></td></tr><tr><td><span class="style16">Enviada por: <a href="javascript:abreinfousuario(241436)"> <strong>AARAO_REIS</strong></a></span></td></tr><tr bgcolor="#E5E5E5">
    <td><strong><a href="javascript:abredown('55d18de2fad6e0244e86418eed38ef7c');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Rebecca','Rebecca - A Mulher Inesquec&iacute;vel','Rebecca.1940.iNTERNAL.DVDRip.XviD-iNCiTE','1','25','1400MB','8','<img src=\'images/flag_br.gif\' border=\'0\'>','08/12/2011 - 21:38'));"><span title="Rebecca.1940.iNTERNAL.DVDRip.XviD-iNCiTE"><img src='images/flag_br.gif' border='0'>Rebecca</span></a></strong></td></tr><tr><td><span class="style16">Enviada por: <a href="javascript:abreinfousuario(1911989)"> <strong>willermanX</strong></a></span></td></tr>    </table></td>
      </tr>
    </table>
                    	      <br>
                    	    <br><table width="177" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="177" height="20" background="images/template.gif"><table width="123" border="0" align="left" cellpadding="0" cellspacing="0">
            <tr>
              <td width="123"><div align="right"><span class="style17">Top da Semana </span></div></td>
            </tr>
          </table></td>
      </tr>
      <tr>
        <td class="noticias"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr bgcolor="#E5E5E5"><td><strong><a href="javascript:abredown('90bc768e79ad2ba7dfd290f12abe7578');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('In Time','O Pre&ccedil;o do Amanh&atilde;','In.Time.2011.R5.LiNE.XviD-REFiLL','1','23','852MB','1214','<img src=\'images/flag_br.gif\' border=\'0\'>','02/12/2011 - 09:33'))"><span title="In.Time.2011.R5.LiNE.XviD-REFiLL"><img src='images/flag_br.gif' border='0'>In Time</span></a></strong></td></tr><tr><td><strong><a href="javascript:abredown('6861f56628214047fc23d8eecdc73a1d');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Cowboys and Aliens','Cowboys and Aliens','Cowboys.and.Aliens.(2011).DVDRip.XviD-MAXSPEED','1','23','1MB','1058','<img src=\'images/flag_br.gif\' border=\'0\'>','04/12/2011 - 02:28'))"><span title="Cowboys.and.Aliens.(2011).DVDRip.XviD-MAXSPEED"><img src='images/flag_br.gif' border='0'>Cowboys and Aliens</span></a></strong></td></tr><tr bgcolor="#E5E5E5"><td><strong><a href="javascript:abredown('b1ea6c8c2822191f40ecf864d6ed24b3');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Immortals (War of Gods)','Imortais','Immortals.2011.R6.READNFO.AC3.XViD.U.S.M','1','25','1140MB','711','<img src=\'images/flag_br.gif\' border=\'0\'>','04/12/2011 - 20:43'))"><span title="Immortals.2011.R6.READNFO.AC3.XViD.U.S.M"><img src='images/flag_br.gif' border='0'>Immortals (War of Gods)</span></a></strong></td></tr><tr><td><strong><a href="javascript:abredown('5436dbd14d611c7b4fec3beff20b04c5');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Dexter - 6th Season','Dexter - 6&ordf; Temporada','Dexter.S06E10.HDTV.XviD-ASAP/IMMERSE','1','0','0MB','684','<img src=\'images/flag_us.gif\' border=\'0\'>','05/12/2011 - 07:48'))"><span title="Dexter.S06E10.HDTV.XviD-ASAP/IMMERSE"><img src='images/flag_us.gif' border='0'>Dexter - 6th Season</span></a></strong></td></tr><tr bgcolor="#E5E5E5"><td><strong><a href="javascript:abredown('b4978d44ea58af82519543c1e75fb0c5');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('In Time','O Pre&ccedil;o do Amanh&atilde;','In.Time.2011.R5.DVDRip.XVID.Clear.AC3.5.1.HQ.Hive-CM8','1','25','1MB','603','<img src=\'images/flag_br.gif\' border=\'0\'>','04/12/2011 - 00:11'))"><span title="In.Time.2011.R5.DVDRip.XVID.Clear.AC3.5.1.HQ.Hive-CM8"><img src='images/flag_br.gif' border='0'>In Time</span></a></strong></td></tr><tr><td><strong><a href="javascript:abredown('e94f7388a0967562c20f9e3ef3bac35f');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Sons of Anarchy - 4th Season','Sons of Anarchy - 4&ordf; Temporada','Sons.of.Anarchy.S04E14.HDTV.XviD-ASAP.avi','1','0','350MB','480','<img src=\'images/flag_br.gif\' border=\'0\'>','07/12/2011 - 18:03'))"><span title="Sons.of.Anarchy.S04E14.HDTV.XviD-ASAP.avi"><img src='images/flag_br.gif' border='0'>Sons of Anarchy - 4th Season</span></a></strong></td></tr><tr bgcolor="#E5E5E5"><td><strong><a href="javascript:abredown('ecb92d65c8a5ee5b12c8ae376c3e08b1');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Glee - 3rd Season','Glee - 3&ordf; Temporada','Glee.S03E08.HDTV.XviD-LOL/DIMENSION','1','0','0MB','430','<img src=\'images/flag_us.gif\' border=\'0\'>','07/12/2011 - 07:46'))"><span title="Glee.S03E08.HDTV.XviD-LOL/DIMENSION"><img src='images/flag_us.gif' border='0'>Glee - 3rd Season</span></a></strong></td></tr><tr><td><strong><a href="javascript:abredown('9670e9bc772fae944cd2ef7673b8c2cf');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Supernatural - 7th Season','Supernatural - 7&ordf; Temporada','Supernatural.S07E10.HDTV.XviD-ASAP/IMMERSE','2','23','350MB','417','<img src=\'images/flag_us.gif\' border=\'0\'>','03/12/2011 - 02:29'))"><span title="Supernatural.S07E10.HDTV.XviD-ASAP/IMMERSE"><img src='images/flag_us.gif' border='0'>Supernatural - 7th Season</span></a></strong></td></tr><tr bgcolor="#E5E5E5"><td><strong><a href="javascript:abredown('671176e2fe70113321444ba3f7cd36cc');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Gossip Girl - 5th Season','Gossip Girl - 5&ordf; Temporada','Gossip.Girl.S05E10.HDTV.XviD-ASAP/IMMERSE','1','0','0MB','403','<img src=\'images/flag_us.gif\' border=\'0\'>','06/12/2011 - 07:33'))"><span title="Gossip.Girl.S05E10.HDTV.XviD-ASAP/IMMERSE"><img src='images/flag_us.gif' border='0'>Gossip Girl - 5th Season</span></a></strong></td></tr><tr><td><strong><a href="javascript:abredown('bc624eb76215d6f8303dd30a99f08910');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Desperate Housewives - 8th Season','Desperate Housewives - 8&ordf; Temporada','Desperate.Housewives.S08E09.HDTV.XviD-LOL','1','23','349MB','344','<img src=\'images/flag_br.gif\' border=\'0\'>','07/12/2011 - 03:23'))"><span title="Desperate.Housewives.S08E09.HDTV.XviD-LOL"><img src='images/flag_br.gif' border='0'>Desperate Housewives - 8th Season</span></a></strong></td></tr><tr bgcolor="#E5E5E5"><td><strong><a href="javascript:abredown('128f629977ecba6670148cb864115368');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Apollo 18','Apollo 18 - A Miss&atilde;o Proibida','Apollo.18.2011.DVDRip.XviD-DiAMOND','1','23','718MB','343','<img src=\'images/flag_br.gif\' border=\'0\'>','03/12/2011 - 21:24'))"><span title="Apollo.18.2011.DVDRip.XviD-DiAMOND"><img src='images/flag_br.gif' border='0'>Apollo 18</span></a></strong></td></tr><tr><td><strong><a href="javascript:abredown('1ecf508b8ffd9ef7ca5ffe6ac2ad4aa1');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Cowboys and Aliens','Cowboys and Aliens','Cowboys.&amp;.Aliens[2011]EXTENDED.BRRip.XviD-ExtraTorrentRG','1','0','700MB','310','<img src=\'images/flag_br.gif\' border=\'0\'>','02/12/2011 - 11:21'))"><span title="Cowboys.&amp;.Aliens[2011]EXTENDED.BRRip.XviD-ExtraTorrentRG"><img src='images/flag_br.gif' border='0'>Cowboys and Aliens</span></a></strong></td></tr><tr bgcolor="#E5E5E5"><td><strong><a href="javascript:abredown('2edccdd22e241389c6cd27296a201cd2');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Glee: The 3D Concert Movie','Glee 3D - O Filme','Glee.O.Filme.DVDRip.XviD.Dual.Audio-3LT0N','1','23','699MB','289','<img src=\'images/flag_br.gif\' border=\'0\'>','05/12/2011 - 18:36'))"><span title="Glee.O.Filme.DVDRip.XviD.Dual.Audio-3LT0N"><img src='images/flag_br.gif' border='0'>Glee: The 3D Concert Movie</span></a></strong></td></tr><tr><td><strong><a href="javascript:abredown('14e87ce6b5faefa8e91fd01671979e89');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Desperate Housewives - 8th Season','Desperate Housewives - 8&ordf; Temporada','Desperate.Housewives.S08E09.HDTV.XviD-LOL/DIMENSION','1','0','0MB','286','<img src=\'images/flag_us.gif\' border=\'0\'>','05/12/2011 - 12:59'))"><span title="Desperate.Housewives.S08E09.HDTV.XviD-LOL/DIMENSION"><img src='images/flag_us.gif' border='0'>Desperate Housewives - 8th Season</span></a></strong></td></tr><tr bgcolor="#E5E5E5"><td><strong><a href="javascript:abredown('f5f7cbecebf21b5eb6886cad3a5a081d');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('The Good Wife - 3rd Season','The Good Wife - 3&ordf; Temporada','The.Good.Wife.S03E10.HDTV.XviD-LOL/DIMENSION','1','0','0MB','277','<img src=\'images/flag_us.gif\' border=\'0\'>','05/12/2011 - 08:06'))"><span title="The.Good.Wife.S03E10.HDTV.XviD-LOL/DIMENSION"><img src='images/flag_us.gif' border='0'>The Good Wife - 3rd Season</span></a></strong></td></tr><tr><td><strong><a href="javascript:abredown('357887b1b49bee2100ca69f4ad312b7c');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('New Girl - 1st Season','New Girl - 1a Temporada','New.Girl.S01E08.HDTV.XviD-LOL/DIMENSION','1','0','0MB','255','<img src=\'images/flag_us.gif\' border=\'0\'>','07/12/2011 - 07:43'))"><span title="New.Girl.S01E08.HDTV.XviD-LOL/DIMENSION"><img src='images/flag_us.gif' border='0'>New Girl - 1st Season</span></a></strong></td></tr><tr bgcolor="#E5E5E5"><td><strong><a href="javascript:abredown('a04ebc7f6759f6d6b3a124ec67a52711');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Family Guy - 10th Season','Family Guy - 10&ordf; Temporada','Family.Guy.S10E08.HDTV.XviD-LOL/DIMENSION','2','23','350MB','245','<img src=\'images/flag_us.gif\' border=\'0\'>','05/12/2011 - 01:55'))"><span title="Family.Guy.S10E08.HDTV.XviD-LOL/DIMENSION"><img src='images/flag_us.gif' border='0'>Family Guy - 10th Season</span></a></strong></td></tr><tr><td><strong><a href="javascript:abredown('f8a6d99a9cb50a285ba4f64bd8b9475e');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Castle - 4th Season','Castle - 4&ordf; Temporada','Castle.2009.S04E10.HDTV.XviD-LOL/DIMENSION','1','0','0MB','243','<img src=\'images/flag_us.gif\' border=\'0\'>','06/12/2011 - 07:35'))"><span title="Castle.2009.S04E10.HDTV.XviD-LOL/DIMENSION"><img src='images/flag_us.gif' border='0'>Castle - 4th Season</span></a></strong></td></tr><tr bgcolor="#E5E5E5"><td><strong><a href="javascript:abredown('fb7f384371e7976cc49edb0920a1f8c2');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('How I Met Your Mother - 7th Season','How I Met Your Mother - 7&ordf; Temporada','How.I.Met.Your.Mother.S07E12.HDTV.XviD-LOL/DIMENSION','2','23','175MB','236','<img src=\'images/flag_us.gif\' border=\'0\'>','06/12/2011 - 00:19'))"><span title="How.I.Met.Your.Mother.S07E12.HDTV.XviD-LOL/DIMENSION"><img src='images/flag_us.gif' border='0'>How I Met Your Mother - 7th Season</span></a></strong></td></tr><tr><td><strong><a href="javascript:abredown('85df4c052c634223e760c958144b991b');" onmouseover="this.T_OPACITY=95; this.T_WIDTH=350; return escape(gpop('Cowboys and Aliens','Cowboys and Aliens','Cowboys.And.Aliens..{2011}.DVDRIP..Jaybob.','2','23','1150MB','235','<img src=\'images/flag_br.gif\' border=\'0\'>','03/12/2011 - 14:06'))"><span title="Cowboys.And.Aliens..{2011}.DVDRIP..Jaybob."><img src='images/flag_br.gif' border='0'>Cowboys and Aliens</span></a></strong></td></tr>      </table></td>
      </tr>
    </table>
                    	  </div>
                    	   <div align="center">
                               <a href="http://www.insubs.com" target="insubs" onClick="javascript:urchinTracker('/banner/insubs');"><br /><img src="insubs.jpg" alt="InSubs" width="156" height="63" border="0" style="border:1px solid #999999" /></a><br />
                              <a href="http://www.united4ever.tv" target="united" onClick="javascript:urchinTracker('/banner/united');"><br /><img src="/united.jpg" alt="United4Ever" width="156" height="63" border="0" style="border:1px solid #999999" /></a><br/>
    			  <a href="http://insanos.tv" target="insanos" onClick="javascript:urchinTracker('/banner/insanos');"><br /><img src="/insanos.jpg" alt="Insanos" width="156" height="63" border="0" style="border:1px solid #999999" /></a><br/>
    <a href="http://www.darksite.tv" target="darkside" onClick="javascript:urchinTracker('/banner/darlkside');"><br /><img src="/darkltv1.jpg" alt="DarkSide" border="0" style="border:1px solid #999999" /></a><br>
    <a href="http://www.nerdsubs.com" target="nerdsub" onClick="javascript:urchinTracker('/banner/nerdsub');"><br /><img src="http://www.nerdsubs.com/files/bannerlstv.jpg" alt="NERDS" border="0" style="border:1px solid #999999" /></a><br>
                           </div></td></tr>
    			</table>
                </div>          </td>
      </tr>
      </table></td>
      </tr>
      <tr>
        <td align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td bgcolor="#F0F0F0"></td>
          </tr>
          <tr>
            <td bgcolor="#F0F0F0"><div align="center"></div></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="5" align="left" valign="top" bgcolor="#46CAD6"><div align="center"><strong>LEGENDAS.TV: <a href="http://forum.legendas.tv" target="_blank">Fórum</a> | <a href="http://faq.legendas.tv" target="_blank">Ajuda</a> | <a href=http://forum.legendas.tv/sendmessage.php target="_blank">Contato</a> | <a href="http://legendas.tv/podcast" target="_blank">PODCAST!</a></strong>
        </div></td>
      </tr>
    </table>
    <script language="JavaScript" type="text/javascript" src="javascript/wz_tooltip.js"></script>
    <script src="http://www.google-analytics.com/urchin.js" type="text/javascript"></script>
    <script type="text/javascript">
    	_uacct = "UA-880954-1";
    	urchinTracker();
    </script></body>
    </html>
    <div style="display:none">
    <a href="http://whos.amung.us/show/fgjfh5xc"><img 
    src="http://whos.amung.us/widget/fgjfh5xc.png" alt="web counter" 
    width="81" height="29" border="0" /></a>
    </div>
})
  end

  describe "most downloaded" do
  
    it "returns the most downloaded subtitles" do
      LegendasTV::Crawler.most_downloaded.first.should ==
        { original_title: "Dexter - 6th Season", title: "Dexter - 6ª Temporada", release: "Dexter.S06E10.HDTV.XviD-ASAP/IMMERSE/mSD/Fizo",
          download_count: "27762", add_at: "05/12/2011 - 18:00", subtitle_image: "http://legendas.tv/destaques/235839-cae43f337b5b8f68fc5e8a740c38cd02.jpg",
          team_image: "http://legendas.tv/images/equipes/LegendasTV.jpg", team_name: "Equipe Legendas.tv"}
    end
  
    it "the most downloaded subtitles size must be equal a 20" do
      LegendasTV::Crawler.most_downloaded.size == 20
    end
  end
  
  describe "highlights" do
    it "should return 24 highlighted subtitles" do
      LegendasTV::Crawler.highlights.size.should == 24
    end
    it "should return the subtitle formated" do
      LegendasTV::Crawler.highlights.first.should == {
         original_title: "Final Destination 5 / 5nal Destination", title: "Premonição 5", release: "Final.Destination.5.DVDRip/BRRip.480/720/1080",
          download_count: "408", add_at: "09/12/2011 - 05:45", subtitle_image: "http://legendas.tv/destaques/236161-a962d5065c98db41424ed795f9d90e0d.jpg",
          team_image: "http://legendas.tv/images/equipes/creepysubs.jpg", team_name: "creepysubs"
      }
    end
  end
end