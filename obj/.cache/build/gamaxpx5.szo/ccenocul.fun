<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Units of measure </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Units of measure ">
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
            <article class="content wrap" id="_content" data-uid="unitsOfMeasure1-0">
<h1 id="units-of-measure" sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="5" sourceendlinenumber="5">Units of measure</h1>

<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="7" sourceendlinenumber="7">The Sequential Data Store (SDS) provides a collection of built-in units of measure (Uom). These units of measure can be associated with SdsStreams and SdsTypes to provide unit information for stream data that model measurable quantities. If data has unit information associated with it, SDS is able to support unit conversions when retrieving data. For more information, see <a class="xref" href="Reading_Data_1-0.html" data-raw-source="[Reading data](xref:sdsReadingData1-0)" sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="7" sourceendlinenumber="7">Reading data</a>.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="9" sourceendlinenumber="9">Since a unit of measurement (such as meter) defines the magnitude of a quantity (such as Length), SDS represents this through two objects: SdsUom and SdsUomQuantity.</p>
<h2 id="sdsuom" sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="11" sourceendlinenumber="11">SdsUom</h2>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="13" sourceendlinenumber="13">An SdsUom represents a single unit of measure, such as &#39;meter&#39;.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="15" sourceendlinenumber="15">The following table shows the required and optional SdsUom fields.</p>
<table sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="17" sourceendlinenumber="25">
<thead>
<tr>
<th>Property</th>
<th>Type</th>
<th>Optionality</th>
<th>Description</th>
<th>Example</th>
</tr>
</thead>
<tbody>
<tr>
<td>Id</td>
<td>String</td>
<td>Required</td>
<td>Unique identifier for the unit of measure</td>
<td>meters per second</td>
</tr>
<tr>
<td>Abbreviation</td>
<td>String</td>
<td>Optional</td>
<td>Abbreviation for the unit of measure</td>
<td>m/s</td>
</tr>
<tr>
<td>Name</td>
<td>String</td>
<td>Optional</td>
<td>Full name for the unit of measure</td>
<td>Meters per second</td>
</tr>
<tr>
<td>DisplayName</td>
<td>String</td>
<td>Optional</td>
<td>Friendly display name for the unit of measure</td>
<td>meters per second</td>
</tr>
<tr>
<td>QuantityId</td>
<td>String</td>
<td>Required</td>
<td>The identifier for the quantity that this unit of measure quantifies</td>
<td>Velocity</td>
</tr>
<tr>
<td>ConversionFactor</td>
<td>Double</td>
<td>Required</td>
<td>Used for unit conversions.  When a value of this unit is multiplied by the ConversionFactor and then incremented by the ConversionOffset, the value in terms of the base unit of the corresponding quantity is returned.</td>
<td>1.0</td>
</tr>
<tr>
<td>ConversionOffset</td>
<td>Double</td>
<td>Required</td>
<td>Used for unit conversions. See details for ConversionFactor.</td>
<td>0.0</td>
</tr>
</tbody>
</table>
<h2 id="sdsuomquantity" sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="27" sourceendlinenumber="27">SdsUomQuantity</h2>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="29" sourceendlinenumber="29">Represents a single measurable quantity, such as length).</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="31" sourceendlinenumber="31">The following table shows the required and optional SdsUomQuantity fields.</p>
<table sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="33" sourceendlinenumber="38">
<thead>
<tr>
<th>Property</th>
<th>Type</th>
<th>Optionality</th>
<th>Description</th>
<th>Example</th>
</tr>
</thead>
<tbody>
<tr>
<td>Id</td>
<td>String</td>
<td>Required</td>
<td>Unique identifier for the quantity</td>
<td>Velocity</td>
</tr>
<tr>
<td>Name</td>
<td>String</td>
<td>Optional</td>
<td>Full name for the quantity</td>
<td>Velocity</td>
</tr>
<tr>
<td>BaseUom</td>
<td>SdsUom</td>
<td>Required</td>
<td>The base unit of measure for this quantity. All other Uoms measuring this quantity will have ConversionFactors and ConversionOffsets relative to the BaseUom.</td>
<td>SdsUom representing &quot;meters per second&quot;</td>
</tr>
<tr>
<td>Dimensions</td>
<td>short[]</td>
<td>Optional</td>
<td>Reserved for internal use. Represents the seven base SI dimensions: Length, Mass, Time, Electric Current, Thermodynamic Temperature, Amount of Substance, and Luminous Density.</td>
<td>[1,0,-1,0,0,0,0]</td>
</tr>
</tbody>
</table>
<h2 id="supported-quantities" sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="40" sourceendlinenumber="40">Supported quantities</h2>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="42" sourceendlinenumber="42">A list of the supported quantities and their base unit of measures follows. Supported quantities are read-only.</p>
<table sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="44" sourceendlinenumber="79">
<thead>
<tr>
<th>Quantity Id</th>
<th>Base Uom Id</th>
</tr>
</thead>
<tbody>
<tr>
<td>Angular Velocity</td>
<td>radian per second</td>
</tr>
<tr>
<td>Area</td>
<td>square meter</td>
</tr>
<tr>
<td>Computer Storage</td>
<td>byte</td>
</tr>
<tr>
<td>Density</td>
<td>kilogram per cubic meter</td>
</tr>
<tr>
<td>Dynamic Viscosity</td>
<td>pascal second</td>
</tr>
<tr>
<td>Electric Charge</td>
<td>coulomb</td>
</tr>
<tr>
<td>Electric Current</td>
<td>ampere</td>
</tr>
<tr>
<td>Electric Potential</td>
<td>volt</td>
</tr>
<tr>
<td>Electric Resistance</td>
<td>ohm</td>
</tr>
<tr>
<td>Energy</td>
<td>joule</td>
</tr>
<tr>
<td>Entropy and Heat Capacity</td>
<td>joule per kelvin</td>
</tr>
<tr>
<td>Force</td>
<td>newton</td>
</tr>
<tr>
<td>Frequency</td>
<td>hertz</td>
</tr>
<tr>
<td>Length</td>
<td>meter</td>
</tr>
<tr>
<td>Luminous Intensity</td>
<td>candela</td>
</tr>
<tr>
<td>Mass</td>
<td>kilogram</td>
</tr>
<tr>
<td>Mass Flow Rate</td>
<td>kilogram per second</td>
</tr>
<tr>
<td>Molar Flow Rate</td>
<td>mole per second</td>
</tr>
<tr>
<td>Molecular Weight</td>
<td>kilogram per mole</td>
</tr>
<tr>
<td>Amount of Substance</td>
<td>mole</td>
</tr>
<tr>
<td>Plane Angle</td>
<td>radian</td>
</tr>
<tr>
<td>Power</td>
<td>watt</td>
</tr>
<tr>
<td>Pressure</td>
<td>pascal</td>
</tr>
<tr>
<td>Quantity</td>
<td>count</td>
</tr>
<tr>
<td>Ratio</td>
<td>percent</td>
</tr>
<tr>
<td>Specific Energy</td>
<td>joule per kilogram</td>
</tr>
<tr>
<td>Specific Entropy and Specific Heat Capacity</td>
<td>joule per kilogram kelvin</td>
</tr>
<tr>
<td>Specific Volume</td>
<td>cubic meter per kilogram</td>
</tr>
<tr>
<td>Speed</td>
<td>meter per second</td>
</tr>
<tr>
<td>Temperature</td>
<td>kelvin</td>
</tr>
<tr>
<td>Temperature (Delta)</td>
<td>delta kelvin</td>
</tr>
<tr>
<td>Time</td>
<td>second</td>
</tr>
<tr>
<td>Volume</td>
<td>cubic meter</td>
</tr>
<tr>
<td>Volume Flow Rate</td>
<td>cubic meter per second</td>
</tr>
</tbody>
</table>
<h2 id="supported-units-of-measure" sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="81" sourceendlinenumber="81">Supported units of measure</h2>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="83" sourceendlinenumber="83">A list of the supported units of measure follows. Supported units of measure are read-only.</p>
<table sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="85" sourceendlinenumber="290">
<thead>
<tr>
<th>Uom Id</th>
<th>Abbreviation</th>
<th>Quantity Id</th>
<th>Conversion Factor</th>
<th>Conversion Offset</th>
</tr>
</thead>
<tbody>
<tr>
<td>count</td>
<td>count</td>
<td>Quantity</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>Ampere hour</td>
<td>Ah</td>
<td>Electric Charge</td>
<td>3600</td>
<td>0</td>
</tr>
<tr>
<td>coulomb</td>
<td>C</td>
<td>Electric Charge</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>kilogram per second</td>
<td>kg/s</td>
<td>Mass Flow Rate</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>long ton per day</td>
<td>lton/d</td>
<td>Mass Flow Rate</td>
<td>0.011759802</td>
<td>0</td>
</tr>
<tr>
<td>million pound per day</td>
<td>MMlb/d</td>
<td>Mass Flow Rate</td>
<td>5.24991169</td>
<td>0</td>
</tr>
<tr>
<td>short ton per day</td>
<td>ston/d</td>
<td>Mass Flow Rate</td>
<td>0.010499823</td>
<td>0</td>
</tr>
<tr>
<td>thousand pound per day</td>
<td>klb/d</td>
<td>Mass Flow Rate</td>
<td>0.005249912</td>
<td>0</td>
</tr>
<tr>
<td>gram per second</td>
<td>g/s</td>
<td>Mass Flow Rate</td>
<td>0.001</td>
<td>0</td>
</tr>
<tr>
<td>pound per second</td>
<td>lb/s</td>
<td>Mass Flow Rate</td>
<td>0.45359237</td>
<td>0</td>
</tr>
<tr>
<td>tonne per day</td>
<td>t/d</td>
<td>Mass Flow Rate</td>
<td>0.011574074</td>
<td>0</td>
</tr>
<tr>
<td>long ton</td>
<td>lton</td>
<td>Mass</td>
<td>1016.046909</td>
<td>0</td>
</tr>
<tr>
<td>million pound</td>
<td>MM lb</td>
<td>Mass</td>
<td>453592.37</td>
<td>0</td>
</tr>
<tr>
<td>ounce</td>
<td>oz</td>
<td>Mass</td>
<td>0.028349523</td>
<td>0</td>
</tr>
<tr>
<td>short ton</td>
<td>ston</td>
<td>Mass</td>
<td>907.18474</td>
<td>0</td>
</tr>
<tr>
<td>thousand pound</td>
<td>klb</td>
<td>Mass</td>
<td>453.59237</td>
<td>0</td>
</tr>
<tr>
<td>ton</td>
<td>ton</td>
<td>Mass</td>
<td>907.18474</td>
<td>0</td>
</tr>
<tr>
<td>gram</td>
<td>g</td>
<td>Mass</td>
<td>0.001</td>
<td>0</td>
</tr>
<tr>
<td>milligram</td>
<td>mg</td>
<td>Mass</td>
<td>1.00E-06</td>
<td>0</td>
</tr>
<tr>
<td>pound</td>
<td>lb</td>
<td>Mass</td>
<td>0.45359237</td>
<td>0</td>
</tr>
<tr>
<td>tonne</td>
<td>t</td>
<td>Mass</td>
<td>1000</td>
<td>0</td>
</tr>
<tr>
<td>kilogram</td>
<td>kg</td>
<td>Mass</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>second</td>
<td>s</td>
<td>Time</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>hour</td>
<td>h</td>
<td>Time</td>
<td>3600</td>
<td>0</td>
</tr>
<tr>
<td>day</td>
<td>d</td>
<td>Time</td>
<td>86400</td>
<td>0</td>
</tr>
<tr>
<td>month</td>
<td>month</td>
<td>Time</td>
<td>2628000</td>
<td>0</td>
</tr>
<tr>
<td>week</td>
<td>week</td>
<td>Time</td>
<td>604800</td>
<td>0</td>
</tr>
<tr>
<td>year</td>
<td>yr</td>
<td>Time</td>
<td>31536000</td>
<td>0</td>
</tr>
<tr>
<td>minute</td>
<td>min</td>
<td>Time</td>
<td>60</td>
<td>0</td>
</tr>
<tr>
<td>dyne</td>
<td>dyne</td>
<td>Force</td>
<td>1.00E-05</td>
<td>0</td>
</tr>
<tr>
<td>kilogram-force</td>
<td>kgf</td>
<td>Force</td>
<td>9.80665</td>
<td>0</td>
</tr>
<tr>
<td>pound-force</td>
<td>lbf</td>
<td>Force</td>
<td>4.448221615</td>
<td>0</td>
</tr>
<tr>
<td>newton</td>
<td>N</td>
<td>Force</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>watt</td>
<td>W</td>
<td>Power</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>million British thermal unit per day</td>
<td>MM Btu/d</td>
<td>Power</td>
<td>12211.29459</td>
<td>0</td>
</tr>
<tr>
<td>million British thermal unit per hour</td>
<td>MM Btu/h</td>
<td>Power</td>
<td>293071.0702</td>
<td>0</td>
</tr>
<tr>
<td>gigawatt</td>
<td>GW</td>
<td>Power</td>
<td>1000000000</td>
<td>0</td>
</tr>
<tr>
<td>megawatt</td>
<td>MW</td>
<td>Power</td>
<td>1000000</td>
<td>0</td>
</tr>
<tr>
<td>British thermal unit per hour</td>
<td>Btu/h</td>
<td>Power</td>
<td>0.29307107</td>
<td>0</td>
</tr>
<tr>
<td>calorie per second</td>
<td>cal/s</td>
<td>Power</td>
<td>4.1868</td>
<td>0</td>
</tr>
<tr>
<td>horsepower</td>
<td>hp</td>
<td>Power</td>
<td>745.6998716</td>
<td>0</td>
</tr>
<tr>
<td>joule per second</td>
<td>J/s</td>
<td>Power</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>kilowatt</td>
<td>kW</td>
<td>Power</td>
<td>1000</td>
<td>0</td>
</tr>
<tr>
<td>megajoule per hour</td>
<td>MJ/h</td>
<td>Power</td>
<td>277.7777778</td>
<td>0</td>
</tr>
<tr>
<td>million calorie per hour</td>
<td>MMcal/h</td>
<td>Power</td>
<td>1163</td>
<td>0</td>
</tr>
<tr>
<td>mole per second</td>
<td>mol/s</td>
<td>Molar Flow Rate</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>gram mole per second</td>
<td>gmol/s</td>
<td>Molar Flow Rate</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>kilogram mole per second</td>
<td>kmol/s</td>
<td>Molar Flow Rate</td>
<td>1000</td>
<td>0</td>
</tr>
<tr>
<td>pound mole per second</td>
<td>lbmol/s</td>
<td>Molar Flow Rate</td>
<td>453.59237</td>
<td>0</td>
</tr>
<tr>
<td>meter</td>
<td>m</td>
<td>Length</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>centimeter</td>
<td>cm</td>
<td>Length</td>
<td>0.01</td>
<td>0</td>
</tr>
<tr>
<td>inch</td>
<td>in</td>
<td>Length</td>
<td>0.0254</td>
<td>0</td>
</tr>
<tr>
<td>International nautical mile</td>
<td>nmi</td>
<td>Length</td>
<td>1852</td>
<td>0</td>
</tr>
<tr>
<td>kilometer</td>
<td>km</td>
<td>Length</td>
<td>1000</td>
<td>0</td>
</tr>
<tr>
<td>millimeter</td>
<td>mm</td>
<td>Length</td>
<td>0.001</td>
<td>0</td>
</tr>
<tr>
<td>foot</td>
<td>ft</td>
<td>Length</td>
<td>0.3048</td>
<td>0</td>
</tr>
<tr>
<td>mile</td>
<td>mi</td>
<td>Length</td>
<td>1609.344</td>
<td>0</td>
</tr>
<tr>
<td>sixteenth of an inch</td>
<td>sxi</td>
<td>Length</td>
<td>0.0015875</td>
<td>0</td>
</tr>
<tr>
<td>yard</td>
<td>yd</td>
<td>Length</td>
<td>0.9144</td>
<td>0</td>
</tr>
<tr>
<td>candela</td>
<td>cd</td>
<td>Luminous Intensity</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>meter per second</td>
<td>m/s</td>
<td>Speed</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>centimeter per second</td>
<td>cm/s</td>
<td>Speed</td>
<td>0.01</td>
<td>0</td>
</tr>
<tr>
<td>foot per second</td>
<td>ft/s</td>
<td>Speed</td>
<td>0.3048</td>
<td>0</td>
</tr>
<tr>
<td>International nautical mile per hour</td>
<td>nmi/h</td>
<td>Speed</td>
<td>0.514444444</td>
<td>0</td>
</tr>
<tr>
<td>kilometer per hour</td>
<td>km/h</td>
<td>Speed</td>
<td>0.277777778</td>
<td>0</td>
</tr>
<tr>
<td>mile per hour</td>
<td>mi/h</td>
<td>Speed</td>
<td>0.44704</td>
<td>0</td>
</tr>
<tr>
<td>revolution per minute</td>
<td>rpm</td>
<td>Angular Velocity</td>
<td>0.104719755</td>
<td>0</td>
</tr>
<tr>
<td>radian per second</td>
<td>rad/s</td>
<td>Angular Velocity</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>barrel per day</td>
<td>bbl/d</td>
<td>Volume Flow Rate</td>
<td>1.84E-06</td>
<td>0</td>
</tr>
<tr>
<td>cubic centimeter per second</td>
<td>cm3/s</td>
<td>Volume Flow Rate</td>
<td>1.00E-06</td>
<td>0</td>
</tr>
<tr>
<td>cubic foot per second</td>
<td>ft3/s</td>
<td>Volume Flow Rate</td>
<td>0.028316847</td>
<td>0</td>
</tr>
<tr>
<td>cubic meter per hour</td>
<td>m3/h</td>
<td>Volume Flow Rate</td>
<td>0.000277778</td>
<td>0</td>
</tr>
<tr>
<td>Imperial gallon per minute</td>
<td>Imp gal/min</td>
<td>Volume Flow Rate</td>
<td>7.58E-05</td>
<td>0</td>
</tr>
<tr>
<td>liter per second</td>
<td>L/s</td>
<td>Volume Flow Rate</td>
<td>0.001</td>
<td>0</td>
</tr>
<tr>
<td>US gallon per minute</td>
<td>US gal/min</td>
<td>Volume Flow Rate</td>
<td>6.31E-05</td>
<td>0</td>
</tr>
<tr>
<td>cubic meter per second</td>
<td>m3/s</td>
<td>Volume Flow Rate</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>pascal</td>
<td>Pa</td>
<td>Pressure</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>atmosphere</td>
<td>atm</td>
<td>Pressure</td>
<td>101325</td>
<td>0</td>
</tr>
<tr>
<td>bar</td>
<td>bar</td>
<td>Pressure</td>
<td>100000</td>
<td>0</td>
</tr>
<tr>
<td>inches of mercury</td>
<td>inHg</td>
<td>Pressure</td>
<td>3386.388158</td>
<td>0</td>
</tr>
<tr>
<td>kilogram-force per square centimeter</td>
<td>kgf/cm2</td>
<td>Pressure</td>
<td>98066.5</td>
<td>0</td>
</tr>
<tr>
<td>kilogram-force per square meter</td>
<td>kgf/m2</td>
<td>Pressure</td>
<td>9.80665</td>
<td>0</td>
</tr>
<tr>
<td>kilopascal</td>
<td>kPa</td>
<td>Pressure</td>
<td>1000</td>
<td>0</td>
</tr>
<tr>
<td>millimeter of mercury</td>
<td>mmHg</td>
<td>Pressure</td>
<td>133.3223684</td>
<td>0</td>
</tr>
<tr>
<td>newton per square meter</td>
<td>N/m2</td>
<td>Pressure</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>pound-force per square inch</td>
<td>psi</td>
<td>Pressure</td>
<td>6894.757293</td>
<td>0</td>
</tr>
<tr>
<td>pound-force per square inch (customary)</td>
<td>psia</td>
<td>Pressure</td>
<td>6894.757293</td>
<td>0</td>
</tr>
<tr>
<td>torr</td>
<td>torr</td>
<td>Pressure</td>
<td>133.3223684</td>
<td>0</td>
</tr>
<tr>
<td>square meter</td>
<td>m2</td>
<td>Area</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>square foot</td>
<td>ft2</td>
<td>Area</td>
<td>0.09290304</td>
<td>0</td>
</tr>
<tr>
<td>acre</td>
<td>acre</td>
<td>Area</td>
<td>4046.856422</td>
<td>0</td>
</tr>
<tr>
<td>square mile</td>
<td>mi2</td>
<td>Area</td>
<td>2589988.11</td>
<td>0</td>
</tr>
<tr>
<td>square yard</td>
<td>yd2</td>
<td>Area</td>
<td>0.83612736</td>
<td>0</td>
</tr>
<tr>
<td>hectare</td>
<td>ha</td>
<td>Area</td>
<td>10000</td>
<td>0</td>
</tr>
<tr>
<td>square centimeter</td>
<td>cm2</td>
<td>Area</td>
<td>0.0001</td>
<td>0</td>
</tr>
<tr>
<td>square inch</td>
<td>in2</td>
<td>Area</td>
<td>0.00064516</td>
<td>0</td>
</tr>
<tr>
<td>square kilometer</td>
<td>km2</td>
<td>Area</td>
<td>1000000</td>
<td>0</td>
</tr>
<tr>
<td>square millimeter</td>
<td>mm2</td>
<td>Area</td>
<td>1.00E-06</td>
<td>0</td>
</tr>
<tr>
<td>yobibyte</td>
<td>YiB</td>
<td>Computer Storage</td>
<td>1.21E+24</td>
<td>0</td>
</tr>
<tr>
<td>zebibyte</td>
<td>ZiB</td>
<td>Computer Storage</td>
<td>1.18E+21</td>
<td>0</td>
</tr>
<tr>
<td>exbibyte</td>
<td>EiB</td>
<td>Computer Storage</td>
<td>1.15E+18</td>
<td>0</td>
</tr>
<tr>
<td>pebibyte</td>
<td>PiB</td>
<td>Computer Storage</td>
<td>1.13E+15</td>
<td>0</td>
</tr>
<tr>
<td>tebibyte</td>
<td>TiB</td>
<td>Computer Storage</td>
<td>1.10E+12</td>
<td>0</td>
</tr>
<tr>
<td>gibibyte</td>
<td>GiB</td>
<td>Computer Storage</td>
<td>1073741824</td>
<td>0</td>
</tr>
<tr>
<td>mebibyte</td>
<td>MiB</td>
<td>Computer Storage</td>
<td>1048576</td>
<td>0</td>
</tr>
<tr>
<td>kibibyte</td>
<td>KiB</td>
<td>Computer Storage</td>
<td>1024</td>
<td>0</td>
</tr>
<tr>
<td>yottabyte</td>
<td>YB</td>
<td>Computer Storage</td>
<td>1.00E+24</td>
<td>0</td>
</tr>
<tr>
<td>zettabyte</td>
<td>ZB</td>
<td>Computer Storage</td>
<td>1.00E+21</td>
<td>0</td>
</tr>
<tr>
<td>exabyte</td>
<td>EB</td>
<td>Computer Storage</td>
<td>1.00E+18</td>
<td>0</td>
</tr>
<tr>
<td>petabyte</td>
<td>PB</td>
<td>Computer Storage</td>
<td>1.00E+15</td>
<td>0</td>
</tr>
<tr>
<td>terabyte</td>
<td>TB</td>
<td>Computer Storage</td>
<td>1.00E+12</td>
<td>0</td>
</tr>
<tr>
<td>gigabyte</td>
<td>GB</td>
<td>Computer Storage</td>
<td>1000000000</td>
<td>0</td>
</tr>
<tr>
<td>megabyte</td>
<td>MB</td>
<td>Computer Storage</td>
<td>1000000</td>
<td>0</td>
</tr>
<tr>
<td>kilobyte</td>
<td>kB</td>
<td>Computer Storage</td>
<td>1000</td>
<td>0</td>
</tr>
<tr>
<td>byte</td>
<td>B</td>
<td>Computer Storage</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>kelvin</td>
<td>K</td>
<td>Temperature</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>degree Celsius</td>
<td>°C</td>
<td>Temperature</td>
<td>1</td>
<td>273.15</td>
</tr>
<tr>
<td>degree Rankine</td>
<td>°R</td>
<td>Temperature</td>
<td>0.555555556</td>
<td>-2.56E-13</td>
</tr>
<tr>
<td>degree Fahrenheit</td>
<td>°F</td>
<td>Temperature</td>
<td>0.555555556</td>
<td>255.3722222</td>
</tr>
<tr>
<td>milliampere</td>
<td>mA</td>
<td>Electric Current</td>
<td>0.001</td>
<td>0</td>
</tr>
<tr>
<td>ampere</td>
<td>A</td>
<td>Electric Current</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>joule per gram</td>
<td>J/g</td>
<td>Specific Energy</td>
<td>1000</td>
<td>0</td>
</tr>
<tr>
<td>joule per kilogram</td>
<td>J/kg</td>
<td>Specific Energy</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>British thermal unit per pound</td>
<td>Btu/lb</td>
<td>Specific Energy</td>
<td>2326</td>
<td>0</td>
</tr>
<tr>
<td>kilocalorie per kilogram</td>
<td>kcal/kg</td>
<td>Specific Energy</td>
<td>4186.8</td>
<td>0</td>
</tr>
<tr>
<td>kilojoule per kilogram</td>
<td>kJ/kg</td>
<td>Specific Energy</td>
<td>1000</td>
<td>0</td>
</tr>
<tr>
<td>kilojoule per pound</td>
<td>kJ/lb</td>
<td>Specific Energy</td>
<td>2204.622622</td>
<td>0</td>
</tr>
<tr>
<td>British thermal unit per degree Rankine</td>
<td>Btu/°R</td>
<td>Entropy and Heat Capacity</td>
<td>1899.100535</td>
<td>0</td>
</tr>
<tr>
<td>British thermal unit per degree Fahrenheit</td>
<td>Btu/°F</td>
<td>Entropy and Heat Capacity</td>
<td>1899.100535</td>
<td>0</td>
</tr>
<tr>
<td>kilojoule per kelvin</td>
<td>kJ/K</td>
<td>Entropy and Heat Capacity</td>
<td>1000</td>
<td>0</td>
</tr>
<tr>
<td>joule per kelvin</td>
<td>J/K</td>
<td>Entropy and Heat Capacity</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>cubic foot per pound</td>
<td>ft3/lb</td>
<td>Specific Volume</td>
<td>0.062427961</td>
<td>0</td>
</tr>
<tr>
<td>cubic centimeter per gram</td>
<td>cm3/g</td>
<td>Specific Volume</td>
<td>0.001</td>
<td>0</td>
</tr>
<tr>
<td>cubic meter per kilogram</td>
<td>m3/kg</td>
<td>Specific Volume</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>hertz</td>
<td>Hz</td>
<td>Frequency</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>mole</td>
<td>mol</td>
<td>Amount of Substance</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>gram mole</td>
<td>gmol</td>
<td>Amount of Substance</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>kilogram mole</td>
<td>kmol</td>
<td>Amount of Substance</td>
<td>1000</td>
<td>0</td>
</tr>
<tr>
<td>pound mole</td>
<td>lbmol</td>
<td>Amount of Substance</td>
<td>453.59237</td>
<td>0</td>
</tr>
<tr>
<td>percent</td>
<td>%</td>
<td>Ratio</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>parts per billion</td>
<td>ppb</td>
<td>Ratio</td>
<td>1.00E-07</td>
<td>0</td>
</tr>
<tr>
<td>parts per million</td>
<td>ppm</td>
<td>Ratio</td>
<td>0.0001</td>
<td>0</td>
</tr>
<tr>
<td>ohm</td>
<td>Ω</td>
<td>Electric Resistance</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>gram per gram mole</td>
<td>g/gmol</td>
<td>Molecular Weight</td>
<td>0.001</td>
<td>0</td>
</tr>
<tr>
<td>pound per pound mole</td>
<td>lb/lbmol</td>
<td>Molecular Weight</td>
<td>0.001</td>
<td>0</td>
</tr>
<tr>
<td>kilogram per mole</td>
<td>kg/mol</td>
<td>Molecular Weight</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>kilogram per kilogram mole</td>
<td>kg/kmol</td>
<td>Molecular Weight</td>
<td>0.001</td>
<td>0</td>
</tr>
<tr>
<td>British thermal unit per pound degree Rankine</td>
<td>Btu/(lb °R)</td>
<td>Specific Entropy and Specific Heat Capacity</td>
<td>4186.8</td>
<td>0</td>
</tr>
<tr>
<td>British thermal unit per pound degree Fahrenheit</td>
<td>Btu/(lb °F)</td>
<td>Specific Entropy and Specific Heat Capacity</td>
<td>4186.8</td>
<td>0</td>
</tr>
<tr>
<td>joule per gram kelvin</td>
<td>J/(g K)</td>
<td>Specific Entropy and Specific Heat Capacity</td>
<td>1000</td>
<td>0</td>
</tr>
<tr>
<td>kilojoule per kilogram kelvin</td>
<td>kJ/(kg K)</td>
<td>Specific Entropy and Specific Heat Capacity</td>
<td>1000</td>
<td>0</td>
</tr>
<tr>
<td>joule per kilogram kelvin</td>
<td>J/(kg K)</td>
<td>Specific Entropy and Specific Heat Capacity</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>kilovolt</td>
<td>kV</td>
<td>Electric Potential</td>
<td>1000</td>
<td>0</td>
</tr>
<tr>
<td>millivolt</td>
<td>mV</td>
<td>Electric Potential</td>
<td>0.001</td>
<td>0</td>
</tr>
<tr>
<td>megavolt</td>
<td>MV</td>
<td>Electric Potential</td>
<td>1000000</td>
<td>0</td>
</tr>
<tr>
<td>volt</td>
<td>V</td>
<td>Electric Potential</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>joule</td>
<td>J</td>
<td>Energy</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>gigawatt hour</td>
<td>GWh</td>
<td>Energy</td>
<td>3.60E+12</td>
<td>0</td>
</tr>
<tr>
<td>megawatt hour</td>
<td>MWh</td>
<td>Energy</td>
<td>3600000000</td>
<td>0</td>
</tr>
<tr>
<td>watt hour</td>
<td>Wh</td>
<td>Energy</td>
<td>3600</td>
<td>0</td>
</tr>
<tr>
<td>British thermal unit</td>
<td>Btu</td>
<td>Energy</td>
<td>1055.055853</td>
<td>0</td>
</tr>
<tr>
<td>calorie</td>
<td>cal</td>
<td>Energy</td>
<td>4.1868</td>
<td>0</td>
</tr>
<tr>
<td>gigajoule</td>
<td>GJ</td>
<td>Energy</td>
<td>1000000000</td>
<td>0</td>
</tr>
<tr>
<td>kilojoule</td>
<td>kJ</td>
<td>Energy</td>
<td>1000</td>
<td>0</td>
</tr>
<tr>
<td>kilowatt hour</td>
<td>kWh</td>
<td>Energy</td>
<td>3600000</td>
<td>0</td>
</tr>
<tr>
<td>megajoule</td>
<td>MJ</td>
<td>Energy</td>
<td>1000000</td>
<td>0</td>
</tr>
<tr>
<td>watt second</td>
<td>Ws</td>
<td>Energy</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>kilocalorie</td>
<td>kcal</td>
<td>Energy</td>
<td>4186.8</td>
<td>0</td>
</tr>
<tr>
<td>million calorie</td>
<td>MMcal</td>
<td>Energy</td>
<td>4186800</td>
<td>0</td>
</tr>
<tr>
<td>million British thermal unit</td>
<td>MM Btu</td>
<td>Energy</td>
<td>1055055853</td>
<td>0</td>
</tr>
<tr>
<td>acre foot</td>
<td>acre ft</td>
<td>Volume</td>
<td>1233.481838</td>
<td>0</td>
</tr>
<tr>
<td>million imperial gallon</td>
<td>Imp Mgal</td>
<td>Volume</td>
<td>4546.09</td>
<td>0</td>
</tr>
<tr>
<td>thousand imperial gallon</td>
<td>Imp kgal</td>
<td>Volume</td>
<td>4.54609</td>
<td>0</td>
</tr>
<tr>
<td>barrel</td>
<td>bbl</td>
<td>Volume</td>
<td>0.158987295</td>
<td>0</td>
</tr>
<tr>
<td>Imperial gallon</td>
<td>Imp gal</td>
<td>Volume</td>
<td>0.00454609</td>
<td>0</td>
</tr>
<tr>
<td>million US gallon</td>
<td>US Mgal</td>
<td>Volume</td>
<td>3785.411784</td>
<td>0</td>
</tr>
<tr>
<td>thousand US gallon</td>
<td>US kgal</td>
<td>Volume</td>
<td>3.785411784</td>
<td>0</td>
</tr>
<tr>
<td>cubic centimeter</td>
<td>cm3</td>
<td>Volume</td>
<td>1.00E-06</td>
<td>0</td>
</tr>
<tr>
<td>cubic foot</td>
<td>ft3</td>
<td>Volume</td>
<td>0.028316847</td>
<td>0</td>
</tr>
<tr>
<td>kiloliter</td>
<td>kL</td>
<td>Volume</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>liter</td>
<td>L</td>
<td>Volume</td>
<td>0.001</td>
<td>0</td>
</tr>
<tr>
<td>megaliter</td>
<td>M L</td>
<td>Volume</td>
<td>1000</td>
<td>0</td>
</tr>
<tr>
<td>milliliter</td>
<td>mL</td>
<td>Volume</td>
<td>1.00E-06</td>
<td>0</td>
</tr>
<tr>
<td>thousand cubic meter</td>
<td>k m3</td>
<td>Volume</td>
<td>1000</td>
<td>0</td>
</tr>
<tr>
<td>US gallon</td>
<td>US gal</td>
<td>Volume</td>
<td>0.003785412</td>
<td>0</td>
</tr>
<tr>
<td>million barrel</td>
<td>MMbbl</td>
<td>Volume</td>
<td>158987.2949</td>
<td>0</td>
</tr>
<tr>
<td>thousand barrel</td>
<td>kbbl</td>
<td>Volume</td>
<td>158.9872949</td>
<td>0</td>
</tr>
<tr>
<td>cubic meter</td>
<td>m3</td>
<td>Volume</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>kilogram per cubic meter</td>
<td>kg/m3</td>
<td>Density</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>gram per liter</td>
<td>g/L</td>
<td>Density</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>kilogram per liter</td>
<td>kg/L</td>
<td>Density</td>
<td>1000</td>
<td>0</td>
</tr>
<tr>
<td>pound per barrel</td>
<td>lb/bbl</td>
<td>Density</td>
<td>2.853010174</td>
<td>0</td>
</tr>
<tr>
<td>pound per cubic foot</td>
<td>lb/ft3</td>
<td>Density</td>
<td>16.01846337</td>
<td>0</td>
</tr>
<tr>
<td>pound per US gallon</td>
<td>lb/US gal</td>
<td>Density</td>
<td>119.8264273</td>
<td>0</td>
</tr>
<tr>
<td>tonne per cubic meter</td>
<td>t/m3</td>
<td>Density</td>
<td>1000</td>
<td>0</td>
</tr>
<tr>
<td>radian</td>
<td>rad</td>
<td>Plane Angle</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>degree</td>
<td>°</td>
<td>Plane Angle</td>
<td>0.017453293</td>
<td>0</td>
</tr>
<tr>
<td>revolution</td>
<td>r</td>
<td>Plane Angle</td>
<td>6.283185307</td>
<td>0</td>
</tr>
<tr>
<td>pascal second</td>
<td>Pa*s</td>
<td>Dynamic Viscosity</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>poise</td>
<td>P</td>
<td>Dynamic Viscosity</td>
<td>0.1</td>
<td>0</td>
</tr>
<tr>
<td>delta degree Fahrenheit</td>
<td>delta °F</td>
<td>Temperature (Delta)</td>
<td>0.555555556</td>
<td>0</td>
</tr>
<tr>
<td>delta degree Rankine</td>
<td>delta °R</td>
<td>Temperature (Delta)</td>
<td>0.555555556</td>
<td>0</td>
</tr>
<tr>
<td>delta kelvin</td>
<td>delta K</td>
<td>Temperature (Delta)</td>
<td>1</td>
<td>0</td>
</tr>
<tr>
<td>delta degree Celsius</td>
<td>delta °C</td>
<td>Temperature (Delta)</td>
<td>1</td>
<td>0</td>
</tr>
</tbody>
</table>
<h1 id="sdsuomquantity-api" sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="292" sourceendlinenumber="292">SdsUomQuantity API</h1>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="294" sourceendlinenumber="294">The REST APIs provide programmatic access to read and write SDS data. The APIs in this section interact with SdsUomQuantitys. For more information, see <a href="#sdsuomquantity" data-raw-source="[SdsUomQuantity](#sdsuomquantity)" sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="294" sourceendlinenumber="294">SdsUomQuantity</a>.</p>
<hr>
<h2 id="get-quantity" sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="297" sourceendlinenumber="297"><code>Get Quantity</code></h2>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="299" sourceendlinenumber="299">Returns the quantity corresponding to the specified quantity Id within a given namespace.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="301" sourceendlinenumber="301"><strong>Request</strong></p>
<pre sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="303" sourceendlinenumber="305"><code class="lang-text">GET api/v1/Tenants/default/Namespaces/{namespaceId}/Quantities/{quantityId}
</code></pre><p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="307" sourceendlinenumber="309"><strong>Parameters</strong><br><code>string namespaceId</code><br>The namespace; either default or diagnostics.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="311" sourceendlinenumber="312"><code>string quantityId</code><br>The quantity identifier.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="314" sourceendlinenumber="315"><strong>Response</strong><br>The response includes a status code and a response body.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="317" sourceendlinenumber="318"><strong>Response body</strong><br>The requested SdsUomQuantity.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="320" sourceendlinenumber="320">Example response body for quantityId = &quot;Length&quot;:</p>
<pre sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="322" sourceendlinenumber="347"><code class="lang-json">HTTP/1.1 200
Content-Type: application/json

