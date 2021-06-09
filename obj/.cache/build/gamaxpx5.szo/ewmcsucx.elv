a   �  a   v      =  �  �  /  J  �  �  �  �  �  �  �  �      ~  �  l  �     v   FileAndType�      �{"baseDir":"C:/GitHub repos/Edge-Data-Store-Docs","file":"V1/CommandLine/Configure Edge Data Store_1-0.md","type":"article","sourceDir":"","destinationDir":""}   =  OriginalFileAndType�   �  �{"baseDir":"C:/GitHub repos/Edge-Data-Store-Docs","file":"V1/CommandLine/Configure Edge Data Store_1-0.md","type":"article","sourceDir":"","destinationDir":""}   �  Key;   /  1~/V1/CommandLine/Configure Edge Data Store_1-0.md   J  LocalPathFromRoot9   �  /V1/CommandLine/Configure Edge Data Store_1-0.md   �  LinkToFiles	   �     �  
LinkToUids	   �     �  FileLinkSources   �  {}   �  UidLinkSources     {}     Uidsi   ~  _[{"name":"ConfigureEdgeDataStore1-0","file":"V1/CommandLine/Configure Edge Data Store_1-0.md"}]   �  ManifestProperties�   l  �{"rawTitle":"<h1 id=\"configure-edge-data-store\" sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"5\" sourceendlinenumber=\"5\">Configure Edge Data Store</h1>"}   �  DocumentType	   �   92  �6  {"$type":"System.Collections.Generic.Dictionary`2[[System.String, mscorlib],[System.Object, mscorlib]], mscorlib","conceptual":"\n<p sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"7\" sourceendlinenumber=\"7\">Use the EdgeCmd utility to configure Edge Data Store.</p>\n<h2 id=\"change-all-values-of-a-facet\" sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"9\" sourceendlinenumber=\"9\">Change all values of a facet</h2>\n<p sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"11\" sourceendlinenumber=\"11\">Complete the following to change all values of a facet:</p>\n<ol sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"13\" sourceendlinenumber=\"20\">\n<li sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"13\" sourceendlinenumber=\"13\">Access the EdgeCmd utility through a command line tool.</li>\n<li sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"14\" sourceendlinenumber=\"20\"><p sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"14\" sourceendlinenumber=\"14\">Type <em>edgecmd Configuration</em>, then the <code>componentId</code> and <code>facetName</code> followed by key=value pairs, and press Enter.</p>\n<p sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"16\" sourceendlinenumber=\"16\"><strong>Example:</strong> Change all values in the &#39;Logging&#39; facet:</p>\n<pre sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"18\" sourceendlinenumber=\"20\"><code class=\"lang-bash\">edgecmd Configuration Storage Logging LogLevel=Warning LogFileSizeLimitBytes=32768 LogFileCountLimit=5\n</code></pre></li>\n</ol>\n<h2 id=\"configure-keyvalue-pairs-in-a-facet\" sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"22\" sourceendlinenumber=\"22\">Configure key=value pairs in a facet</h2>\n<p sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"24\" sourceendlinenumber=\"24\">Complete the following to configure any number of valid key=value pairs in a facet:</p>\n<ol sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"26\" sourceendlinenumber=\"33\">\n<li sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"26\" sourceendlinenumber=\"26\">Access the EdgeCmd utility through a command line tool.</li>\n<li sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"27\" sourceendlinenumber=\"33\"><p sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"27\" sourceendlinenumber=\"27\">Type <em>edgecmd Configuration</em>, then the <code>componentId</code> and <code>facetName</code> followed by the key=value pairs, and press Enter.</p>\n<p sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"29\" sourceendlinenumber=\"29\"><strong>Example:</strong> Change a single value in the &#39;Logging&#39; facet:</p>\n<pre sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"31\" sourceendlinenumber=\"33\"><code class=\"lang-bash\">edgecmd Configuration Storage Logging LogFileCountLimit=5\n</code></pre></li>\n</ol>\n<h2 id=\"add-an-entry-to-a-collection-configuration\" sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"35\" sourceendlinenumber=\"35\">Add an entry to a collection configuration</h2>\n<p sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"37\" sourceendlinenumber=\"37\">Complete the following to add an entry to a collection configuration:</p>\n<ol sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"39\" sourceendlinenumber=\"47\">\n<li sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"39\" sourceendlinenumber=\"39\">Access the EdgeCmd utility through a command line tool.</li>\n<li sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"40\" sourceendlinenumber=\"47\"><p sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"40\" sourceendlinenumber=\"40\">Type <em>edgecmd Configuration</em>, then the <code>componentId</code> and <code>facetName</code> followed by the key=value pairs, and press Enter.</p>\n<p sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"42\" sourceendlinenumber=\"42\"><strong>Example:</strong> Add the &#39;Health Endpoints&#39; facet to the &#39;System&#39; component:</p>\n<pre sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"44\" sourceendlinenumber=\"46\"><code class=\"lang-bash\">edgecmd Configuration System HealthEndpoints Id=endpoint_1 Endpoint=endpointURL UserName=UserName Password=Password\n</code></pre><p sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"47\" sourceendlinenumber=\"47\"> <strong>Note:</strong> If an entry with the specified ID already exists, it will be updated based on the new key=value pairs.</p>\n</li>\n</ol>\n<h2 id=\"configure-with-json-files\" sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"49\" sourceendlinenumber=\"49\">Configure with JSON Files</h2>\n<p sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"51\" sourceendlinenumber=\"51\">Configure Edge Data Store by a JSON file input into the EdgeCmd application. A file import completely replaces the existing configurations; therefore, you cannot use it to change individual values in a facet without modifying others.</p>\n<h3 id=\"import-bulk-configuration\" sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"53\" sourceendlinenumber=\"53\">Import bulk configuration</h3>\n<p sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"55\" sourceendlinenumber=\"55\">Complete the following to import a bulk configuration:</p>\n<ol sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"57\" sourceendlinenumber=\"62\">\n<li sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"57\" sourceendlinenumber=\"57\">Access the EdgeCmd utility through a command line tool.</li>\n<li sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"58\" sourceendlinenumber=\"62\"><p sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"58\" sourceendlinenumber=\"58\">Type the following command, replacing <code>&lt;PathToJsonFile&gt;</code> with the path to the file, and press Enter.</p>\n<pre sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"60\" sourceendlinenumber=\"62\"><code class=\"lang-bash\">edgecmd Configuration file=&lt;PathToJsonFile&gt;\n</code></pre></li>\n</ol>\n<h3 id=\"import-facet-specific-configuration\" sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"64\" sourceendlinenumber=\"64\">Import facet specific configuration</h3>\n<p sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"66\" sourceendlinenumber=\"66\">Complete the following to import a facet specific configuration file for a component:</p>\n<ol sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"68\" sourceendlinenumber=\"73\">\n<li sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"68\" sourceendlinenumber=\"68\">Access the EdgeCmd utility through a command line tool.</li>\n<li sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"69\" sourceendlinenumber=\"73\"><p sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"69\" sourceendlinenumber=\"69\">Type the following command, replacing <code>&lt;componentId&gt;</code> with the ID of the component, <code>&lt;facetName&gt;</code> with the name of the facet, and <code>&lt;PathToJsonFile&gt;</code> with the path to the file. Then press Enter.</p>\n<pre sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"71\" sourceendlinenumber=\"73\"><code class=\"lang-bash\">edgecmd Configuration &lt;componentId&gt; &lt;facetName&gt; file=&lt;PathToJsonFile&gt;\n</code></pre></li>\n</ol>\n<h3 id=\"import-facets-configuration-in-bulk\" sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"75\" sourceendlinenumber=\"75\">Import facets configuration in bulk</h3>\n<p sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"77\" sourceendlinenumber=\"78\">Complete the following steps to import a file with configuration for individual facets as a bulk file import operation:\n    <strong>Note:</strong> The file must contain only information for the given component ID. </p>\n<ol sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"80\" sourceendlinenumber=\"115\">\n<li sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"80\" sourceendlinenumber=\"80\">Access the EdgeCmd utility through a command line tool.</li>\n<li sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"81\" sourceendlinenumber=\"115\"><p sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"81\" sourceendlinenumber=\"81\">Type the following command, replacing the file name as shown in the <em>Bulk_Storage_Runtime.json</em> example, and press Enter.</p>\n<pre sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"83\" sourceendlinenumber=\"85\"><code class=\"lang-bash\">edgecmd Configuration file=&quot;~/Bulk_Storage_Runtime.json&quot;\n</code></pre><p sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"87\" sourceendlinenumber=\"87\"><strong>Example:</strong></p>\n<pre sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"89\" sourceendlinenumber=\"102\"><code class=\"lang-JSON\">{\n         &quot;Storage&quot;: {\n         &quot;Runtime&quot;: {\n             &quot;StreamStorageLimitMb&quot;: 66,\n             &quot;StreamStorageTargetMb&quot;: 33,\n             &quot;IngressDebugExpiration&quot;: &quot;2020-07-08T01:00:00&quot;,\n             &quot;CheckpointRateInSec&quot;: 6,\n             &quot;TransactionLogLimitMB&quot;: 350,\n             &quot;EnableTransactionLog&quot;: true\n         }\n     }\n }\n</code></pre><p sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"104\" sourceendlinenumber=\"104\"> <strong>Note:</strong> The command only affects the specified key-value pairs for the &#39;Runtime&#39; facet in the &#39;Storage&#39; component. It does not change any other components or facets; however, import affects all key-value pairs in the facet. If you import the following example JSON file, the &#39;StreamStorageLimitMb&#39; and &#39;StreamStorageTargetMb&#39; values will be modified and the remaining values in the &#39;Runtime&#39; facet will be reset to their default values (IngressDebugExpiration, CheckpointRateInSec, TransactionLogLimitMB, and EnableTransactionLog).</p>\n<pre sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"106\" sourceendlinenumber=\"115\"><code class=\"lang-JSON\">{\n    &quot;Storage&quot;: {\n        &quot;Runtime&quot;: {\n            &quot;StreamStorageLimitMb&quot;: 66,\n            &quot;StreamStorageTargetMb&quot;: 33,\n        }\n    }\n}\n</code></pre></li>\n</ol>\n","type":"Conceptual","source":{"$type":"Microsoft.DocAsCode.DataContracts.Common.SourceDetail, Microsoft.DocAsCode.DataContracts.Common","startLine":0,"endLine":0,"isExternal":false},"path":"V1/CommandLine/Configure Edge Data Store_1-0.md","documentation":{"$type":"Microsoft.DocAsCode.DataContracts.Common.SourceDetail, Microsoft.DocAsCode.DataContracts.Common","startLine":0,"endLine":0,"isExternal":false},"_enableSearch":true,"_docfxVersion":"2.50.0.0","_systemKeys":{"$type":"System.String[], mscorlib","$values":["conceptual","type","source","path","documentation","title","rawTitle","wordCount"]},"rawTitle":"<h1 id=\"configure-edge-data-store\" sourcefile=\"V1/CommandLine/Configure Edge Data Store_1-0.md\" sourcestartlinenumber=\"5\" sourceendlinenumber=\"5\">Configure Edge Data Store</h1>","uid":"ConfigureEdgeDataStore1-0","title":"Configure Edge Data Store"}o  38  {"$type":"System.Collections.Generic.Dictionary`2[[System.String, mscorlib],[System.Object, mscorlib]], mscorlib","IsUserDefinedTitle":false,"XrefSpec":{"$type":"Microsoft.DocAsCode.Plugins.XRefSpec, Microsoft.DocAsCode.Plugins","uid":"ConfigureEdgeDataStore1-0","name":"Configure Edge Data Store","href":"~/V1/CommandLine/Configure Edge Data Store_1-0.md"}}	   <8   