<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>System-level logging configuration </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="System-level logging configuration ">
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
            <article class="content wrap" id="_content" data-uid="systemloggingConfiguration">
<h1 id="system-level-logging-configuration" sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="5" sourceendlinenumber="5">System-level logging configuration</h1>

<p sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="7" sourceendlinenumber="7">Edge Data Store writes daily log messages to flat text files in the following locations:</p>
<p sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="9" sourceendlinenumber="9">• Windows: <em>%ProgramData%/OSIsoft/EdgeDataStore/Logs</em></p>
<p sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="11" sourceendlinenumber="11">• Linux: <em>/usr/share/OSIsoft/EdgeDataStore/Logs</em></p>
<p sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="13" sourceendlinenumber="13">Each message in the log displays the message severity level, timestamp, and the message itself.</p>
<h2 id="default-logging-configuration-and-schema" sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="15" sourceendlinenumber="15">Default logging configuration and schema</h2>
<p sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="17" sourceendlinenumber="18">By default, logging captures Information, Warning, Error, and Critical messages in the message logs.
The following logging configuration is the default for a component on install:</p>
<pre sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="19" sourceendlinenumber="25"><code class="lang-json">{
  &quot;logLevel&quot;: &quot;Information&quot;,
  &quot;logFileSizeLimitBytes&quot;: 34636833,
  &quot;logFileCountLimit&quot;: 31   
}
</code></pre><p sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="27" sourceendlinenumber="28">The schema file specifies how to formally describe the configuration parameters for message logging. 
It is located in:</p>
<p sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="30" sourceendlinenumber="30">• Windows: <em>%ProgramFiles%/OSIsoft/EdgeDataStore/Schema</em></p>
<p sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="32" sourceendlinenumber="32">• Linux: <em>/opt/OSIsoft/EdgeDataStore/Schema</em></p>
<h2 id="change-logging-configuration" sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="34" sourceendlinenumber="34">Change logging configuration</h2>
<p sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="36" sourceendlinenumber="36">Complete the following to change the logging configuration:</p>
<ol sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="38" sourceendlinenumber="61">
<li sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="38" sourceendlinenumber="46"><p sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="38" sourceendlinenumber="38">Update the parameters of the message logging configuration JSON file that you want as needed. For example, the <em>Component_Logging.json</em> file:</p>
<pre sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="40" sourceendlinenumber="46"><code class="lang-json">{
  &quot;logLevel&quot;: &quot;Warning&quot;,
  &quot;logFileSizeLimitBytes&quot;: 16777216,
  &quot;logFileCountLimit&quot;: 30   
}
</code></pre></li>
<li sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="47" sourceendlinenumber="47"><p sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="47" sourceendlinenumber="47">Save the file.</p>
</li>
<li sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="49" sourceendlinenumber="61"><p sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="49" sourceendlinenumber="49">Use any tool capable of making HTTP requests to execute a PUT command with the contents of that file to the following endpoint: <code>http://localhost:5590/api/v1/configuration/&lt;ComponentId&gt;/Logging</code>.</p>
<p sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="51" sourceendlinenumber="51"> <strong>Note:</strong>  Replace <code>&lt;ComponentId&gt;</code> with the ComponentId of the adapter instance or Storage component, for example <em>OpcUa1</em>.</p>
<p sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="53" sourceendlinenumber="53">   Example using curl (run this command from the same directory where the file is located):</p>
<pre sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="55" sourceendlinenumber="57"><code class="lang-bash">curl -i -d &quot;@Component_Logging.json&quot; -H &quot;Content-Type: application/json&quot; -X PUT http://localhost:5590/api/v1/configuration/&lt;ComponentId&gt;/Logging
</code></pre><p sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="59" sourceendlinenumber="59"> On successful execution, the log level change takes effect immediately during runtime. The other configurations (log file size and file count) get updated after Edge Data Store is restarted. </p>
<p sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="61" sourceendlinenumber="61"> <strong>Note:</strong>  Any parameter not specified in the updated configuration file will revert to the default schema value.</p>
</li>
</ol>
<h3 id="log-levels" sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="63" sourceendlinenumber="63">Log levels</h3>
<p sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="65" sourceendlinenumber="65">The logLevel sets the minimum severity for messages to be included in the logs. Messages with a severity below the level set are not included. The log levels in their increasing order of severity are as follows: Trace, Debug, Information, Warning, Error, Critical.</p>
<p sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="67" sourceendlinenumber="67">Table: General guidelines for setting the log level.</p>
<table sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="69" sourceendlinenumber="76">
<thead>
<tr>
<th><strong>Level</strong></th>
<th><strong>Description</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td>Trace</td>
<td>Logs that contain the most detailed messages. These messages may contain sensitive application data like actual received values and should not be enabled in a production environment.</td>
</tr>
<tr>
<td>Debug</td>
<td>Logs that can be used to troubleshoot data flow issues by recording metrics and detailed flow related information.</td>
</tr>
<tr>
<td>Information</td>
<td>Logs that track the general flow of the application. Any non-repetitive general information (like version information relating to the software at startup, what external services are being used, data source connection string, number of measurements, egress URL, change of state “Starting”, “Stopping”, or configuration) can be useful for diagnosing potential application errors.</td>
</tr>
<tr>
<td>Warning</td>
<td>Logs that highlight an abnormal or unexpected event in the application flow, but does not otherwise cause the application execution to stop. Warning messages can indicate an unconfigured data source state, that a communication with backup failover instance has been lost, an insecure communication channel in use, or any other event that could require attention, but that does not impact data flow.</td>
</tr>
<tr>
<td>Error</td>
<td>Logs that highlight when the current flow of execution is stopped due to a failure. These should indicate a failure in the current activity, not an application-wide failure. This can indicate an invalid configuration, unavailable external endpoint, internal flow error, and so on.</td>
</tr>
<tr>
<td>Critical</td>
<td>Logs that describe an unrecoverable application or system crash, or a catastrophic failure that requires immediate attention. This can indicate application wide failures like beta timeout expired, unable to start self-hosted endpoint, unable to access vital resource (for example, Data Protection key file), and so on.</td>
</tr>
</tbody>
</table>
<h2 id="parameters-for-logging" sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="78" sourceendlinenumber="78">Parameters for logging</h2>
<p sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="80" sourceendlinenumber="80">The following parameters are available for configuring logging.</p>
<table sourcefile="V1/Logging/SystemLogging.md" sourcestartlinenumber="82" sourceendlinenumber="86">
<thead>
<tr>
<th>Parameter</th>
<th>Required</th>
<th>Type</th>
<th>Nullable</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>LogFileCountLimit</strong></td>
<td>Optional</td>
<td><code>integer</code></td>
<td>Yes</td>
<td>The maximum number of log files that the service will create for the component. It must be a positive integer.</td>
</tr>
<tr>
<td><strong>LogFileSizeLimitBytes</strong></td>
<td>Optional</td>
<td><code>integer</code></td>
<td>Yes</td>
<td>The maximum size in bytes of log files that the service will create for the component. It must be a positive integer.</td>
</tr>
<tr>
<td><strong>LogLevel</strong></td>
<td>Optional</td>
<td>reference</td>
<td>No</td>
<td>The log level settings that you want. The following options are available: <br> <strong>Verbose</strong> - Captures all messages: Verbose, Debug, Information, Warning and Error <br> <strong>Debug</strong> - Captures most messages: Debug, Information, Warning and Error <br> <strong>Information</strong> - Captures most messages: Information, Warning and Error <br> <strong>Warning</strong> - Captures only Warning and Error messages <br> <strong>Error</strong> - Captures Error messages only</td>
</tr>
</tbody>
</table>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/osisoft/Edge-Data-Store-Docs/blob/master/V1/Logging/SystemLogging.md/#L1" class="contribution-link">Improve this Doc</a>
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