{
    &quot;Id&quot;: &quot;Length&quot;,
    &quot;Name&quot;: &quot;Length&quot;,
    &quot;BaseUom&quot;: {
        &quot;Id&quot;: &quot;meter&quot;,
        &quot;Abbreviation&quot;: &quot;m&quot;,
        &quot;Name&quot;: &quot;meter&quot;,
        &quot;DisplayName&quot;: &quot;meter&quot;,
        &quot;QuantityId&quot;: &quot;Length&quot;,
        &quot;ConversionFactor&quot;: 1
    },
    &quot;Dimensions&quot;: [
        1,
        0,
        0,
        0,
        0,
        0,
        0
    ]
}
</code></pre><hr>
<h2 id="get-quantities" sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="351" sourceendlinenumber="351"><code>Get Quantities</code></h2>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="353" sourceendlinenumber="353">Returns a list of all quantities available within a given namespace.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="355" sourceendlinenumber="355"><strong>Request</strong></p>
<pre sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="357" sourceendlinenumber="359"><code class="lang-text">GET api/v1/Tenants/default/Namespaces/{namespaceId}/Quantities?skip={skip}&amp;count={count}
</code></pre><p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="361" sourceendlinenumber="363"><strong>Parameters</strong><br><code>string namespaceId</code><br>The namespace; either default or diagnostics.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="365" sourceendlinenumber="366"><code>int skip</code><br>An optional parameter representing the zero-based offset of the first SdsUomQuantity to retrieve. If not specified, a default value of 0 is used.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="368" sourceendlinenumber="369"><code>int count</code><br>An optional parameter representing the maximum number of SdsUomQuantity to retrieve. If not specified, a default value of 100 is used.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="371" sourceendlinenumber="372"><strong>Response</strong><br>The response includes a status code and a response body.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="374" sourceendlinenumber="375"><strong>Response body</strong><br>A list of SdsUomQuantity objects.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="377" sourceendlinenumber="377">Example response body:</p>
<pre sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="379" sourceendlinenumber="427"><code class="lang-json">HTTP/1.1 200
Content-Type: application/json

