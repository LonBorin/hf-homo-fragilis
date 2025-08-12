<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.34" styleCategories="Symbology">
  <renderer-v2 type="categorizedSymbol" attr="status">
    <categories>
      <category value="operational" label="Operational" symbol="0"/>
      <category value="damaged" label="Damaged" symbol="1"/>
      <category value="destroyed" label="Destroyed" symbol="2"/>
      <category value="unknown" label="Unknown" symbol="3"/>
    </categories>
    <symbols>
      <symbol name="0" type="marker"><layer pass="0" class="SimpleMarker"><prop k="name" v="circle"/><prop k="size" v="2.5"/></layer></symbol>
      <symbol name="1" type="marker"><layer pass="0" class="SimpleMarker"><prop k="name" v="triangle"/><prop k="size" v="2.5"/></layer></symbol>
      <symbol name="2" type="marker"><layer pass="0" class="SimpleMarker"><prop k="name" v="cross"/><prop k="size" v="2.5"/></layer></symbol>
      <symbol name="3" type="marker"><layer pass="0" class="SimpleMarker"><prop k="name" v="square"/><prop k="size" v="2.5"/></layer></symbol>
    </symbols>
  </renderer-v2>
</qgis>
