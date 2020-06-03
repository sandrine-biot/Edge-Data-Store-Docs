<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>SDS reference </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="SDS reference ">
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
            <article class="content wrap" id="_content" data-uid="sdsOverview1-0">
<h1 id="sds-reference" sourcefile="V1.0/SDS/SequentialDataStore_1-0.md" sourcestartlinenumber="5" sourceendlinenumber="5">SDS reference</h1>

<p sourcefile="V1.0/SDS/SequentialDataStore_1-0.md" sourcestartlinenumber="7" sourceendlinenumber="7">Edge Data Store includes the Sequential Data Store (SDS) REST APIs for reading and writing data stored locally on the device where the Edge Data Store is running. SDS is the same technology used in OCS for storing data, so the usage of the REST APIs is very similar to OCS for reading and writing data.</p>
<p sourcefile="V1.0/SDS/SequentialDataStore_1-0.md" sourcestartlinenumber="9" sourceendlinenumber="9">All data from all sources on the Edge Data Store (Modbus TCP, OPC UA, OMF, SDS) can be read using the SDS REST APIs on the local device, in the default tenant and the default namespace. In addition, the default tenant has a diagnostics namespace where diagnostic data are written by the Edge Data Store and installed components that can be read to monitor the health of a running system using the SDS REST APIs.</p>
<p sourcefile="V1.0/SDS/SequentialDataStore_1-0.md" sourcestartlinenumber="11" sourceendlinenumber="11">The SDS instance running in EDS is an advanced storage engine that is also used in OCS. While it works very well for storing OMF compatible data in EDS, it can also be used for advanced scenarios where data stored in SDS cannot be converted to OMF. All data egress from EDS to both OCS and the PI System uses OMF, so for streams that will be egressed to the PI System or OCS, it is recommended that they have only a single time-based index. Multiple values are supported in a single stream, but for successful egress there is a limitation of a single time-based index only.</p>
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