[
    {
        &quot;Id&quot;: &quot;Angular Velocity&quot;,
        &quot;Name&quot;: &quot;Angular Velocity&quot;,
        &quot;BaseUom&quot;: {
            &quot;Id&quot;: &quot;radian per second&quot;,
            &quot;Abbreviation&quot;: &quot;rad/s&quot;,
            &quot;Name&quot;: &quot;radian per second&quot;,
            &quot;DisplayName&quot;: &quot;radian per second&quot;,
            &quot;QuantityId&quot;: &quot;Angular Velocity&quot;,
            &quot;ConversionFactor&quot;: 1
        },
        &quot;Dimensions&quot;: [
            0,
            0,
            -1,
            0,
            0,
            0,
            0
        ]
    },
    {
        &quot;Id&quot;: &quot;Area&quot;,
        &quot;Name&quot;: &quot;Area&quot;,
        &quot;BaseUom&quot;: {
            &quot;Id&quot;: &quot;square meter&quot;,
            &quot;Abbreviation&quot;: &quot;m2&quot;,
            &quot;Name&quot;: &quot;square meter&quot;,
            &quot;DisplayName&quot;: &quot;square meter&quot;,
            &quot;QuantityId&quot;: &quot;Area&quot;,
            &quot;ConversionFactor&quot;: 1
        },
        &quot;Dimensions&quot;: [
            2,
            0,
            0,
            0,
            0,
            0,
            0
        ]
    },
]
</code></pre><hr>
<h2 id="get-quantity-uom" sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="431" sourceendlinenumber="431"><code>Get Quantity Uom</code></h2>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="433" sourceendlinenumber="433">Returns the unit of measure associated with the specified uomId belonging to the quantity with the specified quantityId.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="435" sourceendlinenumber="435"><strong>Request</strong></p>
<pre sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="437" sourceendlinenumber="439"><code class="lang-text">GET api/v1/Tenants/default/Namespaces/{namespaceId}/Quantities/{quantityId}/Units/{uomId}
</code></pre><p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="441" sourceendlinenumber="443"><strong>Parameters</strong><br><code>string namespaceId</code><br>The namespace; either default or diagnostics.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="445" sourceendlinenumber="446"><code>string quantityId</code><br>The quantity identifier.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="448" sourceendlinenumber="449"><code>string uomId</code><br>The unit of measure identifier.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="451" sourceendlinenumber="452"><strong>Response</strong><br>The response includes a status code and a response body.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="454" sourceendlinenumber="455"><strong>Response body</strong><br>The requested SdsUom</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="457" sourceendlinenumber="457">Example response for quantityId = &quot;Length&quot; and uomId =&quot;mile&quot;:</p>
<pre sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="459" sourceendlinenumber="471"><code class="lang-json">HTTP/1.1 200
Content-Type: application/json

