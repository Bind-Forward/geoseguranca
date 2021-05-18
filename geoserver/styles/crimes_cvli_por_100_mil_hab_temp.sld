<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0"
                       xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd"
                       xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc"
                       xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

  <NamedLayer>
    <Name>crimes_cvli_por_100_mil_hab</Name>
    <UserStyle>
      <Title>A yellow polygon style</Title>
      <FeatureTypeStyle>
        <Rule>
          <Title>menos que 20 ocorr�ncias</Title>
          <Filter>
            <PropertyIsLessThan>
              <PropertyName>taxa_cvli_</PropertyName>
              <Literal>20</Literal>
            </PropertyIsLessThan>
          </Filter>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#ffff00</CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">0.5</CssParameter>
            </Stroke>
          </PolygonSymbolizer>
        </Rule>
        <Rule>
          <Title>entre 20 e 50 ocorr�ncias</Title>
          <Filter>
            <PropertyIsGreaterThanOrEqualTo>
              <PropertyName>taxa_cvli_</PropertyName>
              <Literal>20</Literal>
            </PropertyIsGreaterThanOrEqualTo>
            <PropertyIsLessThanOrEqualTo>
              <PropertyName>count</PropertyName>
              <Literal>50</Literal>
            </PropertyIsLessThanOrEqualTo>
          </Filter>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#ffa500
              </CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">0.5</CssParameter>
            </Stroke>
          </PolygonSymbolizer>
        </Rule>
        <Rule>
          <Title>mais que 50 ocorr�ncias</Title>
          <Filter>
            <PropertyIsGreaterThan>
              <PropertyName>taxa_cvli_</PropertyName>
              <Literal>50</Literal>
            </PropertyIsGreaterThan>
          </Filter>
          <PolygonSymbolizer>
            <Fill>
              <CssParameter name="fill">#ff0000</CssParameter>
            </Fill>
            <Stroke>
              <CssParameter name="stroke">#000000</CssParameter>
              <CssParameter name="stroke-width">0.5</CssParameter>
            </Stroke>
          </PolygonSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>