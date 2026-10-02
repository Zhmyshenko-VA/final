<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9"
  exclude-result-prefixes="s">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html lang="en">
<head>
<meta charset="UTF-8"/>
<meta name="robots" content="noindex, follow"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>XML Sitemap — 5Gringos</title>
<link rel="icon" type="image/webp" href="/images/favicon.webp"/>
<style>
  *{box-sizing:border-box}
  body{margin:0;font:14px/1.5 -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Helvetica,Arial,sans-serif;color:#1d2327;background:#f0f0f1}
  header{background:#000605;color:#fff;padding:28px 16px}
  header .wrap,main{max-width:1100px;margin:0 auto}
  h1{margin:0 0 6px;font-size:24px;font-weight:600;display:flex;align-items:center;gap:10px}
  h1 img{width:32px;height:32px}
  header p{margin:0;color:#c3c4c7}
  header a{color:#ffb800}
  main{padding:24px 16px}
  .count{margin:0 0 12px;color:#50575e}
  .card{background:#fff;border:1px solid #dcdcde;border-radius:6px;overflow-x:auto}
  table{width:100%;min-width:520px;border-collapse:collapse}
  th{text-align:left;background:#f6f7f7;font-weight:600;padding:12px 16px;border-bottom:1px solid #dcdcde;white-space:nowrap}
  td{padding:12px 16px;border-bottom:1px solid #f0f0f1;vertical-align:top}
  tr:last-child td{border-bottom:0}
  tbody tr:hover{background:#f9f9f9}
  td a{color:#2271b1;text-decoration:none;white-space:nowrap}
  td a:hover{text-decoration:underline}
  .date{white-space:nowrap;color:#50575e}
  footer{text-align:center;color:#8c8f94;font-size:12px;padding:0 16px 24px}
</style>
</head>
<body>
<header><div class="wrap">
  <h1><img src="/images/favicon.webp" alt=""/>XML Sitemap</h1>
  <p>This XML sitemap is used by search engines such as Google and Bing to discover the pages of
  <a href="https://5gringoscasino.vip/">5gringoscasino.vip</a>.
  <a href="https://www.sitemaps.org/" rel="noopener">Learn more about XML sitemaps</a>.</p>
</div></header>
<main>
  <p class="count">This sitemap contains <strong><xsl:value-of select="count(s:urlset/s:url)"/></strong> URLs.</p>
  <div class="card">
  <table>
    <thead><tr><th>#</th><th>URL</th><th>Last modified</th></tr></thead>
    <tbody>
    <xsl:for-each select="s:urlset/s:url">
      <tr>
        <td><xsl:value-of select="position()"/></td>
        <td><a href="{s:loc}"><xsl:value-of select="s:loc"/></a></td>
        <td class="date"><xsl:value-of select="s:lastmod"/></td>
      </tr>
    </xsl:for-each>
    </tbody>
  </table>
  </div>
</main>
<footer>5Gringos · XML Sitemap</footer>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