{
    &quot;Id&quot;: &quot;mile&quot;,
    &quot;Abbreviation&quot;: &quot;mi&quot;,
    &quot;Name&quot;: &quot;mile&quot;,
    &quot;DisplayName&quot;: &quot;mile&quot;,
    &quot;QuantityId&quot;: &quot;Length&quot;,
    &quot;ConversionFactor&quot;: 1609.344
}
</code></pre><hr>
<h2 id="get-quantity-uoms" sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="475" sourceendlinenumber="475"><code>Get Quantity Uoms</code></h2>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="477" sourceendlinenumber="477">Returns the list of units of measure that belongs to the quantity with the specified quantityId.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="479" sourceendlinenumber="479"><strong>Request</strong></p>
<pre sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="481" sourceendlinenumber="483"><code class="lang-text">GET api/v1/Tenants/default/Namespaces/{namespaceId}/Quantities/{quantityId}/Units
</code></pre><p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="485" sourceendlinenumber="487"><strong>Parameters</strong><br><code>string namespaceId</code><br>The namespace; either default or diagnostics.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="489" sourceendlinenumber="490"><code>string quantityId</code><br>The quantity identifier.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="492" sourceendlinenumber="493"><strong>Response</strong><br>The response includes a status code and a response body.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="495" sourceendlinenumber="496"><strong>Response body</strong><br>A collection of SdsUom objects for the specified quantity.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="498" sourceendlinenumber="498">Example response for quantityId = &quot;Electric Current&quot;:</p>
<pre sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="500" sourceendlinenumber="522"><code class="lang-json">HTTP/1.1 200
Content-Type: application/json

