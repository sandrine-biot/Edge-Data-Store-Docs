<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Data selection configuration </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Data selection configuration ">
    <meta name="generator" content="docfx 2.52.0.0">
    
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
            <article class="content wrap" id="_content" data-uid="ModbusTCPDataSelectionConfiguration">
<h1 id="data-selection-configuration" sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="5" sourceendlinenumber="5">Data selection configuration</h1>

<p sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="7" sourceendlinenumber="7">Once a data source is configured for a Modbus TCP instance, create a data selection configuration file to specify the data for the Modbus TCP EDS adapter instance to collect from the data source.</p>
<h2 id="configure-modbus-tcp-data-selection" sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="9" sourceendlinenumber="9">Configure Modbus TCP data selection</h2>
<p sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="11" sourceendlinenumber="11">Complete the following to configure Modbus TCP data selection:</p>
<ol sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="13" sourceendlinenumber="17">
<li sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="13" sourceendlinenumber="14">Using any text editor, create a file that contains a Modbus TCP data selection in JSON form.<ul sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="14" sourceendlinenumber="14">
<li sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="14" sourceendlinenumber="14">For content structure, see <a href="#modbus-tcp-data-selection-examples" data-raw-source="[Modbus TCP data selection examples](#modbus-tcp-data-selection-examples)" sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="14" sourceendlinenumber="14">Modbus TCP data selection examples</a>. </li>
</ul>
</li>
<li sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="15" sourceendlinenumber="15">Update the parameters as needed. For a table of all available parameters, see <a href="#parameters-for-modbus-tcp-data-selection" data-raw-source="[Parameters for Modbus TCP data selection](#parameters-for-modbus-tcp-data-selection)" sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="15" sourceendlinenumber="15">Parameters for Modbus TCP data selection</a>. </li>
<li sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="16" sourceendlinenumber="16">Save the file to the device with EDS installed with the name <em>DataSelection.config.json</em>.</li>
<li sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="17" sourceendlinenumber="17">Use any tool capable of making HTTP requests to execute a POST command with the contents of that file to the following endpoint: <code>http://localhost:&lt;port_number&gt;/api/v1/configuration/&lt;EDS adapterId&gt;/DataSelection/</code>.</li>
</ol>
<p sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="19" sourceendlinenumber="19">The following example shows the HTTPS request using curl, which must be run from the same directory where the file is located, and uses the adapter instance created during installation, which is OpcUa1:</p>
<pre sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="21" sourceendlinenumber="23"><code>```bash
curl -v -d &quot;@DataSelection.config.json&quot; -H &quot;Content-Type: application/json&quot; &quot;http://localhost:5590/api/v1/configuration/OpcUa1/DataSelection&quot;
```
</code></pre><p sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="25" sourceendlinenumber="25">To see the streams that have been created in EDS storage for the data specified in the configuration, run the following curl script:</p>
<pre sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="27" sourceendlinenumber="29"><code class="lang-bash">curl http://localhost:5590/api/v1/tenants/default/namespaces/default/streams/
</code></pre><h2 id="parameters-for-modbus-tcp-data-selection" sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="31" sourceendlinenumber="31">Parameters for Modbus TCP data selection</h2>
<p sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="33" sourceendlinenumber="33">The following parameters are available for configuring Modbus TCP data selection.</p>
<table sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="35" sourceendlinenumber="48">
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
<td><strong>Id</strong></td>
<td>Optional</td>
<td><code>string</code></td>
<td>Yes</td>
<td>Used to update an existing measurement. The ID automatically updates when there are changes to the measurement and will follow the format of <code>&lt;UnitId</code>&gt;.<code>&lt;RegisterType</code>&gt;.<code>&lt;RegisterOffset</code>&gt;.</td>
</tr>
<tr>
<td><strong>Selected</strong></td>
<td>Optional</td>
<td><code>Boolean</code></td>
<td>No</td>
<td>Used to select or clear a measurement. To select an item, set to true. To remove an item, leave the field empty or set to false.  If not configured, the default value is true.</td>
</tr>
<tr>
<td><strong>Name</strong></td>
<td>Optional</td>
<td><code>string</code></td>
<td>Yes</td>
<td>The optional friendly name of the data item collected from the data source. If not configured, the default value will be the stream ID.</td>
</tr>
<tr>
<td><strong>UnitId</strong></td>
<td>Required</td>
<td>number</td>
<td>No</td>
<td>Modbus TCP slave device unit ID. This must be a value between 0 and 247, inclusively.</td>
</tr>
<tr>
<td><strong>RegisterType</strong></td>
<td>Required</td>
<td>number or <code>string</code></td>
<td>No</td>
<td>Modbus TCP register type. Supported types are Coil, Discrete, Input16, Input32, Holding16 and Holding32.<br><br>Input16 and Holding16 are used to read registers that have a size of 16 bits. For registers that have a size of 32 bits, use the Input32 and Holding32 register types. To represent the types, type the register type ID or the exact name: <br><br>1 or Coil (Read Coil Status)<br>2 or Discrete (Read Discrete Input Status)<br>3 or Holding16 (Read 16-bit Holding Registers)<br>4 or Holding32 (Read 32-bit Holding Registers)<br>6 or Input16 (Read 16-bit Input Registers)<br>7 or Input32 (Read 32-bit Input Registers)</td>
</tr>
<tr>
<td><strong>RegisterOffset</strong></td>
<td>Required</td>
<td>number</td>
<td>No</td>
<td>The 0 relative offset to the starting register for this measurement. For example, if the Holding registers start at base register 40001, the offset to this register is 0. For 40002, the offset to this register is 1.</td>
</tr>
<tr>
<td><strong>DataTypeCode</strong></td>
<td>Required</td>
<td>number</td>
<td>No</td>
<td>Represents the data type that Modbus TCP EDS adapter will read starting at the register specified by the offset. Supported data types are:<br>1 = Boolean<br>10 = Int16<br>20 = UInt16<br>30 = Int32<br>31 = Int32ByteSwap<br>100 = Float32<br>101 = Float32ByteSwap<br>110 = Float64<br>111 = Float64ByteSwap<br>1001 - 1250 = String <br>2001 - 2250 = StringByteSwap</td>
</tr>
<tr>
<td><strong>ScanRate</strong></td>
<td>Required</td>
<td>number</td>
<td>No</td>
<td>Defines how often this measurement is read from the device in milliseconds. Acceptable values are from 0 to 86400000. If 0 ms is specified, Modbus TCP EDS adapter will scan for data as fast as possible.</td>
</tr>
<tr>
<td><strong>BitMap</strong></td>
<td>Required</td>
<td><code>string</code></td>
<td>Yes</td>
<td>Bitmap used to extract and reorder bits from a word register. The format of the bitmap is uuvvwwxxyyzz, where uu, vv, ww, yy, and zz each refer to a single bit. A leading zero is required if the referenced bit is less than 10. The low-order bit is 01 and high-order bit is either 16 or 32. Up to 16 bits can be referenced for a 16-bit word (data types 10 and 20) and up to 32 bits can be referenced for a 32-bit word (data type 30 and 31). The bitmap 0307120802 will map the second bit of the original word to the first bit of the new word, the eighth bit to the second bit, the twelfth bit to the third bit, and so on. The high-order bits of the new word are padded with zeros if they are not specified.</td>
</tr>
<tr>
<td><strong>ConversionFactor</strong></td>
<td>Required</td>
<td>number</td>
<td>Yes</td>
<td>Used to scale the raw response received from the Modbus TCP device. If this is specified, regardless of the specified data type, the value will be promoted to a float32 (single) when stored. [Result = (Value / Conversion Factor)]</td>
</tr>
<tr>
<td><strong>ConversionOffset</strong></td>
<td>Required</td>
<td>number</td>
<td>Yes</td>
<td>Used to apply an offset to the response received from the Modbus TCP device. If this is specified, regardless of the specified data type, the value will be promoted to a float32 (single) when stored.  [Result = (Value - Conversion Offset)]</td>
</tr>
<tr>
<td><strong>StreamID</strong></td>
<td>Required</td>
<td><code>string</code></td>
<td>Yes</td>
<td>The custom stream ID that will be used to create the streams. If not specified, the Modbus TCP EDS adapter will generate a default stream ID based on the measurement configuration. A properly configured custom stream ID follows these rules:<br><br>Is not case-sensitive.<br>Can contain spaces.<br>Cannot start with two underscores (&quot;__&quot;).<br>Can contain a maximum of 100 characters.<br>Cannot use the following characters: / : ? # [ ] @ ! $ &amp; &#39; ( ) \ * + , ; = % &lt; &gt; &#124;<br>Cannot start or end with a period.<br>Cannot contain consecutive periods.<br>Cannot consist of only periods.</td>
</tr>
</tbody>
</table>
<p sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="50" sourceendlinenumber="50">Each JSON object in the file represents a measurement. Add additional JSON objects in the file for each measurement to collect. Modify the fields in each object to configure the measurement parameters.</p>
<h2 id="modbus-tcp-data-selection-examples" sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="52" sourceendlinenumber="52">Modbus TCP data selection examples</h2>
<p sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="54" sourceendlinenumber="54">The following are examples of valid Modbus TCP data selection configurations.</p>
<p sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="56" sourceendlinenumber="56"><strong>Minimum data selection configuration:</strong></p>
<pre sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="58" sourceendlinenumber="68"><code class="lang-json">[
    {
        &quot;UnitId&quot;: 1,
        &quot;RegisterType&quot;: 3,
        &quot;RegisterOffset&quot;: 122,
        &quot;DataTypeCode&quot;: 20,
        &quot;ScanRate&quot;: 1000,
    }
]
</code></pre><p sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="70" sourceendlinenumber="70"><strong>Maximum data selection configuration:</strong></p>
<pre sourcefile="V1/Modbus/ModbusTCPDataSelectionConfiguration.md" sourcestartlinenumber="72" sourceendlinenumber="88"><code class="lang-json">[
    {
        &quot;Id&quot;: &quot;DataItem1&quot;,
        &quot;Selected&quot;: true,
        &quot;Name&quot;: &quot;MyDataItem&quot;,
        &quot;UnitId&quot;: 1,
        &quot;RegisterType&quot;: 3,
        &quot;RegisterOffset&quot;: 123,
        &quot;DataTypeCode&quot;: 20,
        &quot;ScanRate&quot;: 300,
        &quot;StreamId&quot;: &quot;stream.1&quot;,
        &quot;BitMap&quot;: &quot;020301&quot;,
        &quot;ConversionFactor&quot;: 12.3,
        &quot;ConversionOffset&quot;: 14.5
    }
]
</code></pre></article>
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