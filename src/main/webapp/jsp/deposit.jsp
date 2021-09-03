<%--
  Created by IntelliJ IDEA.
  User: cuijiajun
  Date: 2021/8/31
  Time: 8:00 下午
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
    <link href="external/jquery-ui.min.css" rel="stylesheet">
    <link href="/guo_lab_web_war/static/assets/css/clastr.css?v=1568190561277" rel="stylesheet" type="text/css">
    <link href="/guo_lab_web_war/static/assets/img/icons/head.png" rel="icon">
    <script type="text/javascript" src="external/jquery.min.js"></script>
    <script type="text/javascript" src="external/jquery-ui.min.js"></script>
    <script type="text/javascript" src="external/papaparse.min.js" defer></script>
    <script type="text/javascript" src="external/xlsx.full.min.js" defer></script>
    <script type="text/javascript" src="/guo_lab_web_war/static/assets/js/clastr.js?v=1568190561277"></script>
</head>
<body>
<main id="content">
    <form id="form" action="<%=request.getContextPath()%>/deposit" method="post">
        <div id="form-header">
            <h1 id="form-title" class="unselectable">NGSTR <span id="form-version">1.0 -Guo lab</span></h1>
            <span id="form-subtitle" class="unselectable">A NGS-based STR similarity search tool</span>
        </div>
        <div id="form-body">
            <div id="form-body-deposit" style="display:inline;">
                <h2 class="unselectable" style="margin: 20px auto 15px 30px;">Cellline</h2>
                <table style="padding-left:10px;margin: 0px auto 0px 55px;" class="markers">
                    <tr>
                        <td><label for="deposit-cellline" class="label-human"><h2 class="unselectable">Cellline</h2></label></td>
                        <td><input name="deposit-cellline" id="deposit-cellline" type="text" value=""></td>
                    </tr>
                </table>
                <h2 class="unselectable" id="markers-title" style="margin: 10px auto 5px 30px;">Markers</h2>
                <div id="markers-human" style="margin: 5px auto 15px 30px;">
                    <table class="markers">
                        <tr>
                            <td><label for="deposit-D1S1677" class="label-human"><a href="https://strbase.nist.gov/str_D1S1677.htm" target="_blank">D1S1677</a></label></td>
                            <td><input name="deposit-D1S1677" id="deposit-D1S1677" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-F13B" class="label-human"><a href="https://strbase.nist.gov/str_F13B.htm" target="_blank">F13B</a></label></td>
                            <td><input name="deposit-F13B" id="deposit-F13B" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-Pseudo-F13B" class="label-human"><a target="_blank">Pseudo-F13B</a></label></td>
                            <td><input name="deposit-Pseudo-F13B" id="deposit-Pseudo-F13B" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-D2S441" class="label-human"><a href="https://strbase.nist.gov/str_D2S441.htm" target="_blank">D2S441</a></label></td>
                            <td><input name="deposit-D2S441" id="deposit-D2S441" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-TPOX" class="label-human"><a href="https://strbase.nist.gov/str_TPOX.htm" target="_blank">TPOX</a></label></td>
                            <td><input name="deposit-TPOX" id="deposit-TPOX" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-D3S1359" class="label-human"><a href="https://strbase.nist.gov/str_D3S1359.htm" target="_blank">D3S1359</a></label></td>
                            <td><input name="deposit-D3S1359" id="deposit-D3S1359" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-D4S2408" class="label-human"><a href="https://strbase.nist.gov/str_D4S2408.htm" target="_blank">D4S2408</a></label></td>
                            <td><input name="deposit-D4S2408" id="deposit-D4S2408" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-CSF1PO" class="label-human"><a href="https://strbase.nist.gov/str_CSF1PO.htm" target="_blank">CSF1PO</a></label></td>
                            <td><input name="deposit-CSF1PO" id="deposit-CSF1PO" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-D5S818" class="label-human"><a href="https://strbase.nist.gov/str_D5S818.htm" target="_blank">D5S818</a></label></td>
                            <td><input name="deposit-D5S818" id="deposit-D5S818" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-D6S1043" class="label-human"><a href="https://strbase.nist.gov/str_D6S1043.htm" target="_blank">D6S1043</a></label></td>
                            <td><input name="deposit-D6S1043" id="deposit-D6S1043" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-F13A01" class="label-human"><a href="https://strbase.nist.gov/str_f13a.htm" target="_blank">F13A01</a></label></td>
                            <td><input name="deposit-F13A01" id="deposit-F13A01" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-D7SS820" class="label-human"><a href="" target="_blank">D7SS820</a></label></td>
                            <td><input name="deposit-D7SS820" id="deposit-D7SS820" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-D8S1113" class="label-human"><a href="https://strbase.nist.gov/str_D8S1113.htm" target="_blank">D8S1113</a></label></td>
                            <td><input name="deposit-D8S1113" id="deposit-D8S1113" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-D9S938" class="label-human"><a href="https://strbase.nist.gov/str_D9S938.htm" target="_blank">D9S938</a></label></td>
                            <td><input name="deposit-D9S938" id="deposit-D9S938" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-D9S926" class="label-human"><a href="https://strbase.nist.gov/str_D9S926.htm" target="_blank">D9S926</a></label></td>
                            <td><input name="deposit-D9S926" id="deposit-D9S926" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-D10S1248" class="label-human"><a href="https://strbase.nist.gov/str_D10S1248.htm" target="_blank">D10S1248</a></label></td>
                            <td><input name="deposit-D10S1248" id="deposit-D10S1248" type="text" value=""></td>
                        </tr>
                    </table>
                    <table class="markers">
                        <tr>
                            <td><label for="deposit-D11S4463" class="label-human"><a href="https://strbase.nist.gov/str_D11S4463.htm" target="_blank">D11S4463</a></label></td>
                            <td><input name="deposit-D11S4463" id="deposit-D11S4463" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-TH01" class="label-human"><a href="https://strbase.nist.gov/str_TH01.htm" target="_blank">TH01</a></label></td>
                            <td><input name="deposit-TH01" id="deposit-TH01" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-D12S375" class="label-human"><a href="https://strbase.nist.gov/str_D12S375.htm" target="_blank">D12S375</a></label></td>
                            <td><input name="deposit-D12S375" id="deposit-D12S375" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-VWA" class="label-human"><a href="https://strbase.nist.gov/str_vWA.htm" target="_blank">VWA</a></label></td>
                            <td><input name="deposit-VWA" id="deposit-VWA" id="deposit-VWA" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-D13S317" class="label-human"><a href="https://strbase.nist.gov/str_D13S317.htm" target="_blank">D13S317</a></label></td>
                            <td><input name="deposit-D13S317" id="deposit-D13S317" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-D14S306" class="label-human"><a href="https://strbase.nist.gov/str_D14S306.htm" target="_blank">D14S306</a></label></td>
                            <td><input name="deposit-D14S306" id="deposit-D14S306" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-D15S817" class="label-human"><a href="https://strbase.nist.gov/str_D15S817.htm" target="_blank">D15S817</a></label></td>
                            <td><input name="deposit-D15S817" id="deposit-D15S817" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-D16S539" class="label-human"><a href="https://strbase.nist.gov/str_D16S539.htm" target="_blank">D16S539</a></label></td>
                            <td><input name="deposit-D16S539" id="deposit-D16S539" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-D17S974" class="label-human"><a href="https://strbase.nist.gov/str_D17S974.htm" target="_blank">D17S974</a></label></td>
                            <td><input name="deposit-D17S974" id="deposit-D17S974" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-D18S51" class="label-human"><a href="https://strbase.nist.gov/str_D18S51.htm" target="_blank">D18S51</a></label></td>
                            <td><input name="deposit-D18S51" id="deposit-D18S51" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-D19S253" class="label-human"><a href="https://strbase.nist.gov/str_D19S253.htm" target="_blank">D19S253</a></label></td>
                            <td><input name="deposit-D19S253" id="deposit-D19S253" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-D20S482" class="label-human"><a href="https://strbase.nist.gov/str_D20S482.htm" target="_blank">D20S482</a></label></td>
                            <td><input name="deposit-D20S482" id="deposit-D20S482" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-D21S1409" class="label-human"><a href="https://strbase.nist.gov/str_D21S1409.htm" target="_blank">D21S1409</a></label></td>
                            <td><input name="deposit-D21S1409" id="deposit-D21S1409" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-D22S873" class="label-human"><a href="https://strbase.nist.gov/str_D22S873.htm" target="_blank">D22S873</a></label></td>
                            <td><input name="deposit-D22S873" id="deposit-D22S873" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-Amelogenin_chrX" class="label-human"><a href="https://strbase.nist.gov/Amelogenin.htm" target="_blank">Amelogenin_chrX</a></label></td>
                            <td><input name="deposit-Amelogenin_chrX" id="deposit-Amelogenin_chrX" type="text" value=""></td>
                        </tr>
                        <tr>
                            <td><label for="deposit-Amelogenin_chrY" class="label-human"><a href="https://strbase.nist.gov/Amelogenin.htm" target="_blank">Amelogenin_chrY</a></label></td>
                            <td><input name="deposit-Amelogenin_chrY" id="deposit-Amelogenin_chrY" type="text" value=""></td>
                        </tr>
                    </table>
                    <div class="sample-label" id="sample-human"></div>
                    <button id="search" type="submit" style="font-size: 10px;width: 20%;margin: 40px auto 15px 260px;">Deposit</button>

                </div>

            </div>
        </div>

    </form>
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