[
    {
        &quot;Id&quot;: &quot;milliampere&quot;,
        &quot;Abbreviation&quot;: &quot;mA&quot;,
        &quot;Name&quot;: &quot;milliampere&quot;,
        &quot;DisplayName&quot;: &quot;milliampere&quot;,
        &quot;QuantityId&quot;: &quot;Electric Current&quot;,
        &quot;ConversionFactor&quot;: 0.001
    },
    {
        &quot;Id&quot;: &quot;ampere&quot;,
        &quot;Abbreviation&quot;: &quot;A&quot;,
        &quot;Name&quot;: &quot;ampere&quot;,
        &quot;DisplayName&quot;: &quot;ampere&quot;,
        &quot;QuantityId&quot;: &quot;Electric Current&quot;,
        &quot;ConversionFactor&quot;: 1
    }
]
</code></pre><hr>
<h1 id="sdsuom-api" sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="526" sourceendlinenumber="526">SdsUom API</h1>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="528" sourceendlinenumber="528">The REST APIs provide programmatic access to read and write SDS data. The APIs in this section interact with SdsUoms. For more information, see <a href="#sdsuom" data-raw-source="[SdsUom](#sdsuom)" sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="528" sourceendlinenumber="528">SdsUom</a>.</p>
<hr>
<h2 id="get-uom" sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="531" sourceendlinenumber="531"><code>Get Uom</code></h2>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="533" sourceendlinenumber="533">Returns the unit of measure corresponding to the specified uomId within a given namespace.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="535" sourceendlinenumber="535"><strong>Request</strong></p>
<pre sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="537" sourceendlinenumber="539"><code class="lang-text">GET api/v1/Tenants/default/Namespaces/{namespaceId}/Units/{uomId}
</code></pre><p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="541" sourceendlinenumber="543"><strong>Parameters</strong><br><code>string namespaceId</code><br>The namespace; either default or diagnostics.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="545" sourceendlinenumber="546"><code>string uomId</code><br>The unit of measure identifier.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="548" sourceendlinenumber="549"><strong>Response</strong><br>The response includes a status code and a response body.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="551" sourceendlinenumber="552"><strong>Response body</strong><br>The requested SdsUom.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="554" sourceendlinenumber="554">Example response body for uomId = &quot;ounce&quot;:</p>
<pre sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="556" sourceendlinenumber="568"><code class="lang-json">HTTP/1.1 200
Content-Type: application/json

