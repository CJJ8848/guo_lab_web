<%--
  Created by IntelliJ IDEA.
  User: cuijiajun
  Date: 2021/8/31
  Time: 8:08 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="CLASTR, the Cellosaurus STR similarity search tool enables users to compare one or
     more STR profiles with those available in the Cellosaurus cell line knowledge resource. It aims to help researchers
      in the process of cell line authentication and detecting potential contamination and misidentification cases.">
    <meta name="keywords" content="CLASTR,Cellosaurus,cell line,STR profiling,authentication,contamination,misidentification">
    <meta name="author" content="Thibault Robin">
    <meta name="google-site-verification" content="koT-xtT9NtlnuCtfwfG2WQRCWlsRJnTqAuU41aU-7nI" />
    <title>CLASTR-guo lab</title>
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans:400,400i,700" rel="stylesheet">

    <link href="/guo_lab_web_war/static/assets/css/clastr.css?v=1568190561277" rel="stylesheet" type="text/css">
    <link href="/guo_lab_web_war/static/assets/img/icons/head.png" rel="icon">

    <script type="text/javascript" src="/guo_lab_web_war/static/assets/js/clastr.js?v=1568190561277"></script>
</head>
<body>
<main id="content">
    <form id="form" action="" method="post" name="indexform">
        <div id="form-header">
            <h1 id="form-title" class="unselectable">NGSTR <span id="form-version">1.0 -Guo lab</span></h1>
            <span id="form-subtitle" class="unselectable">A NGS-based STR similarity search tool</span>
        </div>
        <div id="form-body">
            <div id="form-body-left">
                <ul>
                    <li class="unselectable active" id="input-human">Human</li>
                </ul>
                <h2 class="unselectable" id="markers-title">Markers</h2>

                <div id="markers-human">
                    <table class="markers">
                        <tr>
                            <td><label for="input-D1S1677" class="label-human"><a href="https://strbase.nist.gov/str_D1S1677.htm" target="_blank">D1S1677</a></label></td>
                            <td><input name="input-D1S1677" id="input-D1S1677" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-F13B" class="label-human"><a href="https://strbase.nist.gov/str_F13B.htm" target="_blank">F13B</a></label></td>
                            <td><input name="input-F13B" id="input-F13B" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-Pseudo-F13B" class="label-human"><a target="_blank">Pseudo-F13B</a></label></td>
                            <td><input name="input-Pseudo-F13B" id="input-Pseudo-F13B" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-D2S441" class="label-human"><a href="https://strbase.nist.gov/str_D2S441.htm" target="_blank">D2S441</a></label></td>
                            <td><input name="input-D2S441" id="input-D2S441" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-TPOX" class="label-human"><a href="https://strbase.nist.gov/str_TPOX.htm" target="_blank">TPOX</a></label></td>
                            <td><input name="input-TPOX" id="input-TPOX" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-D3S1359" class="label-human"><a href="https://strbase.nist.gov/str_D3S1359.htm" target="_blank">D3S1359</a></label></td>
                            <td><input name="input-D3S1359" id="input-D3S1359" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-D4S2408" class="label-human"><a href="https://strbase.nist.gov/str_D4S2408.htm" target="_blank">D4S2408</a></label></td>
                            <td><input name="input-D4S2408" id="input-D4S2408" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-CSF1PO" class="label-human"><a href="https://strbase.nist.gov/str_CSF1PO.htm" target="_blank">CSF1PO</a></label></td>
                            <td><input name="input-CSF1PO" id="input-CSF1PO" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-D5S818" class="label-human"><a href="https://strbase.nist.gov/str_D5S818.htm" target="_blank">D5S818</a></label></td>
                            <td><input name="input-D5S818" id="input-D5S818" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-D6S1043" class="label-human"><a href="https://strbase.nist.gov/str_D6S1043.htm" target="_blank">D6S1043</a></label></td>
                            <td><input name="input-D6S1043" id="input-D6S1043" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-F13A01" class="label-human"><a href="https://strbase.nist.gov/str_f13a.htm" target="_blank">F13A01</a></label></td>
                            <td><input name="input-F13A01"  id="input-F13A01" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-D7SS820" class="label-human"><a href="" target="_blank">D7SS820</a></label></td>
                            <td><input name="input-D7SS820" id="input-D7SS820" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-D8S1113" class="label-human"><a href="https://strbase.nist.gov/str_D8S1113.htm" target="_blank">D8S1113</a></label></td>
                            <td><input name="input-D8S1113" id="input-D8S1113" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-D9S938" class="label-human"><a href="https://strbase.nist.gov/str_D9S938.htm" target="_blank">D9S938</a></label></td>
                            <td><input name="input-D9S938" id="input-D9S938" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-D9S926" class="label-human"><a href="https://strbase.nist.gov/str_D9S926.htm" target="_blank">D9S926</a></label></td>
                            <td><input name="input-D9S926" id="input-D9S926" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-D10S1248" class="label-human"><a href="https://strbase.nist.gov/str_D10S1248.htm" target="_blank">D10S1248</a></label></td>
                            <td><input name="input-D10S1248" id="input-D10S1248" type="text" value=""></td>
                        </tr>
                    </table>
                    <table class="markers">
                        <tr>
                            <td><label for="input-D11S4463" class="label-human"><a href="https://strbase.nist.gov/str_D11S4463.htm" target="_blank">D11S4463</a></label></td>
                            <td><input name="input-D11S4463" id="input-D11S4463" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-TH01" class="label-human"><a href="https://strbase.nist.gov/str_TH01.htm" target="_blank">TH01</a></label></td>
                            <td><input name="input-TH01" id="input-TH01" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-D12S375" class="label-human"><a href="https://strbase.nist.gov/str_D12S375.htm" target="_blank">D12S375</a></label></td>
                            <td><input name="input-D12S375" id="input-D12S375" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-VWA" class="label-human"><a href="https://strbase.nist.gov/str_vWA.htm" target="_blank">VWA</a></label></td>
                            <td><input name="input-VWA" id="input-VWA" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-D13S317" class="label-human"><a href="https://strbase.nist.gov/str_D13S317.htm" target="_blank">D13S317</a></label></td>
                            <td><input name="input-D13S317" id="input-D13S317" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-D14S306" class="label-human"><a href="https://strbase.nist.gov/str_D14S306.htm" target="_blank">D14S306</a></label></td>
                            <td><input name="input-D14S306" id="input-D14S306" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-D15S817" class="label-human"><a href="https://strbase.nist.gov/str_D15S817.htm" target="_blank">D15S817</a></label></td>
                            <td><input name="input-D15S817" id="input-D15S817" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-D16S539" class="label-human"><a href="https://strbase.nist.gov/str_D16S539.htm" target="_blank">D16S539</a></label></td>
                            <td><input name="input-D16S539" id="input-D16S539" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-D17S974" class="label-human"><a href="https://strbase.nist.gov/str_D17S974.htm" target="_blank">D17S974</a></label></td>
                            <td><input name="input-D17S974" id="input-D17S974" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-D18S51" class="label-human"><a href="https://strbase.nist.gov/str_D18S51.htm" target="_blank">D18S51</a></label></td>
                            <td><input name="input-D18S51" id="input-D18S51" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-D19S253" class="label-human"><a href="https://strbase.nist.gov/str_D19S253.htm" target="_blank">D19S253</a></label></td>
                            <td><input name="input-D19S253" id="input-D19S253" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-D20S482" class="label-human"><a href="https://strbase.nist.gov/str_D20S482.htm" target="_blank">D20S482</a></label></td>
                            <td><input name="input-D20S482" id="input-D20S482" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-D21S1409" class="label-human"><a href="https://strbase.nist.gov/str_D21S1409.htm" target="_blank">D21S1409</a></label></td>
                            <td><input name="input-D21S1409" id="input-D21S1409" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-D22S873" class="label-human"><a href="https://strbase.nist.gov/str_D22S873.htm" target="_blank">D22S873</a></label></td>
                            <td><input name="input-D22S873" id="input-D22S873" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-Amelogenin_chrX" class="label-human"><a href="https://strbase.nist.gov/Amelogenin.htm" target="_blank">Amelogenin_chrX</a></label></td>
                            <td><input name="input-Amelogenin_chrX" id="input-Amelogenin_chrX" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="input-Amelogenin_chrY" class="label-human"><a href="https://strbase.nist.gov/Amelogenin.htm" target="_blank">Amelogenin_chrY</a></label></td>
                            <td><input name="input-Amelogenin_chrY" id="input-Amelogenin_chrY" type="text" value=""></td>
                        </tr>
                    </table>
                    <img src="/guo_lab_web_war/static/assets/img/icons/human.svg" alt="Human phylopic" height="100px">
                    <div class="sample-label" id="sample-human"></div>
                </div>
            </div>
            <div id="form-body-right">
                <div id="form-scores">
                    <h2 class="unselectable">Scoring</h2>
                    <label class="unselectable"><em>Algorithms:</em></label>
                    <label class="radio-container" for="input-tanabe">
                        <input id="input-tanabe" type="radio" name="score" value="1" checked>
                        <a title="<b class='unselectable'>Formula:</b><br><br><img src='assets/img/equations/tanabe.svg' alt='' height='34'><br><br>
                            <b>Article:</b> DOI=<a class='ab' href='https://www.doi.org/10.11418/jtca1981.18.4_329' target='_blank'>10.11418/jtca1981.18.4_329</a><br>
                            <b>Review:</b> PubMed=<a class='ab' href='https://www.ncbi.nlm.nih.gov/pubmed/23136038' target='_blank'>23136038</a>">Tanabe</a><br>
                        <span class="checkmark"></span>
                    </label>
                    <label class="radio-container" for="input-masters-query">
                        <input id="input-masters-query" type="radio" name="score" value="2">
                        <a title="<b class='unselectable'>Formula:</b><br><br><img src='assets/img/equations/masters1.svg' alt='' height='34'><br><br>
                            <b>Article:</b> PubMed=<a class='ab' href='https://www.ncbi.nlm.nih.gov/pubmed/11416159' target='_blank'>11416159</a><br>
                            <b>Review:</b> PubMed=<a class='ab' href='https://www.ncbi.nlm.nih.gov/pubmed/23136038' target='_blank'>23136038</a>">Masters (vs. query)</a><br>
                        <span class="checkmark"></span>
                    </label>
                    <label class="radio-container" for="input-masters-reference" style="padding-bottom: 10px">
                        <input id="input-masters-reference" type="radio" name="score" value="3">
                        <a title="<b class='unselectable'>Formula:</b><br><br><img src='assets/img/equations/masters2.svg' alt='' height='32'><br><br>
                            <b>Article:</b> PubMed=<a class='ab' href='https://www.ncbi.nlm.nih.gov/pubmed/11416159' target='_blank'>11416159</a><br>
                            <b>Review:</b> PubMed=<a class='ab' href='https://www.ncbi.nlm.nih.gov/pubmed/23136038' target='_blank'>23136038</a>">Masters (vs. reference)</a><br>
                        <span class="checkmark"></span>
                    </label>
                    <label class="unselectable"><em>Modes:</em></label>
                    <label class="radio-container" for="input-nonempty">
                        <input id="input-nonempty" type="radio" name="mode" value="1" checked>
                        <a title="The score is computed on the markers that have allele data for both the query and the reference">Non-empty markers</a>
                        <span class="checkmark"></span>
                    </label>
                    <label class="radio-container" for="input-query">
                        <input id="input-query" type="radio" name="mode" value="2">
                        <a title="The score is computed on the markers for which the user inputted allele data even if the reference is missing allele data">Query markers</a>
                        <span class="checkmark"></span>
                    </label>
                    <label class="radio-container" for="input-reference" style="padding-bottom:10px">
                        <input id="input-reference" type="radio" name="mode" value="3">
                        <a title="The score is computed on the markers for which reference allele data is available even if the query is missing allele data">Reference markers</a>
                        <span class="checkmark"></span>
                    </label>
                    <label class="check-container" id="label-include-Amelogenin">
                        <input id="check-include-Amelogenin" type="checkbox"><span id="check-Amelogenin" class="checkmark"></span>
                        <a title="Decide if Amelogenin is taken into account<br>for the score computation">Include Amelogenin</a>
                    </label>
                </div>
                <div id="form-filters">
                    <h2 class="unselectable">Filters</h2>
                    <table>
                        <tr>
                            <td><label class="unselectable" for="filter-score">Score Filter:</label></td>
                            <td>
                                <div class="select-container">
                                    <select id="filter-score">
                                        <option value="0">0%</option>
                                        <option value="10">10%</option>
                                        <option value="20">20%</option>
                                        <option value="30">30%</option>
                                        <option value="40">40%</option>
                                        <option value="50">50%</option>
                                        <option value="60" selected>60%</option>
                                        <option value="70">70%</option>
                                        <option value="80">80%</option>
                                        <option value="90">90%</option>
                                        <option value="100">100%</option>
                                    </select>
                                </div></td>
                        </tr>
                        <tr>
                            <td><label class="unselectable" for="filter-markers">Min Markers:</label></td>
                            <td><div class="select-container">
                                <select id="filter-markers">
                                    <option value="0">0</option>
                                    <option value="4">4</option>
                                    <option value="8" selected>8</option>
                                    <option value="13">13</option>
                                    <option value="15">15</option>
                                    <option value="17">17</option>
                                    <option value="20">20</option>
                                    <option value="23">23</option>
                                    <option value="26">26</option>
                                </select>
                            </div></td>
                        </tr>
                        <tr>
                            <td><label class="unselectable" for="filter-size">Max Results:</label></td>
                            <td><div class="select-container">
                                <select id="filter-size">
                                    <option value="100">100</option>
                                    <option value="200" selected>200</option>
                                    <option value="300">300</option>
                                    <option value="400">400</option>
                                    <option value="500">500</option>
                                    <option value="600">600</option>
                                    <option value="700">700</option>
                                    <option value="800">800</option>
                                    <option value="900">900</option>
                                    <option value="1000">1000</option>
                                </select>
                            </div></td>
                        </tr>
                    </table>
                </div>
                <div id="form-start">
                    <h2 class="unselectable">Actions</h2>
                    <button id="search" type="submit" onclick="match()">Search</button>
                </div>
                <div id="form-buttons">
                    <button id="load" onclick="importFile.openDialog()">Load File</button>
                    <button id="example" onclick="example()">Example</button>
                    <button id="reset" onclick="reset()">Reset</button>
                    <button type="button" onclick="deposit()">Deposit</button>
                    <div>
                        <button id="help" class="half" style="border-right:1px solid #ccc" onclick="window.open('help.html', '_blank');">Help</button>
                        <button id="about" class="half" onclick="window.open('about.html', '_blank');">About</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script>
        function match(){
            document.indexform.action="<%=request.getContextPath()%>/match";
            document.indexform.submit();
        }
        function deposit(){
            document.indexform.action="<%=request.getContextPath()%>/jsp/deposit.jsp";
            document.indexform.submit();
        }
    </script>
    <noscript>
        <div class="alert error" style="display: block">
            <span><strong>Error:</strong>&nbsp;JavaScript seems to be blocked by a browser extension.</span>
        </div>
    </noscript>
    <div class="alert error" id="error">
        <span><strong>Error:</strong>&nbsp;Internet Explorer is not supported. Please upgrade to <a href='https://www.microsoft.com/en-us/windows/microsoft-edge' target='_blank'>Edge</a>
            or move to another supported browser (<a href='https://www.google.com/chrome/' target='_blank'>Chrome</a>, <a href='https://www.mozilla.org/en-US/firefox/new/' target='_blank'>Firefox</a> or
            <a href='https://www.opera.com/' target='_blank'>Opera</a>).</span>
    </div>
    <div class="alert" id="warning">
        <span><strong>Warning:</strong>&nbsp;The query returned no results. Please add more marker data or change your filters.</span>
    </div>
    <div id="results">
        <div id="caption">
            <p>Results of similarity search on the <span class="text-blue" id="caption-count"></span> <span class="text-purple" id="caption-species"></span> cell lines with STR profiles in Cellosaurus release <span class="text-blue" id="caption-release"></span></p>
            <button id="export" onclick="exportTable.openDialog()">Export table</button></div>
        <table id="table-results"></table>
    </div>
