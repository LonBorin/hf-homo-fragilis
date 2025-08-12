<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld"
  xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
  version="1.0.0">
  <sld:NamedLayer>
    <sld:Name>hexbins_quantile</sld:Name>
    <sld:UserStyle>
      <sld:FeatureTypeStyle>
        <sld:Rule><sld:Name>0.0–0.2</sld:Name>
          <ogc:Filter><ogc:PropertyIsLessThan><ogc:PropertyName>HF_score</ogc:PropertyName><ogc:Literal>0.2</ogc:Literal></ogc:PropertyIsLessThan></ogc:Filter>
          <sld:PolygonSymbolizer><sld:Fill><sld:CssParameter name="fill">#f7fbff</sld:CssParameter></sld:Fill></sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule><sld:Name>0.2–0.4</sld:Name>
          <ogc:Filter><ogc:And><ogc:PropertyIsGreaterThanOrEqualTo><ogc:PropertyName>HF_score</ogc:PropertyName><ogc:Literal>0.2</ogc:Literal></ogc:PropertyIsGreaterThanOrEqualTo><ogc:PropertyIsLessThan><ogc:PropertyName>HF_score</ogc:PropertyName><ogc:Literal>0.4</ogc:Literal></ogc:PropertyIsLessThan></ogc:And></ogc:Filter>
          <sld:PolygonSymbolizer><sld:Fill><sld:CssParameter name="fill">#c6dbef</sld:CssParameter></sld:Fill></sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule><sld:Name>0.4–0.6</sld:Name>
          <ogc:Filter><ogc:And><ogc:PropertyIsGreaterThanOrEqualTo><ogc:PropertyName>HF_score</ogc:PropertyName><ogc:Literal>0.4</ogc:Literal></ogc:PropertyIsGreaterThanOrEqualTo><ogc:PropertyIsLessThan><ogc:PropertyName>HF_score</ogc:PropertyName><ogc:Literal>0.6</ogc:Literal></ogc:PropertyIsLessThan></ogc:And></ogc:Filter>
          <sld:PolygonSymbolizer><sld:Fill><sld:CssParameter name="fill">#6baed6</sld:CssParameter></sld:Fill></sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule><sld:Name>0.6–0.8</sld:Name>
          <ogc:Filter><ogc:And><ogc:PropertyIsGreaterThanOrEqualTo><ogc:PropertyName>HF_score</ogc:PropertyName><ogc:Literal>0.6</sld:Literal></ogc:PropertyIsGreaterThanOrEqualTo><ogc:PropertyIsLessThan><ogc:PropertyName>HF_score</ogc:PropertyName><ogc:Literal>0.8</ogc:Literal></ogc:PropertyIsLessThan></ogc:And></ogc:Filter>
          <sld:PolygonSymbolizer><sld:Fill><sld:CssParameter name="fill">#2171b5</sld:CssParameter></sld:Fill></sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule><sld:Name>0.8–1.0</sld:Name>
          <ogc:Filter><ogc:PropertyIsGreaterThanOrEqualTo><ogc:PropertyName>HF_score</ogc:PropertyName><ogc:Literal>0.8</ogc:Literal></ogc:PropertyIsGreaterThanOrEqualTo></ogc:Filter>
          <sld:PolygonSymbolizer><sld:Fill><sld:CssParameter name="fill">#08306b</sld:CssParameter></sld:Fill></sld:PolygonSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>