{
    &quot;Id&quot;: &quot;ounce&quot;,
    &quot;Abbreviation&quot;: &quot;oz&quot;,
    &quot;Name&quot;: &quot;ounce&quot;,
    &quot;DisplayName&quot;: &quot;ounce&quot;,
    &quot;QuantityId&quot;: &quot;Mass&quot;,
    &quot;ConversionFactor&quot;: 0.028349523
}
</code></pre><hr>
<h2 id="get-uoms" sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="572" sourceendlinenumber="572"><code>Get Uoms</code></h2>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="574" sourceendlinenumber="574">Returns a list of all available units of measure in the system.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="576" sourceendlinenumber="576"><strong>Request</strong></p>
<pre sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="578" sourceendlinenumber="580"><code class="lang-text">GET api/v1/Tenants/default/Namespaces/{namespaceId}/Units?skip={skip}&amp;count={count}
</code></pre><p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="582" sourceendlinenumber="584"><strong>Parameters</strong><br><code>string namespaceId</code><br>The namespace; either default or diagnostics.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="586" sourceendlinenumber="587"><code>int skip</code><br>An optional parameter representing the zero-based offset of the first SdsUomQuantity to retrieve. If not specified, a default value of 0 is used.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="589" sourceendlinenumber="590"><code>int count</code><br>An optional parameter representing the maximum number of SdsUomQuantity to retrieve. If not specified, a default value of 100 is used.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="592" sourceendlinenumber="593"><strong>Response</strong><br>The response includes a status code and a response body.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="595" sourceendlinenumber="596"><strong>Response body</strong><br>A list of SdsUom objects.</p>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="598" sourceendlinenumber="598">Example response body:</p>
<pre sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="600" sourceendlinenumber="629"><code class="lang-json">HTTP/1.1 200
Content-Type: application/json
[
    {
        &quot;Id&quot;: &quot;count&quot;,
        &quot;Abbreviation&quot;: &quot;count&quot;,
        &quot;Name&quot;: &quot;count&quot;,
        &quot;DisplayName&quot;: &quot;count&quot;,
        &quot;QuantityId&quot;: &quot;Quantity&quot;,
        &quot;ConversionFactor&quot;: 1
    },
    {
        &quot;Id&quot;: &quot;Ampere hour&quot;,
        &quot;Abbreviation&quot;: &quot;Ah&quot;,
        &quot;Name&quot;: &quot;Ampere hour&quot;,
        &quot;DisplayName&quot;: &quot;Ampere hour&quot;,
        &quot;QuantityId&quot;: &quot;Electric Charge&quot;,
        &quot;ConversionFactor&quot;: 3600
    },
    {
        &quot;Id&quot;: &quot;coulomb&quot;,
        &quot;Abbreviation&quot;: &quot;C&quot;,
        &quot;Name&quot;: &quot;coulomb&quot;,
        &quot;DisplayName&quot;: &quot;coulomb&quot;,
        &quot;QuantityId&quot;: &quot;Electric Charge&quot;,
        &quot;ConversionFactor&quot;: 1
    }
]
</code></pre><hr>
<h2 id="associate-a-unit-of-measure-with-an-sdstype" sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="633" sourceendlinenumber="633">Associate a unit of measure with an SdsType</h2>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="635" sourceendlinenumber="635">At SdsType creation, you can associate an SdsUom with an SdsTypeProperty. For more information, see <a class="xref" href="SDS_Types_1-0.html#sdstypeproperty" data-raw-source="[SdsTypeProperty](xref:sdsTypes1-0#sdstypeproperty)" sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="635" sourceendlinenumber="635">SdsTypeProperty</a>.</p>
<h2 id="associate-a-unit-of-measure-with-an-sdsstream" sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="637" sourceendlinenumber="637">Associate a unit of measure with an SdsStream</h2>
<p sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="639" sourceendlinenumber="639">At SdsStream creation, you can override any unit of measure associated with an SdsTypeProperty belonging to the SdsType of the stream. This enables the reuse of an SdsType that may have default unit information associated with it already. For more information, see <a class="xref" href="SDS_Streams_1-0.html" data-raw-source="[SdsStream](xref:sdsStreams1-0)" sourcefile="V1/SDS/Units_of_Measure_1-0.md" sourcestartlinenumber="639" sourceendlinenumber="639">SdsStream</a>.</p>
</article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/osisoft/Edge-Data-Store-Docs/blob/master/V1/SDS/Units_of_Measure_1-0.md/#L1" class="contribution-link">Improve this Doc</a>
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