</main>
<!--
<footer id="sib_footer">
    <div id="sib_footer_content" property="schema:creator" typeof="schema:NGO">
        <a property="schema:url" href="https://sib.swiss/"><span property="schema:name">SIB Swiss Institute of Bioinformatics</span></a><span>&nbsp;|&nbsp;</span><a href="https://www.expasy.org/disclaimer.html">Disclaimer</a>
        <div id="sib_footer_logos">
            <span id="article"><strong>Article: </strong><a href="https://doi.org/10.1002/IJC.32639" target="_blank">Robin T, Capes‐Davis A, Bairoch A, IJC (2019)</a></span>
            <a id="twitter" class="logo" href="https://twitter.com/cellosaurus" target="_blank"></a>
            <a id="github" class="logo" href="https://github.com/calipho-sib/cellosaurus-STR-similarity-search-tool" target="_blank"></a>
        </div>
        <div id="sib_footer_right">
            <a href="#" id="sib_footer_gototop"><span style="padding-left: 10px">Back to the Top</span></a>
        </div>
    </div>
</footer
>-->
<div class="dialog" id="dialog-import" style="display:none" title="Load File">
    <fieldset>
        <div id="parameters-help">Parameters used are those selected on the web page</div>
        <div>
            <input type="file" id="input-file" onchange="importFile.read(this.files)" accept=".xls, .xlsx, .csv, .tsv, .txt">
        </div>
        <div id="import-help"></div>
        <div id="samples"></div>
        <div id="samples-wrapper">
            <label for="import-name">Result file name:</label><br>
            <input id="import-name" type="text" name="name" value="CLASTR_Results" class="text ui-widget-content ui-corner-all">
            <label for="import-extension"></label>
            <div class="select-container">
                <select id="import-extension" onchange='switchIcon("import", this.value)'>
                    <option value="xlsx" selected>.xlsx</option>
                    <option value="csv">.csv</option>
                    <option value="json">.json</option>
                </select>
            </div>
        </div>
        <img id="import-xlsx" src="assets/img/icons/xlsx.png" alt="XLSX" height="64" width="64">
        <img id="import-csv" style="display:none" src="assets/img/icons/csv.png" alt="CSV" height="64" width="64">
        <img id="import-json" style="display:none" src="assets/img/icons/json.png" alt="JSON" height="64" width="64">
    </fieldset>
    <div id="import-progressbar" class="progressbar">
        <span style="width: 100%"></span>
    </div>
