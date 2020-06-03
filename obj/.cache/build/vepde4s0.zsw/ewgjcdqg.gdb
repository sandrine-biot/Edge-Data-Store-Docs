<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Prepare egress destinations </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Prepare egress destinations ">
    <meta name="generator" content="docfx 2.52.0.0">
    
    <link rel="shortcut icon" href="../../favicon.ico">
    <link rel="stylesheet" href="../../styles/docfx.vendor.css">
    <link rel="stylesheet" href="../../styles/docfx.css">
    <link rel="stylesheet" href="../../styles/main.css">
    <meta property="docfx:navrel" content="../../toc.html">
    <meta property="docfx:tocrel" content="../../toc.html">
    
    <meta property="docfx:rel" content="../../">
    
  </head>
  <body data-spy="scroll" data-target="#affix" data-offset="120">
    <div id="wrapper">
      <header>
        
        <nav id="autocollapse" class="navbar navbar-inverse ng-scope" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              
              <a class="navbar-brand" href="../../index.html">
                <img id="logo" class="svg" src="../../logo.svg" alt="">
              </a>
            </div>
            <div class="collapse navbar-collapse" id="navbar">
              <form class="navbar-form navbar-right" role="search" id="search">
                <div class="form-group">
                  <input type="text" class="form-control" id="search-query" placeholder="Search" autocomplete="off">
                </div>
              </form>
            </div>
          </div>
        </nav>
        
        <div class="subnav navbar navbar-default">
          <div class="container hide-when-search" id="breadcrumb">
            <ul class="breadcrumb">
              <li></li>
            </ul>
          </div>
        </div>
      </header>
      <div class="container body-content">
        
        <div id="search-results">
          <div class="search-list"></div>
          <div class="sr-items">
            <p><i class="glyphicon glyphicon-refresh index-loading"></i></p>
          </div>
          <ul id="pagination"></ul>
        </div>
      </div>
      <div role="main" class="container body-content hide-when-search">
        <div class="article row grid">
          <div class="col-md-10">
            <article class="content wrap" id="_content" data-uid="PrepareEgressDestinations1-0">
<h1 id="prepare-egress-destinations" sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="5" sourceendlinenumber="5">Prepare egress destinations</h1>

<p sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="7" sourceendlinenumber="7">OCS and PI Server destinations may require additional configuration to receive OMF messages. </p>
<h2 id="ocs" sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="9" sourceendlinenumber="9">OCS</h2>
<p sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="11" sourceendlinenumber="11">To prepare OCS to receive OMF messages from EDS, create an OMF connection in OCS. Creating an OMF connection results in an available OMF endpoint that can be used by the EDS egress mechanism. Complete the following steps to create an OMF connection:</p>
<ol sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="13" sourceendlinenumber="20">
<li sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="13" sourceendlinenumber="15"><p sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="13" sourceendlinenumber="13">Create a <strong>Client</strong>.</p>
<p sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="15" sourceendlinenumber="15">The <em>Client Id</em> and <em>Client Secret</em> will be used for the corresponding properties in the egress configuration.</p>
</li>
<li sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="17" sourceendlinenumber="20"><p sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="17" sourceendlinenumber="17">Create an <strong>OMF</strong> type <strong>Connection</strong>.</p>
<p sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="19" sourceendlinenumber="20">The connection should link the created client to an existing <a href="https://ocs-docs.osisoft.com/Documentation/Management/Account_Namespace_1.html" data-raw-source="[namespace](https://ocs-docs.osisoft.com/Documentation/Management/Account_Namespace_1.html)" sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="19" sourceendlinenumber="19">namespace</a> where the data will be stored.
The <strong>OMF Endpoint</strong> URL for the connection will be used as the egress configuration <em>Endpoint</em> property.</p>
</li>
</ol>
<h2 id="pi-server" sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="22" sourceendlinenumber="22">PI Server</h2>
<p sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="24" sourceendlinenumber="24">To prepare a PI Server to receive OMF messages from EDS, a PI Web API OMF endpoint must be available. Complete the following steps:</p>
<ol sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="26" sourceendlinenumber="31">
<li sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="26" sourceendlinenumber="28">Install PI Web API and enable the <strong>OSIsoft Message Format (OMF) Services</strong> feature.<ul sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="27" sourceendlinenumber="28">
<li sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="27" sourceendlinenumber="27">During configuration, choose an AF database and PI Data Archive where metadata and data will be stored.</li>
<li sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="28" sourceendlinenumber="28">The account used in an egress configuration needs permissions to create AF elements, element templates, and PI points.</li>
</ul>
</li>
<li sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="29" sourceendlinenumber="31"><p sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="29" sourceendlinenumber="29">Configure PI Web API to use <em>Basic</em> authentication.</p>
<p sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="31" sourceendlinenumber="31">For complete steps, as well as best practices and recommendations, see the <a href="https://livelibrary.osisoft.com/LiveLibrary/web/pub.xql?c=t&amp;action=home&amp;pub=web-api-v12&amp;lang=en#addHistory=true&amp;filename=GUID-D49D9A09-B47E-4FF7-A9D3-B7C1FEA5E681.xml&amp;docid=GUID-D807EF71-7F37-43DB-A357-EF03CCD001F1&amp;inner_id=&amp;tid=&amp;query=&amp;scope=&amp;resource=&amp;toc=false&amp;eventType=lcContent.loadDocGUID-D807EF71-7F37-43DB-A357-EF03CCD001F1" data-raw-source="[PI Web API User Guide](https://livelibrary.osisoft.com/LiveLibrary/web/pub.xql?c=t&amp;action=home&amp;pub=web-api-v12&amp;lang=en#addHistory=true&amp;filename=GUID-D49D9A09-B47E-4FF7-A9D3-B7C1FEA5E681.xml&amp;docid=GUID-D807EF71-7F37-43DB-A357-EF03CCD001F1&amp;inner_id=&amp;tid=&amp;query=&amp;scope=&amp;resource=&amp;toc=false&amp;eventType=lcContent.loadDocGUID-D807EF71-7F37-43DB-A357-EF03CCD001F1)" sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="31" sourceendlinenumber="31">PI Web API User Guide</a> on Live Library.</p>
</li>
</ol>
<p sourcefile="V1.0/Egress/Prepare egress destinations_1-0.md" sourcestartlinenumber="33" sourceendlinenumber="33"><strong>Note:</strong>  The certificate used by PI Web API must be trusted by the device running EDS, otherwise the egress configuration <em>ValidateEndpointCertificate</em> property needs to be set to false (this can be the case with a <strong>self-signed certificate</strong> but should only be used for testing purposes).</p>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                </ul>
              </div>
              <nav class="bs-docs-sidebar hidden-print hidden-xs hidden-sm affix" id="affix">
              <!-- <p><a class="back-to-top" href="#top">Back to top</a><p> -->
              </nav>
            </div>
          </div>
        </div>
      </div>
      
      <footer>
        <div class="grad-bottom"></div>
        <div class="footer">
          <div class="container">
            <span class="pull-right">
              <a href="#top">Back to top</a>
            </span>
            
            <span>Generated by <strong>DocFX</strong></span>
          </div>
        </div>
      </footer>
    </div>
    
    <script type="text/javascript" src="../../styles/docfx.vendor.js"></script>
    <script type="text/javascript" src="../../styles/docfx.js"></script>
    <script type="text/javascript" src="../../styles/main.js"></script>
  </body>
</html>