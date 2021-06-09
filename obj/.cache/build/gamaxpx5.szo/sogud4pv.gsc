<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Command line quick start - Windows </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Command line quick start - Windows ">
    <meta name="generator" content="docfx 2.50.0.0">
    
    <link rel="shortcut icon" href="../../favicon.ico">
    <link rel="stylesheet" href="../../styles/docfx.vendor.css">
    <link rel="stylesheet" href="../../styles/docfx.css">
    <link rel="stylesheet" href="../../styles/main.css">
    <meta property="docfx:navrel" content="../../toc.html">
    <meta property="docfx:tocrel" content="../toc.html">
    
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
        
        <div class="sidenav hide-when-search">
          <a class="btn toc-toggle collapse" data-toggle="collapse" href="#sidetoggle" aria-expanded="false" aria-controls="sidetoggle">Show / Hide Table of Contents</a>
          <div class="sidetoggle collapse" id="sidetoggle">
            <div id="sidetoc"></div>
          </div>
        </div>
        <div class="article row grid-right">
          <div class="col-md-10">
            <article class="content wrap" id="_content" data-uid="commandLineWindowsQuickStart">
<h1 id="command-line-quick-start---windows" sourcefile="V1/Overview/CommandLineQuickStartWindows.md" sourcestartlinenumber="5" sourceendlinenumber="5">Command line quick start - Windows</h1>

<p sourcefile="V1/Overview/CommandLineQuickStartWindows.md" sourcestartlinenumber="7" sourceendlinenumber="7">This topic provides quick start instructions for using EdgeCmd in the Windows environment. You can utilize the edgecmd.exe command line tool to configure Edge Data Store, in addition to curl commands and REST calls. </p>
<p sourcefile="V1/Overview/CommandLineQuickStartWindows.md" sourcestartlinenumber="9" sourceendlinenumber="9">You can install EdgeCmd from a Windows command prompt. Complete the following to access EdgeCmd on Windows:</p>
<p sourcefile="V1/Overview/CommandLineQuickStartWindows.md" sourcestartlinenumber="12" sourceendlinenumber="12">Complete the following to access EdgeCmd on Windows:</p>
<ol sourcefile="V1/Overview/CommandLineQuickStartWindows.md" sourcestartlinenumber="14" sourceendlinenumber="48">
<li sourcefile="V1/Overview/CommandLineQuickStartWindows.md" sourcestartlinenumber="14" sourceendlinenumber="14">Open a command prompt.</li>
<li sourcefile="V1/Overview/CommandLineQuickStartWindows.md" sourcestartlinenumber="15" sourceendlinenumber="19"><p sourcefile="V1/Overview/CommandLineQuickStartWindows.md" sourcestartlinenumber="15" sourceendlinenumber="15">Navigate to the directory where Edge Data Store is installed. This is usually in the following location:</p>
<pre sourcefile="V1/Overview/CommandLineQuickStartWindows.md" sourcestartlinenumber="17" sourceendlinenumber="19"><code class="lang-cmd">C:\Program Files\OSIsoft\EdgeDataStore\
</code></pre></li>
<li sourcefile="V1/Overview/CommandLineQuickStartWindows.md" sourcestartlinenumber="21" sourceendlinenumber="48"><p sourcefile="V1/Overview/CommandLineQuickStartWindows.md" sourcestartlinenumber="21" sourceendlinenumber="21">Do not copy or delete any files in that directory. Instead, use the full path from a different directory to invoke the tool:</p>
<pre sourcefile="V1/Overview/CommandLineQuickStartWindows.md" sourcestartlinenumber="23" sourceendlinenumber="25"><code class="lang-cmd">C:\Users\John&gt;&quot;C:\Program Files\OSIsoft\EdgeDataStore\edgecmd.exe&quot; Help
</code></pre><p sourcefile="V1/Overview/CommandLineQuickStartWindows.md" sourcestartlinenumber="26" sourceendlinenumber="26">The EdgeCmd utility launches, displaying the following introductory material and a command prompt at the end:</p>
<pre sourcefile="V1/Overview/CommandLineQuickStartWindows.md" sourcestartlinenumber="28" sourceendlinenumber="48"><code>************************************************************************************************************************
  Welcome to OSIsoft Edge Data Store configuration utility. Utility version: 1.0.0.148

************************************************************************************************************************
---------------------------------------------------------------------------------------------------------
            Command-line options =&gt; &#39;Configuration&#39;, &#39;Help&#39;
---------------------------------------------------------------------------------------------------------
Please enter ID of a component you would like to configure or to get component specific help output.
Example:
.\edgecmd.exe Help ComponentId
.\edgecmd.exe Configuration ComponentId

To get set of components registered to the Edge Data Store please run: .\edgecmd.exe Configuration System Components

To configure the system, please use &#39;System&#39; as the ComponentId.
Example of getting System help output: .\edgecmd.exe Help System
Example of configuring System Logging level: .\edgecmd.exe Configuration System logging LogLevel=Warning

C:\Users\John&gt;
</code></pre></li>
</ol>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/osisoft/Edge-Data-Store-Docs/blob/master/V1/Overview/CommandLineQuickStartWindows.md/#L1" class="contribution-link">Improve this Doc</a>
                  </li>
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