</div>
<div class="dialog" id="dialog-export" style="display:none" title="Export Table">
    <fieldset>
        <label for="export-name">Result file name:</label><br>
        <input id="export-name" type="text" name="name" value="CLASTR_Results" class="text ui-widget-content ui-corner-all">
        <label for="export-extension"></label>
        <div class="select-container">
            <select id="export-extension" onchange='switchIcon("export", this.value)'>
                <option value="xlsx" selected>.xlsx</option>
                <option value="csv">.csv</option>
                <option value="json">.json</option>
            </select>
        </div>
        <label for="description">Description <em>(optional)</em>:</label><br>
        <input type="text" name="description" id="description" value="" class="text ui-widget-content ui-corner-all"><br>
        <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
    </fieldset>
    <img id="export-xlsx" src="assets/img/icons/xlsx.png" alt="XLSX" height="64" width="64">
    <img id="export-csv" style="display:none" src="assets/img/icons/csv.png" alt="CSV" height="64" width="64">
    <img id="export-json" style="display:none" src="assets/img/icons/json.png" alt="JSON" height="64" width="64">
    <div id="export-progressbar" class="progressbar">
        <span style="width: 100%"></span>
    </div>
</div>
<button id="scroller" onclick="scrollUp()">TOP</button>
<script>
    //display an error message if the browser is Internet Explorer
    if (/MSIE (\d+\.\d+);/.test(navigator.userAgent) || navigator.userAgent.indexOf("Trident/") > -1 ){
        document.getElementById("error").style.display = "block";
    }
</script>
<script async="async" src='https://www.google-analytics.com/analytics.js' type="text/javascript"></script>
<script type="text/javascript">
    window.ga=window.ga||function(){(ga.q=ga.q||[]).push(arguments)};ga.l=+new Date;
    ga('create', 'UA-23625305-1', 'auto');
    ga('set', 'anonymizeIp', true);
    ga('send', 'pageview');
</script>
</body>
</html>
