<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Delete configuration </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Delete configuration ">
    <meta name="generator" content="docfx 2.43.2.0">
    
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
              <a class="navbar-brand" href="../../V1/index.html" width="46">
                <img id="logo" src="../../V1/images/atlas_icon.png" height="46" width="46" alt="OSIsoft Edge Data Store"> 
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
            <article class="content wrap" id="_content" data-uid="DeleteConfiguration1-0">
<h1 id="delete-configuration" sourcefile="V1/CommandLine/Delete configuration_1-0.md" sourcestartlinenumber="5" sourceendlinenumber="5">Delete configuration</h1>

<p sourcefile="V1/CommandLine/Delete configuration_1-0.md" sourcestartlinenumber="6" sourceendlinenumber="6">Use the EdgeCMD utility to delete configuration entries for Edge Data Store.</p>
<h2 id="delete-configuration-entry" sourcefile="V1/CommandLine/Delete configuration_1-0.md" sourcestartlinenumber="8" sourceendlinenumber="8">Delete configuration entry</h2>
<p sourcefile="V1/CommandLine/Delete configuration_1-0.md" sourcestartlinenumber="10" sourceendlinenumber="10">Complete the following to delete a configuration entry from a collection configuration in Edge Data Store. For example, you can delete a single health endpoint of the &#39;HealthEndpoints&#39; facet within the &#39;System&#39; component.</p>
<ol sourcefile="V1/CommandLine/Delete configuration_1-0.md" sourcestartlinenumber="12" sourceendlinenumber="23">
<li sourcefile="V1/CommandLine/Delete configuration_1-0.md" sourcestartlinenumber="12" sourceendlinenumber="12">Access the EdgeCmd utility through a command line tool.</li>
<li sourcefile="V1/CommandLine/Delete configuration_1-0.md" sourcestartlinenumber="13" sourceendlinenumber="23"><p sourcefile="V1/CommandLine/Delete configuration_1-0.md" sourcestartlinenumber="13" sourceendlinenumber="13">Type the following command, replacing the <code>componentId</code> and <code>facetName</code> followed by the ID of the entry to be removed, and press Enter.</p>
<pre sourcefile="V1/CommandLine/Delete configuration_1-0.md" sourcestartlinenumber="15" sourceendlinenumber="17"><code class="lang-bash">edgecmd Configuration `componentId` `facetName` delete
</code></pre><p sourcefile="V1/CommandLine/Delete configuration_1-0.md" sourcestartlinenumber="19" sourceendlinenumber="19"><strong>Example:</strong> Delete endpoint_1 of the HealthEndpoints facet from the System:</p>
<pre sourcefile="V1/CommandLine/Delete configuration_1-0.md" sourcestartlinenumber="21" sourceendlinenumber="23"><code class="lang-bash">edgecmd Configuration System HealthEndpoints Id=endpoint_1 delete
</code></pre></li>
</ol>
<h2 id="delete-configuration-file" sourcefile="V1/CommandLine/Delete configuration_1-0.md" sourcestartlinenumber="25" sourceendlinenumber="25">Delete configuration file</h2>
<p sourcefile="V1/CommandLine/Delete configuration_1-0.md" sourcestartlinenumber="27" sourceendlinenumber="27">Complete the following to delete a configuration file from Edge Data Store. For example, you can delete the configuration file of the &#39;HealthEndpoints&#39; facet within the &#39;System&#39; component.</p>
<ol sourcefile="V1/CommandLine/Delete configuration_1-0.md" sourcestartlinenumber="29" sourceendlinenumber="40">
<li sourcefile="V1/CommandLine/Delete configuration_1-0.md" sourcestartlinenumber="29" sourceendlinenumber="29">Access the EdgeCmd utility through a command line tool. </li>
<li sourcefile="V1/CommandLine/Delete configuration_1-0.md" sourcestartlinenumber="30" sourceendlinenumber="40"><p sourcefile="V1/CommandLine/Delete configuration_1-0.md" sourcestartlinenumber="30" sourceendlinenumber="30">Type the following command, replacing the <code>componentId</code> and <code>facetName</code> to delete, and press Enter.</p>
<pre sourcefile="V1/CommandLine/Delete configuration_1-0.md" sourcestartlinenumber="32" sourceendlinenumber="34"><code class="lang-bash">edgecmd Configuration `componentId` `facetName` delete
</code></pre><p sourcefile="V1/CommandLine/Delete configuration_1-0.md" sourcestartlinenumber="36" sourceendlinenumber="36"><strong>Example:</strong> Delete the HealthEndpoints facet configuration file:</p>
<pre sourcefile="V1/CommandLine/Delete configuration_1-0.md" sourcestartlinenumber="38" sourceendlinenumber="40"><code class="lang-bash">edgecmd Configuration System HealthEndpoints delete
</code></pre></li>
</ol>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/osisoft/Edge-Data-Store-Docs/blob/master/V1/CommandLine/Delete configuration_1-0.md/#L1" class="contribution-link">Improve this Doc</a>
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
            
            <span>© 2020 - OSIsoft, LLC.</span>
          </div>
        </div>
      </footer>
    </div>
    
    <script type="text/javascript" src="../../styles/docfx.vendor.js"></script>
    <script type="text/javascript" src="../../styles/docfx.js"></script>
    <script type="text/javascript" src="../../styles/main.js"></script>
  </body>
</html>