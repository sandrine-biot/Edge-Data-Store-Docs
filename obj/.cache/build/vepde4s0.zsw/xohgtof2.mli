<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Sample OPC UA data source configuration </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Sample OPC UA data source configuration ">
    <meta name="generator" content="docfx 2.52.0.0">
    
    <link rel="shortcut icon" href="../../../favicon.ico">
    <link rel="stylesheet" href="../../../styles/docfx.vendor.css">
    <link rel="stylesheet" href="../../../styles/docfx.css">
    <link rel="stylesheet" href="../../../styles/main.css">
    <meta property="docfx:navrel" content="../../../toc.html">
    <meta property="docfx:tocrel" content="../../../toc.html">
    
    <meta property="docfx:rel" content="../../../">
    
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
              
              <a class="navbar-brand" href="../../../index.html">
                <img id="logo" class="svg" src="../../../logo.svg" alt="">
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
            <article class="content wrap" id="_content" data-uid="opcUa_DataSource_Schema">
<h1 id="sample-opc-ua-data-source-configuration" sourcefile="V1.0/Configuration/Schemas/OpcUa_DataSource_schema.md" sourcestartlinenumber="6" sourceendlinenumber="6">Sample OPC UA data source configuration</h1>

<p sourcefile="V1.0/Configuration/Schemas/OpcUa_DataSource_schema.md" sourcestartlinenumber="8" sourceendlinenumber="8">The OPC UA data source configuration schema specifies how to formally describe the data source parameters for OPC UA.</p>
<pre sourcefile="V1.0/Configuration/Schemas/OpcUa_DataSource_schema.md" sourcestartlinenumber="10" sourceendlinenumber="20"><code class="lang-json">{
    &quot;EndpointUrl&quot;: &quot;opc.tcp://&lt;ip address&gt;:&lt;port - often 62541&gt;/&lt;server path&gt;&quot;,
    &quot;UseSecureConnection&quot;: false,
    &quot;UserName&quot;: null,
    &quot;Password&quot;: null,
    &quot;RootNodeIds&quot;: null,
    &quot;IncomingTimestamp&quot;: &quot;Source&quot;,
    &quot;StreamIdPrefix&quot;: &quot;OpcUa&quot;
}
</code></pre><h1 id="opc-ua-data-source-configuration-properties" sourcefile="V1.0/Configuration/Schemas/OpcUa_DataSource_schema.md" sourcestartlinenumber="22" sourceendlinenumber="22">OPC UA data source configuration properties</h1>
<table sourcefile="V1.0/Configuration/Schemas/OpcUa_DataSource_schema.md" sourcestartlinenumber="24" sourceendlinenumber="32">
<thead>
<tr>
<th>Property</th>
<th>Type</th>
<th>Required</th>
<th>Nullable</th>
<th>Defined by</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="#endpointurl" data-raw-source="[EndpointUrl](#endpointurl)" sourcefile="V1.0/Configuration/Schemas/OpcUa_DataSource_schema.md" sourcestartlinenumber="26" sourceendlinenumber="26">EndpointUrl</a></td>
<td><code>string</code></td>
<td>Optional</td>
<td>Yes</td>
<td>DataSourceConfiguration (this schema)</td>
</tr>
<tr>
<td><a href="#incomingtimestamp" data-raw-source="[IncomingTimestamp](#incomingtimestamp)" sourcefile="V1.0/Configuration/Schemas/OpcUa_DataSource_schema.md" sourcestartlinenumber="27" sourceendlinenumber="27">IncomingTimestamp</a></td>
<td>reference</td>
<td>Optional</td>
<td>No</td>
<td>DataSourceConfiguration (this schema)</td>
</tr>
<tr>
<td><a href="#password" data-raw-source="[Password](#password)" sourcefile="V1.0/Configuration/Schemas/OpcUa_DataSource_schema.md" sourcestartlinenumber="28" sourceendlinenumber="28">Password</a></td>
<td><code>string</code></td>
<td>Optional</td>
<td>Yes</td>
<td>DataSourceConfiguration (this schema)</td>
</tr>
<tr>
<td><a href="#rootnodeids" data-raw-source="[RootNodeIds](#rootnodeids)" sourcefile="V1.0/Configuration/Schemas/OpcUa_DataSource_schema.md" sourcestartlinenumber="29" sourceendlinenumber="29">RootNodeIds</a></td>
<td><code>string</code></td>
<td>Optional</td>
<td>Yes</td>
<td>DataSourceConfiguration (this schema)</td>
</tr>
<tr>
<td><a href="#streamidprefix" data-raw-source="[StreamIdPrefix](#streamidprefix)" sourcefile="V1.0/Configuration/Schemas/OpcUa_DataSource_schema.md" sourcestartlinenumber="30" sourceendlinenumber="30">StreamIdPrefix</a></td>
<td><code>string</code></td>
<td>Optional</td>
<td>Yes</td>
<td>DataSourceConfiguration (this schema)</td>
</tr>
<tr>
<td><a href="#usesecureconnection" data-raw-source="[UseSecureConnection](#usesecureconnection)" sourcefile="V1.0/Configuration/Schemas/OpcUa_DataSource_schema.md" sourcestartlinenumber="31" sourceendlinenumber="31">UseSecureConnection</a></td>
<td><code>boolean</code></td>
<td>Optional</td>
<td>No</td>
<td>DataSourceConfiguration (this schema)</td>
</tr>
<tr>
<td><a href="#username" data-raw-source="[UserName](#username)" sourcefile="V1.0/Configuration/Schemas/OpcUa_DataSource_schema.md" sourcestartlinenumber="32" sourceendlinenumber="32">UserName</a></td>
<td><code>string</code></td>
<td>Optional</td>
<td>Yes</td>
<td>DataSourceConfiguration (this schema)</td>
</tr>
</tbody>
</table>
<p sourcefile="V1.0/Configuration/Schemas/OpcUa_DataSource_schema.md" sourcestartlinenumber="35" sourceendlinenumber="35"><strong>Note:</strong> All of the following <em>requirements</em> need to be fulfilled.</p>
<h2 id="requirement-1" sourcefile="V1.0/Configuration/Schemas/OpcUa_DataSource_schema.md" sourcestartlinenumber="37" sourceendlinenumber="37">Requirement 1</h2>
<ul sourcefile="V1.0/Configuration/Schemas/OpcUa_DataSource_schema.md" sourcestartlinenumber="39" sourceendlinenumber="39">
<li sourcefile="V1.0/Configuration/Schemas/OpcUa_DataSource_schema.md" sourcestartlinenumber="39" sourceendlinenumber="39"><a href="" data-raw-source="[]()" sourcefile="V1.0/Configuration/Schemas/OpcUa_DataSource_schema.md" sourcestartlinenumber="39" sourceendlinenumber="39"></a> – <code>#/definitions/EdgeConfigurationBase</code></li>
</ul>
<h2 id="requirement-2" sourcefile="V1.0/Configuration/Schemas/OpcUa_DataSource_schema.md" sourcestartlinenumber="41" sourceendlinenumber="41">Requirement 2</h2>
<p sourcefile="V1.0/Configuration/Schemas/OpcUa_DataSource_schema.md" sourcestartlinenumber="43" sourceendlinenumber="43"><code>object</code> with following properties:</p>
<table sourcefile="V1.0/Configuration/Schemas/OpcUa_DataSource_schema.md" sourcestartlinenumber="45" sourceendlinenumber="53">
<thead>
<tr>
<th>Property</th>
<th>Type</th>
<th>Required</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>EndpointUrl</code></td>
<td>string</td>
<td>Optional</td>
</tr>
<tr>
<td><code>IncomingTimestamp</code></td>
<td></td>
<td>Optional</td>
</tr>
<tr>
<td><code>Password</code></td>
<td>string</td>
<td>Optional</td>
</tr>
<tr>
<td><code>RootNodeIds</code></td>
<td>string</td>
<td>Optional</td>
</tr>
<tr>
<td><code>StreamIdPrefix</code></td>
<td>string</td>
<td>Optional</td>
</tr>
<tr>
<td><code>UseSecureConnection</code></td>
<td>boolean</td>
<td>Optional</td>
</tr>
<tr>
<td><code>UserName</code></td>
<td>string</td>
<td>Optional</td>
</tr>
</tbody>
</table>
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
    
    <script type="text/javascript" src="../../../styles/docfx.vendor.js"></script>
    <script type="text/javascript" src="../../../styles/docfx.js"></script>
    <script type="text/javascript" src="../../../styles/main.js"></script>
  </body>
</html>