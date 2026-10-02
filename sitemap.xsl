<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9"
  xmlns:xhtml="http://www.w3.org/1999/xhtml"
  exclude-result-prefixes="s xhtml">
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
  table{width:100%;min-width:760px;border-collapse:collapse}
  th{text-align:left;background:#f6f7f7;font-weight:600;padding:12px 16px;border-bottom:1px solid #dcdcde;white-space:nowrap}
  td{padding:12px 16px;border-bottom:1px solid #f0f0f1;vertical-align:top}
  tr:last-child td{border-bottom:0}
  tbody tr:hover{background:#f9f9f9}
  td a{color:#2271b1;text-decoration:none;white-space:nowrap}
  td a:hover{text-decoration:underline}
  .alt{list-style:none;margin:0;padding:0}
  .alt li{margin:2px 0;display:flex;gap:8px;align-items:baseline}
  .lang{display:inline-block;white-space:nowrap;min-width:68px;padding:1px 6px;border-radius:3px;background:#e7f5ec;color:#00733e;font:600 12px/1.6 ui-monospace,Menlo,Consolas,monospace;text-align:center}
  .lang.def{background:#fcf0e3;color:#9a5a00}
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
    <thead><tr><th>#</th><th>URL</th><th>Alternate languages (hreflang)</th><th>Last modified</th></tr></thead>
    <tbody>
    <xsl:for-each select="s:urlset/s:url">
      <tr>
        <td><xsl:value-of select="position()"/></td>
        <td><a href="{s:loc}"><xsl:value-of select="s:loc"/></a></td>
        <td>
          <ul class="alt">
          <xsl:for-each select="xhtml:link[@rel='alternate']">
            <li>
              <span class="lang">
                <xsl:if test="@hreflang='x-default'"><xsl:attribute name="class">lang def</xsl:attribute></xsl:if>
                <xsl:value-of select="@hreflang"/>
              </span>
              <a href="{@href}"><xsl:value-of select="@href"/></a>
            </li>
          </xsl:for-each>
          </ul>
        </td>
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
