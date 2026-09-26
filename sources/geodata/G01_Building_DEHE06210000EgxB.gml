<?xml version='1.0' encoding='UTF-8'?>
<wfs:FeatureCollection xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.opengis.net/wfs/2.0 http://schemas.opengis.net/wfs/2.0/wfs.xsd http://www.opengis.net/gml/3.2 http://schemas.opengis.net/gml/3.2.1/gml.xsd http://inspire.ec.europa.eu/schemas/bu-core3d/4.0 https://inspire-hessen.de/ows/services/org.2.ef07833e-78a6-4c2c-a895-e31de788aac3_wfs?SERVICE=WFS&amp;VERSION=2.0.0&amp;REQUEST=DescribeFeatureType&amp;OUTPUTFORMAT=application%2Fgml%2Bxml%3B+version%3D3.2&amp;TYPENAME=bu-core3d:Building&amp;NAMESPACES=xmlns(bu-core3d,http%3A%2F%2Finspire.ec.europa.eu%2Fschemas%2Fbu-core3d%2F4.0)" xmlns:wfs="http://www.opengis.net/wfs/2.0" timeStamp="2026-09-26T18:20:18Z" xmlns:gss="http://www.isotc211.org/2005/gss" xmlns:gn="http://inspire.ec.europa.eu/schemas/gn/4.0" xmlns:gsr="http://www.isotc211.org/2005/gsr" xmlns:gts="http://www.isotc211.org/2005/gts" xmlns:ogc="http://www.opengis.net/ogc" xmlns:sc="http://www.interactive-instruments.de/ShapeChange/AppInfo" xmlns:gco="http://www.isotc211.org/2005/gco" xmlns:bu-base="http://inspire.ec.europa.eu/schemas/bu-base/4.0" xmlns:bu-core3d="http://inspire.ec.europa.eu/schemas/bu-core3d/4.0" xmlns:base="http://inspire.ec.europa.eu/schemas/base/3.3" xmlns:gmd="http://www.isotc211.org/2005/gmd" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:gml="http://www.opengis.net/gml/3.2" numberMatched="unknown" numberReturned="0">
  <!--NOTE: numberReturned attribute should be 'unknown' as well, but this would not validate against the current version of the WFS 2.0 schema (change upcoming). See change request (CR 144): https://portal.opengeospatial.org/files?artifact_id=43925.-->
  <wfs:member>
    <bu-core3d:Building gml:id="Building_DEHE06210000EgxB">
      <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/Building_DEHE06210000EgxB</gml:identifier>
      <gml:name>(1:Elisabethkirche)</gml:name>
      <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
      <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
      <bu-base:externalReference>
        <bu-base:ExternalReference>
          <bu-base:informationSystem>http://repository.gdi-de.org/schemas/adv/citygml/fdv/art.htm#_9100</bu-base:informationSystem>
          <bu-base:informationSystemName>
            <gco:CharacterString>DEHE06210000EgxB</gco:CharacterString>
          </bu-base:informationSystemName>
          <bu-base:reference>urn:adv:oid:DEHE06210000EgxB</bu-base:reference>
        </bu-base:ExternalReference>
      </bu-base:externalReference>
      <bu-base:inspireId>
        <base:Identifier>
          <base:localId>Building_DEHE06210000EgxB</base:localId>
          <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
        </base:Identifier>
      </bu-base:inspireId>
      <bu-base:buildingNature xlink:href="http://inspire.ec.europa.eu/codelist/BuildingNatureValue/church"/>
      <bu-base:currentUse>
        <bu-base:CurrentUse>
          <bu-base:currentUse xlink:href="http://inspire.ec.europa.eu/codelist/CurrentUseValue/publicServices"/>
          <bu-base:percentage xsi:nil="true"/>
        </bu-base:CurrentUse>
      </bu-base:currentUse>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_UUID_e3627eed-cbd7-4206-a15e-0a5e8d481b95'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_UUID_e3627eed-cbd7-4206-a15e-0a5e8d481b95">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_UUID_e3627eed-cbd7-4206-a15e-0a5e8d481b95</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">32.776</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_UUID_e3627eed-cbd7-4206-a15e-0a5e8d481b95</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_e36a6d46-f430-410b-bc69-8019cb97a594'-->
                <gml:MultiSurface gml:id="GEOMETRY_e36a6d46-f430-410b-bc69-8019cb97a594" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_4956355f-6d85-4fb7-9b67-1fa891c0afbe" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814797 8.769884 183.435000 50.814782 8.769712 183.435000 50.814890 8.769692 183.435000 50.814993 8.769672 183.435000 50.815007 8.769850 183.435000 50.815012 8.769901 183.435000 50.815023 8.770041 183.435000 50.814975 8.770048 183.435000 50.814916 8.770058 183.435000 50.814856 8.770067 183.435000 50.814813 8.770074 183.435000 50.814802 8.769936 183.435000 50.814797 8.769884 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_3e55eeb7-e076-43df-a466-582bda448b6a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814890 8.769692 216.211000 50.814782 8.769712 207.643000 50.814797 8.769884 207.642000 50.814802 8.769936 207.642000 50.814813 8.770074 207.643000 50.814916 8.770058 216.211000 50.814890 8.769692 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_ac9f81ee-6c1d-4767-92d6-14671ec6c63f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814802 8.769936 207.642000 50.814797 8.769884 207.642000 50.814797 8.769884 183.435000 50.814802 8.769936 183.435000 50.814802 8.769936 207.642000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_8423cc44-7f9e-499d-954e-49336eb10021" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814916 8.770058 216.211000 50.815023 8.770041 207.643000 50.815012 8.769901 207.643000 50.815007 8.769850 207.643000 50.814993 8.769672 207.643000 50.814890 8.769692 216.211000 50.814916 8.770058 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_d7b0de11-a36c-4f1c-b9d4-f7af1db0f757" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815007 8.769850 207.643000 50.815012 8.769901 207.643000 50.815012 8.769901 183.435000 50.815007 8.769850 183.435000 50.815007 8.769850 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_f22ac898-2e50-44ce-bb1a-3fd684d86f89" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814813 8.770074 207.643000 50.814802 8.769936 207.642000 50.814802 8.769936 183.435000 50.814813 8.770074 183.435000 50.814813 8.770074 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_80c79f1f-3faa-4ff1-b237-c88289f4766a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814993 8.769672 207.643000 50.814993 8.769672 183.435000 50.814890 8.769692 183.435000 50.814890 8.769692 216.211000 50.814993 8.769672 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_9d786152-a4da-465d-9a02-2dc2f282a43c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814993 8.769672 207.643000 50.815007 8.769850 207.643000 50.815007 8.769850 183.435000 50.814993 8.769672 183.435000 50.814993 8.769672 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_f29c46d9-f346-42c1-9421-feefbf470899" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815012 8.769901 207.643000 50.815023 8.770041 207.643000 50.815023 8.770041 183.435000 50.815012 8.769901 183.435000 50.815012 8.769901 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_b769b521-0b0f-4d27-8b41-f35cb5cc7bb0" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814890 8.769692 183.435000 50.814782 8.769712 183.435000 50.814782 8.769712 207.643000 50.814890 8.769692 216.211000 50.814890 8.769692 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_2583eafd-bfe4-4064-a931-b9303bf0c9b7" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814813 8.770074 207.643000 50.814856 8.770067 207.643000 50.814916 8.770058 216.211000 50.814813 8.770074 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_29fae6cf-a9fe-4ab5-a4f8-fd53c40811a5" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814813 8.770074 207.643000 50.814813 8.770074 183.435000 50.814856 8.770067 183.435000 50.814856 8.770067 207.643000 50.814813 8.770074 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_128df7e6-75ba-449c-86da-8cfc8cdd7ace" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814856 8.770067 207.643000 50.814856 8.770067 183.435000 50.814916 8.770058 183.435000 50.814916 8.770058 216.211000 50.814856 8.770067 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e7f9e3cd-177c-4fe7-8952-8afd44c3b4e9" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814797 8.769884 207.642000 50.814782 8.769712 207.643000 50.814782 8.769712 183.435000 50.814797 8.769884 183.435000 50.814797 8.769884 207.642000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_c899d007-68d4-485e-a47d-86de54c06699" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814916 8.770058 216.211000 50.814975 8.770048 207.643000 50.815023 8.770041 207.643000 50.814916 8.770058 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_816524a0-eee6-47e8-9d4d-7aa9de4e28a4" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814916 8.770058 216.211000 50.814916 8.770058 183.435000 50.814975 8.770048 183.435000 50.814975 8.770048 207.643000 50.814916 8.770058 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_c1e64ea4-dc90-460e-b2f8-531af8144659" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814975 8.770048 183.435000 50.815023 8.770041 183.435000 50.815023 8.770041 207.643000 50.814975 8.770048 207.643000 50.814975 8.770048 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_9b8ca111-7de3-44e0-af2e-76a09f4ac8e0'-->
                <gml:MultiCurve gml:id="GEOMETRY_9b8ca111-7de3-44e0-af2e-76a09f4ac8e0" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_7aef3496-e213-42c6-8fed-6d458f24513f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814782 8.769712 185.171000 50.814783 8.769713 185.168000 50.814783 8.769719 185.156000 50.814784 8.769729 185.135000 50.814784 8.769733 185.127000 50.814785 8.769746 185.104000 50.814785 8.769747 185.103000 50.814786 8.769755 185.095000 50.814787 8.769761 185.090000 50.814787 8.769762 185.089000 50.814788 8.769775 185.095000 50.814788 8.769778 185.092000 50.814789 8.769789 185.080000 50.814790 8.769795 185.072000 50.814790 8.769804 185.059000 50.814791 8.769811 185.047000 50.814791 8.769818 185.031000 50.814792 8.769827 185.013000 50.814793 8.769832 185.004000 50.814794 8.769844 184.992000 50.814794 8.769846 184.990000 50.814795 8.769860 184.967000 50.814795 8.769860 184.966000 50.814795 8.769864 184.961000 50.814796 8.769875 184.943000 50.814796 8.769876 184.941000 50.814797 8.769884 184.928000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_09b3036c-d38a-4035-897d-b4beef4fc685" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814890 8.769692 185.232000 50.814887 8.769692 185.230000 50.814885 8.769693 185.229000 50.814879 8.769694 185.225000 50.814876 8.769694 185.224000 50.814870 8.769695 185.224000 50.814867 8.769696 185.225000 50.814862 8.769697 185.225000 50.814858 8.769698 185.225000 50.814854 8.769698 185.224000 50.814849 8.769699 185.223000 50.814846 8.769700 185.222000 50.814840 8.769701 185.220000 50.814838 8.769701 185.219000 50.814831 8.769703 185.216000 50.814830 8.769703 185.215000 50.814823 8.769704 185.211000 50.814822 8.769704 185.211000 50.814814 8.769706 185.204000 50.814813 8.769706 185.204000 50.814806 8.769707 185.196000 50.814804 8.769708 185.194000 50.814798 8.769709 185.189000 50.814795 8.769709 185.186000 50.814790 8.769710 185.181000 50.814786 8.769711 185.176000 50.814782 8.769712 185.171000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_41b6d1c5-53b8-427d-9441-424e2f383071" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814993 8.769672 185.191000 50.814991 8.769673 185.193000 50.814984 8.769674 185.205000 50.814983 8.769674 185.205000 50.814979 8.769675 185.211000 50.814975 8.769676 185.217000 50.814975 8.769676 185.218000 50.814967 8.769677 185.226000 50.814966 8.769677 185.227000 50.814959 8.769679 185.231000 50.814957 8.769679 185.233000 50.814951 8.769680 185.234000 50.814948 8.769681 185.236000 50.814943 8.769682 185.237000 50.814939 8.769683 185.239000 50.814935 8.769683 185.241000 50.814930 8.769684 185.241000 50.814927 8.769685 185.241000 50.814921 8.769686 185.242000 50.814919 8.769686 185.242000 50.814912 8.769688 185.241000 50.814911 8.769688 185.241000 50.814903 8.769689 185.238000 50.814903 8.769689 185.238000 50.814901 8.769690 185.237000 50.814895 8.769691 185.235000 50.814894 8.769691 185.234000 50.814890 8.769692 185.232000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_8b98ee66-24db-4930-b767-8195b8029441" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814993 8.769672 185.191000 50.814993 8.769675 185.185000 50.814993 8.769675 185.185000 50.814994 8.769689 185.147000 50.814994 8.769691 185.141000 50.814995 8.769703 185.108000 50.814996 8.769707 185.103000 50.814996 8.769717 185.082000 50.814997 8.769724 185.067000 50.814998 8.769732 185.051000 50.814998 8.769740 185.037000 50.814999 8.769746 185.026000 50.815000 8.769756 185.003000 50.815000 8.769760 184.995000 50.815001 8.769772 184.971000 50.815001 8.769774 184.968000 50.815002 8.769786 184.948000 50.815002 8.769788 184.944000 50.815002 8.769789 184.943000 50.815003 8.769803 184.919000 50.815004 8.769805 184.914000 50.815005 8.769817 184.893000 50.815005 8.769821 184.887000 50.815006 8.769831 184.873000 50.815006 8.769838 184.873000 50.815007 8.769845 184.867000 50.815007 8.769850 184.867000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_b186fe4b-77c3-4913-87f2-898fa8b8c987" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815007 8.769850 184.867000 50.815008 8.769854 184.866000 50.815008 8.769859 184.863000 50.815009 8.769870 184.859000 50.815009 8.769874 184.856000 50.815010 8.769886 184.840000 50.815010 8.769888 184.838000 50.815011 8.769897 184.815000 50.815012 8.769901 184.803000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_8c8574dc-c221-4b5f-9766-e637efec803b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815012 8.769901 184.803000 50.815012 8.769902 184.801000 50.815012 8.769903 184.799000 50.815013 8.769916 184.758000 50.815013 8.769919 184.749000 50.815014 8.769930 184.721000 50.815014 8.769935 184.718000 50.815015 8.769944 184.703000 50.815016 8.769951 184.689000 50.815016 8.769959 184.676000 50.815017 8.769968 184.656000 50.815018 8.769973 184.646000 50.815018 8.769984 184.625000 50.815019 8.769987 184.619000 50.815020 8.770000 184.592000 50.815020 8.770001 184.590000 50.815020 8.770008 184.574000 50.815021 8.770015 184.557000 50.815021 8.770017 184.552000 50.815022 8.770030 184.515000 50.815023 8.770033 184.504000 50.815023 8.770041 184.478000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_37408780-968b-44e2-abb6-1de944351fd4" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815023 8.770041 184.478000 50.815021 8.770041 184.484000 50.815019 8.770041 184.486000 50.815012 8.770042 184.498000 50.815011 8.770043 184.499000 50.815003 8.770044 184.513000 50.814994 8.770045 184.525000 50.814994 8.770045 184.527000 50.814986 8.770047 184.537000 50.814985 8.770047 184.540000 50.814978 8.770048 184.549000 50.814976 8.770048 184.554000 50.814970 8.770049 184.562000 50.814967 8.770050 184.568000 50.814962 8.770050 184.575000 50.814958 8.770051 184.582000 50.814953 8.770052 184.588000 50.814949 8.770052 184.596000 50.814945 8.770053 184.600000 50.814940 8.770054 184.605000 50.814937 8.770054 184.608000 50.814931 8.770055 184.614000 50.814929 8.770056 184.616000 50.814922 8.770057 184.625000 50.814921 8.770057 184.626000 50.814916 8.770058 184.630000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_6d426559-208e-4857-a6ee-f3fa60c62bbc" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814916 8.770058 184.630000 50.814913 8.770058 184.635000 50.814912 8.770058 184.635000 50.814910 8.770059 184.638000 50.814904 8.770060 184.646000 50.814904 8.770060 184.646000 50.814896 8.770061 184.654000 50.814895 8.770061 184.655000 50.814888 8.770062 184.664000 50.814886 8.770062 184.667000 50.814880 8.770063 184.675000 50.814877 8.770064 184.679000 50.814871 8.770065 184.687000 50.814868 8.770065 184.693000 50.814863 8.770066 184.699000 50.814859 8.770067 184.707000 50.814855 8.770067 184.713000 50.814850 8.770068 184.722000 50.814847 8.770069 184.726000 50.814841 8.770070 184.737000 50.814839 8.770070 184.740000 50.814832 8.770071 184.752000 50.814831 8.770071 184.753000 50.814823 8.770072 184.767000 50.814822 8.770072 184.768000 50.814818 8.770073 184.776000 50.814814 8.770074 184.782000 50.814814 8.770074 184.782000 50.814813 8.770074 184.784000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_4e743c6b-0042-4630-9ac4-7f3ee6cb35f8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814802 8.769936 184.868000 50.814802 8.769942 184.863000 50.814802 8.769946 184.858000 50.814803 8.769958 184.849000 50.814804 8.769960 184.848000 50.814805 8.769972 184.843000 50.814805 8.769974 184.842000 50.814805 8.769974 184.842000 50.814806 8.769988 184.832000 50.814806 8.769991 184.830000 50.814807 8.770002 184.817000 50.814808 8.770007 184.812000 50.814808 8.770016 184.800000 50.814809 8.770023 184.795000 50.814810 8.770031 184.785000 50.814810 8.770039 184.782000 50.814811 8.770045 184.781000 50.814812 8.770056 184.782000 50.814812 8.770059 184.786000 50.814813 8.770072 184.783000 50.814813 8.770073 184.785000 50.814813 8.770074 184.784000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_e55e1947-1fc3-4ee1-ab4a-a14574b1af2c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814797 8.769884 184.928000 50.814798 8.769889 184.921000 50.814798 8.769893 184.918000 50.814799 8.769903 184.905000 50.814799 8.769909 184.898000 50.814800 8.769917 184.888000 50.814801 8.769925 184.880000 50.814801 8.769931 184.873000 50.814802 8.769936 184.868000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643291'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643291">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643291</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">24.208</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643291</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_d28b34b2-40d9-4e93-9946-b57c361e9aa9'-->
                <gml:MultiSurface gml:id="GEOMETRY_d28b34b2-40d9-4e93-9946-b57c361e9aa9" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_3b7508a3-2520-48c6-abd7-2b43633a2a47" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814869 8.770276 207.643000 50.814860 8.770292 207.643000 50.814860 8.770292 183.435000 50.814869 8.770276 183.435000 50.814869 8.770276 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_efb5199b-3ed8-4697-9875-b9076feec34c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814851 8.770279 207.643000 50.814860 8.770292 207.643000 50.814869 8.770276 207.643000 50.814868 8.770262 207.643000 50.814859 8.770263 207.643000 50.814859 8.770263 207.643000 50.814859 8.770263 207.643000 50.814851 8.770279 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_85c39714-8aa3-4e9f-bafc-1eecc0ca8a10" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814860 8.770292 207.643000 50.814851 8.770279 207.643000 50.814851 8.770279 183.435000 50.814860 8.770292 183.435000 50.814860 8.770292 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_7c278faf-4aa8-4628-8864-53194c0158a7" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814859 8.770263 207.643000 50.814859 8.770263 207.643000 50.814859 8.770263 183.435000 50.814859 8.770263 183.435000 50.814859 8.770263 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_6d2664b3-4832-48cd-845c-6fb6de0e5b9e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814851 8.770279 207.643000 50.814859 8.770263 207.643000 50.814859 8.770263 183.435000 50.814851 8.770279 183.435000 50.814851 8.770279 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_2df89979-c48f-43ec-9247-256dd939cb6c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814859 8.770263 183.435000 50.814859 8.770263 183.435000 50.814859 8.770263 183.435000 50.814868 8.770262 183.435000 50.814869 8.770276 183.435000 50.814860 8.770292 183.435000 50.814851 8.770279 183.435000 50.814859 8.770263 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_f671c8ee-1685-4b13-8743-b0c0fb0c9d8e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814859 8.770263 207.643000 50.814859 8.770263 207.643000 50.814859 8.770263 183.435000 50.814859 8.770263 183.435000 50.814859 8.770263 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_66575487-0196-4ff6-bfde-2c2e7204bac8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814859 8.770263 207.643000 50.814868 8.770262 207.643000 50.814868 8.770262 183.435000 50.814859 8.770263 183.435000 50.814859 8.770263 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_f8394574-7f44-49cf-85f1-2c51cb4a9c3d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814868 8.770262 207.643000 50.814869 8.770276 207.643000 50.814869 8.770276 183.435000 50.814868 8.770262 183.435000 50.814868 8.770262 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_e0ccb849-48ec-4e48-952d-38978271e53c'-->
                <gml:MultiCurve gml:id="GEOMETRY_e0ccb849-48ec-4e48-952d-38978271e53c" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_e9043a01-8e93-4280-a0e1-f44390f76354" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814859 8.770263 184.238000 50.814859 8.770263 184.238000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_6af70c59-65f0-492b-9828-d3b12109d4b9" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814859 8.770263 184.238000 50.814859 8.770263 184.238000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_66a665ee-f3c1-4173-ac8f-29c35c8cc82e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814868 8.770262 184.235000 50.814868 8.770262 184.235000 50.814862 8.770263 184.238000 50.814859 8.770263 184.238000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_296ec005-0af7-4929-9572-5935cb27580f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814868 8.770262 184.235000 50.814869 8.770272 184.212000 50.814869 8.770273 184.210000 50.814869 8.770276 184.205000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_a1ae2407-7832-4490-89bd-b6f1444fa26c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814869 8.770276 184.205000 50.814868 8.770278 184.203000 50.814866 8.770282 184.196000 50.814863 8.770286 184.181000 50.814861 8.770290 184.175000 50.814860 8.770292 184.161000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_e8bd09c5-3186-4c2f-b4ef-4439f980390c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814851 8.770279 184.185000 50.814856 8.770286 184.168000 50.814859 8.770291 184.160000 50.814860 8.770292 184.161000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_f7656676-edb1-4430-bbc6-2e6c352b5768" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814859 8.770263 184.238000 50.814859 8.770264 184.237000 50.814857 8.770268 184.230000 50.814855 8.770272 184.213000 50.814853 8.770276 184.199000 50.814851 8.770279 184.185000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643288'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643288">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643288</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">14.117</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643288</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_c2323184-4705-4f0a-b789-7ba071444cb4'-->
                <gml:MultiSurface gml:id="GEOMETRY_c2323184-4705-4f0a-b789-7ba071444cb4" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_9f3f8fca-804b-4f15-8d08-c0b00d7ca50f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815088 8.770278 197.552000 50.815080 8.770279 197.552000 50.815080 8.770279 197.463000 50.815080 8.770279 183.435000 50.815088 8.770278 183.435000 50.815088 8.770278 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_714548af-05ea-4ebd-bf27-085de89d8615" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815078 8.770262 183.435000 50.815086 8.770260 183.435000 50.815088 8.770278 183.435000 50.815080 8.770279 183.435000 50.815079 8.770279 183.435000 50.815078 8.770262 183.435000 50.815078 8.770262 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_581b01b4-7d9a-4cb7-896d-3db76f432b54" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815078 8.770262 197.552000 50.815079 8.770279 197.552000 50.815080 8.770279 197.552000 50.815088 8.770278 197.552000 50.815086 8.770260 197.552000 50.815078 8.770262 197.552000 50.815078 8.770262 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_45d2ceef-ae82-4b79-af7e-ae749297629b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815078 8.770262 197.552000 50.815086 8.770260 197.552000 50.815086 8.770260 183.435000 50.815078 8.770262 183.435000 50.815078 8.770262 197.457000 50.815078 8.770262 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_bfea49cc-1827-4b85-9167-0aea08d3b3e8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815086 8.770260 197.552000 50.815088 8.770278 197.552000 50.815088 8.770278 183.435000 50.815086 8.770260 183.435000 50.815086 8.770260 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_f01246e2-b8d1-4966-bfe6-8ec19ed73c61" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815079 8.770279 197.552000 50.815078 8.770262 197.552000 50.815078 8.770262 183.435000 50.815079 8.770279 183.435000 50.815079 8.770279 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_daafc5c1-5819-4666-95f7-e71d52582d6d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815079 8.770279 197.552000 50.815080 8.770279 197.463000 50.815080 8.770279 197.552000 50.815079 8.770279 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_067126a4-4e0f-4e33-aae5-cdc6daca4d23" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815079 8.770279 197.552000 50.815079 8.770279 183.435000 50.815080 8.770279 183.435000 50.815080 8.770279 197.463000 50.815079 8.770279 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_a3b27db0-eca4-4a84-969b-7d9d8a613b6d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815078 8.770262 197.457000 50.815078 8.770262 197.552000 50.815078 8.770262 197.552000 50.815078 8.770262 197.457000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_694238eb-63d2-4fad-bf73-a51dfa983961" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815078 8.770262 197.457000 50.815078 8.770262 183.435000 50.815078 8.770262 183.435000 50.815078 8.770262 197.552000 50.815078 8.770262 197.457000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_881e4459-2ac0-4dec-8b63-3ab9899b34cd'-->
                <gml:MultiCurve gml:id="GEOMETRY_881e4459-2ac0-4dec-8b63-3ab9899b34cd" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_a7a68f4e-fbff-4630-bf82-7bf2d28adc61" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815086 8.770260 183.547000 50.815084 8.770261 183.560000 50.815078 8.770262 183.598000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_c8e1e2de-8d58-492b-89d8-09d34eb6427f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815086 8.770260 183.547000 50.815087 8.770271 183.539000 50.815088 8.770276 183.535000 50.815088 8.770278 183.532000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_33037aca-cf28-4621-aece-9133ea0cb5e8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815088 8.770278 183.532000 50.815084 8.770279 183.544000 50.815080 8.770279 183.560000 50.815080 8.770279 183.564000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_9ba7bdd1-5a26-44e8-9c13-e3633aa01eb1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815080 8.770279 183.564000 50.815079 8.770279 183.566000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_e366ff5b-e592-408a-9b20-8d9c1a83d2ba" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815078 8.770262 183.600000 50.815078 8.770271 183.582000 50.815079 8.770277 183.570000 50.815079 8.770279 183.566000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_b0e4fa17-3b67-45f1-baff-0ef34724a743" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815078 8.770262 183.598000 50.815078 8.770262 183.600000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643328'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643328">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643328</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">36.715</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643328</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_99b3a4bb-14a1-4f12-9ac7-4140dec6e89a'-->
                <gml:MultiSurface gml:id="GEOMETRY_99b3a4bb-14a1-4f12-9ac7-4140dec6e89a" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_63a479c6-da41-40a0-a57b-04a1fb317a4d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815035 8.769580 183.435000 50.815040 8.769631 183.435000 50.815024 8.769635 183.435000 50.815020 8.769584 183.435000 50.815035 8.769580 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_5be9580c-acdc-470d-941c-0075ed0730c3" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815035 8.769580 220.150000 50.815040 8.769631 220.150000 50.815040 8.769631 183.435000 50.815035 8.769580 183.435000 50.815035 8.769580 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e76051a1-a8b3-4b81-90a7-7711becd4265" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815040 8.769631 220.150000 50.815024 8.769635 220.150000 50.815024 8.769635 183.435000 50.815040 8.769631 183.435000 50.815040 8.769631 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_a73b8e0b-bc1e-4c7e-94e7-da86a8b7194a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815020 8.769584 220.150000 50.815024 8.769635 220.150000 50.815040 8.769631 220.150000 50.815035 8.769580 220.150000 50.815020 8.769584 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_d9bcb2c8-71f3-4c61-83b6-a6d820ef2b99" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815020 8.769584 220.150000 50.815035 8.769580 220.150000 50.815035 8.769580 183.435000 50.815020 8.769584 183.435000 50.815020 8.769584 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_31d0b243-388c-42d9-a177-be5bdb6f3263" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815024 8.769635 220.150000 50.815020 8.769584 220.150000 50.815020 8.769584 183.435000 50.815024 8.769635 183.435000 50.815024 8.769635 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_e09c2272-81af-46dc-88a1-2209930619bb'-->
                <gml:MultiCurve gml:id="GEOMETRY_e09c2272-81af-46dc-88a1-2209930619bb" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_baffcc2a-c865-455d-bfc2-22658cbc4516" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815035 8.769580 185.184000 50.815036 8.769587 185.171000 50.815036 8.769590 185.174000 50.815037 8.769603 185.162000 50.815037 8.769604 185.159000 50.815038 8.769609 185.148000 50.815038 8.769618 185.130000 50.815039 8.769619 185.128000 50.815040 8.769631 185.133000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_3aa570ad-bebe-4a21-a744-2d55c6baa667" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815040 8.769631 185.133000 50.815038 8.769631 185.145000 50.815037 8.769632 185.147000 50.815035 8.769632 185.144000 50.815029 8.769633 185.135000 50.815029 8.769633 185.136000 50.815024 8.769635 185.158000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_b4322d99-9b16-4ad6-a9c8-753d57c18774" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815020 8.769584 185.240000 50.815020 8.769590 185.248000 50.815020 8.769591 185.245000 50.815021 8.769604 185.226000 50.815022 8.769607 185.221000 50.815022 8.769618 185.200000 50.815023 8.769623 185.187000 50.815023 8.769632 185.165000 50.815024 8.769635 185.158000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_d2454230-ca0c-46dd-902a-5533d1cdadaa" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815035 8.769580 185.184000 50.815032 8.769581 185.192000 50.815029 8.769582 185.224000 50.815024 8.769583 185.233000 50.815020 8.769584 185.240000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643316'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643316">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643316</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">24.208</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643316</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_2be1bf26-a97b-4bed-b110-07a411907044'-->
                <gml:MultiSurface gml:id="GEOMETRY_2be1bf26-a97b-4bed-b110-07a411907044" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_5f66ab6c-c718-48eb-a9bd-27b9a0feac3c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814866 8.770382 207.643000 50.814876 8.770380 207.643000 50.814873 8.770361 207.643000 50.814865 8.770362 207.643000 50.814866 8.770382 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e0ba2882-f826-4e63-8fc6-79e101ab46b1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814876 8.770380 207.643000 50.814866 8.770382 207.643000 50.814866 8.770382 183.435000 50.814876 8.770380 183.435000 50.814876 8.770380 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_1efb1967-843b-4050-83c8-3ceafa045259" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814865 8.770362 207.643000 50.814873 8.770361 207.643000 50.814873 8.770361 183.435000 50.814865 8.770362 183.435000 50.814865 8.770362 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_c66c8e7a-89a4-4f91-b921-a4186e35f65c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814865 8.770362 183.435000 50.814873 8.770361 183.435000 50.814876 8.770380 183.435000 50.814866 8.770382 183.435000 50.814865 8.770362 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_6fbb28c6-f50f-4793-91d0-d1d3d8b4e3b1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814866 8.770382 207.643000 50.814865 8.770362 207.643000 50.814865 8.770362 183.435000 50.814866 8.770382 183.435000 50.814866 8.770382 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_695e5ec1-7041-4aeb-bdfc-c98196acb977" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814873 8.770361 207.643000 50.814876 8.770380 207.643000 50.814876 8.770380 183.435000 50.814873 8.770361 183.435000 50.814873 8.770361 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_3927f256-4e0a-4d4e-b5c6-6b365d252896'-->
                <gml:MultiCurve gml:id="GEOMETRY_3927f256-4e0a-4d4e-b5c6-6b365d252896" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_40bfef52-cbec-4502-b37d-271d0f367945" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814873 8.770361 184.094000 50.814871 8.770361 184.102000 50.814868 8.770361 184.103000 50.814865 8.770362 184.084000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_f6b03e92-cca4-4bed-8b4f-00908b998d6b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814873 8.770361 184.094000 50.814874 8.770366 184.075000 50.814875 8.770371 184.052000 50.814876 8.770380 184.029000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_1c87b820-218a-4025-ad24-21832cd09791" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814876 8.770380 184.029000 50.814874 8.770381 184.030000 50.814868 8.770381 184.018000 50.814866 8.770382 184.016000 50.814866 8.770382 184.016000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_fd1105c4-6fa3-4bb5-9020-386fa5aee274" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814865 8.770362 184.084000 50.814865 8.770366 184.066000 50.814865 8.770371 184.057000 50.814866 8.770381 184.018000 50.814866 8.770382 184.016000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643289'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643289">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643289</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">21.202</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643289</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_6c06763b-6dff-45cf-a3bf-4607d54e8a77'-->
                <gml:MultiSurface gml:id="GEOMETRY_6c06763b-6dff-45cf-a3bf-4607d54e8a77" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e0355d47-90d3-4048-9e99-61969967903e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815082 8.770310 197.491000 50.815081 8.770310 197.551000 50.815081 8.770310 183.435000 50.815082 8.770310 183.435000 50.815082 8.770310 197.491000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_f690b209-2a36-4da8-937a-ab471345daeb" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815075 8.770222 197.552000 50.815078 8.770262 197.457000 50.815078 8.770262 183.435000 50.815075 8.770222 183.435000 50.815075 8.770222 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_a394596a-2013-48af-a911-a1ec0bb9fb72" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815083 8.770327 197.352000 50.815086 8.770362 197.386000 50.815086 8.770362 183.435000 50.815083 8.770327 183.435000 50.815083 8.770327 197.352000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_9999c950-d8cc-47e7-af51-dbb25e88fd36" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815080 8.770279 197.463000 50.815082 8.770310 197.491000 50.815082 8.770310 183.435000 50.815080 8.770279 183.435000 50.815080 8.770279 197.463000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_584a9900-1c20-48d1-a467-e0e9c63d1d75" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815082 8.770327 183.435000 50.815083 8.770327 183.435000 50.815086 8.770362 183.435000 50.815085 8.770362 183.435000 50.815086 8.770377 183.435000 50.815085 8.770378 183.435000 50.815076 8.770379 183.435000 50.815065 8.770229 183.435000 50.815075 8.770222 183.435000 50.815078 8.770262 183.435000 50.815078 8.770262 183.435000 50.815079 8.770279 183.435000 50.815080 8.770279 183.435000 50.815082 8.770310 183.435000 50.815081 8.770310 183.435000 50.815082 8.770327 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_72cc49d7-5dac-4867-9377-f3cf519ec2c4" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815044 8.770313 204.637000 50.815075 8.770222 197.552000 50.815065 8.770229 197.552000 50.815044 8.770313 204.637000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_26a4f113-2e61-41b3-bcb8-e65cec4e9840" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815044 8.770313 204.637000 50.815086 8.770377 197.554000 50.815085 8.770362 197.552000 50.815086 8.770362 197.386000 50.815083 8.770327 197.352000 50.815082 8.770327 197.552000 50.815081 8.770310 197.551000 50.815082 8.770310 197.491000 50.815080 8.770279 197.463000 50.815079 8.770279 197.552000 50.815078 8.770262 197.552000 50.815078 8.770262 197.457000 50.815075 8.770222 197.552000 50.815044 8.770313 204.637000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_992d442e-39fa-423c-b7de-b58f06d1935e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815044 8.770313 204.637000 50.815076 8.770379 197.551000 50.815085 8.770378 197.554000 50.815086 8.770377 197.554000 50.815044 8.770313 204.637000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_3006ab6e-ebd6-4746-bec4-6da344530762" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815086 8.770377 197.554000 50.815085 8.770378 197.554000 50.815085 8.770378 183.435000 50.815086 8.770377 183.435000 50.815086 8.770377 197.554000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_2445a045-7141-486f-a39c-c38dd21b7cfd" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815085 8.770362 197.552000 50.815085 8.770362 183.435000 50.815086 8.770362 183.435000 50.815086 8.770362 197.386000 50.815085 8.770362 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_bef69655-3c3a-4230-8d4a-c2d026e91b04" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815044 8.770313 204.637000 50.815065 8.770229 197.552000 50.815076 8.770379 197.551000 50.815044 8.770313 204.637000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e93528b4-9d50-4cb4-8953-992e69bf324d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815081 8.770310 197.551000 50.815082 8.770327 197.552000 50.815082 8.770327 183.435000 50.815081 8.770310 183.435000 50.815081 8.770310 197.551000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_12117aa1-5dac-476e-84b0-d0b18234d3be" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815078 8.770262 197.552000 50.815078 8.770262 183.435000 50.815078 8.770262 183.435000 50.815078 8.770262 197.457000 50.815078 8.770262 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_693adafb-b1f2-4fbc-92bb-9132db2ecccb" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815085 8.770378 197.554000 50.815076 8.770379 197.551000 50.815076 8.770379 183.435000 50.815085 8.770378 183.435000 50.815085 8.770378 197.554000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_5241e98c-0544-414c-a1b8-878c51fd3363" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815076 8.770379 197.551000 50.815065 8.770229 197.552000 50.815065 8.770229 183.435000 50.815076 8.770379 183.435000 50.815076 8.770379 197.551000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_7a27d99d-d219-47a4-a5ed-b6c323b8067e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815078 8.770262 197.552000 50.815079 8.770279 197.552000 50.815079 8.770279 183.435000 50.815078 8.770262 183.435000 50.815078 8.770262 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_4d8992d8-fdb4-41b0-a7cd-99ceb9af6c44" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815075 8.770222 183.435000 50.815065 8.770229 183.435000 50.815065 8.770229 197.552000 50.815075 8.770222 197.552000 50.815075 8.770222 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_2f551819-4520-4393-83d6-4001e293e478" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815083 8.770327 197.352000 50.815083 8.770327 183.435000 50.815082 8.770327 183.435000 50.815082 8.770327 197.552000 50.815083 8.770327 197.352000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_9ee56c25-8ee6-4655-bdfb-12135ffdbd26" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815080 8.770279 197.463000 50.815080 8.770279 183.435000 50.815079 8.770279 183.435000 50.815079 8.770279 197.552000 50.815080 8.770279 197.463000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_5233c1ac-ac39-4aec-bcdb-a3e0aa649c41" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815085 8.770362 197.552000 50.815086 8.770377 197.554000 50.815086 8.770377 183.435000 50.815085 8.770362 183.435000 50.815085 8.770362 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_85fc9f86-0bc0-4a5c-b3c1-803ffcb7bd47'-->
                <gml:MultiCurve gml:id="GEOMETRY_85fc9f86-0bc0-4a5c-b3c1-803ffcb7bd47" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_0f1a79d4-5e20-4040-aeb9-bbb24798877d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815083 8.770327 183.500000 50.815082 8.770327 183.503000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_b6da1bc8-35c9-4570-9595-f859381b54ab" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815083 8.770327 183.500000 50.815084 8.770327 183.499000 50.815084 8.770336 183.490000 50.815084 8.770342 183.485000 50.815084 8.770342 183.484000 50.815085 8.770356 183.472000 50.815086 8.770358 183.471000 50.815086 8.770362 183.468000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_03e273f0-1d3e-4496-b5f1-717c5c2f3275" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815086 8.770362 183.468000 50.815085 8.770362 183.470000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_98925901-176c-47f8-bad2-3f2737ac5909" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815085 8.770362 183.470000 50.815085 8.770370 183.464000 50.815086 8.770372 183.460000 50.815086 8.770377 183.466000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_167ae6d7-8ce7-4813-8e19-a62760a9fc2d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815086 8.770377 183.466000 50.815085 8.770378 183.472000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_30723425-cea2-468d-8a39-cf809d66e770" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815085 8.770378 183.472000 50.815084 8.770378 183.480000 50.815080 8.770378 183.493000 50.815076 8.770379 183.506000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_51db070a-da1c-49dd-9c23-21a95497b007" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815065 8.770229 183.746000 50.815066 8.770242 183.709000 50.815066 8.770243 183.708000 50.815067 8.770257 183.670000 50.815067 8.770258 183.666000 50.815068 8.770271 183.636000 50.815068 8.770274 183.630000 50.815069 8.770285 183.609000 50.815069 8.770290 183.601000 50.815070 8.770299 183.586000 50.815070 8.770306 183.576000 50.815071 8.770313 183.564000 50.815071 8.770322 183.552000 50.815072 8.770327 183.544000 50.815073 8.770338 183.531000 50.815073 8.770342 183.526000 50.815074 8.770354 183.513000 50.815074 8.770356 183.510000 50.815075 8.770370 183.498000 50.815075 8.770370 183.498000 50.815075 8.770373 183.501000 50.815076 8.770379 183.506000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_236b2453-1f7f-40bc-8472-7457bc855b9e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815075 8.770222 183.722000 50.815075 8.770222 183.722000 50.815072 8.770224 183.727000 50.815066 8.770228 183.742000 50.815066 8.770228 183.743000 50.815066 8.770228 183.743000 50.815065 8.770229 183.746000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_97055efe-afd4-4d42-b997-877f42c00201" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815075 8.770222 183.722000 50.815076 8.770228 183.699000 50.815076 8.770229 183.693000 50.815077 8.770242 183.647000 50.815077 8.770246 183.638000 50.815078 8.770256 183.604000 50.815078 8.770262 183.598000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_b71ffcbc-4ff7-4606-b735-82223a800793" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815078 8.770262 183.598000 50.815078 8.770262 183.600000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_7a4812c4-9ce5-4866-930d-5bae14d3d20a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815078 8.770262 183.600000 50.815078 8.770271 183.582000 50.815079 8.770277 183.570000 50.815079 8.770279 183.566000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_58f25e6d-aaba-4ffc-a875-369b9acd25d9" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815080 8.770279 183.564000 50.815079 8.770279 183.566000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_94714cf4-ba59-4771-bcf8-6b3df4710643" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815080 8.770279 183.564000 50.815080 8.770285 183.555000 50.815080 8.770293 183.547000 50.815081 8.770299 183.538000 50.815082 8.770309 183.526000 50.815082 8.770310 183.524000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_32c84cf1-a2db-4adf-b744-b92ee42f5ef3" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815082 8.770310 183.524000 50.815081 8.770310 183.526000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_80218c22-bf2b-4918-a1e9-d9bb24f43251" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815081 8.770310 183.526000 50.815081 8.770313 183.521000 50.815082 8.770325 183.507000 50.815082 8.770327 183.503000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643294'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643294">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643294</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">14.117</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643294</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_b96cf1fc-81d7-44b3-966b-98824b51ac46'-->
                <gml:MultiSurface gml:id="GEOMETRY_b96cf1fc-81d7-44b3-966b-98824b51ac46" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_ec0e7f0d-ccd1-4b53-9d3b-f4104072ff9f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815056 8.770396 183.435000 50.815044 8.770398 183.435000 50.815043 8.770384 183.435000 50.815055 8.770382 183.435000 50.815056 8.770396 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_ed8f3c8e-6a96-444b-bfdd-a01544b2ec4a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815055 8.770382 197.552000 50.815043 8.770384 197.552000 50.815044 8.770398 197.552000 50.815056 8.770396 197.552000 50.815055 8.770382 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_21008b60-4a45-4eed-8cab-1d665a33b264" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815055 8.770382 197.552000 50.815056 8.770396 197.552000 50.815056 8.770396 183.435000 50.815055 8.770382 183.435000 50.815055 8.770382 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_ab273e44-19d3-45e2-ade6-512ff9a80fd8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815044 8.770398 197.552000 50.815043 8.770384 197.552000 50.815043 8.770384 183.435000 50.815044 8.770398 183.435000 50.815044 8.770398 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_87687b27-0630-4511-8446-fe629a83d695" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815056 8.770396 197.552000 50.815044 8.770398 197.552000 50.815044 8.770398 183.435000 50.815056 8.770396 183.435000 50.815056 8.770396 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e3af46ac-4d1c-4f0b-a3b4-37ecfc84d279" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815043 8.770384 197.552000 50.815055 8.770382 197.552000 50.815055 8.770382 183.435000 50.815043 8.770384 183.435000 50.815043 8.770384 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_71b28dd8-a6b3-414d-9ef7-2d12f6363fb9'-->
                <gml:MultiCurve gml:id="GEOMETRY_71b28dd8-a6b3-414d-9ef7-2d12f6363fb9" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_5c005b05-adb4-4f50-a400-bdb3488cc92f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815056 8.770396 183.534000 50.815056 8.770396 183.535000 50.815048 8.770397 183.556000 50.815047 8.770397 183.559000 50.815044 8.770398 183.571000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_96b36c0f-081c-49ae-9a08-2a8a8e5140d1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815043 8.770384 183.590000 50.815043 8.770384 183.589000 50.815044 8.770392 183.578000 50.815044 8.770398 183.571000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_6383fbee-1cf6-4393-a0dd-16d98aa9a9cc" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815055 8.770382 183.553000 50.815048 8.770383 183.575000 50.815048 8.770383 183.577000 50.815043 8.770384 183.590000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_ca88f86b-3fce-4749-ad4d-f1c19457df26" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815055 8.770382 183.553000 50.815055 8.770384 183.550000 50.815056 8.770396 183.534000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643287'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643287">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643287</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">14.117</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643287</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_b93db46a-3ca9-45c2-af1a-238a3281afa8'-->
                <gml:MultiSurface gml:id="GEOMETRY_b93db46a-3ca9-45c2-af1a-238a3281afa8" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e16fa87f-b509-4380-b7ef-f1d728d0ab4b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815094 8.770376 197.552000 50.815086 8.770377 197.554000 50.815086 8.770377 183.435000 50.815094 8.770376 183.435000 50.815094 8.770376 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_0c89f385-d20c-4e3a-93ee-41b7838aa7b4" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815085 8.770362 183.435000 50.815086 8.770362 183.435000 50.815093 8.770361 183.435000 50.815094 8.770376 183.435000 50.815086 8.770377 183.435000 50.815085 8.770362 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_cf0e46a4-200c-432d-9a3f-0f90791fc185" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815086 8.770377 197.554000 50.815094 8.770376 197.552000 50.815093 8.770361 197.552000 50.815086 8.770362 197.552000 50.815085 8.770362 197.552000 50.815086 8.770377 197.554000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_ab2c583a-44a8-4c3d-b280-3c9273f48544" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815093 8.770361 197.552000 50.815094 8.770376 197.552000 50.815094 8.770376 183.435000 50.815093 8.770361 183.435000 50.815093 8.770361 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_8fd88dc1-a2a8-44a1-84f5-bd9a6ba7f353" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815086 8.770362 197.552000 50.815093 8.770361 197.552000 50.815093 8.770361 183.435000 50.815086 8.770362 183.435000 50.815086 8.770362 197.386000 50.815086 8.770362 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_7748fe90-b33a-4dbd-8bf0-52df73d1e474" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815086 8.770362 197.386000 50.815085 8.770362 197.552000 50.815086 8.770362 197.552000 50.815086 8.770362 197.386000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_10698726-13bd-4247-9e1c-284f22e1825f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815086 8.770362 197.386000 50.815086 8.770362 183.435000 50.815085 8.770362 183.435000 50.815085 8.770362 197.552000 50.815086 8.770362 197.386000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_440b43cc-be55-4846-95a0-6de220b423b6" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815086 8.770377 197.554000 50.815085 8.770362 197.552000 50.815085 8.770362 183.435000 50.815086 8.770377 183.435000 50.815086 8.770377 197.554000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_149b858d-7899-4ef4-91af-03ab12b8cd11'-->
                <gml:MultiCurve gml:id="GEOMETRY_149b858d-7899-4ef4-91af-03ab12b8cd11" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_6455b750-aea2-4e05-aa3a-775568f14813" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815086 8.770362 183.468000 50.815085 8.770362 183.470000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_90390e80-0214-4db3-88b1-6e715da71df0" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815093 8.770361 183.449000 50.815093 8.770361 183.450000 50.815088 8.770362 183.464000 50.815086 8.770362 183.468000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_9f6398d3-97be-4256-baa4-af588ae5f0da" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815093 8.770361 183.449000 50.815094 8.770370 183.445000 50.815094 8.770371 183.443000 50.815094 8.770376 183.435000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_c5a72ca0-a060-4c4e-ae6d-eac78d842705" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815094 8.770376 183.435000 50.815093 8.770376 183.437000 50.815089 8.770377 183.446000 50.815086 8.770377 183.466000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_958733fb-27b5-4b25-9625-e97d6f32945f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815085 8.770362 183.470000 50.815085 8.770370 183.464000 50.815086 8.770372 183.460000 50.815086 8.770377 183.466000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643292'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643292">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643292</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">24.208</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643292</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_ea2e43e3-02eb-40d2-9d92-cbae1bbff222'-->
                <gml:MultiSurface gml:id="GEOMETRY_ea2e43e3-02eb-40d2-9d92-cbae1bbff222" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_5ccdcc07-71d7-4785-bdfc-f511c19d6430" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814872 8.770327 207.643000 50.814863 8.770330 207.643000 50.814863 8.770330 183.435000 50.814872 8.770327 183.435000 50.814872 8.770327 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_55e06775-929e-45dc-8b96-d6197f945bc0" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814863 8.770330 207.643000 50.814861 8.770310 207.643000 50.814861 8.770310 183.435000 50.814863 8.770330 183.435000 50.814863 8.770330 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_37724e7f-d30f-4e7b-b739-6141444275bd" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814863 8.770330 183.435000 50.814861 8.770310 183.435000 50.814871 8.770308 183.435000 50.814874 8.770361 183.435000 50.814873 8.770361 183.435000 50.814872 8.770327 183.435000 50.814863 8.770330 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_2db14c90-f860-4ba3-9193-bcce6da84807" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814872 8.770327 207.643000 50.814873 8.770361 207.643000 50.814874 8.770361 207.643000 50.814871 8.770308 207.643000 50.814861 8.770310 207.643000 50.814863 8.770330 207.643000 50.814872 8.770327 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_ba2b7ade-8862-4d90-8e50-a1f42f709c28" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814873 8.770361 207.643000 50.814872 8.770327 207.643000 50.814872 8.770327 183.435000 50.814873 8.770361 183.435000 50.814873 8.770361 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_731cce84-64e7-4605-a059-e867b2ad5726" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814874 8.770361 207.643000 50.814873 8.770361 207.643000 50.814873 8.770361 183.435000 50.814874 8.770361 183.435000 50.814874 8.770361 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_461adf7b-7a9c-4768-9853-ca752d8fc721" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814861 8.770310 207.643000 50.814871 8.770308 207.643000 50.814871 8.770308 183.435000 50.814861 8.770310 183.435000 50.814861 8.770310 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_55c5bf3b-3ca3-44c4-9653-3df42efa59df" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814871 8.770308 207.643000 50.814874 8.770361 207.643000 50.814874 8.770361 183.435000 50.814871 8.770308 183.435000 50.814871 8.770308 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_688faf4c-9e4a-41bf-9315-e2aa3a78398a'-->
                <gml:MultiCurve gml:id="GEOMETRY_688faf4c-9e4a-41bf-9315-e2aa3a78398a" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_c31823bf-3b9e-4722-afde-14afd792e626" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814861 8.770310 184.140000 50.814861 8.770314 184.142000 50.814862 8.770318 184.143000 50.814863 8.770328 184.130000 50.814863 8.770330 184.130000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_2db1e55a-81c2-42a4-b123-cc324d71bb7a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814871 8.770308 184.169000 50.814868 8.770309 184.168000 50.814865 8.770309 184.150000 50.814861 8.770310 184.140000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_ea3c8ee9-127d-4071-8a8b-2b9ea188fc15" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814871 8.770308 184.169000 50.814872 8.770314 184.161000 50.814872 8.770320 184.156000 50.814872 8.770328 184.155000 50.814873 8.770336 184.144000 50.814873 8.770343 184.139000 50.814874 8.770351 184.114000 50.814874 8.770357 184.103000 50.814874 8.770361 184.091000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_53cfa278-ac8b-4919-afc1-c885dcfebb93" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814874 8.770361 184.091000 50.814873 8.770361 184.094000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_bced5044-ebd3-4842-a8e5-6a57b0443039" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814872 8.770327 184.156000 50.814872 8.770328 184.156000 50.814872 8.770335 184.146000 50.814873 8.770343 184.141000 50.814873 8.770350 184.121000 50.814873 8.770357 184.107000 50.814873 8.770361 184.094000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_70617e0a-ed8a-4875-8398-9d4dc1b8d1a4" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814872 8.770327 184.156000 50.814869 8.770328 184.159000 50.814868 8.770329 184.159000 50.814863 8.770330 184.130000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643325'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643325">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643325</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">24.208</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643325</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_182fcf8e-b665-483c-b7e9-6be088665ab4'-->
                <gml:MultiSurface gml:id="GEOMETRY_182fcf8e-b665-483c-b7e9-6be088665ab4" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_9a2fd4f4-44fc-43eb-b6ea-474d0e092769" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815008 8.769706 207.643000 50.815001 8.769707 207.643000 50.815001 8.769707 183.435000 50.815008 8.769706 183.435000 50.815008 8.769706 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_8ad7872c-0de7-4224-9173-1c59aa0042b6" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815012 8.769755 207.643000 50.815013 8.769777 207.643000 50.815013 8.769777 183.435000 50.815012 8.769755 183.435000 50.815012 8.769755 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_a8bb3b47-64e1-4f49-8ef2-0ffaab8a285f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815009 8.769827 207.643000 50.815017 8.769826 207.643000 50.815017 8.769826 183.435000 50.815009 8.769827 183.435000 50.815009 8.769827 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_b3b3030d-7c95-457e-880a-2fdf8261d087" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815009 8.769827 183.435000 50.815017 8.769826 183.435000 50.815019 8.769848 183.435000 50.815007 8.769850 183.435000 50.814993 8.769672 183.435000 50.815006 8.769670 183.435000 50.815008 8.769706 183.435000 50.815001 8.769707 183.435000 50.815004 8.769756 183.435000 50.815012 8.769755 183.435000 50.815013 8.769777 183.435000 50.815006 8.769778 183.435000 50.815009 8.769827 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_8043d750-29cb-4c5e-a5d0-c9793e45c60d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815001 8.769707 207.643000 50.815004 8.769756 207.643000 50.815004 8.769756 183.435000 50.815001 8.769707 183.435000 50.815001 8.769707 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_a0b6e6ed-0e80-49d6-9245-004622b39ec7" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815006 8.769670 207.643000 50.815008 8.769706 207.643000 50.815008 8.769706 183.435000 50.815006 8.769670 183.435000 50.815006 8.769670 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_0ef6f98d-85ec-4689-a817-b4122ac64e80" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815006 8.769778 207.643000 50.815009 8.769827 207.643000 50.815009 8.769827 183.435000 50.815006 8.769778 183.435000 50.815006 8.769778 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_faa03935-ad9c-42eb-92d6-fea3b197d957" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815017 8.769826 207.643000 50.815019 8.769848 207.643000 50.815019 8.769848 183.435000 50.815017 8.769826 183.435000 50.815017 8.769826 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_1e47dfea-36e1-4bd4-adc6-b38789f05f78" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815004 8.769756 207.643000 50.815012 8.769755 207.643000 50.815012 8.769755 183.435000 50.815004 8.769756 183.435000 50.815004 8.769756 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_06a6d57d-a2ce-4888-8365-254fd0b9bb18" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815019 8.769848 207.643000 50.815007 8.769850 207.643000 50.815007 8.769850 183.435000 50.815019 8.769848 183.435000 50.815019 8.769848 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_67cb7674-89d0-4568-8030-e0f8319dc4f4" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815006 8.769778 207.643000 50.815013 8.769777 207.643000 50.815012 8.769755 207.643000 50.815004 8.769756 207.643000 50.815001 8.769707 207.643000 50.815008 8.769706 207.643000 50.815006 8.769670 207.643000 50.814993 8.769672 207.643000 50.815007 8.769850 207.643000 50.815019 8.769848 207.643000 50.815017 8.769826 207.643000 50.815009 8.769827 207.643000 50.815006 8.769778 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_50f64a5b-f266-472e-9efa-65162e78f785" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815013 8.769777 207.643000 50.815006 8.769778 207.643000 50.815006 8.769778 183.435000 50.815013 8.769777 183.435000 50.815013 8.769777 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_7ffd74e6-5961-48e6-9139-178986b2fd0b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814993 8.769672 183.435000 50.814993 8.769672 207.643000 50.815006 8.769670 207.643000 50.815006 8.769670 183.435000 50.814993 8.769672 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_869cae60-3b6e-4512-83fd-45384be760a8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815007 8.769850 207.643000 50.814993 8.769672 207.643000 50.814993 8.769672 183.435000 50.815007 8.769850 183.435000 50.815007 8.769850 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_d4b6ba9a-6313-4459-ae66-7701c1a9439a'-->
                <gml:MultiCurve gml:id="GEOMETRY_d4b6ba9a-6313-4459-ae66-7701c1a9439a" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_4c2ee82b-7a9c-471e-9f77-488d30db66c6" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815017 8.769826 184.843000 50.815011 8.769827 184.859000 50.815009 8.769827 184.866000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_789496c8-0c20-4d55-862f-b9428a02854f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815017 8.769826 184.843000 50.815017 8.769831 184.837000 50.815018 8.769842 184.871000 50.815018 8.769845 184.872000 50.815019 8.769848 184.873000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_7ed48b3f-30a0-4917-b890-eb427b048b4b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815019 8.769848 184.873000 50.815014 8.769849 184.865000 50.815011 8.769850 184.859000 50.815007 8.769850 184.867000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_acac3599-ba4a-49e7-bf1a-844e8255ba83" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814993 8.769672 185.191000 50.814993 8.769675 185.185000 50.814993 8.769675 185.185000 50.814994 8.769689 185.147000 50.814994 8.769691 185.141000 50.814995 8.769703 185.108000 50.814996 8.769707 185.103000 50.814996 8.769717 185.082000 50.814997 8.769724 185.067000 50.814998 8.769732 185.051000 50.814998 8.769740 185.037000 50.814999 8.769746 185.026000 50.815000 8.769756 185.003000 50.815000 8.769760 184.995000 50.815001 8.769772 184.971000 50.815001 8.769774 184.968000 50.815002 8.769786 184.948000 50.815002 8.769788 184.944000 50.815002 8.769789 184.943000 50.815003 8.769803 184.919000 50.815004 8.769805 184.914000 50.815005 8.769817 184.893000 50.815005 8.769821 184.887000 50.815006 8.769831 184.873000 50.815006 8.769838 184.873000 50.815007 8.769845 184.867000 50.815007 8.769850 184.867000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_de4ea818-2662-427e-99f8-f56992f02a3d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815006 8.769670 185.145000 50.815002 8.769671 185.194000 50.815000 8.769671 185.200000 50.814993 8.769672 185.190000 50.814993 8.769672 185.191000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_7b0c43b3-9ec9-466d-ae28-652b8ba83283" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815006 8.769670 185.145000 50.815006 8.769675 185.141000 50.815007 8.769682 185.124000 50.815007 8.769689 185.088000 50.815008 8.769698 185.079000 50.815008 8.769703 185.064000 50.815008 8.769706 185.064000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_6eeccdfe-9728-4d6d-8d96-70570c3112d8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815008 8.769706 185.064000 50.815004 8.769707 185.079000 50.815002 8.769707 185.083000 50.815001 8.769707 185.086000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_3e17ae9e-a502-4509-89b6-4866f3f79742" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815001 8.769707 185.086000 50.815002 8.769717 185.075000 50.815002 8.769717 185.074000 50.815002 8.769723 185.062000 50.815003 8.769732 185.040000 50.815003 8.769733 185.040000 50.815003 8.769746 185.018000 50.815004 8.769748 185.012000 50.815004 8.769756 184.995000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_bff64a1a-a97f-49bc-9d0d-6c5bef696403" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815012 8.769755 184.984000 50.815011 8.769755 184.986000 50.815008 8.769756 184.989000 50.815004 8.769756 184.995000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_93e46c3a-a512-4928-b1cf-194f8425e2ff" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815012 8.769755 184.984000 50.815012 8.769760 184.972000 50.815012 8.769762 184.967000 50.815013 8.769774 184.935000 50.815013 8.769777 184.931000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_10710de8-b567-41bd-b214-5b61f0b5c181" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815013 8.769777 184.931000 50.815013 8.769777 184.933000 50.815011 8.769777 184.937000 50.815006 8.769778 184.951000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_dd102c11-858a-4978-a4f0-8d5fbcac1480" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815006 8.769778 184.951000 50.815006 8.769780 184.948000 50.815006 8.769788 184.934000 50.815007 8.769796 184.917000 50.815007 8.769803 184.906000 50.815008 8.769812 184.887000 50.815008 8.769817 184.879000 50.815009 8.769827 184.866000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643300'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643300">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643300</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">32.776</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643300</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_8acfa2fd-b1d1-465e-86b7-69933f4343af'-->
                <gml:MultiSurface gml:id="GEOMETRY_8acfa2fd-b1d1-465e-86b7-69933f4343af" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_b5a5067a-9672-4834-a48e-bf743b57c500" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814924 8.770161 216.211000 50.814868 8.770262 207.643000 50.814856 8.770067 207.643000 50.814924 8.770161 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_d4909595-ca14-4b05-8e53-79908942a11f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814859 8.770263 207.627000 50.814839 8.770266 207.643000 50.814839 8.770266 183.435000 50.814859 8.770263 183.435000 50.814859 8.770263 207.627000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_4ded5017-c92b-44d9-acc5-4fadeb71ffc3" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814828 8.770268 207.643000 50.814827 8.770265 207.949000 50.814827 8.770265 183.435000 50.814828 8.770268 183.435000 50.814828 8.770268 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_b5dcbfd2-6b5e-42b6-bcac-cc6505f01787" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814827 8.770265 207.949000 50.814807 8.770269 207.917000 50.814807 8.770269 207.643000 50.814807 8.770269 183.435000 50.814827 8.770265 183.435000 50.814827 8.770265 207.949000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_f8f33a4a-60da-409e-80bf-4b07545650de" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814794 8.770077 207.643000 50.814807 8.770075 207.643000 50.814807 8.770075 183.435000 50.814794 8.770077 183.435000 50.814794 8.770077 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e1dd6491-ac57-4c81-ba01-d3f7c998fa4c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814859 8.770263 207.643000 50.814859 8.770263 207.627000 50.814859 8.770263 183.435000 50.814859 8.770263 183.435000 50.814859 8.770263 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_53fe6bcb-c634-4f61-91c3-8b07c98cac92" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814924 8.770161 216.211000 50.814807 8.770075 207.643000 50.814794 8.770077 207.643000 50.814801 8.770176 216.211000 50.814924 8.770161 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_774c716a-0e1f-4506-9e58-aed66adcf634" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814807 8.770269 183.435000 50.814801 8.770176 183.435000 50.814794 8.770077 183.435000 50.814807 8.770075 183.435000 50.814813 8.770074 183.435000 50.814856 8.770067 183.435000 50.814868 8.770262 183.435000 50.814859 8.770263 183.435000 50.814859 8.770263 183.435000 50.814839 8.770266 183.435000 50.814828 8.770268 183.435000 50.814827 8.770265 183.435000 50.814807 8.770269 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_3bdf6785-0b41-435a-b093-4f1a5b02e0eb" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814807 8.770269 207.917000 50.814827 8.770265 207.949000 50.814828 8.770268 207.643000 50.814839 8.770266 207.643000 50.814859 8.770263 207.627000 50.814859 8.770263 207.643000 50.814868 8.770262 207.643000 50.814924 8.770161 216.211000 50.814807 8.770269 207.917000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_40fba549-0f6c-4d05-88ca-80917cf1eb16" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814801 8.770176 216.211000 50.814807 8.770269 207.917000 50.814924 8.770161 216.211000 50.814801 8.770176 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_aef5eea2-8775-4bf8-948a-02cd12a87590" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814856 8.770067 207.643000 50.814813 8.770074 207.643000 50.814807 8.770075 207.643000 50.814924 8.770161 216.211000 50.814856 8.770067 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_7d2044ea-05ce-4ff0-89c1-b04f787d26be" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814868 8.770262 207.643000 50.814859 8.770263 207.643000 50.814859 8.770263 183.435000 50.814868 8.770262 183.435000 50.814868 8.770262 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_a7d481c5-d108-45c4-a881-e4c6677bedb8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814856 8.770067 207.643000 50.814868 8.770262 207.643000 50.814868 8.770262 183.435000 50.814856 8.770067 183.435000 50.814856 8.770067 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_25f93007-7afb-4137-a547-af5b9750f42d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814801 8.770176 216.211000 50.814807 8.770269 207.643000 50.814807 8.770269 207.917000 50.814801 8.770176 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_9b3e5be7-8ba1-4cd8-a73e-55624275e812" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814801 8.770176 183.435000 50.814807 8.770269 183.435000 50.814807 8.770269 207.643000 50.814801 8.770176 207.643000 50.814801 8.770176 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_b2fdf486-94ba-4b1f-9f5e-2810105841bc" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814801 8.770176 207.643000 50.814807 8.770269 207.643000 50.814801 8.770176 216.211000 50.814801 8.770176 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_eec34188-eb95-4e66-80d6-9dd0cf4733be" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814839 8.770266 207.643000 50.814828 8.770268 207.643000 50.814828 8.770268 183.435000 50.814839 8.770266 183.435000 50.814839 8.770266 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_6af8b784-b228-4348-8ba3-9f859a501657" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814856 8.770067 183.435000 50.814813 8.770074 183.435000 50.814813 8.770074 207.643000 50.814856 8.770067 207.643000 50.814856 8.770067 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e67dd1b0-87cd-4dd4-8206-21319d7abd21" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814813 8.770074 183.435000 50.814807 8.770075 183.435000 50.814807 8.770075 207.643000 50.814813 8.770074 207.643000 50.814813 8.770074 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e01f4c4e-6143-45f4-8bb4-219ebd85c5c3" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814801 8.770176 183.435000 50.814801 8.770176 207.643000 50.814794 8.770077 207.643000 50.814794 8.770077 183.435000 50.814801 8.770176 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_626fee30-c491-45c9-8692-b1069718b87c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814794 8.770077 207.643000 50.814801 8.770176 207.643000 50.814801 8.770176 216.211000 50.814794 8.770077 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_1673757b-6fe6-49ad-8393-187908320029'-->
                <gml:MultiCurve gml:id="GEOMETRY_1673757b-6fe6-49ad-8393-187908320029" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_2e748329-4c24-48b2-b15e-6a6d14ea1ca8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814801 8.770176 184.559000 50.814801 8.770181 184.545000 50.814802 8.770187 184.530000 50.814802 8.770197 184.502000 50.814803 8.770201 184.492000 50.814804 8.770213 184.462000 50.814804 8.770215 184.455000 50.814805 8.770229 184.421000 50.814805 8.770229 184.419000 50.814805 8.770236 184.399000 50.814806 8.770244 184.377000 50.814806 8.770244 184.375000 50.814807 8.770258 184.344000 50.814807 8.770260 184.337000 50.814807 8.770269 184.325000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_660cbf0e-b970-40dd-8eae-9ac6aa9ac420" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814794 8.770077 184.779000 50.814795 8.770086 184.778000 50.814795 8.770088 184.779000 50.814796 8.770100 184.761000 50.814796 8.770102 184.758000 50.814796 8.770102 184.758000 50.814797 8.770116 184.729000 50.814797 8.770118 184.723000 50.814798 8.770130 184.687000 50.814798 8.770134 184.677000 50.814799 8.770144 184.646000 50.814799 8.770149 184.632000 50.814800 8.770158 184.607000 50.814800 8.770165 184.588000 50.814801 8.770173 184.568000 50.814801 8.770176 184.559000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_57357a50-6594-46cc-b301-3993e8b9c50f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814807 8.770075 184.803000 50.814806 8.770075 184.807000 50.814805 8.770075 184.809000 50.814798 8.770076 184.785000 50.814796 8.770077 184.784000 50.814794 8.770077 184.779000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_df79a511-bb3b-44bf-b46c-43c9f661126a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814856 8.770067 184.711000 50.814855 8.770067 184.713000 50.814850 8.770068 184.722000 50.814847 8.770069 184.726000 50.814841 8.770070 184.737000 50.814839 8.770070 184.740000 50.814832 8.770071 184.752000 50.814831 8.770071 184.753000 50.814823 8.770072 184.767000 50.814822 8.770072 184.768000 50.814818 8.770073 184.776000 50.814814 8.770074 184.782000 50.814814 8.770074 184.782000 50.814807 8.770075 184.803000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_76924f46-e45a-41a3-acc0-6d3a7177a913" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814856 8.770067 184.711000 50.814856 8.770069 184.709000 50.814856 8.770073 184.703000 50.814857 8.770084 184.683000 50.814857 8.770087 184.678000 50.814858 8.770100 184.653000 50.814858 8.770101 184.651000 50.814859 8.770114 184.625000 50.814859 8.770116 184.621000 50.814859 8.770116 184.620000 50.814860 8.770130 184.588000 50.814860 8.770131 184.583000 50.814861 8.770144 184.551000 50.814861 8.770147 184.543000 50.814862 8.770158 184.513000 50.814862 8.770163 184.500000 50.814863 8.770172 184.474000 50.814863 8.770179 184.456000 50.814863 8.770187 184.434000 50.814864 8.770194 184.413000 50.814864 8.770201 184.394000 50.814865 8.770210 184.369000 50.814865 8.770215 184.355000 50.814866 8.770226 184.326000 50.814866 8.770229 184.316000 50.814867 8.770241 184.286000 50.814867 8.770243 184.281000 50.814868 8.770257 184.246000 50.814868 8.770257 184.245000 50.814868 8.770260 184.239000 50.814868 8.770262 184.235000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_867220c2-e6bc-4a4f-935e-4ad61c010be1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814868 8.770262 184.235000 50.814868 8.770262 184.235000 50.814862 8.770263 184.238000 50.814859 8.770263 184.238000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_f7ba61a7-7e28-492c-a544-1875d49096be" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814859 8.770263 184.238000 50.814859 8.770263 184.238000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_df0a1f2c-c388-49c4-930e-25aa971af14c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814859 8.770263 184.238000 50.814859 8.770263 184.238000 50.814854 8.770264 184.244000 50.814850 8.770265 184.238000 50.814846 8.770265 184.244000 50.814841 8.770266 184.252000 50.814839 8.770266 184.253000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_46b93bd7-1f7b-400d-90dc-8044a96087b0" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814839 8.770266 184.253000 50.814838 8.770267 184.254000 50.814832 8.770268 184.277000 50.814830 8.770268 184.281000 50.814828 8.770268 184.279000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_287c5dc5-db85-4e85-bb82-5c7c35ef3482" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814827 8.770265 184.290000 50.814828 8.770268 184.279000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_1e05c994-33a9-4254-a350-1051ba9c1090" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814827 8.770265 184.290000 50.814823 8.770266 184.286000 50.814820 8.770266 184.289000 50.814814 8.770267 184.302000 50.814812 8.770268 184.306000 50.814807 8.770269 184.325000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643308'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643308">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643308</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">24.208</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643308</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_3a71a294-cd94-48e0-a64e-bb551c9ef8b1'-->
                <gml:MultiSurface gml:id="GEOMETRY_3a71a294-cd94-48e0-a64e-bb551c9ef8b1" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_288e77ab-990d-49b1-9515-636617a4f935" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815111 8.770164 207.643000 50.815122 8.770166 207.643000 50.815124 8.770147 207.643000 50.815114 8.770144 207.643000 50.815111 8.770164 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_89a76752-f1c4-4f90-b2eb-6ecbfe8a4f4a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815124 8.770147 207.643000 50.815122 8.770166 207.643000 50.815122 8.770166 183.435000 50.815124 8.770147 183.435000 50.815124 8.770147 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_4cb4d900-4f58-404d-85b1-e92c5b79b174" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815114 8.770144 207.643000 50.815124 8.770147 207.643000 50.815124 8.770147 183.435000 50.815114 8.770144 183.435000 50.815114 8.770144 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_57e37d77-979d-480f-b06f-84018b0ac2ae" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815114 8.770144 183.435000 50.815124 8.770147 183.435000 50.815122 8.770166 183.435000 50.815111 8.770164 183.435000 50.815114 8.770144 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_6dd98721-93fe-4b6e-abf4-db4450655825" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815122 8.770166 207.643000 50.815111 8.770164 207.643000 50.815111 8.770164 183.435000 50.815122 8.770166 183.435000 50.815122 8.770166 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_031b624e-f30c-401e-9053-109b7bf61c54" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815111 8.770164 207.643000 50.815114 8.770144 207.643000 50.815114 8.770144 183.435000 50.815111 8.770164 183.435000 50.815111 8.770164 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_7d71670e-fd89-46e3-a4fc-2be1aec1bced'-->
                <gml:MultiCurve gml:id="GEOMETRY_7d71670e-fd89-46e3-a4fc-2be1aec1bced" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_40d014d0-6fe1-4216-a1a2-6b09744d9848" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815114 8.770144 183.897000 50.815120 8.770146 183.837000 50.815122 8.770146 183.807000 50.815124 8.770147 183.781000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_5ec56b0f-6174-44d2-a9a1-90b81e9d5b28" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815124 8.770147 183.781000 50.815123 8.770149 183.776000 50.815123 8.770157 183.739000 50.815122 8.770161 183.727000 50.815122 8.770166 183.706000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_cc5e0373-fcdb-4c3b-8c87-a47105b58efd" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815111 8.770164 183.784000 50.815116 8.770165 183.757000 50.815120 8.770166 183.729000 50.815122 8.770166 183.706000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_87683d75-1b89-40ee-965a-3c815d62d128" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815114 8.770144 183.897000 50.815113 8.770147 183.885000 50.815112 8.770157 183.820000 50.815112 8.770159 183.813000 50.815111 8.770164 183.784000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643303'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643303">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643303</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">14.117</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643303</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_b9ff7b9c-561e-4b0d-ba9c-c102817eea61'-->
                <gml:MultiSurface gml:id="GEOMETRY_b9ff7b9c-561e-4b0d-ba9c-c102817eea61" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_a7165c46-bc7f-431c-ae8f-28cafa14365a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815092 8.770326 197.552000 50.815083 8.770327 197.552000 50.815083 8.770327 197.352000 50.815083 8.770327 183.435000 50.815092 8.770326 183.435000 50.815092 8.770326 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_fe964a42-5765-42e8-8809-247dbcd2702c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815081 8.770310 183.435000 50.815082 8.770310 183.435000 50.815091 8.770309 183.435000 50.815092 8.770326 183.435000 50.815083 8.770327 183.435000 50.815082 8.770327 183.435000 50.815081 8.770310 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_06d1bf6f-6504-4ac5-9a1e-9985f203d89f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815082 8.770327 197.552000 50.815083 8.770327 197.552000 50.815092 8.770326 197.552000 50.815091 8.770309 197.552000 50.815082 8.770310 197.552000 50.815081 8.770310 197.551000 50.815082 8.770327 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_159e664b-3bd1-4500-9c0e-76301b14e5f6" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815082 8.770310 197.552000 50.815091 8.770309 197.552000 50.815091 8.770309 183.435000 50.815082 8.770310 183.435000 50.815082 8.770310 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_8489060e-80bd-4f22-b900-6c12e50e8c1b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815081 8.770310 197.551000 50.815082 8.770310 197.552000 50.815082 8.770310 183.435000 50.815081 8.770310 183.435000 50.815081 8.770310 197.551000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_1f5be1dc-6cc4-4eff-84f6-7d8753092522" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815091 8.770309 197.552000 50.815092 8.770326 197.552000 50.815092 8.770326 183.435000 50.815091 8.770309 183.435000 50.815091 8.770309 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_28942f1a-d2f9-4438-9253-df958f244a2f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815082 8.770327 197.552000 50.815081 8.770310 197.551000 50.815081 8.770310 183.435000 50.815082 8.770327 183.435000 50.815082 8.770327 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_65153ef9-ba64-4c0b-bb94-03e4140459f9" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815082 8.770327 197.552000 50.815083 8.770327 197.352000 50.815083 8.770327 197.552000 50.815082 8.770327 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_bb0b4f54-4240-4d79-aa03-5ef0a2041a85" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815082 8.770327 197.552000 50.815082 8.770327 183.435000 50.815083 8.770327 183.435000 50.815083 8.770327 197.352000 50.815082 8.770327 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_5fdf05e9-2e11-4e28-95b8-27212f0a5b93'-->
                <gml:MultiCurve gml:id="GEOMETRY_5fdf05e9-2e11-4e28-95b8-27212f0a5b93" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_e7743e32-10f3-45ba-8b0a-58c12208f02c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815082 8.770310 183.524000 50.815081 8.770310 183.526000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_3747d9b2-886d-4c0f-b54a-5c0ec89ca3d8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815091 8.770309 183.494000 50.815090 8.770309 183.495000 50.815084 8.770310 183.514000 50.815082 8.770310 183.523000 50.815082 8.770310 183.524000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_5e03d56a-21de-4cef-956e-89a14dd4c4b7" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815091 8.770309 183.494000 50.815091 8.770309 183.493000 50.815091 8.770313 183.488000 50.815092 8.770325 183.476000 50.815092 8.770326 183.476000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_f4a0c2e7-c450-4954-b86e-e63af002d189" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815092 8.770326 183.476000 50.815084 8.770327 183.498000 50.815084 8.770327 183.499000 50.815083 8.770327 183.500000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_d13d612f-0f4e-4411-9a62-9d47aa527281" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815083 8.770327 183.500000 50.815082 8.770327 183.503000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_85b72e9b-60ce-4f17-9e1b-3b368f7fc44b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815081 8.770310 183.526000 50.815081 8.770313 183.521000 50.815082 8.770325 183.507000 50.815082 8.770327 183.503000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643318'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643318">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643318</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">24.208</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643318</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_90a3e649-012a-4e4e-9d24-1dbfc2163b41'-->
                <gml:MultiSurface gml:id="GEOMETRY_90a3e649-012a-4e4e-9d24-1dbfc2163b41" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_41ed03dc-dc10-4bc1-97cf-8a7924f43548" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814742 8.770095 207.643000 50.814751 8.770082 207.643000 50.814751 8.770082 183.435000 50.814742 8.770095 183.435000 50.814742 8.770095 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_387ee694-5eaa-4732-8ae4-bced37af856b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814751 8.770082 207.643000 50.814758 8.770096 207.643000 50.814758 8.770096 183.435000 50.814751 8.770082 183.435000 50.814751 8.770082 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_3e9a4009-21f6-46b8-9de7-2dbc18ae5067" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814751 8.770082 183.435000 50.814758 8.770096 183.435000 50.814749 8.770109 183.435000 50.814742 8.770095 183.435000 50.814751 8.770082 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_2257c086-0946-4887-852b-4fcabf7b82c0" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814749 8.770109 207.643000 50.814742 8.770095 207.643000 50.814742 8.770095 183.435000 50.814749 8.770109 183.435000 50.814749 8.770109 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_251dc151-b6a5-4339-849d-cf0f52f55af8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814742 8.770095 207.643000 50.814749 8.770109 207.643000 50.814758 8.770096 207.643000 50.814751 8.770082 207.643000 50.814742 8.770095 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_b9f7ae75-bf08-4bb2-a464-d30a5a768eae" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814758 8.770096 207.643000 50.814749 8.770109 207.643000 50.814749 8.770109 183.435000 50.814758 8.770096 183.435000 50.814758 8.770096 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_fc2723a2-a22a-4771-8b34-a43377a88a56'-->
                <gml:MultiCurve gml:id="GEOMETRY_fc2723a2-a22a-4771-8b34-a43377a88a56" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_07764c70-a256-4030-95d7-93fc15c45c0c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814751 8.770082 184.679000 50.814754 8.770088 184.703000 50.814758 8.770096 184.700000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_26aa4d09-e150-4f53-a5d4-47a4b3fa2fc5" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814758 8.770096 184.700000 50.814757 8.770098 184.711000 50.814754 8.770102 184.684000 50.814752 8.770104 184.671000 50.814751 8.770107 184.669000 50.814749 8.770109 184.656000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_e898df5f-4e7a-410e-ba70-69f8107f03da" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814742 8.770095 184.611000 50.814742 8.770096 184.612000 50.814745 8.770102 184.636000 50.814749 8.770109 184.656000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_bc0cb79b-0d44-4e92-9424-0100969bfe61" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814751 8.770082 184.679000 50.814751 8.770083 184.683000 50.814749 8.770085 184.699000 50.814747 8.770088 184.673000 50.814744 8.770092 184.624000 50.814742 8.770095 184.611000 50.814742 8.770095 184.611000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643305'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643305">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643305</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">24.208</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643305</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_50bdbeab-b69f-48f6-848d-bdf5d663d22e'-->
                <gml:MultiSurface gml:id="GEOMETRY_50bdbeab-b69f-48f6-848d-bdf5d663d22e" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_5b27eb6a-df7d-40aa-8246-86173a9e5e81" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814994 8.770426 207.643000 50.814986 8.770416 207.643000 50.814986 8.770416 183.435000 50.814994 8.770426 183.435000 50.814994 8.770426 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_8c34ec23-9ed1-4752-ad9b-931297fd86f0" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815003 8.770408 207.643000 50.814994 8.770426 207.643000 50.814994 8.770426 183.435000 50.815003 8.770408 183.435000 50.815003 8.770408 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_2c827120-6c58-41bb-aad0-46331f155026" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814992 8.770399 183.435000 50.815003 8.770408 183.435000 50.814994 8.770426 183.435000 50.814986 8.770416 183.435000 50.814992 8.770399 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_1a6310e3-3a3c-4233-9c43-b2b7aac21605" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814992 8.770399 207.643000 50.815003 8.770408 207.643000 50.815003 8.770408 183.435000 50.814992 8.770399 183.435000 50.814992 8.770399 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e9bd539d-5fc0-4be6-a864-97f3c611272d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814986 8.770416 207.643000 50.814994 8.770426 207.643000 50.815003 8.770408 207.643000 50.814992 8.770399 207.643000 50.814986 8.770416 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_5977511e-0fbe-44f0-8012-c92dc1bef030" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814986 8.770416 207.643000 50.814992 8.770399 207.643000 50.814992 8.770399 183.435000 50.814986 8.770416 183.435000 50.814986 8.770416 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_48f606cf-ec53-4bdf-acea-ee4b4856249a'-->
                <gml:MultiCurve gml:id="GEOMETRY_48f606cf-ec53-4bdf-acea-ee4b4856249a" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_7bd47f15-79b2-45a9-a8fe-f3e337bb6a21" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814992 8.770399 183.733000 50.814994 8.770401 183.722000 50.814997 8.770403 183.706000 50.815003 8.770408 183.676000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_deb081a1-fb48-40db-8283-4ed0a0ff01bf" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815003 8.770408 183.676000 50.815002 8.770410 183.677000 50.815000 8.770413 183.679000 50.814998 8.770419 183.692000 50.814994 8.770426 183.692000 50.814994 8.770426 183.692000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_161768d0-ceb1-4a7b-84e4-f0d9386633a8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814986 8.770416 183.734000 50.814993 8.770425 183.699000 50.814994 8.770426 183.692000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_539179f7-8799-4c06-8583-7eb1a3e22bcf" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814992 8.770399 183.733000 50.814990 8.770406 183.735000 50.814987 8.770413 183.734000 50.814986 8.770415 183.734000 50.814986 8.770416 183.734000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643313'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643313">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643313</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">32.776</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643313</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_780dd9dc-ba66-4bf5-bb1d-07ad4a3f3c3b'-->
                <gml:MultiSurface gml:id="GEOMETRY_780dd9dc-ba66-4bf5-bb1d-07ad4a3f3c3b" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_656e745a-6502-412a-9820-779811cc1ada" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815054 8.770036 183.435000 50.815077 8.770043 183.435000 50.815088 8.770053 183.435000 50.815102 8.770077 183.435000 50.815106 8.770084 183.435000 50.815111 8.770103 183.435000 50.815114 8.770144 183.435000 50.815111 8.770164 183.435000 50.815098 8.770200 183.435000 50.815088 8.770213 183.435000 50.815075 8.770222 183.435000 50.815065 8.770229 183.435000 50.815060 8.770142 183.435000 50.815054 8.770036 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_ba381340-196f-42c9-bcb4-c33e2cfd1f65" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815060 8.770142 216.211000 50.815088 8.770053 207.643000 50.815077 8.770043 207.643000 50.815060 8.770142 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_054e5ea6-bfa8-4901-a39d-08c5f778be1f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815054 8.770036 207.643000 50.815077 8.770043 207.643000 50.815077 8.770043 183.435000 50.815054 8.770036 183.435000 50.815054 8.770036 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_87d12b43-d528-4512-ab48-e69378db5272" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815060 8.770142 216.211000 50.815111 8.770103 207.643000 50.815106 8.770084 207.643000 50.815060 8.770142 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_1c1c355a-744d-48ce-a431-a507c084667c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815111 8.770103 207.643000 50.815114 8.770144 207.643000 50.815114 8.770144 183.435000 50.815111 8.770103 183.435000 50.815111 8.770103 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_3c4d9fd8-a46a-46eb-b471-c5b81cc3219e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815060 8.770142 216.211000 50.815106 8.770084 207.643000 50.815102 8.770077 207.642000 50.815088 8.770053 207.643000 50.815060 8.770142 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_4ee33262-cd7f-44a6-a517-25887d77214e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815111 8.770164 207.643000 50.815098 8.770200 207.643000 50.815098 8.770200 183.435000 50.815111 8.770164 183.435000 50.815111 8.770164 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_8c1abed7-79ab-4c58-a0bc-9ff9876440c3" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815060 8.770142 216.211000 50.815098 8.770200 207.643000 50.815111 8.770164 207.643000 50.815060 8.770142 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e491e811-79f1-4c94-b540-a6b1d92f3521" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815060 8.770142 216.211000 50.815111 8.770164 207.643000 50.815114 8.770144 207.643000 50.815060 8.770142 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_0f168840-e2ee-476f-b40f-ea99f7483c75" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815060 8.770142 216.211000 50.815077 8.770043 207.643000 50.815054 8.770036 207.643000 50.815060 8.770142 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_0b4be887-57c8-4be5-abd6-b50c1156ae76" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815060 8.770142 216.211000 50.815065 8.770229 207.643000 50.815075 8.770222 207.643000 50.815088 8.770213 207.643000 50.815060 8.770142 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_037dbe72-7b40-4777-8ebd-d6fddfd2da82" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815060 8.770142 216.211000 50.815088 8.770213 207.643000 50.815098 8.770200 207.643000 50.815060 8.770142 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_8b3faad0-90af-4d24-a613-5bde9615de16" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815088 8.770053 207.643000 50.815102 8.770077 207.642000 50.815102 8.770077 183.435000 50.815088 8.770053 183.435000 50.815088 8.770053 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_c82eac8e-6049-4854-9cbb-f3116c0dc782" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815088 8.770213 207.643000 50.815075 8.770222 207.643000 50.815075 8.770222 197.552000 50.815075 8.770222 183.435000 50.815088 8.770213 183.435000 50.815088 8.770213 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_4514f40a-2398-45b5-b4e3-9a66864e1883" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815102 8.770077 207.642000 50.815106 8.770084 207.643000 50.815106 8.770084 183.435000 50.815102 8.770077 183.435000 50.815102 8.770077 207.642000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_aa04d81e-96f0-4775-8686-371bb2cc8b20" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815060 8.770142 216.211000 50.815114 8.770144 207.643000 50.815111 8.770103 207.643000 50.815060 8.770142 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_52458d44-c61f-4ab1-91d0-9bf64dab0746" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815065 8.770229 207.643000 50.815060 8.770142 216.211000 50.815060 8.770142 207.643000 50.815065 8.770229 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_7339f64d-b400-4b02-a3fa-ca5e2db65368" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815060 8.770142 207.643000 50.815060 8.770142 216.211000 50.815054 8.770036 207.643000 50.815060 8.770142 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_77c0e0a2-463f-46c5-825d-2a59a72aa600" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815065 8.770229 197.552000 50.815075 8.770222 197.552000 50.815075 8.770222 207.643000 50.815065 8.770229 207.643000 50.815065 8.770229 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_1bb08729-594c-4c9d-bc9c-f3fe3108db66" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815065 8.770229 197.552000 50.815065 8.770229 183.435000 50.815075 8.770222 183.435000 50.815075 8.770222 197.552000 50.815065 8.770229 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_474ee89b-dd85-4dc8-aa86-ad6c1ad77aec" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815114 8.770144 207.643000 50.815111 8.770164 207.643000 50.815111 8.770164 183.435000 50.815114 8.770144 183.435000 50.815114 8.770144 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_1fde847e-8d46-4f43-95e8-7bdeb9e17007" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815065 8.770229 207.643000 50.815060 8.770142 207.643000 50.815060 8.770142 183.435000 50.815065 8.770229 183.435000 50.815065 8.770229 197.552000 50.815065 8.770229 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_f72d0a00-fe11-4740-b815-dec98305efcd" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815060 8.770142 207.643000 50.815054 8.770036 207.643000 50.815054 8.770036 183.435000 50.815060 8.770142 183.435000 50.815060 8.770142 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_91f46d89-846b-4309-b06b-0dc53c3f31f1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815077 8.770043 207.643000 50.815088 8.770053 207.643000 50.815088 8.770053 183.435000 50.815077 8.770043 183.435000 50.815077 8.770043 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_a3a48b0e-63d7-41e4-af29-b636a4a7de87" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815098 8.770200 207.643000 50.815088 8.770213 207.643000 50.815088 8.770213 183.435000 50.815098 8.770200 183.435000 50.815098 8.770200 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_2fc24aa4-3850-412f-8062-d184d4f67c78" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815106 8.770084 207.643000 50.815111 8.770103 207.643000 50.815111 8.770103 183.435000 50.815106 8.770084 183.435000 50.815106 8.770084 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_3327e520-cf5b-4360-9093-059c71894698'-->
                <gml:MultiCurve gml:id="GEOMETRY_3327e520-cf5b-4360-9093-059c71894698" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_41b49e49-4225-42bd-ac88-41a3977866bb" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815054 8.770036 184.389000 50.815057 8.770036 184.372000 50.815062 8.770038 184.332000 50.815066 8.770039 184.309000 50.815074 8.770042 184.261000 50.815074 8.770042 184.256000 50.815077 8.770043 184.244000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_749f6c1d-69f9-4cac-ac6d-5e21fcaa4ec5" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815077 8.770043 184.244000 50.815077 8.770044 184.243000 50.815084 8.770049 184.206000 50.815088 8.770053 184.175000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_e01ee6cd-877c-4e8f-bc06-1e323d5f4691" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815088 8.770053 184.175000 50.815091 8.770058 184.152000 50.815093 8.770061 184.142000 50.815099 8.770072 184.113000 50.815102 8.770077 184.104000 50.815102 8.770077 184.103000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_57e0fd1b-f8e1-46fc-9ef4-3a6366341d62" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815102 8.770077 184.103000 50.815106 8.770084 184.079000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_83149065-d6c8-4fb6-9a4a-4e3d26c9b2c1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815106 8.770084 184.079000 50.815106 8.770086 184.076000 50.815110 8.770100 184.100000 50.815110 8.770100 184.100000 50.815111 8.770101 184.100000 50.815111 8.770103 184.092000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_83428db0-b33b-4d24-b544-62919231a7dc" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815111 8.770103 184.092000 50.815112 8.770114 184.078000 50.815112 8.770116 184.089000 50.815113 8.770129 184.110000 50.815113 8.770132 184.060000 50.815114 8.770143 183.907000 50.815114 8.770144 183.897000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_a7d9c16b-2241-4419-ae10-ef4994a5d86b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815114 8.770144 183.897000 50.815113 8.770147 183.885000 50.815112 8.770157 183.820000 50.815112 8.770159 183.813000 50.815111 8.770164 183.784000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_96992a8e-2910-4042-86c6-83f16354fe20" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815111 8.770164 183.784000 50.815111 8.770165 183.780000 50.815109 8.770169 183.766000 50.815108 8.770171 183.757000 50.815106 8.770178 183.757000 50.815103 8.770185 183.730000 50.815103 8.770187 183.729000 50.815102 8.770189 183.719000 50.815099 8.770196 183.703000 50.815098 8.770200 183.694000 50.815098 8.770200 183.692000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_ae643f76-fae3-4953-81de-2b7ab327e5f0" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815098 8.770200 183.692000 50.815095 8.770204 183.686000 50.815093 8.770207 183.693000 50.815091 8.770210 183.693000 50.815088 8.770213 183.692000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_56277e4b-f949-4d4a-93ba-281d596ebdf9" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815088 8.770213 183.692000 50.815088 8.770214 183.694000 50.815085 8.770216 183.704000 50.815084 8.770216 183.703000 50.815079 8.770220 183.715000 50.815075 8.770222 183.722000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_d6e15c72-9c4c-479f-906c-4324e29d9887" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815075 8.770222 183.722000 50.815075 8.770222 183.722000 50.815072 8.770224 183.727000 50.815066 8.770228 183.742000 50.815066 8.770228 183.743000 50.815066 8.770228 183.743000 50.815065 8.770229 183.746000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_bf8710c3-3089-4e22-ba88-f1bf327927a0" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815054 8.770036 184.389000 50.815054 8.770040 184.379000 50.815055 8.770044 184.366000 50.815055 8.770056 184.324000 50.815055 8.770058 184.318000 50.815056 8.770071 184.283000 50.815056 8.770072 184.281000 50.815057 8.770079 184.264000 50.815057 8.770086 184.245000 50.815057 8.770087 184.243000 50.815058 8.770100 184.207000 50.815058 8.770102 184.202000 50.815059 8.770115 184.167000 50.815059 8.770118 184.157000 50.815059 8.770129 184.123000 50.815060 8.770133 184.106000 50.815060 8.770143 184.073000 50.815060 8.770149 184.050000 50.815061 8.770157 184.021000 50.815061 8.770164 183.991000 50.815062 8.770171 183.965000 50.815062 8.770180 183.931000 50.815063 8.770186 183.909000 50.815063 8.770195 183.870000 50.815063 8.770200 183.854000 50.815064 8.770211 183.810000 50.815064 8.770214 183.799000 50.815065 8.770226 183.754000 50.815065 8.770228 183.748000 50.815065 8.770229 183.746000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643297'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643297">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643297</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">32.776</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643297</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_be152733-174e-47a3-a1b2-420a83e36239'-->
                <gml:MultiSurface gml:id="GEOMETRY_be152733-174e-47a3-a1b2-420a83e36239" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_c8b86473-b6e6-4b5f-bdb7-14cd5fe0ecc2" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814931 8.770251 216.211000 50.814985 8.770242 207.643000 50.814975 8.770048 207.643000 50.814916 8.770058 216.211000 50.814931 8.770251 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_20316bd3-b20a-440b-ba21-1e8394bacccd" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814916 8.770058 216.211000 50.814856 8.770067 207.643000 50.814868 8.770262 207.643000 50.814931 8.770251 216.211000 50.814916 8.770058 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e946b2cc-c5e7-4ce6-9de9-7b9e0409ab78" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814916 8.770058 183.435000 50.814975 8.770048 183.435000 50.814985 8.770242 183.435000 50.814931 8.770251 183.435000 50.814868 8.770262 183.435000 50.814856 8.770067 183.435000 50.814916 8.770058 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e262441d-73af-42c3-80c0-928d3bb54601" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814985 8.770242 207.643000 50.814931 8.770251 216.211000 50.814931 8.770251 183.435000 50.814985 8.770242 183.435000 50.814985 8.770242 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e07a58fd-eb31-466c-9e7f-b0af993ba173" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814975 8.770048 207.643000 50.814975 8.770048 183.435000 50.814916 8.770058 183.435000 50.814916 8.770058 216.211000 50.814975 8.770048 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_7862bd6d-de1a-4c9d-a2bf-99cf9c4f866c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814916 8.770058 183.435000 50.814856 8.770067 183.435000 50.814856 8.770067 207.643000 50.814916 8.770058 216.211000 50.814916 8.770058 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_9cdfe0cb-3afe-43e2-bd62-89f2cc9cfae4" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814975 8.770048 207.643000 50.814985 8.770242 207.643000 50.814985 8.770242 183.435000 50.814975 8.770048 183.435000 50.814975 8.770048 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_26d52d09-b83f-47a5-9c1d-8ed50edbc73c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814868 8.770262 207.643000 50.814856 8.770067 207.643000 50.814856 8.770067 183.435000 50.814868 8.770262 183.435000 50.814868 8.770262 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_b3964ab0-c3ee-4e00-a612-788cd100a427" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814931 8.770251 216.211000 50.814868 8.770262 207.643000 50.814868 8.770262 183.435000 50.814931 8.770251 183.435000 50.814931 8.770251 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_4c3604b0-c39a-442e-888a-d79cd78e9eee'-->
                <gml:MultiCurve gml:id="GEOMETRY_4c3604b0-c39a-442e-888a-d79cd78e9eee" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_5d3b23d2-dbb1-4f72-9471-93b4669517b5" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814975 8.770048 184.554000 50.814970 8.770049 184.562000 50.814967 8.770050 184.568000 50.814962 8.770050 184.575000 50.814958 8.770051 184.582000 50.814953 8.770052 184.588000 50.814949 8.770052 184.596000 50.814945 8.770053 184.600000 50.814940 8.770054 184.605000 50.814937 8.770054 184.608000 50.814931 8.770055 184.614000 50.814929 8.770056 184.616000 50.814922 8.770057 184.625000 50.814921 8.770057 184.626000 50.814916 8.770058 184.630000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_5b1e737b-2710-4eeb-8c17-a3fa7df10bfa" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814975 8.770048 184.554000 50.814976 8.770054 184.543000 50.814976 8.770058 184.533000 50.814976 8.770059 184.532000 50.814977 8.770072 184.501000 50.814977 8.770074 184.497000 50.814977 8.770087 184.466000 50.814977 8.770089 184.459000 50.814978 8.770101 184.429000 50.814978 8.770105 184.418000 50.814979 8.770115 184.391000 50.814979 8.770120 184.375000 50.814979 8.770129 184.349000 50.814980 8.770136 184.331000 50.814980 8.770143 184.308000 50.814981 8.770151 184.286000 50.814981 8.770158 184.267000 50.814981 8.770166 184.242000 50.814982 8.770172 184.227000 50.814982 8.770182 184.198000 50.814982 8.770186 184.186000 50.814983 8.770197 184.155000 50.814983 8.770200 184.147000 50.814984 8.770213 184.113000 50.814984 8.770214 184.108000 50.814985 8.770228 184.072000 50.814985 8.770229 184.070000 50.814985 8.770235 184.054000 50.814985 8.770242 184.039000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_a0d7a6d2-7fdf-46f5-87b8-4a0540154488" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814985 8.770242 184.039000 50.814985 8.770242 184.040000 50.814985 8.770242 184.041000 50.814982 8.770243 184.049000 50.814977 8.770244 184.066000 50.814976 8.770244 184.068000 50.814968 8.770245 184.090000 50.814967 8.770245 184.094000 50.814960 8.770246 184.112000 50.814958 8.770247 184.118000 50.814952 8.770248 184.132000 50.814949 8.770248 184.140000 50.814944 8.770249 184.156000 50.814940 8.770250 184.167000 50.814936 8.770250 184.177000 50.814931 8.770251 184.189000 50.814931 8.770251 184.189000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_9612114d-5fce-4354-8cac-6e2845dcd21c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814931 8.770251 184.189000 50.814928 8.770252 184.195000 50.814922 8.770253 184.205000 50.814919 8.770253 184.208000 50.814913 8.770254 184.218000 50.814911 8.770254 184.220000 50.814904 8.770256 184.226000 50.814903 8.770256 184.227000 50.814895 8.770257 184.231000 50.814895 8.770257 184.231000 50.814894 8.770257 184.232000 50.814887 8.770259 184.233000 50.814886 8.770259 184.233000 50.814879 8.770260 184.231000 50.814877 8.770260 184.230000 50.814870 8.770261 184.235000 50.814868 8.770262 184.235000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_3b35f90b-1744-4a92-b650-9bfc833f750b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814856 8.770067 184.711000 50.814856 8.770069 184.709000 50.814856 8.770073 184.703000 50.814857 8.770084 184.683000 50.814857 8.770087 184.678000 50.814858 8.770100 184.653000 50.814858 8.770101 184.651000 50.814859 8.770114 184.625000 50.814859 8.770116 184.621000 50.814859 8.770116 184.620000 50.814860 8.770130 184.588000 50.814860 8.770131 184.583000 50.814861 8.770144 184.551000 50.814861 8.770147 184.543000 50.814862 8.770158 184.513000 50.814862 8.770163 184.500000 50.814863 8.770172 184.474000 50.814863 8.770179 184.456000 50.814863 8.770187 184.434000 50.814864 8.770194 184.413000 50.814864 8.770201 184.394000 50.814865 8.770210 184.369000 50.814865 8.770215 184.355000 50.814866 8.770226 184.326000 50.814866 8.770229 184.316000 50.814867 8.770241 184.286000 50.814867 8.770243 184.281000 50.814868 8.770257 184.246000 50.814868 8.770257 184.245000 50.814868 8.770260 184.239000 50.814868 8.770262 184.235000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_ac65c6c3-868c-486e-9ce7-e1c5150f4039" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814916 8.770058 184.630000 50.814913 8.770058 184.635000 50.814912 8.770058 184.635000 50.814910 8.770059 184.638000 50.814904 8.770060 184.646000 50.814904 8.770060 184.646000 50.814896 8.770061 184.654000 50.814895 8.770061 184.655000 50.814888 8.770062 184.664000 50.814886 8.770062 184.667000 50.814880 8.770063 184.675000 50.814877 8.770064 184.679000 50.814871 8.770065 184.687000 50.814868 8.770065 184.693000 50.814863 8.770066 184.699000 50.814859 8.770067 184.707000 50.814856 8.770067 184.711000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643311'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643311">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643311</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">32.776</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643311</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_bf66b1c0-0d06-40e1-886f-42d648e0ac76'-->
                <gml:MultiSurface gml:id="GEOMETRY_bf66b1c0-0d06-40e1-886f-42d648e0ac76" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_11027d28-bad2-4c0d-a78b-9a00461fc7cf" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814801 8.770176 216.211000 50.814768 8.770262 207.643000 50.814793 8.770271 207.643000 50.814801 8.770176 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_48e8200b-2d09-4149-bff0-52d11ab61bde" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814801 8.770176 216.211000 50.814736 8.770204 207.643000 50.814741 8.770222 207.643000 50.814801 8.770176 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e071c628-c5c1-40e5-a65f-84f657662ddb" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814801 8.770176 216.211000 50.814741 8.770222 207.643000 50.814758 8.770252 207.643000 50.814801 8.770176 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_eb3b3f08-8dac-442d-8b5c-17cea83650f7" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814801 8.770176 216.211000 50.814733 8.770163 207.643000 50.814736 8.770204 207.643000 50.814801 8.770176 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_bfb8d0a4-c7aa-45d3-a18c-d11423a4d586" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814736 8.770144 207.643000 50.814749 8.770109 207.643000 50.814749 8.770109 183.435000 50.814736 8.770144 183.435000 50.814736 8.770144 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_a9dc2173-4529-4db5-9875-6a08dc347492" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814801 8.770176 216.211000 50.814793 8.770271 207.643000 50.814807 8.770269 207.643000 50.814801 8.770176 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_fcadf7f6-28e8-46c7-a0bc-7791863629cd" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814801 8.770176 216.211000 50.814758 8.770252 207.643000 50.814768 8.770262 207.643000 50.814801 8.770176 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_62308a84-f727-45c6-852d-57582b1e8ddc" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814801 8.770176 216.211000 50.814758 8.770096 207.643000 50.814749 8.770109 207.643000 50.814801 8.770176 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_2c417c8d-112b-44ff-beca-11b85d4e9cf0" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814801 8.770176 216.211000 50.814794 8.770077 207.643000 50.814782 8.770080 207.643000 50.814801 8.770176 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_f37bc2e0-4f6a-4463-bd10-dd78e0adacdb" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814801 8.770176 216.211000 50.814736 8.770144 207.643000 50.814733 8.770163 207.643000 50.814801 8.770176 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_3404f268-ab0f-4913-92c8-159fda54097e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814801 8.770176 216.211000 50.814749 8.770109 207.643000 50.814736 8.770144 207.643000 50.814801 8.770176 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_0e3118b5-dc39-446e-99d2-44e990ad0d08" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814793 8.770271 207.643000 50.814768 8.770262 207.643000 50.814768 8.770262 183.435000 50.814793 8.770271 183.435000 50.814793 8.770271 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_f16f3206-133a-4be7-b729-23af91e5ad57" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814758 8.770252 207.643000 50.814741 8.770222 207.643000 50.814741 8.770222 183.435000 50.814758 8.770252 183.435000 50.814758 8.770252 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_43f2b94d-b75f-446f-bc0c-9c58874e15ab" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814801 8.770176 216.211000 50.814782 8.770080 207.643000 50.814758 8.770096 207.643000 50.814801 8.770176 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_031827fc-8bc4-4ce0-b2ff-7dd1b4237afa" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814758 8.770096 207.643000 50.814782 8.770080 207.643000 50.814782 8.770080 183.435000 50.814758 8.770096 183.435000 50.814758 8.770096 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_6d1e8331-873b-4c16-8468-32c88aa1c729" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814749 8.770109 183.435000 50.814758 8.770096 183.435000 50.814782 8.770080 183.435000 50.814794 8.770077 183.435000 50.814801 8.770176 183.435000 50.814807 8.770269 183.435000 50.814793 8.770271 183.435000 50.814768 8.770262 183.435000 50.814758 8.770252 183.435000 50.814741 8.770222 183.435000 50.814736 8.770204 183.435000 50.814733 8.770163 183.435000 50.814736 8.770144 183.435000 50.814749 8.770109 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_2c49c5b4-6648-495b-93dd-87ad466bbd3d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814736 8.770204 207.643000 50.814733 8.770163 207.643000 50.814733 8.770163 183.435000 50.814736 8.770204 183.435000 50.814736 8.770204 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_9f716d29-b678-4a37-a20e-537fecb284db" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814749 8.770109 207.643000 50.814758 8.770096 207.643000 50.814758 8.770096 183.435000 50.814749 8.770109 183.435000 50.814749 8.770109 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_1e8d5c3b-42c5-4c73-b146-f8cbce298f05" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814733 8.770163 207.643000 50.814736 8.770144 207.643000 50.814736 8.770144 183.435000 50.814733 8.770163 183.435000 50.814733 8.770163 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_3cc6853d-eba3-4a4e-9fcc-6b0bc1f45847" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814807 8.770269 207.643000 50.814793 8.770271 207.643000 50.814793 8.770271 183.435000 50.814807 8.770269 183.435000 50.814807 8.770269 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_1c71f30d-51ad-4af8-a170-bfac58ac7fb5" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814807 8.770269 183.435000 50.814801 8.770176 183.435000 50.814801 8.770176 207.643000 50.814807 8.770269 207.643000 50.814807 8.770269 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_7ab456d1-ef3e-42b4-9b80-b2f98c63fa5e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814801 8.770176 183.435000 50.814794 8.770077 183.435000 50.814794 8.770077 207.643000 50.814801 8.770176 207.643000 50.814801 8.770176 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_00589381-d02a-42e4-b871-a50810c02e11" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814741 8.770222 207.643000 50.814736 8.770204 207.643000 50.814736 8.770204 183.435000 50.814741 8.770222 183.435000 50.814741 8.770222 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_351ef584-d485-4fa9-ae26-203afffd2d56" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814768 8.770262 207.643000 50.814758 8.770252 207.643000 50.814758 8.770252 183.435000 50.814768 8.770262 183.435000 50.814768 8.770262 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_b93580af-a4ff-4806-b279-546e1ec7c9b0" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814801 8.770176 216.211000 50.814807 8.770269 207.643000 50.814801 8.770176 207.643000 50.814801 8.770176 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_c00a722c-dba3-47c5-9510-c7eb85ddc318" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814801 8.770176 216.211000 50.814801 8.770176 207.643000 50.814794 8.770077 207.643000 50.814801 8.770176 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_c1a9df10-6098-4763-8ff1-bbeadb8baeac" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814782 8.770080 207.643000 50.814794 8.770077 207.643000 50.814794 8.770077 183.435000 50.814782 8.770080 183.435000 50.814782 8.770080 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_9f9b3559-f169-4c3e-9aea-9b5b8ec8dfdc'-->
                <gml:MultiCurve gml:id="GEOMETRY_9f9b3559-f169-4c3e-9aea-9b5b8ec8dfdc" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_c74d0f81-cbf4-4993-bc44-83c4d87100a6" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814758 8.770096 184.700000 50.814757 8.770098 184.711000 50.814754 8.770102 184.684000 50.814752 8.770104 184.671000 50.814751 8.770107 184.669000 50.814749 8.770109 184.656000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_49573043-14b7-4bf9-b7cd-c9096327e272" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814782 8.770080 184.727000 50.814778 8.770083 184.711000 50.814776 8.770084 184.706000 50.814771 8.770088 184.704000 50.814769 8.770089 184.702000 50.814769 8.770089 184.701000 50.814763 8.770093 184.682000 50.814760 8.770095 184.689000 50.814758 8.770096 184.700000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_2170dd98-e896-4674-b7f0-c97bacee6d10" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814794 8.770077 184.779000 50.814790 8.770078 184.762000 50.814787 8.770079 184.755000 50.814782 8.770080 184.729000 50.814782 8.770080 184.727000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_c8dcd9cf-c410-4bf7-9588-f5733504179f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814794 8.770077 184.779000 50.814795 8.770086 184.778000 50.814795 8.770088 184.779000 50.814796 8.770100 184.761000 50.814796 8.770102 184.758000 50.814796 8.770102 184.758000 50.814797 8.770116 184.729000 50.814797 8.770118 184.723000 50.814798 8.770130 184.687000 50.814798 8.770134 184.677000 50.814799 8.770144 184.646000 50.814799 8.770149 184.632000 50.814800 8.770158 184.607000 50.814800 8.770165 184.588000 50.814801 8.770173 184.568000 50.814801 8.770181 184.545000 50.814802 8.770187 184.530000 50.814802 8.770197 184.502000 50.814803 8.770201 184.492000 50.814804 8.770213 184.462000 50.814804 8.770215 184.455000 50.814805 8.770229 184.421000 50.814805 8.770229 184.419000 50.814805 8.770236 184.399000 50.814806 8.770244 184.377000 50.814806 8.770244 184.375000 50.814807 8.770258 184.344000 50.814807 8.770260 184.337000 50.814807 8.770269 184.325000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_05b20e85-6ba7-4ca9-aad9-c7804ab4c0f5" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814807 8.770269 184.325000 50.814805 8.770269 184.334000 50.814803 8.770269 184.339000 50.814796 8.770270 184.364000 50.814795 8.770270 184.367000 50.814793 8.770271 184.373000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_d36af4e5-3ba7-4676-8202-4408944bb54d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814768 8.770262 184.423000 50.814769 8.770262 184.421000 50.814773 8.770263 184.414000 50.814778 8.770265 184.399000 50.814784 8.770268 184.399000 50.814787 8.770269 184.396000 50.814793 8.770271 184.373000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_093ddeba-f280-456f-a8c9-27e91cb66010" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814758 8.770252 184.450000 50.814760 8.770254 184.446000 50.814764 8.770258 184.438000 50.814768 8.770262 184.423000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_bceb7bfa-8840-465f-b39a-4631b91ab979" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814741 8.770222 184.513000 50.814742 8.770224 184.510000 50.814745 8.770230 184.496000 50.814751 8.770240 184.469000 50.814753 8.770244 184.462000 50.814758 8.770252 184.450000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_3054f1b8-3a42-4e29-8b9a-f6376635e430" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814736 8.770204 184.545000 50.814737 8.770207 184.538000 50.814739 8.770216 184.523000 50.814741 8.770222 184.513000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_5f95d271-a857-4f47-8860-7588444e09ba" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814733 8.770163 184.574000 50.814734 8.770173 184.552000 50.814734 8.770175 184.551000 50.814735 8.770187 184.553000 50.814735 8.770190 184.552000 50.814736 8.770201 184.549000 50.814736 8.770204 184.545000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_e340c6ff-63e0-4d09-9213-559478b8e032" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814736 8.770144 184.608000 50.814736 8.770145 184.608000 50.814735 8.770149 184.602000 50.814734 8.770159 184.586000 50.814734 8.770160 184.584000 50.814733 8.770163 184.574000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_206ac933-6141-419f-89e1-eb955b513c51" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814749 8.770109 184.656000 50.814748 8.770112 184.649000 50.814746 8.770116 184.639000 50.814745 8.770121 184.623000 50.814742 8.770128 184.643000 50.814741 8.770130 184.644000 50.814741 8.770130 184.643000 50.814738 8.770139 184.603000 50.814736 8.770144 184.608000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643314'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643314">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643314</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">24.208</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643314</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_67544b8c-499e-43a2-b4a8-f529649c4516'-->
                <gml:MultiSurface gml:id="GEOMETRY_67544b8c-499e-43a2-b4a8-f529649c4516" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_73cfa351-c708-4c17-8e2a-10a6e5fac837" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814928 8.770473 207.643000 50.814915 8.770469 207.643000 50.814915 8.770469 183.435000 50.814928 8.770473 183.435000 50.814928 8.770473 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_63f959ab-2af4-49e2-86a9-7c38e6fc374a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814918 8.770452 183.435000 50.814930 8.770456 183.435000 50.814928 8.770473 183.435000 50.814915 8.770469 183.435000 50.814918 8.770452 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_5c10dac8-421f-4fc2-a31c-9c4a85a66e71" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814930 8.770456 207.643000 50.814928 8.770473 207.643000 50.814928 8.770473 183.435000 50.814930 8.770456 183.435000 50.814930 8.770456 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_1a9b43d6-e12e-4c78-b22a-54ef5f96973e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814915 8.770469 207.643000 50.814928 8.770473 207.643000 50.814930 8.770456 207.643000 50.814918 8.770452 207.643000 50.814915 8.770469 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_769db80b-9fd2-4373-bbd7-c2d27af9256c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814915 8.770469 207.643000 50.814918 8.770452 207.643000 50.814918 8.770452 183.435000 50.814915 8.770469 183.435000 50.814915 8.770469 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_b5c43ff5-4891-4cdf-9e21-3c78c2ba2d02" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814918 8.770452 207.643000 50.814930 8.770456 207.643000 50.814930 8.770456 183.435000 50.814918 8.770452 183.435000 50.814918 8.770452 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_252d6079-af51-431f-8885-dff525e2c713'-->
                <gml:MultiCurve gml:id="GEOMETRY_252d6079-af51-431f-8885-dff525e2c713" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_cc58fc1a-94ee-404e-9b9c-71db77bfdb3a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814918 8.770452 184.006000 50.814921 8.770453 184.004000 50.814922 8.770454 184.002000 50.814929 8.770456 184.013000 50.814930 8.770456 184.014000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_1c51212a-7faf-4392-86b6-7f83169ecab8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814930 8.770456 184.014000 50.814928 8.770465 183.990000 50.814928 8.770470 183.968000 50.814928 8.770473 183.939000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_8800bf0a-37bb-40bb-b4f3-179c36380014" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814915 8.770469 183.937000 50.814919 8.770470 183.938000 50.814922 8.770471 183.936000 50.814923 8.770472 183.935000 50.814928 8.770473 183.939000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_e444f5d0-f9e6-400a-8d62-8dc4da8c427e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814918 8.770452 184.006000 50.814917 8.770456 184.009000 50.814916 8.770461 183.989000 50.814915 8.770469 183.937000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643315'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643315">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643315</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">24.208</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643315</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_2dd5c8cf-8982-43f7-967b-49d7b0d376a6'-->
                <gml:MultiSurface gml:id="GEOMETRY_2dd5c8cf-8982-43f7-967b-49d7b0d376a6" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_2122fe08-8710-4a70-aef8-90469ff6d1b5" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814895 8.770432 207.643000 50.814887 8.770443 207.643000 50.814887 8.770443 183.435000 50.814895 8.770432 183.435000 50.814895 8.770432 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_db32b214-c0a9-470e-869e-c74030ee8c6a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814878 8.770427 207.643000 50.814887 8.770417 207.643000 50.814887 8.770417 183.435000 50.814878 8.770427 183.435000 50.814878 8.770427 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_f978290c-2c12-4058-98c4-76b5a3b393ec" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814887 8.770443 207.643000 50.814878 8.770427 207.643000 50.814878 8.770427 183.435000 50.814887 8.770443 183.435000 50.814887 8.770443 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_732d0b73-f3dd-44da-ac7d-e12a803141be" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814878 8.770427 183.435000 50.814887 8.770417 183.435000 50.814895 8.770432 183.435000 50.814887 8.770443 183.435000 50.814878 8.770427 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_42d02f13-3305-4f5c-81a2-0e97796a4968" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814887 8.770443 207.643000 50.814895 8.770432 207.643000 50.814887 8.770417 207.643000 50.814878 8.770427 207.643000 50.814887 8.770443 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_be977605-7da8-4ca3-ac74-e37eb9a7b7b5" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814887 8.770417 207.643000 50.814895 8.770432 207.643000 50.814895 8.770432 183.435000 50.814887 8.770417 183.435000 50.814887 8.770417 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_3ba09db3-7659-4c6b-86ce-8ed8ac4ac55c'-->
                <gml:MultiCurve gml:id="GEOMETRY_3ba09db3-7659-4c6b-86ce-8ed8ac4ac55c" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_7ad56f9b-a0d7-42df-8c5a-19814eed7809" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814887 8.770417 184.002000 50.814886 8.770418 184.001000 50.814883 8.770422 183.995000 50.814878 8.770427 183.985000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_bca2717a-13ef-4c25-941d-f8ec3c695d8a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814887 8.770417 184.002000 50.814893 8.770428 184.005000 50.814895 8.770432 184.010000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_af7a579d-045f-4fd5-92b8-c9cd35d01f5a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814895 8.770432 184.010000 50.814892 8.770437 184.007000 50.814888 8.770442 183.996000 50.814887 8.770443 183.988000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_eb5d2fde-a258-4925-8708-40cb3da367dc" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814878 8.770427 183.985000 50.814879 8.770428 183.985000 50.814886 8.770442 183.992000 50.814887 8.770442 183.992000 50.814887 8.770443 183.988000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643317'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643317">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643317</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">24.208</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643317</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_3aa0c35d-6911-40a5-b9f9-358602841a6f'-->
                <gml:MultiSurface gml:id="GEOMETRY_3aa0c35d-6911-40a5-b9f9-358602841a6f" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_872237bb-9fe8-4684-b825-43c56b04c56b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814793 8.770060 207.643000 50.814794 8.770077 207.643000 50.814794 8.770077 183.435000 50.814793 8.770060 183.435000 50.814793 8.770060 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_3af6401d-fc96-413f-b15e-56322f2df0c4" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814781 8.770062 207.643000 50.814793 8.770060 207.643000 50.814793 8.770060 183.435000 50.814781 8.770062 183.435000 50.814781 8.770062 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_1bf7d042-41c6-40d8-874e-8aa4ddc93f1d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814782 8.770080 207.643000 50.814781 8.770062 207.643000 50.814781 8.770062 183.435000 50.814782 8.770080 183.435000 50.814782 8.770080 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_49fd073a-01c6-485a-8672-5e4aff78205c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814781 8.770062 207.643000 50.814782 8.770080 207.643000 50.814794 8.770077 207.643000 50.814793 8.770060 207.643000 50.814781 8.770062 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_30d610c4-0a16-4a5e-b773-0b74a7b05861" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814793 8.770060 183.435000 50.814794 8.770077 183.435000 50.814782 8.770080 183.435000 50.814781 8.770062 183.435000 50.814793 8.770060 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_3d7dfdc0-7953-43f6-8e89-ae51e0258636" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814794 8.770077 207.643000 50.814782 8.770080 207.643000 50.814782 8.770080 183.435000 50.814794 8.770077 183.435000 50.814794 8.770077 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_311235dc-a185-4afd-be61-3d0049e5dbe1'-->
                <gml:MultiCurve gml:id="GEOMETRY_311235dc-a185-4afd-be61-3d0049e5dbe1" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_03597e66-f408-4eac-9c83-01651447c648" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814793 8.770060 184.750000 50.814794 8.770070 184.772000 50.814794 8.770073 184.779000 50.814794 8.770077 184.779000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_2ba00797-0868-4cb6-8d2d-f413a81dfffd" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814794 8.770077 184.779000 50.814790 8.770078 184.762000 50.814787 8.770079 184.755000 50.814782 8.770080 184.729000 50.814782 8.770080 184.727000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_86ca8514-0e68-4ee1-9cbb-94184036ae1b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814781 8.770062 184.705000 50.814781 8.770064 184.708000 50.814781 8.770073 184.722000 50.814782 8.770080 184.726000 50.814782 8.770080 184.727000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_93c63500-dafb-46a5-a6d1-f7a43998ddb5" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814793 8.770060 184.750000 50.814788 8.770061 184.734000 50.814787 8.770061 184.730000 50.814781 8.770062 184.705000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643329'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643329">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643329</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">24.208</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643329</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_c364ee68-64ab-4267-bfde-a8fd8eb0b0a2'-->
                <gml:MultiSurface gml:id="GEOMETRY_c364ee68-64ab-4267-bfde-a8fd8eb0b0a2" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_eb53cea0-24c0-4bfd-8d0e-12fb42973e46" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814776 8.769743 207.643000 50.814774 8.769713 207.643000 50.814774 8.769713 183.435000 50.814776 8.769743 183.435000 50.814776 8.769743 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_1fdcb148-d55e-413e-b309-231e83a3f5cb" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814786 8.769887 207.643000 50.814785 8.769866 207.643000 50.814785 8.769866 183.435000 50.814786 8.769887 183.435000 50.814786 8.769887 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_3a9834f1-fdc0-4b19-80f9-fc04fee9f0be" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814792 8.769865 207.643000 50.814789 8.769814 207.643000 50.814789 8.769814 183.435000 50.814792 8.769865 183.435000 50.814792 8.769865 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_bdd4b613-dcd5-4054-b323-00c259175314" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814787 8.769793 207.643000 50.814784 8.769742 207.643000 50.814784 8.769742 183.435000 50.814787 8.769793 183.435000 50.814787 8.769793 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_4c8c9d76-be71-4ccf-b73b-0f03e5234234" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814776 8.769743 207.643000 50.814784 8.769742 207.643000 50.814787 8.769793 207.643000 50.814780 8.769794 207.643000 50.814781 8.769815 207.643000 50.814789 8.769814 207.643000 50.814792 8.769865 207.643000 50.814785 8.769866 207.643000 50.814786 8.769887 207.643000 50.814797 8.769884 207.642000 50.814782 8.769712 207.643000 50.814774 8.769713 207.643000 50.814776 8.769743 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_589df0eb-2dec-4264-94ac-a93f44c4c9e9" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814784 8.769742 207.643000 50.814776 8.769743 207.643000 50.814776 8.769743 183.435000 50.814784 8.769742 183.435000 50.814784 8.769742 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_781d2836-2923-4f07-997e-2a42e7c0ac5b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814780 8.769794 207.643000 50.814787 8.769793 207.643000 50.814787 8.769793 183.435000 50.814780 8.769794 183.435000 50.814780 8.769794 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_88b969a9-b0cd-4903-b1ce-6958ac692ec8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814781 8.769815 207.643000 50.814780 8.769794 207.643000 50.814780 8.769794 183.435000 50.814781 8.769815 183.435000 50.814781 8.769815 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_0b33036b-e926-4661-bdd0-c007b863b457" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814774 8.769713 183.435000 50.814782 8.769712 183.435000 50.814797 8.769884 183.435000 50.814786 8.769887 183.435000 50.814785 8.769866 183.435000 50.814792 8.769865 183.435000 50.814789 8.769814 183.435000 50.814781 8.769815 183.435000 50.814780 8.769794 183.435000 50.814787 8.769793 183.435000 50.814784 8.769742 183.435000 50.814776 8.769743 183.435000 50.814774 8.769713 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_ba08fd06-3287-4c41-a0bd-bcec82f9c750" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814797 8.769884 207.642000 50.814786 8.769887 207.643000 50.814786 8.769887 183.435000 50.814797 8.769884 183.435000 50.814797 8.769884 207.642000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_79a59fe5-f650-4c46-bd41-d765a47a5ee4" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814785 8.769866 207.643000 50.814792 8.769865 207.643000 50.814792 8.769865 183.435000 50.814785 8.769866 183.435000 50.814785 8.769866 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_72d93016-fb31-4543-b8b0-24b04297e961" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814789 8.769814 207.643000 50.814781 8.769815 207.643000 50.814781 8.769815 183.435000 50.814789 8.769814 183.435000 50.814789 8.769814 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_f6ca2aec-f0ed-4537-8ebf-75f31d1affce" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814774 8.769713 183.435000 50.814774 8.769713 207.643000 50.814782 8.769712 207.643000 50.814782 8.769712 183.435000 50.814774 8.769713 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_01a2c554-ec42-4746-a37b-11e8f96155cf" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814782 8.769712 207.643000 50.814797 8.769884 207.642000 50.814797 8.769884 183.435000 50.814782 8.769712 183.435000 50.814782 8.769712 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_33f0993f-f8ed-4977-8b29-b2da3aa68f4b'-->
                <gml:MultiCurve gml:id="GEOMETRY_33f0993f-f8ed-4977-8b29-b2da3aa68f4b" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_42d45f4b-f159-458c-9075-27c98d61d647" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814782 8.769712 185.171000 50.814782 8.769712 185.170000 50.814777 8.769713 185.163000 50.814774 8.769713 185.159000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_0645c8f1-9d0c-4635-925a-b8407519d054" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814782 8.769712 185.171000 50.814783 8.769713 185.168000 50.814783 8.769719 185.156000 50.814784 8.769729 185.135000 50.814784 8.769733 185.127000 50.814785 8.769746 185.104000 50.814785 8.769747 185.103000 50.814786 8.769755 185.095000 50.814787 8.769761 185.090000 50.814787 8.769762 185.089000 50.814788 8.769775 185.095000 50.814788 8.769778 185.092000 50.814789 8.769789 185.080000 50.814790 8.769795 185.072000 50.814790 8.769804 185.059000 50.814791 8.769811 185.047000 50.814791 8.769818 185.031000 50.814792 8.769827 185.013000 50.814793 8.769832 185.004000 50.814794 8.769844 184.992000 50.814794 8.769846 184.990000 50.814795 8.769860 184.967000 50.814795 8.769860 184.966000 50.814795 8.769864 184.961000 50.814796 8.769875 184.943000 50.814796 8.769876 184.941000 50.814797 8.769884 184.928000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_b284c85b-7019-4228-8374-69a51652af6a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814797 8.769884 184.928000 50.814795 8.769885 184.927000 50.814793 8.769885 184.925000 50.814786 8.769886 184.921000 50.814786 8.769887 184.921000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_1dc11606-70aa-454d-b255-de4a5742411c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814785 8.769866 184.949000 50.814785 8.769873 184.938000 50.814785 8.769875 184.936000 50.814786 8.769887 184.921000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_8a1b8a82-ccc1-4a8f-8b15-d54526fcb473" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814792 8.769865 184.957000 50.814790 8.769866 184.954000 50.814786 8.769866 184.951000 50.814785 8.769866 184.949000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_f54512f6-ccab-41fc-b9ac-9fbe53e866b8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814789 8.769814 185.041000 50.814789 8.769818 185.031000 50.814789 8.769823 185.022000 50.814790 8.769832 185.004000 50.814791 8.769839 184.997000 50.814791 8.769846 184.993000 50.814792 8.769854 184.979000 50.814792 8.769860 184.964000 50.814792 8.769865 184.957000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_3f992924-b963-4448-9dfe-d6c1ce61fa84" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814789 8.769814 185.041000 50.814786 8.769814 185.040000 50.814784 8.769815 185.036000 50.814781 8.769815 185.029000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_6e6ca125-9068-4203-8039-c706d04d62fa" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814780 8.769794 185.060000 50.814780 8.769804 185.056000 50.814781 8.769809 185.044000 50.814781 8.769815 185.029000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_1a6e76c4-22c4-4e8b-8d67-cfe1313d0960" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814787 8.769793 185.077000 50.814786 8.769793 185.079000 50.814780 8.769794 185.061000 50.814780 8.769794 185.060000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_62b27d78-95d2-4831-a47b-e9e96880fca5" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814784 8.769742 185.109000 50.814784 8.769743 185.106000 50.814784 8.769747 185.103000 50.814785 8.769759 185.091000 50.814785 8.769761 185.089000 50.814786 8.769775 185.097000 50.814786 8.769775 185.097000 50.814786 8.769778 185.095000 50.814787 8.769789 185.083000 50.814787 8.769791 185.081000 50.814787 8.769793 185.077000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_6b139b3d-64f8-4fcb-9288-0764fa3f50f3" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814784 8.769742 185.109000 50.814783 8.769742 185.107000 50.814777 8.769743 185.106000 50.814776 8.769743 185.105000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_d491f042-fd16-4f9f-99c4-d2c883767236" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814774 8.769713 185.159000 50.814775 8.769714 185.156000 50.814775 8.769719 185.146000 50.814776 8.769730 185.119000 50.814776 8.769733 185.113000 50.814776 8.769743 185.105000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643306'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643306">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643306</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">24.208</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643306</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_b6726e66-1363-415b-b201-250ba56c0027'-->
                <gml:MultiSurface gml:id="GEOMETRY_b6726e66-1363-415b-b201-250ba56c0027" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_f0121dce-7bca-4f0b-82a8-7404dc4a6994" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815117 8.770077 207.643000 50.815119 8.770097 207.643000 50.815119 8.770097 183.435000 50.815117 8.770077 183.435000 50.815117 8.770077 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_d4f21977-ac75-4f41-8539-a28e227a2f3e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815106 8.770084 183.435000 50.815117 8.770077 183.435000 50.815119 8.770097 183.435000 50.815111 8.770103 183.435000 50.815106 8.770084 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_44fd23f4-bd9f-412a-9f67-9761df212f03" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815111 8.770103 207.643000 50.815119 8.770097 207.643000 50.815117 8.770077 207.643000 50.815106 8.770084 207.643000 50.815111 8.770103 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_4eab22f4-77dc-4507-9657-d07c684ca2cb" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815119 8.770097 207.643000 50.815111 8.770103 207.643000 50.815111 8.770103 183.435000 50.815119 8.770097 183.435000 50.815119 8.770097 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_fc86bcd4-6b2d-41ad-9fe3-bb6de6ff31bb" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815106 8.770084 207.643000 50.815117 8.770077 207.643000 50.815117 8.770077 183.435000 50.815106 8.770084 183.435000 50.815106 8.770084 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_7f118cc2-f5f1-4f9c-91b8-b8c2ea5a6389" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815111 8.770103 207.643000 50.815106 8.770084 207.643000 50.815106 8.770084 183.435000 50.815111 8.770103 183.435000 50.815111 8.770103 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_bdbae931-e8dc-46f1-939b-929f8bc4fc51'-->
                <gml:MultiCurve gml:id="GEOMETRY_bdbae931-e8dc-46f1-939b-929f8bc4fc51" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_8789b394-97af-426c-9d0a-2fd2856f4ab9" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815117 8.770077 183.988000 50.815115 8.770079 184.005000 50.815111 8.770081 184.061000 50.815109 8.770083 184.061000 50.815106 8.770084 184.079000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_4ea6f42e-7b2d-4f59-b81b-3409f1df1b62" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815117 8.770077 183.988000 50.815118 8.770083 183.956000 50.815118 8.770086 183.942000 50.815119 8.770097 184.000000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_3e527fab-a924-473f-9199-5550cbc245b5" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815119 8.770097 184.000000 50.815118 8.770098 184.014000 50.815115 8.770100 184.056000 50.815112 8.770102 184.079000 50.815111 8.770103 184.092000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_f92985d2-97fa-45cd-9cb5-8572184172fe" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815106 8.770084 184.079000 50.815106 8.770086 184.076000 50.815110 8.770100 184.100000 50.815110 8.770100 184.100000 50.815111 8.770101 184.100000 50.815111 8.770103 184.092000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643301'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643301">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643301</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">80.118</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643301</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_0eb2705a-43ca-427c-a38f-347b2630d120'-->
                <gml:MultiSurface gml:id="GEOMETRY_0eb2705a-43ca-427c-a38f-347b2630d120" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_96df31c5-26d9-48b0-b63a-d73579c4f39c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814969 8.769499 236.754000 50.814965 8.769461 220.550000 50.814965 8.769461 183.435000 50.814969 8.769499 183.435000 50.814969 8.769499 236.754000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_d986fbb8-0d48-4263-90d4-0b5668ed0505" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814879 8.769536 220.885000 50.814895 8.769532 230.061000 50.814895 8.769532 183.435000 50.814879 8.769536 183.435000 50.814879 8.769536 220.885000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_ea3d4dbc-1a11-4773-a650-638595a72aa7" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814905 8.769511 236.515000 50.814905 8.769511 236.302000 50.814905 8.769511 183.435000 50.814905 8.769511 183.435000 50.814905 8.769511 236.515000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_a29b484c-6f07-49f2-9fb8-d4800475b3bf" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814997 8.769454 220.175000 50.814999 8.769476 229.558000 50.814999 8.769476 183.435000 50.814997 8.769454 183.435000 50.814997 8.769454 220.175000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_5bb7125d-47d3-476d-9f1e-cccef2ac107e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815006 8.769670 183.435000 50.814993 8.769672 183.435000 50.814890 8.769692 183.435000 50.814878 8.769533 183.435000 50.814878 8.769533 183.435000 50.814879 8.769534 183.435000 50.814879 8.769536 183.435000 50.814895 8.769532 183.435000 50.814905 8.769511 183.435000 50.814905 8.769511 183.435000 50.814906 8.769472 183.435000 50.814932 8.769466 183.435000 50.814936 8.769507 183.435000 50.814969 8.769499 183.435000 50.814965 8.769461 183.435000 50.814997 8.769454 183.435000 50.814999 8.769476 183.435000 50.814999 8.769484 183.435000 50.815012 8.769481 183.435000 50.815016 8.769530 183.435000 50.814998 8.769534 183.435000 50.815003 8.769587 183.435000 50.815020 8.769584 183.435000 50.815024 8.769635 183.435000 50.815026 8.769666 183.435000 50.815006 8.769670 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_ed8edf0b-08f3-4e4d-8ba5-49290ab635d2" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814932 8.769466 220.049000 50.814936 8.769507 237.147000 50.814936 8.769507 183.435000 50.814932 8.769466 183.435000 50.814932 8.769466 220.049000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_52245f3f-1151-48c5-b1b5-78709f5c2b65" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814956 8.769566 263.553000 50.814905 8.769511 236.515000 50.814895 8.769532 230.061000 50.814879 8.769536 220.885000 50.814879 8.769534 220.885000 50.814878 8.769533 220.229000 50.814878 8.769533 220.150000 50.814890 8.769692 220.150000 50.814956 8.769566 263.553000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_9b8f1635-a704-4461-b679-a0ee29aa1ee4" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814905 8.769511 236.302000 50.814906 8.769472 220.362000 50.814906 8.769472 183.435000 50.814905 8.769511 183.435000 50.814905 8.769511 236.302000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_2c0276fa-3287-4363-b54f-925fab5ee42e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814999 8.769476 229.558000 50.814999 8.769484 229.453000 50.814999 8.769484 183.435000 50.814999 8.769476 183.435000 50.814999 8.769476 229.558000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_2e5679f6-9e85-4268-a987-6c64b1e39b0a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814878 8.769533 220.150000 50.814878 8.769533 220.229000 50.814878 8.769533 183.435000 50.814878 8.769533 183.435000 50.814878 8.769533 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_acb64478-f53c-4710-b920-8ad8514ff3a1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815016 8.769530 220.150000 50.814998 8.769534 232.598000 50.814998 8.769534 183.435000 50.815016 8.769530 183.435000 50.815016 8.769530 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_3bf817f5-440b-4a1d-9be6-09cfda270ebe" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814956 8.769566 263.553000 50.814890 8.769692 220.150000 50.815006 8.769670 220.150000 50.815006 8.769670 220.134000 50.815026 8.769666 220.150000 50.814956 8.769566 263.553000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_5e671a70-c60c-4c58-9592-cad18a6a8997" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814895 8.769532 230.061000 50.814905 8.769511 236.515000 50.814905 8.769511 183.435000 50.814895 8.769532 183.435000 50.814895 8.769532 230.061000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_411d85ff-0aac-420e-b83e-e14a4db35654" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815003 8.769587 231.969000 50.815020 8.769584 220.150000 50.815020 8.769584 183.435000 50.815003 8.769587 183.435000 50.815003 8.769587 231.969000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_9f6d8707-4dec-4e6c-a811-dc57be7a9748" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814878 8.769533 220.229000 50.814879 8.769534 220.885000 50.814879 8.769534 183.435000 50.814878 8.769533 183.435000 50.814878 8.769533 220.229000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_dd1a695e-ddeb-4ec3-9d6a-e9b880444069" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814998 8.769534 232.598000 50.815003 8.769587 231.969000 50.815003 8.769587 183.435000 50.814998 8.769534 183.435000 50.814998 8.769534 232.598000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_d49a3fee-0a92-459d-9e21-7f5c41b00009" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814879 8.769534 220.885000 50.814879 8.769536 220.885000 50.814879 8.769536 183.435000 50.814879 8.769534 183.435000 50.814879 8.769534 220.885000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_9b221ce4-51d2-45a7-a145-892aa50e9089" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814936 8.769507 237.147000 50.814969 8.769499 236.754000 50.814969 8.769499 183.435000 50.814936 8.769507 183.435000 50.814936 8.769507 237.147000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e08b5cbf-4f19-4f9b-842b-99dcad268749" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814906 8.769472 220.362000 50.814932 8.769466 220.049000 50.814932 8.769466 183.435000 50.814906 8.769472 183.435000 50.814906 8.769472 220.362000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_3845dc42-0a11-412d-8a0d-1fc476be2859" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814965 8.769461 220.550000 50.814997 8.769454 220.175000 50.814997 8.769454 183.435000 50.814965 8.769461 183.435000 50.814965 8.769461 220.550000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_d3f8e83a-6010-4069-9617-8c98ac70bec6" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814956 8.769566 263.553000 50.814999 8.769476 229.558000 50.814997 8.769454 220.175000 50.814965 8.769461 220.550000 50.814969 8.769499 236.754000 50.814936 8.769507 237.147000 50.814932 8.769466 220.049000 50.814906 8.769472 220.362000 50.814905 8.769511 236.302000 50.814905 8.769511 236.515000 50.814956 8.769566 263.553000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_cb7c4285-cbc6-4dbe-b7ad-a876ac079c8d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814999 8.769484 229.453000 50.815012 8.769481 220.150000 50.815012 8.769481 183.435000 50.814999 8.769484 183.435000 50.814999 8.769484 229.453000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_dd1775a8-d2c3-4d70-b7ab-38de46590d39" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815026 8.769666 220.150000 50.815006 8.769670 220.134000 50.815006 8.769670 207.643000 50.815006 8.769670 183.435000 50.815026 8.769666 183.435000 50.815026 8.769666 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_793c1f46-3661-4832-83bb-c6a1346cf202" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815024 8.769635 220.150000 50.815026 8.769666 220.150000 50.815026 8.769666 183.435000 50.815024 8.769635 183.435000 50.815024 8.769635 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_ff4e0d1b-c7f3-41e4-a76f-868cf9c23524" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814956 8.769566 263.553000 50.815026 8.769666 220.150000 50.815024 8.769635 220.150000 50.815020 8.769584 220.150000 50.815003 8.769587 231.969000 50.814998 8.769534 232.598000 50.815016 8.769530 220.150000 50.815012 8.769481 220.150000 50.814999 8.769484 229.453000 50.814999 8.769476 229.558000 50.814956 8.769566 263.553000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_9f60e2f1-6ab6-4d95-a533-05066ffb851d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815012 8.769481 220.150000 50.815016 8.769530 220.150000 50.815016 8.769530 183.435000 50.815012 8.769481 183.435000 50.815012 8.769481 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e00bce9c-5e13-48d7-99b2-9100c742db28" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815020 8.769584 220.150000 50.815024 8.769635 220.150000 50.815024 8.769635 183.435000 50.815020 8.769584 183.435000 50.815020 8.769584 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_01a7d485-d71d-4328-b707-034d321ccb21" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814890 8.769692 220.150000 50.814878 8.769533 220.150000 50.814878 8.769533 183.435000 50.814890 8.769692 183.435000 50.814890 8.769692 216.211000 50.814890 8.769692 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_292a37b8-4d8a-42ce-88e3-c19f5e38730e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814890 8.769692 216.211000 50.814993 8.769672 207.643000 50.815006 8.769670 207.643000 50.815006 8.769670 220.134000 50.815006 8.769670 220.150000 50.814890 8.769692 220.150000 50.814890 8.769692 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_60e39198-86d8-4e33-bd1d-65617c6096ea" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814890 8.769692 216.211000 50.814890 8.769692 183.435000 50.814993 8.769672 183.435000 50.814993 8.769672 207.643000 50.814890 8.769692 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_d462f097-a6e7-4aeb-bf4f-5e094fba1393" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814993 8.769672 183.435000 50.815006 8.769670 183.435000 50.815006 8.769670 207.643000 50.814993 8.769672 207.643000 50.814993 8.769672 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_50b3f663-b09f-4d5c-be49-c853e54b7449'-->
                <gml:MultiCurve gml:id="GEOMETRY_50b3f663-b09f-4d5c-be49-c853e54b7449" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_0e2567c3-70e6-40a2-8d29-5213f9d81f11" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815006 8.769670 185.145000 50.815002 8.769671 185.194000 50.815000 8.769671 185.200000 50.814993 8.769672 185.190000 50.814991 8.769673 185.193000 50.814984 8.769674 185.205000 50.814983 8.769674 185.205000 50.814979 8.769675 185.211000 50.814975 8.769676 185.217000 50.814975 8.769676 185.218000 50.814967 8.769677 185.226000 50.814966 8.769677 185.227000 50.814959 8.769679 185.231000 50.814957 8.769679 185.233000 50.814951 8.769680 185.234000 50.814948 8.769681 185.236000 50.814943 8.769682 185.237000 50.814939 8.769683 185.239000 50.814935 8.769683 185.241000 50.814930 8.769684 185.241000 50.814927 8.769685 185.241000 50.814921 8.769686 185.242000 50.814919 8.769686 185.242000 50.814912 8.769688 185.241000 50.814911 8.769688 185.241000 50.814903 8.769689 185.238000 50.814903 8.769689 185.238000 50.814901 8.769690 185.237000 50.814895 8.769691 185.235000 50.814894 8.769691 185.234000 50.814890 8.769692 185.232000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_ea30a3e8-a26a-4ecb-b3ff-2ea450dd983f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814878 8.769533 185.437000 50.814878 8.769534 185.438000 50.814878 8.769538 185.441000 50.814879 8.769548 185.437000 50.814879 8.769554 185.434000 50.814880 8.769562 185.429000 50.814881 8.769570 185.423000 50.814881 8.769576 185.417000 50.814882 8.769586 185.406000 50.814882 8.769590 185.400000 50.814883 8.769602 185.386000 50.814883 8.769604 185.382000 50.814884 8.769618 185.363000 50.814884 8.769619 185.362000 50.814885 8.769627 185.349000 50.814885 8.769633 185.340000 50.814885 8.769634 185.339000 50.814886 8.769647 185.317000 50.814887 8.769650 185.313000 50.814887 8.769661 185.290000 50.814888 8.769666 185.282000 50.814888 8.769675 185.263000 50.814889 8.769682 185.251000 50.814889 8.769690 185.236000 50.814890 8.769692 185.232000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_4bb586f3-0e7c-437d-b2cd-46a2731c3cfb" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814878 8.769533 185.436000 50.814878 8.769533 185.437000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_8937a803-0b2f-45ab-acda-21a93b447d8e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814878 8.769533 185.436000 50.814879 8.769533 185.437000 50.814879 8.769534 185.437000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_1c7d9d8f-2a87-4ce3-ac8b-cd0f2bcefef9" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814879 8.769534 185.437000 50.814879 8.769536 185.438000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_af7c17c2-6930-4dcd-b9cf-4f706354d619" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814895 8.769532 185.441000 50.814894 8.769533 185.439000 50.814893 8.769533 185.439000 50.814890 8.769533 185.435000 50.814885 8.769534 185.431000 50.814885 8.769535 185.430000 50.814879 8.769536 185.438000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_f34bba57-08bb-4649-bf04-308903fae840" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814905 8.769511 185.433000 50.814903 8.769516 185.433000 50.814902 8.769518 185.435000 50.814901 8.769519 185.436000 50.814898 8.769526 185.441000 50.814895 8.769532 185.441000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_aaa07577-172b-4ec3-b142-5222f751f4b1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814905 8.769511 185.433000 50.814905 8.769511 185.433000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_0a859520-94e9-42ec-a799-a6b0d59a01fe" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814906 8.769472 185.375000 50.814906 8.769477 185.375000 50.814906 8.769482 185.385000 50.814906 8.769491 185.405000 50.814905 8.769495 185.411000 50.814905 8.769505 185.424000 50.814905 8.769509 185.431000 50.814905 8.769511 185.433000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_f3be5ac1-7aef-463c-8543-929517ba4bde" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814932 8.769466 185.358000 50.814929 8.769467 185.363000 50.814924 8.769468 185.369000 50.814920 8.769469 185.375000 50.814916 8.769470 185.384000 50.814912 8.769471 185.379000 50.814908 8.769472 185.382000 50.814906 8.769472 185.375000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_17bdfb67-7fcc-49dd-be70-de227c0ca1e5" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814932 8.769466 185.358000 50.814933 8.769476 185.395000 50.814934 8.769483 185.415000 50.814934 8.769491 185.443000 50.814935 8.769499 185.500000 50.814936 8.769505 185.519000 50.814936 8.769507 185.523000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_a6c8303f-259d-410c-81be-7ce523a786c8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814969 8.769499 185.479000 50.814966 8.769500 185.496000 50.814963 8.769501 185.493000 50.814957 8.769502 185.556000 50.814955 8.769502 185.559000 50.814948 8.769504 185.528000 50.814947 8.769504 185.527000 50.814945 8.769505 185.530000 50.814939 8.769506 185.532000 50.814939 8.769506 185.531000 50.814936 8.769507 185.523000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_725f4d80-df4b-4f81-bec4-5a23412854a1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814965 8.769461 185.401000 50.814965 8.769461 185.403000 50.814965 8.769462 185.405000 50.814965 8.769466 185.413000 50.814966 8.769476 185.428000 50.814967 8.769478 185.432000 50.814968 8.769490 185.463000 50.814968 8.769495 185.468000 50.814969 8.769499 185.479000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_05254f2e-692c-4cf5-84aa-c6641f0bd466" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814997 8.769454 185.345000 50.814996 8.769454 185.346000 50.814992 8.769455 185.361000 50.814989 8.769456 185.366000 50.814983 8.769457 185.359000 50.814981 8.769458 185.359000 50.814974 8.769459 185.359000 50.814973 8.769459 185.361000 50.814965 8.769461 185.401000 50.814965 8.769461 185.401000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_189200ae-29d6-467f-a917-8133ffc94aa4" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814997 8.769454 185.345000 50.814997 8.769454 185.347000 50.814997 8.769462 185.379000 50.814998 8.769471 185.374000 50.814999 8.769476 185.367000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_869613a5-330d-49ae-b747-f886e2c04dd1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814999 8.769476 185.367000 50.814999 8.769484 185.368000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_35c60721-0ce1-4d96-aacf-0497b5d96716" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815012 8.769481 185.346000 50.815010 8.769482 185.351000 50.815006 8.769483 185.359000 50.815001 8.769484 185.365000 50.814999 8.769484 185.368000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_e174bc2d-6cab-4392-ae3b-cb4a4360ab8b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815012 8.769481 185.346000 50.815013 8.769490 185.346000 50.815013 8.769495 185.335000 50.815014 8.769504 185.318000 50.815015 8.769511 185.310000 50.815015 8.769519 185.300000 50.815016 8.769527 185.291000 50.815016 8.769530 185.287000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_a902db36-c5fb-46b8-b60e-1a521a262f96" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815016 8.769530 185.287000 50.815011 8.769531 185.304000 50.815010 8.769531 185.307000 50.815003 8.769533 185.330000 50.815002 8.769533 185.335000 50.815002 8.769533 185.336000 50.814998 8.769534 185.349000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_b80e454f-0497-43f1-bbe2-59351d37c707" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814998 8.769534 185.349000 50.814999 8.769543 185.334000 50.815000 8.769547 185.329000 50.815001 8.769560 185.308000 50.815001 8.769561 185.306000 50.815002 8.769570 185.299000 50.815002 8.769575 185.294000 50.815002 8.769576 185.296000 50.815003 8.769587 185.308000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_af54a97f-0ca8-4120-8fce-c2ed6d05dcd9" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815020 8.769584 185.240000 50.815020 8.769584 185.241000 50.815016 8.769584 185.250000 50.815011 8.769586 185.268000 50.815008 8.769586 185.280000 50.815003 8.769587 185.308000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_9aeab6f8-b970-4c90-a0be-ede860dddc1a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815020 8.769584 185.240000 50.815020 8.769590 185.248000 50.815020 8.769591 185.245000 50.815021 8.769604 185.226000 50.815022 8.769607 185.221000 50.815022 8.769618 185.200000 50.815023 8.769623 185.187000 50.815023 8.769632 185.165000 50.815024 8.769635 185.158000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_bf04a796-9219-4647-ba4c-b0bbf2fbf27a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815024 8.769635 185.158000 50.815024 8.769639 185.145000 50.815024 8.769646 185.116000 50.815025 8.769655 185.098000 50.815026 8.769661 185.086000 50.815026 8.769666 185.074000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_f0c08a07-ee30-40fa-a22d-83b953ab514c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815026 8.769666 185.074000 50.815024 8.769667 185.082000 50.815020 8.769667 185.087000 50.815016 8.769668 185.115000 50.815011 8.769669 185.117000 50.815008 8.769670 185.122000 50.815006 8.769670 185.145000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643307'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643307">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643307</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">14.117</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643307</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_0924aa99-5839-46be-b65d-bebda419e2ab'-->
                <gml:MultiSurface gml:id="GEOMETRY_0924aa99-5839-46be-b65d-bebda419e2ab" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_41773748-fe47-4394-987c-35afc1151927" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815022 8.770387 197.552000 50.815023 8.770400 197.552000 50.815023 8.770400 183.435000 50.815022 8.770387 183.435000 50.815022 8.770387 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_0b38bf9d-bcc1-44b8-8b9a-0b38b99cf195" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815001 8.770395 197.552000 50.814999 8.770391 197.552000 50.814999 8.770391 183.435000 50.815001 8.770395 183.435000 50.815001 8.770395 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_af7c0f9a-c56d-463e-96d6-1380fcc26746" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815012 8.770393 197.552000 50.815001 8.770395 197.552000 50.815001 8.770395 183.435000 50.815012 8.770393 183.435000 50.815012 8.770393 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e86f2323-babe-4303-bdcf-b04f838e5467" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815001 8.770395 197.552000 50.815012 8.770393 197.552000 50.815012 8.770402 197.552000 50.815023 8.770400 197.552000 50.815022 8.770387 197.552000 50.814999 8.770391 197.552000 50.815001 8.770395 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_edba5f11-81a9-4845-a61c-2df7dd2290a1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815012 8.770402 197.552000 50.815012 8.770393 197.552000 50.815012 8.770393 183.435000 50.815012 8.770402 183.435000 50.815012 8.770402 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_3918838c-d578-4c6b-9217-f858f185c83b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815023 8.770400 197.552000 50.815012 8.770402 197.552000 50.815012 8.770402 183.435000 50.815023 8.770400 183.435000 50.815023 8.770400 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_935eca55-427c-47c5-8e66-cd46b9a8d221" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814999 8.770391 183.435000 50.815022 8.770387 183.435000 50.815023 8.770400 183.435000 50.815012 8.770402 183.435000 50.815012 8.770393 183.435000 50.815001 8.770395 183.435000 50.814999 8.770391 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_5ec3b2f3-21eb-474e-8f0e-83e399867c3f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814999 8.770391 197.552000 50.815022 8.770387 197.552000 50.815022 8.770387 183.435000 50.814999 8.770391 183.435000 50.814999 8.770391 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_ee6b7068-074e-4842-b5c0-dad60f88f707'-->
                <gml:MultiCurve gml:id="GEOMETRY_ee6b7068-074e-4842-b5c0-dad60f88f707" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_5bd79a46-c9ff-4ee1-bb69-48775da35deb" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815022 8.770387 183.646000 50.815021 8.770387 183.648000 50.815015 8.770388 183.668000 50.815012 8.770389 183.675000 50.815007 8.770390 183.694000 50.815003 8.770390 183.704000 50.814999 8.770391 183.720000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_52ecac59-675f-43a8-bd84-41eb8b189d03" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815022 8.770387 183.646000 50.815023 8.770399 183.631000 50.815023 8.770400 183.628000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_082b8d90-e7f1-4156-ade8-713643ddb69c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815023 8.770400 183.628000 50.815022 8.770400 183.630000 50.815021 8.770400 183.632000 50.815014 8.770402 183.652000 50.815012 8.770402 183.656000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_cb55f185-073f-4485-87ef-696e95afe41b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815012 8.770393 183.671000 50.815012 8.770399 183.662000 50.815012 8.770399 183.661000 50.815012 8.770400 183.658000 50.815012 8.770402 183.656000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_c945937e-357f-4e0f-bf15-4b08fd1bc53d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815012 8.770393 183.671000 50.815009 8.770393 183.681000 50.815003 8.770394 183.697000 50.815001 8.770395 183.704000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_076bdf55-0d98-42f0-be05-25d62a017377" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814999 8.770391 183.720000 50.815001 8.770395 183.704000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643295'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643295">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643295</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">21.202</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643295</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_7a6f2816-0b69-4547-87ed-b94ac2808c56'-->
                <gml:MultiSurface gml:id="GEOMETRY_7a6f2816-0b69-4547-87ed-b94ac2808c56" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_5127d208-ed91-40c3-a84b-bcf5ec5e6a64" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815044 8.770313 204.637000 50.814985 8.770242 197.552000 50.814991 8.770347 197.552000 50.814993 8.770383 197.552000 50.814996 8.770387 197.947000 50.815044 8.770313 204.637000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_670b2500-2f67-455c-9216-1781c5cfec68" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814996 8.770387 197.947000 50.814993 8.770383 197.552000 50.814993 8.770383 183.435000 50.814996 8.770387 183.435000 50.814996 8.770387 197.947000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_d6fadd9c-ec59-468e-9390-b20ae088de24" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815022 8.770387 197.572000 50.815022 8.770387 197.552000 50.815022 8.770387 183.435000 50.815022 8.770387 183.435000 50.815022 8.770387 197.572000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_499edf97-b14a-4646-88ca-1a02afce5aaa" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815043 8.770384 197.586000 50.815022 8.770387 197.572000 50.815022 8.770387 183.435000 50.815043 8.770384 183.435000 50.815043 8.770384 197.586000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_0361e222-2e3d-444f-8c51-aa57bc569fb0" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815044 8.770313 204.637000 50.815065 8.770229 197.552000 50.814985 8.770242 197.552000 50.815044 8.770313 204.637000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_fa2d53ab-3e41-4bb4-aab0-fe84b050b3d6" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815044 8.770313 204.637000 50.814996 8.770387 197.947000 50.814999 8.770391 197.552000 50.815022 8.770387 197.552000 50.815022 8.770387 197.572000 50.815043 8.770384 197.586000 50.815043 8.770384 197.552000 50.815055 8.770382 197.552000 50.815055 8.770382 197.541000 50.815076 8.770379 197.551000 50.815044 8.770313 204.637000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_27df7810-9308-4436-97d0-e841bfc594ba" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814999 8.770391 197.552000 50.814996 8.770387 197.947000 50.814996 8.770387 183.435000 50.814999 8.770391 183.435000 50.814999 8.770391 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_edb44bfd-9b61-478e-bde7-c30d87f24e48" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815043 8.770384 197.552000 50.815043 8.770384 197.586000 50.815043 8.770384 183.435000 50.815043 8.770384 183.435000 50.815043 8.770384 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_5a3fcc5d-5f45-4c72-bf33-3f782b76f0d5" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815076 8.770379 197.551000 50.815055 8.770382 197.541000 50.815055 8.770382 183.435000 50.815076 8.770379 183.435000 50.815076 8.770379 197.551000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_394b7f19-7f9b-4736-96d2-b7945349598c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815076 8.770379 183.435000 50.815055 8.770382 183.435000 50.815043 8.770384 183.435000 50.815043 8.770384 183.435000 50.815022 8.770387 183.435000 50.815022 8.770387 183.435000 50.814999 8.770391 183.435000 50.814996 8.770387 183.435000 50.814993 8.770383 183.435000 50.814991 8.770347 183.435000 50.814985 8.770242 183.435000 50.815065 8.770229 183.435000 50.815076 8.770379 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_825cc02d-f54d-4ced-9f4c-061c00e4e910" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815076 8.770393 196.138000 50.815076 8.770379 197.551000 50.815076 8.770379 183.435000 50.815076 8.770393 183.435000 50.815076 8.770393 196.138000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_52c0e55e-ae82-4726-8afe-33be5be5caab" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815065 8.770229 197.552000 50.815076 8.770379 197.551000 50.815076 8.770379 183.435000 50.815065 8.770229 183.435000 50.815065 8.770229 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_a186d655-90d5-436b-9f8a-3e6d746ae5fb" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815055 8.770382 197.552000 50.815043 8.770384 197.552000 50.815043 8.770384 183.435000 50.815055 8.770382 183.435000 50.815055 8.770382 197.541000 50.815055 8.770382 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_b589bee6-eaf6-441e-bb47-1a139785b393" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815044 8.770313 204.637000 50.815076 8.770379 197.551000 50.815065 8.770229 197.552000 50.815044 8.770313 204.637000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e71396fe-2658-4bad-baf4-139586e11643" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814985 8.770242 183.435000 50.814991 8.770347 183.435000 50.814991 8.770347 197.552000 50.814985 8.770242 197.552000 50.814985 8.770242 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_7b8672c6-bd14-4bfd-b52b-e44c03767878" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814991 8.770347 183.435000 50.814993 8.770383 183.435000 50.814993 8.770383 197.552000 50.814991 8.770347 197.552000 50.814991 8.770347 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_f9acc625-8af0-488a-83ff-b0d2b97acc2c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815022 8.770387 197.552000 50.814999 8.770391 197.552000 50.814999 8.770391 183.435000 50.815022 8.770387 183.435000 50.815022 8.770387 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_95b7a24c-72f0-4657-8565-cf563df7320a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815076 8.770393 196.138000 50.815076 8.770393 183.435000 50.815076 8.770379 183.435000 50.815076 8.770379 197.551000 50.815076 8.770393 196.138000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_71eacca9-e24b-4e9a-a0a3-7236814286b7" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815065 8.770229 183.435000 50.814985 8.770242 183.435000 50.814985 8.770242 197.552000 50.815065 8.770229 197.552000 50.815065 8.770229 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_3581426c-3a17-4b28-9d48-f8c3c4408736'-->
                <gml:MultiCurve gml:id="GEOMETRY_3581426c-3a17-4b28-9d48-f8c3c4408736" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_b45ff1fd-fc7c-4b7e-ab50-f37b2673017d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815076 8.770379 183.506000 50.815075 8.770379 183.507000 50.815072 8.770380 183.517000 50.815066 8.770381 183.518000 50.815064 8.770381 183.525000 50.815057 8.770382 183.545000 50.815056 8.770382 183.549000 50.815055 8.770382 183.553000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_7b145399-fbef-4532-b9cc-37d088293059" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815055 8.770382 183.553000 50.815048 8.770383 183.575000 50.815048 8.770383 183.577000 50.815043 8.770384 183.590000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_7accfe15-effa-4519-bd72-57a846483437" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815043 8.770384 183.590000 50.815043 8.770384 183.590000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_1e75dfdb-a4cd-4cbd-99b2-6e39a8354edc" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815043 8.770384 183.590000 50.815039 8.770384 183.601000 50.815039 8.770384 183.602000 50.815031 8.770386 183.626000 50.815030 8.770386 183.628000 50.815023 8.770387 183.645000 50.815022 8.770387 183.647000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_9caed6e2-6a9a-402b-b483-a680415a368d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815022 8.770387 183.647000 50.815022 8.770387 183.646000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_9ec1630c-2c25-4727-99b5-2fa0db4edf01" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815022 8.770387 183.646000 50.815021 8.770387 183.648000 50.815015 8.770388 183.668000 50.815012 8.770389 183.675000 50.815007 8.770390 183.694000 50.815003 8.770390 183.704000 50.814999 8.770391 183.720000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_21fa83f5-9409-4652-9286-98a253221985" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814996 8.770387 183.736000 50.814997 8.770389 183.729000 50.814999 8.770391 183.720000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_e6af03ea-1ff3-4c86-ad3f-662b38a3b417" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814993 8.770383 183.756000 50.814994 8.770385 183.748000 50.814994 8.770385 183.745000 50.814996 8.770387 183.736000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_8f1a03ae-3861-49d9-9446-98b7d81e0064" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814985 8.770242 184.039000 50.814985 8.770243 184.038000 50.814985 8.770243 184.036000 50.814986 8.770257 184.006000 50.814986 8.770259 184.002000 50.814987 8.770271 183.974000 50.814987 8.770274 183.967000 50.814988 8.770285 183.943000 50.814988 8.770290 183.934000 50.814988 8.770299 183.913000 50.814989 8.770305 183.902000 50.814989 8.770314 183.885000 50.814989 8.770320 183.872000 50.814990 8.770328 183.857000 50.814990 8.770336 183.843000 50.814990 8.770342 183.831000 50.814991 8.770351 183.814000 50.814991 8.770356 183.805000 50.814992 8.770366 183.786000 50.814992 8.770370 183.779000 50.814992 8.770382 183.757000 50.814993 8.770383 183.756000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_e4556db4-0191-4c91-8b8c-f59b3a73da79" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815065 8.770229 183.746000 50.815058 8.770230 183.773000 50.815057 8.770230 183.778000 50.815050 8.770231 183.805000 50.815048 8.770232 183.814000 50.815042 8.770233 183.836000 50.815039 8.770233 183.848000 50.815034 8.770234 183.866000 50.815030 8.770235 183.880000 50.815026 8.770236 183.900000 50.815021 8.770236 183.914000 50.815017 8.770237 183.926000 50.815012 8.770238 183.947000 50.815009 8.770238 183.957000 50.815003 8.770239 183.980000 50.815001 8.770240 183.986000 50.814994 8.770241 184.010000 50.814993 8.770241 184.014000 50.814985 8.770242 184.039000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_9da693f0-3f37-4163-9661-4a27f4330691" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815065 8.770229 183.746000 50.815066 8.770242 183.709000 50.815066 8.770243 183.708000 50.815067 8.770257 183.670000 50.815067 8.770258 183.666000 50.815068 8.770271 183.636000 50.815068 8.770274 183.630000 50.815069 8.770285 183.609000 50.815069 8.770290 183.601000 50.815070 8.770299 183.586000 50.815070 8.770306 183.576000 50.815071 8.770313 183.564000 50.815071 8.770322 183.552000 50.815072 8.770327 183.544000 50.815073 8.770338 183.531000 50.815073 8.770342 183.526000 50.815074 8.770354 183.513000 50.815074 8.770356 183.510000 50.815075 8.770370 183.498000 50.815075 8.770370 183.498000 50.815075 8.770373 183.501000 50.815076 8.770379 183.506000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_45c79daf-0765-4a2e-a8b3-0843c5289464" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815076 8.770379 183.506000 50.815076 8.770384 183.510000 50.815076 8.770385 183.507000 50.815076 8.770393 183.492000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_68414ec5-9f2e-437a-bf9c-cad08e047551" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815076 8.770379 183.506000 50.815076 8.770384 183.510000 50.815076 8.770385 183.507000 50.815076 8.770393 183.492000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643322'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643322">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643322</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">36.715</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643322</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_fd275245-8bd2-4e70-a01e-0bec38334c2a'-->
                <gml:MultiSurface gml:id="GEOMETRY_fd275245-8bd2-4e70-a01e-0bec38334c2a" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_49aae510-ddd6-4f59-a119-e7d194c82f4c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814737 8.769693 220.150000 50.814754 8.769689 220.149000 50.814750 8.769640 220.148000 50.814732 8.769644 220.150000 50.814737 8.769693 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_19b8574f-a4ed-45cf-aa6f-6a8b006c1655" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814732 8.769644 183.435000 50.814750 8.769640 183.435000 50.814754 8.769689 183.435000 50.814737 8.769693 183.435000 50.814732 8.769644 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_d47cac8a-03de-4c8c-bd92-b316d6157d31" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814754 8.769689 220.149000 50.814737 8.769693 220.150000 50.814737 8.769693 183.435000 50.814754 8.769689 183.435000 50.814754 8.769689 220.149000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_d20d99b1-25c2-47a0-b621-aef37996e787" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814732 8.769644 220.150000 50.814750 8.769640 220.148000 50.814750 8.769640 183.435000 50.814732 8.769644 183.435000 50.814732 8.769644 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e161701c-f1fc-4334-a08f-87c686ed57d4" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814737 8.769693 220.150000 50.814732 8.769644 220.150000 50.814732 8.769644 183.435000 50.814737 8.769693 183.435000 50.814737 8.769693 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_9e6af396-7aa1-4cdf-8692-3f296037707f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814754 8.769689 220.149000 50.814754 8.769689 183.435000 50.814750 8.769640 183.435000 50.814750 8.769640 220.148000 50.814754 8.769689 220.149000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_738a3885-c41a-44ef-9420-355c0d08c977'-->
                <gml:MultiCurve gml:id="GEOMETRY_738a3885-c41a-44ef-9420-355c0d08c977" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_83cb6694-7e6b-408e-a518-4ae661f53949" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814750 8.769640 185.316000 50.814746 8.769641 185.296000 50.814741 8.769642 185.279000 50.814738 8.769643 185.263000 50.814732 8.769644 185.232000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_52dad05e-978c-48bc-bf3c-085543034fd1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814750 8.769640 185.316000 50.814750 8.769641 185.315000 50.814751 8.769648 185.303000 50.814751 8.769649 185.300000 50.814752 8.769662 185.254000 50.814752 8.769665 185.245000 50.814753 8.769676 185.220000 50.814754 8.769682 185.207000 50.814754 8.769689 185.196000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_da72419a-f90c-475d-a7d5-f1929267e59c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814754 8.769689 185.196000 50.814750 8.769690 185.189000 50.814750 8.769690 185.188000 50.814748 8.769690 185.184000 50.814742 8.769692 185.166000 50.814741 8.769692 185.166000 50.814737 8.769693 185.151000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_f6ddbd06-3bc0-44a3-a058-0d776611187c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814732 8.769644 185.232000 50.814733 8.769648 185.228000 50.814733 8.769649 185.223000 50.814734 8.769662 185.199000 50.814734 8.769666 185.193000 50.814735 8.769676 185.187000 50.814736 8.769682 185.179000 50.814736 8.769690 185.154000 50.814737 8.769693 185.151000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643296'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643296">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643296</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">32.776</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643296</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_52b8694a-f1eb-4611-9d58-534344f696ed'-->
                <gml:MultiSurface gml:id="GEOMETRY_52b8694a-f1eb-4611-9d58-534344f696ed" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e4537386-c985-43d2-b511-734d3e7bcf1e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815060 8.770142 216.211000 50.815054 8.770036 207.643000 50.815023 8.770041 207.643000 50.814975 8.770048 207.643000 50.814924 8.770161 216.211000 50.815060 8.770142 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_f985cd4a-b919-444e-a845-41f87709a3bd" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815054 8.770036 183.435000 50.815060 8.770142 183.435000 50.815065 8.770229 183.435000 50.814985 8.770242 183.435000 50.814975 8.770048 183.435000 50.815023 8.770041 183.435000 50.815054 8.770036 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_271b2956-6d77-4620-bb8b-a444c3b1b18e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814924 8.770161 216.211000 50.814975 8.770048 207.643000 50.814985 8.770242 207.643000 50.814924 8.770161 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_7f3a3814-54a9-4106-bd16-c232a1ea99a7" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815065 8.770229 207.643000 50.815060 8.770142 216.211000 50.814985 8.770242 207.643000 50.815065 8.770229 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_86cf3c36-343e-4494-903f-8bd95995981a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814924 8.770161 216.211000 50.814985 8.770242 207.643000 50.815060 8.770142 216.211000 50.814924 8.770161 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_706c74bd-28f3-4e9a-9b77-1d6445ae103c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814975 8.770048 183.435000 50.814975 8.770048 207.643000 50.815023 8.770041 207.643000 50.815023 8.770041 183.435000 50.814975 8.770048 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_aae7e9f8-3df3-43a6-a719-1152cbfcdfaa" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815054 8.770036 183.435000 50.815023 8.770041 183.435000 50.815023 8.770041 207.643000 50.815054 8.770036 207.643000 50.815054 8.770036 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_6bbb3448-4f0e-4cb1-8cd0-78c128f87220" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814985 8.770242 207.643000 50.814975 8.770048 207.643000 50.814975 8.770048 183.435000 50.814985 8.770242 183.435000 50.814985 8.770242 197.552000 50.814985 8.770242 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_07470198-345a-40c9-8f05-a231e1a1270a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815065 8.770229 207.643000 50.815060 8.770142 207.643000 50.815060 8.770142 216.211000 50.815065 8.770229 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_069c7739-f41c-42fd-b4fc-ce27055b2c5e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815065 8.770229 207.643000 50.815065 8.770229 197.552000 50.815065 8.770229 183.435000 50.815060 8.770142 183.435000 50.815060 8.770142 207.643000 50.815065 8.770229 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_68896435-bb79-4364-a29b-81ae8d03e863" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815060 8.770142 207.643000 50.815054 8.770036 207.643000 50.815060 8.770142 216.211000 50.815060 8.770142 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_ac51899c-dfdd-431e-9310-871a49eea946" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815060 8.770142 183.435000 50.815054 8.770036 183.435000 50.815054 8.770036 207.643000 50.815060 8.770142 207.643000 50.815060 8.770142 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_1137230e-98f8-4a74-8e34-ca6420eb8e6c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814985 8.770242 197.552000 50.815065 8.770229 197.552000 50.815065 8.770229 207.643000 50.814985 8.770242 207.643000 50.814985 8.770242 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_5ce7e018-c468-4bf5-8ed2-4e5b5bc105b8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814985 8.770242 197.552000 50.814985 8.770242 183.435000 50.815065 8.770229 183.435000 50.815065 8.770229 197.552000 50.814985 8.770242 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_224d9206-c85d-4220-9e91-ce4a49a21cf3'-->
                <gml:MultiCurve gml:id="GEOMETRY_224d9206-c85d-4220-9e91-ce4a49a21cf3" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_94e1da4d-4420-4af4-a3fb-6c8195c5acc9" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815054 8.770036 184.389000 50.815054 8.770040 184.379000 50.815055 8.770044 184.366000 50.815055 8.770056 184.324000 50.815055 8.770058 184.318000 50.815056 8.770071 184.283000 50.815056 8.770072 184.281000 50.815057 8.770079 184.264000 50.815057 8.770086 184.245000 50.815057 8.770087 184.243000 50.815058 8.770100 184.207000 50.815058 8.770102 184.202000 50.815059 8.770115 184.167000 50.815059 8.770118 184.157000 50.815059 8.770129 184.123000 50.815060 8.770133 184.106000 50.815060 8.770142 184.076000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_13bcb06a-cb81-45cf-bed3-1d9445b26487" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815060 8.770142 184.076000 50.815060 8.770143 184.073000 50.815060 8.770149 184.050000 50.815061 8.770157 184.021000 50.815061 8.770164 183.991000 50.815062 8.770171 183.965000 50.815062 8.770180 183.931000 50.815063 8.770186 183.909000 50.815063 8.770195 183.870000 50.815063 8.770200 183.854000 50.815064 8.770211 183.810000 50.815064 8.770214 183.799000 50.815065 8.770226 183.754000 50.815065 8.770228 183.748000 50.815065 8.770229 183.746000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_4e2cbdc5-4ea1-46de-93af-8205b35b3199" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815065 8.770229 183.746000 50.815058 8.770230 183.773000 50.815057 8.770230 183.778000 50.815050 8.770231 183.805000 50.815048 8.770232 183.814000 50.815042 8.770233 183.836000 50.815039 8.770233 183.848000 50.815034 8.770234 183.866000 50.815030 8.770235 183.880000 50.815026 8.770236 183.900000 50.815021 8.770236 183.914000 50.815017 8.770237 183.926000 50.815012 8.770238 183.947000 50.815009 8.770238 183.957000 50.815003 8.770239 183.980000 50.815001 8.770240 183.986000 50.814994 8.770241 184.010000 50.814993 8.770241 184.014000 50.814985 8.770242 184.039000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_92cba2ac-b6d9-4716-bc14-1ed0ba23ac15" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814975 8.770048 184.554000 50.814976 8.770054 184.543000 50.814976 8.770058 184.533000 50.814976 8.770059 184.532000 50.814977 8.770072 184.501000 50.814977 8.770074 184.497000 50.814977 8.770087 184.466000 50.814977 8.770089 184.459000 50.814978 8.770101 184.429000 50.814978 8.770105 184.418000 50.814979 8.770115 184.391000 50.814979 8.770120 184.375000 50.814979 8.770129 184.349000 50.814980 8.770136 184.331000 50.814980 8.770143 184.308000 50.814981 8.770151 184.286000 50.814981 8.770158 184.267000 50.814981 8.770166 184.242000 50.814982 8.770172 184.227000 50.814982 8.770182 184.198000 50.814982 8.770186 184.186000 50.814983 8.770197 184.155000 50.814983 8.770200 184.147000 50.814984 8.770213 184.113000 50.814984 8.770214 184.108000 50.814985 8.770228 184.072000 50.814985 8.770229 184.070000 50.814985 8.770235 184.054000 50.814985 8.770242 184.039000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_40615b3e-d73e-4dad-8841-ff84c65b1f01" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815054 8.770036 184.389000 50.815052 8.770036 184.405000 50.815048 8.770037 184.418000 50.815044 8.770037 184.434000 50.815039 8.770038 184.449000 50.815035 8.770039 184.451000 50.815030 8.770040 184.466000 50.815027 8.770040 184.471000 50.815021 8.770041 184.484000 50.815019 8.770041 184.486000 50.815012 8.770042 184.498000 50.815011 8.770043 184.499000 50.815003 8.770044 184.513000 50.814994 8.770045 184.525000 50.814994 8.770045 184.527000 50.814986 8.770047 184.537000 50.814985 8.770047 184.540000 50.814978 8.770048 184.549000 50.814976 8.770048 184.554000 50.814975 8.770048 184.554000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643302'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643302">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643302</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">80.118</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643302</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_7f9eebba-ace1-49a2-8681-164547c88949'-->
                <gml:MultiSurface gml:id="GEOMETRY_7f9eebba-ace1-49a2-8681-164547c88949" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_1f4c693a-1979-4df5-8a4a-e8d5fdc18c16" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814781 8.769498 220.598000 50.814784 8.769537 234.805000 50.814784 8.769537 183.435000 50.814781 8.769498 183.435000 50.814781 8.769498 220.598000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_a69ad57c-360a-4d88-a8a3-3c375bf7cce5" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814774 8.769713 220.437000 50.814757 8.769716 220.150000 50.814757 8.769716 183.435000 50.814774 8.769713 183.435000 50.814774 8.769713 220.437000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_2a9608ed-0f82-4e11-8389-a74527153990" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814760 8.769584 234.126000 50.814745 8.769587 220.145000 50.814745 8.769587 183.435000 50.814760 8.769584 183.435000 50.814760 8.769584 234.126000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_eaa50a3c-3ea6-436b-9089-da3e6bd13029" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814876 8.769535 221.297000 50.814877 8.769533 220.791000 50.814877 8.769533 183.435000 50.814876 8.769535 183.435000 50.814876 8.769535 221.297000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_2911912a-2a1b-4764-846a-2a9f8987fbcf" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814754 8.769689 183.435000 50.814750 8.769640 183.435000 50.814765 8.769637 183.435000 50.814760 8.769584 183.435000 50.814745 8.769587 183.435000 50.814741 8.769536 183.435000 50.814752 8.769534 183.435000 50.814752 8.769533 183.435000 50.814750 8.769504 183.435000 50.814781 8.769498 183.435000 50.814784 8.769537 183.435000 50.814817 8.769530 183.435000 50.814814 8.769491 183.435000 50.814841 8.769485 183.435000 50.814843 8.769524 183.435000 50.814847 8.769523 183.435000 50.814847 8.769524 183.435000 50.814860 8.769540 183.435000 50.814876 8.769536 183.435000 50.814876 8.769535 183.435000 50.814877 8.769533 183.435000 50.814878 8.769533 183.435000 50.814890 8.769692 183.435000 50.814782 8.769712 183.435000 50.814774 8.769713 183.435000 50.814774 8.769713 183.435000 50.814757 8.769716 183.435000 50.814754 8.769689 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_3ee4c56f-dd90-4a1e-8844-aa341f0ca737" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814795 8.769615 263.553000 50.814890 8.769692 220.150000 50.814878 8.769533 220.150000 50.814877 8.769533 220.791000 50.814876 8.769535 221.297000 50.814876 8.769536 221.303000 50.814860 8.769540 229.102000 50.814847 8.769524 234.624000 50.814795 8.769615 263.553000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_79dd12f4-85d4-45a3-b9b5-1b555be90d7d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814817 8.769530 234.803000 50.814814 8.769491 220.494000 50.814814 8.769491 183.435000 50.814817 8.769530 183.435000 50.814817 8.769530 234.803000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_b6304222-8b19-4906-82f0-9055b9ce64e1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814750 8.769640 220.148000 50.814765 8.769637 234.041000 50.814765 8.769637 183.435000 50.814750 8.769640 183.435000 50.814750 8.769640 220.148000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_22aea30c-1899-4969-98ae-caf1d0e57e79" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814841 8.769485 220.454000 50.814843 8.769524 234.250000 50.814843 8.769524 183.435000 50.814841 8.769485 183.435000 50.814841 8.769485 220.454000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_3bd6fc96-4e7b-4afe-9a97-7d6d9ba25a15" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814876 8.769536 221.303000 50.814876 8.769535 221.297000 50.814876 8.769535 183.435000 50.814876 8.769536 183.435000 50.814876 8.769536 221.303000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_5d347d7d-511a-48f4-a272-8b23495993f7" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814795 8.769615 263.553000 50.814752 8.769533 231.402000 50.814752 8.769534 231.399000 50.814741 8.769536 220.150000 50.814741 8.769536 220.140000 50.814745 8.769587 220.145000 50.814760 8.769584 234.126000 50.814765 8.769637 234.041000 50.814750 8.769640 220.148000 50.814754 8.769689 220.149000 50.814757 8.769716 220.150000 50.814795 8.769615 263.553000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_aa99fcb2-280e-488a-bc7e-3e44fd764f78" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814774 8.769713 220.150000 50.814774 8.769713 220.437000 50.814774 8.769713 183.435000 50.814774 8.769713 183.435000 50.814774 8.769713 207.643000 50.814774 8.769713 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_a08516be-8a91-4eb8-b572-fc4750e259fd" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814750 8.769504 220.558000 50.814781 8.769498 220.598000 50.814781 8.769498 183.435000 50.814750 8.769504 183.435000 50.814750 8.769504 220.558000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_bee0c84c-99d7-4701-8f85-154ad0d02e2a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814847 8.769523 234.407000 50.814847 8.769524 234.624000 50.814847 8.769524 183.435000 50.814847 8.769523 183.435000 50.814847 8.769523 234.407000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_6fec931a-bad5-4789-964d-c3839de4053e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814795 8.769615 263.553000 50.814757 8.769716 220.150000 50.814774 8.769713 220.437000 50.814774 8.769713 220.150000 50.814890 8.769692 220.150000 50.814795 8.769615 263.553000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_7460e7a9-25e2-4069-8b60-a35f96261ab7" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814847 8.769524 234.624000 50.814860 8.769540 229.102000 50.814860 8.769540 183.435000 50.814847 8.769524 183.435000 50.814847 8.769524 234.624000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_a861c35d-9f9c-47c8-b58c-2a9136d13b78" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814795 8.769615 263.553000 50.814847 8.769524 234.624000 50.814847 8.769523 234.407000 50.814843 8.769524 234.250000 50.814841 8.769485 220.454000 50.814814 8.769491 220.494000 50.814817 8.769530 234.803000 50.814784 8.769537 234.805000 50.814781 8.769498 220.598000 50.814750 8.769504 220.558000 50.814752 8.769533 231.402000 50.814795 8.769615 263.553000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_6d99ee8a-e8b0-4d6b-8974-fff147367145" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814752 8.769534 231.399000 50.814752 8.769533 231.402000 50.814752 8.769533 183.435000 50.814752 8.769534 183.435000 50.814752 8.769534 231.399000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_39be55c0-54c2-4303-9544-d9463f553336" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814765 8.769637 234.041000 50.814760 8.769584 234.126000 50.814760 8.769584 183.435000 50.814765 8.769637 183.435000 50.814765 8.769637 234.041000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_fc67577d-c3ca-4498-9881-2d674654bf85" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814784 8.769537 234.805000 50.814817 8.769530 234.803000 50.814817 8.769530 183.435000 50.814784 8.769537 183.435000 50.814784 8.769537 234.805000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_230117b2-afc4-49f2-aa64-10596e26767b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814741 8.769536 220.150000 50.814752 8.769534 231.399000 50.814752 8.769534 183.435000 50.814741 8.769536 183.435000 50.814741 8.769536 220.140000 50.814741 8.769536 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_0addb3d0-9ae9-4c19-ab98-dbb69c6df413" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814877 8.769533 220.791000 50.814878 8.769533 220.150000 50.814878 8.769533 183.435000 50.814877 8.769533 183.435000 50.814877 8.769533 220.791000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_a8d84f6b-814f-43b4-909f-7c2930c0f6fb" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814757 8.769716 220.150000 50.814754 8.769689 220.149000 50.814754 8.769689 183.435000 50.814757 8.769716 183.435000 50.814757 8.769716 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_12c9cebc-d9d3-48e6-b794-664f9eead44a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814752 8.769533 231.402000 50.814750 8.769504 220.558000 50.814750 8.769504 183.435000 50.814752 8.769533 183.435000 50.814752 8.769533 231.402000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_098d284b-2fce-42cc-bb44-b1eefe04c1e0" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814814 8.769491 220.494000 50.814841 8.769485 220.454000 50.814841 8.769485 183.435000 50.814814 8.769491 183.435000 50.814814 8.769491 220.494000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_974ba514-9cbf-4211-8102-80964f5d9d27" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814843 8.769524 234.250000 50.814847 8.769523 234.407000 50.814847 8.769523 183.435000 50.814843 8.769524 183.435000 50.814843 8.769524 234.250000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_114196a7-4434-4a82-bdaf-a04da6a811c7" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814860 8.769540 229.102000 50.814876 8.769536 221.303000 50.814876 8.769536 183.435000 50.814860 8.769540 183.435000 50.814860 8.769540 229.102000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_51aa1802-9c7e-4de7-8913-467f4ad4a535" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814774 8.769713 207.643000 50.814782 8.769712 207.643000 50.814890 8.769692 216.211000 50.814890 8.769692 220.150000 50.814774 8.769713 220.150000 50.814774 8.769713 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_259d399e-14e5-41c8-bb48-94403420e9d1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814782 8.769712 183.435000 50.814890 8.769692 183.435000 50.814890 8.769692 216.211000 50.814782 8.769712 207.643000 50.814782 8.769712 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_29a10ce4-f447-458e-96d2-de5d45e03526" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814774 8.769713 207.643000 50.814774 8.769713 183.435000 50.814782 8.769712 183.435000 50.814782 8.769712 207.643000 50.814774 8.769713 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_d520eb2e-c0a2-4752-ab9b-332f3a66837e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814750 8.769640 220.148000 50.814750 8.769640 183.435000 50.814754 8.769689 183.435000 50.814754 8.769689 220.149000 50.814750 8.769640 220.148000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_c61c1823-57b7-4f91-b06f-2620fc7eb06a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814878 8.769533 220.150000 50.814890 8.769692 220.150000 50.814890 8.769692 216.211000 50.814890 8.769692 183.435000 50.814878 8.769533 183.435000 50.814878 8.769533 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_50bdd94d-e6fd-4f65-9b4f-b0f946fcb2d1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814741 8.769536 220.140000 50.814741 8.769536 183.435000 50.814745 8.769587 183.435000 50.814745 8.769587 220.145000 50.814741 8.769536 220.140000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_bdb3c533-2dc1-4b90-b8b7-9d6efd4ffda7'-->
                <gml:MultiCurve gml:id="GEOMETRY_bdb3c533-2dc1-4b90-b8b7-9d6efd4ffda7" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_dee8af7d-c239-4464-aaea-393803b42db4" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814750 8.769640 185.316000 50.814750 8.769641 185.315000 50.814751 8.769648 185.303000 50.814751 8.769649 185.300000 50.814752 8.769662 185.254000 50.814752 8.769665 185.245000 50.814753 8.769676 185.220000 50.814754 8.769682 185.207000 50.814754 8.769689 185.196000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_11f91a00-b5ef-4df8-8b07-36b80517d8cd" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814765 8.769637 185.366000 50.814762 8.769638 185.358000 50.814759 8.769638 185.354000 50.814754 8.769639 185.325000 50.814750 8.769640 185.316000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_9c30b6fb-847e-4a28-9a13-d915511a2ae8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814760 8.769584 185.398000 50.814761 8.769591 185.391000 50.814761 8.769594 185.390000 50.814762 8.769605 185.383000 50.814762 8.769610 185.381000 50.814763 8.769619 185.390000 50.814764 8.769627 185.388000 50.814764 8.769633 185.380000 50.814765 8.769637 185.366000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_c4e2281d-1745-4dbf-8552-d631e0dd9b43" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814760 8.769584 185.398000 50.814759 8.769584 185.396000 50.814755 8.769585 185.385000 50.814750 8.769586 185.365000 50.814747 8.769587 185.357000 50.814745 8.769587 185.347000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_104b7526-e321-4c61-b273-671243156c4d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814741 8.769536 185.476000 50.814741 8.769539 185.465000 50.814742 8.769548 185.433000 50.814742 8.769550 185.430000 50.814743 8.769563 185.398000 50.814743 8.769566 185.390000 50.814744 8.769577 185.368000 50.814745 8.769583 185.358000 50.814745 8.769587 185.347000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_3c034f01-d8b9-4e7a-9227-5ae7726f6b9e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814752 8.769534 185.479000 50.814750 8.769534 185.478000 50.814750 8.769534 185.478000 50.814742 8.769536 185.478000 50.814741 8.769536 185.476000 50.814741 8.769536 185.476000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_5b6dea8c-a12c-424b-898d-cd7f1a4efbf0" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814752 8.769533 185.479000 50.814752 8.769534 185.479000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_9af74ac3-47ef-4b52-869d-aaf1cb3fa0c1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814750 8.769504 185.451000 50.814750 8.769506 185.458000 50.814750 8.769507 185.460000 50.814751 8.769520 185.465000 50.814752 8.769523 185.467000 50.814752 8.769533 185.479000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_327b174e-e0f9-4190-b23a-bc79147e9110" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814781 8.769498 185.407000 50.814781 8.769498 185.407000 50.814777 8.769498 185.428000 50.814773 8.769499 185.432000 50.814768 8.769500 185.457000 50.814765 8.769501 185.458000 50.814759 8.769502 185.440000 50.814757 8.769502 185.444000 50.814750 8.769504 185.451000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_b51d2bc6-8dac-4fef-86cc-3952d587814c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814781 8.769498 185.407000 50.814781 8.769498 185.408000 50.814782 8.769506 185.431000 50.814782 8.769514 185.449000 50.814783 8.769520 185.454000 50.814784 8.769531 185.479000 50.814784 8.769534 185.482000 50.814784 8.769537 185.478000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_cd7f1a96-317b-4822-9546-a14ef1836c6a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814817 8.769530 185.430000 50.814813 8.769531 185.434000 50.814811 8.769531 185.435000 50.814804 8.769533 185.550000 50.814803 8.769533 185.551000 50.814798 8.769534 185.496000 50.814795 8.769534 185.457000 50.814795 8.769535 185.458000 50.814787 8.769536 185.478000 50.814786 8.769536 185.478000 50.814784 8.769537 185.478000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_0fe9e5c7-b93c-4fb4-b925-cfc94f9c7561" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814814 8.769491 185.393000 50.814814 8.769491 185.394000 50.814814 8.769494 185.391000 50.814815 8.769505 185.403000 50.814816 8.769510 185.413000 50.814816 8.769520 185.430000 50.814817 8.769526 185.428000 50.814817 8.769530 185.430000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_c1cef10b-cd3c-46fd-b46c-bc9b08216c96" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814841 8.769485 185.393000 50.814840 8.769486 185.395000 50.814837 8.769486 185.397000 50.814831 8.769488 185.386000 50.814829 8.769488 185.385000 50.814822 8.769489 185.416000 50.814821 8.769490 185.417000 50.814814 8.769491 185.393000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_a33c20cc-a633-45c5-87a9-93bf81673179" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814841 8.769485 185.393000 50.814841 8.769491 185.409000 50.814841 8.769494 185.411000 50.814842 8.769505 185.415000 50.814842 8.769509 185.418000 50.814842 8.769519 185.427000 50.814843 8.769524 185.430000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_e46531e2-10ea-4ded-ac9a-3c15bff6aa86" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814847 8.769523 185.430000 50.814843 8.769524 185.430000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_896ece42-ecb5-42d7-8ab6-352fefea7ceb" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814847 8.769523 185.430000 50.814847 8.769524 185.430000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_199ba0f5-6f7a-4a65-a46a-a0ff52ad087e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814847 8.769524 185.430000 50.814849 8.769525 185.431000 50.814855 8.769534 185.438000 50.814858 8.769537 185.439000 50.814860 8.769540 185.441000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_45cb613a-8596-4481-947f-309e405cf89e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814876 8.769536 185.440000 50.814876 8.769537 185.440000 50.814869 8.769538 185.434000 50.814867 8.769538 185.437000 50.814861 8.769540 185.442000 50.814860 8.769540 185.441000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_fad94766-a38b-40b0-ab8d-e9f24f480217" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814876 8.769535 185.440000 50.814876 8.769536 185.440000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_e8ae7813-bd8d-4ce9-b22d-13bfbfa30d0c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814877 8.769533 185.439000 50.814876 8.769534 185.440000 50.814876 8.769534 185.441000 50.814876 8.769535 185.440000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_93789737-838f-44ab-9ed5-11e523b1829c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814878 8.769533 185.437000 50.814877 8.769533 185.439000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_0fbc094e-1211-49be-b2e7-6c8dc1dd9235" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814878 8.769533 185.437000 50.814878 8.769534 185.438000 50.814878 8.769538 185.441000 50.814879 8.769548 185.437000 50.814879 8.769554 185.434000 50.814880 8.769562 185.429000 50.814881 8.769570 185.423000 50.814881 8.769576 185.417000 50.814882 8.769586 185.406000 50.814882 8.769590 185.400000 50.814883 8.769602 185.386000 50.814883 8.769604 185.382000 50.814884 8.769618 185.363000 50.814884 8.769619 185.362000 50.814885 8.769627 185.349000 50.814885 8.769633 185.340000 50.814885 8.769634 185.339000 50.814886 8.769647 185.317000 50.814887 8.769650 185.313000 50.814887 8.769661 185.290000 50.814888 8.769666 185.282000 50.814888 8.769675 185.263000 50.814889 8.769682 185.251000 50.814889 8.769690 185.236000 50.814890 8.769692 185.232000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_5cf6bffb-efcd-4894-afec-652aa6fdba9a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814890 8.769692 185.232000 50.814887 8.769692 185.230000 50.814885 8.769693 185.229000 50.814879 8.769694 185.225000 50.814876 8.769694 185.224000 50.814870 8.769695 185.224000 50.814867 8.769696 185.225000 50.814862 8.769697 185.225000 50.814858 8.769698 185.225000 50.814854 8.769698 185.224000 50.814849 8.769699 185.223000 50.814846 8.769700 185.222000 50.814840 8.769701 185.220000 50.814838 8.769701 185.219000 50.814831 8.769703 185.216000 50.814830 8.769703 185.215000 50.814823 8.769704 185.211000 50.814822 8.769704 185.211000 50.814814 8.769706 185.204000 50.814813 8.769706 185.204000 50.814806 8.769707 185.196000 50.814804 8.769708 185.194000 50.814798 8.769709 185.189000 50.814795 8.769709 185.186000 50.814790 8.769710 185.181000 50.814786 8.769711 185.176000 50.814782 8.769712 185.170000 50.814777 8.769713 185.163000 50.814774 8.769713 185.159000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_a1ea8b38-0e94-493c-8b0c-ee70baaac0df" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814774 8.769713 185.161000 50.814774 8.769713 185.159000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_805fc389-24ec-49f8-9572-df40620b3c1b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814774 8.769713 185.161000 50.814773 8.769713 185.159000 50.814768 8.769714 185.151000 50.814765 8.769714 185.147000 50.814759 8.769716 185.136000 50.814758 8.769716 185.132000 50.814757 8.769716 185.132000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_f63730bd-badb-4d1f-a6b9-7e4c4d2ce759" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814754 8.769689 185.196000 50.814754 8.769690 185.193000 50.814755 8.769698 185.177000 50.814756 8.769704 185.161000 50.814757 8.769715 185.134000 50.814757 8.769716 185.132000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643312'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643312">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643312</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">24.208</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643312</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_13a0e27e-8b55-4802-a317-44e5167a857a'-->
                <gml:MultiSurface gml:id="GEOMETRY_13a0e27e-8b55-4802-a317-44e5167a857a" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_c0334bea-a1f3-4958-ba2f-836e60676ffb" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814960 8.770469 207.643000 50.814955 8.770452 207.643000 50.814955 8.770452 183.435000 50.814960 8.770469 183.435000 50.814960 8.770469 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_2a76b3bc-02d3-4614-84d6-e27066374a4f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814971 8.770459 207.643000 50.814960 8.770469 207.643000 50.814960 8.770469 183.435000 50.814971 8.770459 183.435000 50.814971 8.770459 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_9d035047-6100-4a52-9a0b-67de973bbe3e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814967 8.770444 207.643000 50.814971 8.770459 207.643000 50.814971 8.770459 183.435000 50.814967 8.770444 183.435000 50.814967 8.770444 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_55552441-263c-41ee-82b4-49a5eea2d272" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814960 8.770469 207.643000 50.814971 8.770459 207.643000 50.814967 8.770444 207.643000 50.814955 8.770452 207.643000 50.814960 8.770469 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_e354cffa-fcb5-4b25-836f-8b19b998d58d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814955 8.770452 183.435000 50.814967 8.770444 183.435000 50.814971 8.770459 183.435000 50.814960 8.770469 183.435000 50.814955 8.770452 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_df481f6f-89a4-4636-8278-eaaf5284341b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814955 8.770452 207.643000 50.814967 8.770444 207.643000 50.814967 8.770444 183.435000 50.814955 8.770452 183.435000 50.814955 8.770452 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_d8885848-a949-4ef4-a2e5-3d6aefad26b0'-->
                <gml:MultiCurve gml:id="GEOMETRY_d8885848-a949-4ef4-a2e5-3d6aefad26b0" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_b5877169-26bc-49c7-a467-369caff2061a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814967 8.770444 183.783000 50.814962 8.770447 183.803000 50.814958 8.770449 183.810000 50.814956 8.770451 183.823000 50.814955 8.770452 183.824000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_37610ffc-7c20-494d-b2ff-40d26539485c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814967 8.770444 183.783000 50.814967 8.770446 183.779000 50.814970 8.770456 183.761000 50.814971 8.770459 183.752000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_26c4383e-eab0-48be-8d7d-6afe409100de" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814971 8.770459 183.752000 50.814970 8.770460 183.753000 50.814967 8.770462 183.757000 50.814964 8.770465 183.761000 50.814960 8.770469 183.766000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_de4e57d4-baed-48a9-9bae-92562ed809f6" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814955 8.770452 183.824000 50.814956 8.770456 183.812000 50.814958 8.770463 183.784000 50.814960 8.770469 183.766000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643321'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643321">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643321</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">24.208</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643321</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_99cf739b-5daf-4813-8c48-acfaf5f07018'-->
                <gml:MultiSurface gml:id="GEOMETRY_99cf739b-5daf-4813-8c48-acfaf5f07018" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_48bbefcd-195a-4a32-a9e2-39a26669cd7f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814752 8.770266 207.643000 50.814758 8.770252 207.643000 50.814758 8.770252 183.435000 50.814752 8.770266 183.435000 50.814752 8.770266 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_31e4db1f-c7e0-4e27-9f9f-4c8fc32a19e7" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814752 8.770266 207.643000 50.814762 8.770277 207.643000 50.814768 8.770262 207.643000 50.814758 8.770252 207.643000 50.814752 8.770266 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_8250fb20-e510-411f-abab-1ff85037bf5b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814768 8.770262 207.643000 50.814762 8.770277 207.643000 50.814762 8.770277 183.435000 50.814768 8.770262 183.435000 50.814768 8.770262 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_134cc4f3-a95e-4b37-a310-4cf119ea5ab8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814762 8.770277 207.643000 50.814752 8.770266 207.643000 50.814752 8.770266 183.435000 50.814762 8.770277 183.435000 50.814762 8.770277 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_dffbe175-2641-4b0f-81a4-6a9576200653" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814758 8.770252 183.435000 50.814768 8.770262 183.435000 50.814762 8.770277 183.435000 50.814752 8.770266 183.435000 50.814758 8.770252 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_47f9ae61-fa4f-494b-9264-6bcd31bcd094" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814758 8.770252 207.643000 50.814768 8.770262 207.643000 50.814768 8.770262 183.435000 50.814758 8.770252 183.435000 50.814758 8.770252 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_3312b6c0-1804-4bf0-95d2-3839e8527977'-->
                <gml:MultiCurve gml:id="GEOMETRY_3312b6c0-1804-4bf0-95d2-3839e8527977" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_90437dcf-a9e1-4de6-b110-cef00fd5815c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814758 8.770252 184.450000 50.814760 8.770254 184.446000 50.814764 8.770258 184.438000 50.814768 8.770262 184.423000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_89889949-e810-40ab-a14f-b8d83adbd0ef" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814768 8.770262 184.423000 50.814766 8.770267 184.411000 50.814764 8.770272 184.408000 50.814763 8.770276 184.403000 50.814762 8.770277 184.401000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_267171cb-accf-4ae6-a124-5ca9f10214c1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814752 8.770266 184.431000 50.814758 8.770272 184.421000 50.814760 8.770275 184.412000 50.814762 8.770277 184.401000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_48094dd6-741f-4fb2-9084-3ad8236a2304" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814758 8.770252 184.450000 50.814757 8.770253 184.449000 50.814755 8.770258 184.440000 50.814754 8.770262 184.433000 50.814752 8.770266 184.431000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643286'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643286">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643286</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">24.208</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643286</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_3455f6d5-9401-4baf-8a62-93b971b3da5e'-->
                <gml:MultiSurface gml:id="GEOMETRY_3455f6d5-9401-4baf-8a62-93b971b3da5e" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_5136f730-6117-4cf7-a7e5-e0682fc4bae0" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814800 8.769955 207.643000 50.814791 8.769957 207.643000 50.814791 8.769957 183.435000 50.814800 8.769955 183.435000 50.814800 8.769955 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_38e9b5f9-9993-4479-8a76-90706ca6dd7d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814790 8.769938 183.435000 50.814802 8.769936 183.435000 50.814813 8.770074 183.435000 50.814807 8.770075 183.435000 50.814804 8.770027 183.435000 50.814796 8.770028 183.435000 50.814794 8.770007 183.435000 50.814803 8.770006 183.435000 50.814800 8.769955 183.435000 50.814791 8.769957 183.435000 50.814790 8.769938 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_a3a07def-ca5f-4a87-8ae0-b57f43b3dc2c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814796 8.770028 207.643000 50.814794 8.770007 207.643000 50.814794 8.770007 183.435000 50.814796 8.770028 183.435000 50.814796 8.770028 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_af4154d5-30ee-4222-973a-15fdc4f2face" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814794 8.770007 207.643000 50.814803 8.770006 207.643000 50.814803 8.770006 183.435000 50.814794 8.770007 183.435000 50.814794 8.770007 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_7c9d3941-c6ea-4ab1-a54e-6689009bc8a5" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814791 8.769957 207.643000 50.814790 8.769938 207.643000 50.814790 8.769938 183.435000 50.814791 8.769957 183.435000 50.814791 8.769957 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_6403caa2-d54e-4181-885d-802212b41490" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814791 8.769957 207.643000 50.814800 8.769955 207.643000 50.814803 8.770006 207.643000 50.814794 8.770007 207.643000 50.814796 8.770028 207.643000 50.814804 8.770027 207.643000 50.814807 8.770075 207.643000 50.814813 8.770074 207.643000 50.814802 8.769936 207.642000 50.814790 8.769938 207.643000 50.814791 8.769957 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_5197a181-96a3-4535-9ea6-0513427f4beb" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814803 8.770006 207.643000 50.814800 8.769955 207.643000 50.814800 8.769955 183.435000 50.814803 8.770006 183.435000 50.814803 8.770006 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_2dc3365a-226a-4111-8feb-6e49cd586f6d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814804 8.770027 207.643000 50.814796 8.770028 207.643000 50.814796 8.770028 183.435000 50.814804 8.770027 183.435000 50.814804 8.770027 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_2d32bacd-3abd-4a3c-80a4-a1db081c1382" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814790 8.769938 207.643000 50.814802 8.769936 207.642000 50.814802 8.769936 183.435000 50.814790 8.769938 183.435000 50.814790 8.769938 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_67a43cbc-0d58-42e9-9605-d03d4b6bac4f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814807 8.770075 207.643000 50.814804 8.770027 207.643000 50.814804 8.770027 183.435000 50.814807 8.770075 183.435000 50.814807 8.770075 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_3b0ce569-9e8c-4536-9fc1-4d550c01104d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814813 8.770074 207.643000 50.814807 8.770075 207.643000 50.814807 8.770075 183.435000 50.814813 8.770074 183.435000 50.814813 8.770074 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_6960a887-92ae-42a7-ae03-b1dabd3482d7" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814802 8.769936 207.642000 50.814813 8.770074 207.643000 50.814813 8.770074 183.435000 50.814802 8.769936 183.435000 50.814802 8.769936 207.642000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_92eef599-156a-46d5-adfa-ad27e9451044'-->
                <gml:MultiCurve gml:id="GEOMETRY_92eef599-156a-46d5-adfa-ad27e9451044" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_a45e4c43-fecb-4bd1-bd10-c5f45b5277ba" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814802 8.769936 184.868000 50.814799 8.769937 184.866000 50.814796 8.769937 184.861000 50.814791 8.769938 184.853000 50.814790 8.769938 184.852000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_c2e1abc4-41f0-4c80-94ce-61fc326403ce" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814802 8.769936 184.868000 50.814802 8.769942 184.863000 50.814802 8.769946 184.858000 50.814803 8.769958 184.849000 50.814804 8.769960 184.848000 50.814805 8.769972 184.843000 50.814805 8.769974 184.842000 50.814805 8.769974 184.842000 50.814806 8.769988 184.832000 50.814806 8.769991 184.830000 50.814807 8.770002 184.817000 50.814808 8.770007 184.812000 50.814808 8.770016 184.800000 50.814809 8.770023 184.795000 50.814810 8.770031 184.785000 50.814810 8.770039 184.782000 50.814811 8.770045 184.781000 50.814812 8.770056 184.782000 50.814812 8.770059 184.786000 50.814813 8.770072 184.783000 50.814813 8.770073 184.785000 50.814813 8.770074 184.784000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_46b2861d-92f9-46b4-b0ba-ccaac890cadd" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814813 8.770074 184.784000 50.814807 8.770075 184.803000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_0d0fcd41-6d56-404b-a890-165a052c7ac5" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814804 8.770027 184.785000 50.814804 8.770030 184.779000 50.814804 8.770031 184.776000 50.814805 8.770036 184.775000 50.814805 8.770045 184.775000 50.814805 8.770046 184.775000 50.814806 8.770059 184.788000 50.814806 8.770062 184.787000 50.814807 8.770073 184.805000 50.814807 8.770075 184.803000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_16dbd9b0-6a24-4259-aa2d-5d6ead40ed7a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814804 8.770027 184.785000 50.814802 8.770027 184.795000 50.814796 8.770028 184.780000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_37e493d3-dae7-4f13-99d0-5a7428fec527" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814794 8.770007 184.822000 50.814795 8.770015 184.846000 50.814795 8.770017 184.845000 50.814796 8.770027 184.789000 50.814796 8.770028 184.780000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_b8b7b6b8-d649-4488-a459-0ade0f419df0" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814803 8.770006 184.811000 50.814798 8.770007 184.807000 50.814796 8.770007 184.825000 50.814794 8.770007 184.822000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_9770d1ed-e29d-4dc0-9444-5a32388b31c8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814800 8.769955 184.848000 50.814800 8.769960 184.844000 50.814801 8.769968 184.841000 50.814801 8.769974 184.837000 50.814802 8.769984 184.831000 50.814802 8.769988 184.832000 50.814803 8.770000 184.819000 50.814803 8.770002 184.815000 50.814803 8.770006 184.811000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_be1baa99-52a1-4744-bf98-9f98a0347173" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814800 8.769955 184.848000 50.814796 8.769956 184.842000 50.814793 8.769956 184.839000 50.814791 8.769957 184.832000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_d7ab9132-fce2-46e6-be69-7e4ea956c740" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814790 8.769938 184.852000 50.814790 8.769946 184.843000 50.814791 8.769952 184.838000 50.814791 8.769957 184.832000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643320'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643320">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643320</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">24.208</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643320</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_e6020598-6546-402c-89ed-cd43843dfe96'-->
                <gml:MultiSurface gml:id="GEOMETRY_e6020598-6546-402c-89ed-cd43843dfe96" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_270f5d03-a546-45f2-bc45-ad9a6b1acfd3" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814732 8.770229 207.643000 50.814727 8.770208 207.643000 50.814727 8.770208 183.435000 50.814732 8.770229 183.435000 50.814732 8.770229 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_f8e3287b-c974-4567-9a77-e75e70f963d1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814727 8.770208 207.643000 50.814736 8.770204 207.643000 50.814736 8.770204 183.435000 50.814727 8.770208 183.435000 50.814727 8.770208 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_42e39f56-fb8b-4056-ad71-786d7095e11f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814727 8.770208 207.643000 50.814732 8.770229 207.643000 50.814741 8.770222 207.643000 50.814736 8.770204 207.643000 50.814727 8.770208 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_24f89efe-5a0c-43f7-bf2d-59a15eea5865" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814736 8.770204 183.435000 50.814741 8.770222 183.435000 50.814732 8.770229 183.435000 50.814727 8.770208 183.435000 50.814736 8.770204 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_54f3663c-0710-4770-8507-665a0984b215" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814741 8.770222 207.643000 50.814732 8.770229 207.643000 50.814732 8.770229 183.435000 50.814741 8.770222 183.435000 50.814741 8.770222 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_9bb4be80-e226-433d-bd2e-9328ab61f579" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814736 8.770204 207.643000 50.814741 8.770222 207.643000 50.814741 8.770222 183.435000 50.814736 8.770204 183.435000 50.814736 8.770204 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_e68a7282-d585-47e7-8ae8-338b23c3cc7f'-->
                <gml:MultiCurve gml:id="GEOMETRY_e68a7282-d585-47e7-8ae8-338b23c3cc7f" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_714ecc66-8248-4a52-b32c-5794132218f5" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814736 8.770204 184.545000 50.814737 8.770207 184.538000 50.814739 8.770216 184.523000 50.814741 8.770222 184.513000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_25974f55-5cf9-4c14-a4b2-80f766c80f33" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814741 8.770222 184.513000 50.814738 8.770224 184.509000 50.814733 8.770228 184.490000 50.814732 8.770229 184.489000 50.814732 8.770229 184.488000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_f6062434-43b8-42e7-8115-55cb876ac936" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814727 8.770208 184.528000 50.814729 8.770216 184.523000 50.814731 8.770226 184.495000 50.814732 8.770229 184.488000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_9322c194-f11c-4d1c-ba65-95678c86e37a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814736 8.770204 184.545000 50.814735 8.770204 184.543000 50.814733 8.770205 184.541000 50.814728 8.770208 184.528000 50.814727 8.770208 184.528000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643324'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643324">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643324</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">36.715</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643324</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_0b978053-70d8-458f-a02e-27e0abaa07ed'-->
                <gml:MultiSurface gml:id="GEOMETRY_0b978053-70d8-458f-a02e-27e0abaa07ed" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_8bbd4709-8a4d-44da-95ce-01cde82a0c30" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814725 8.769539 220.150000 50.814728 8.769591 220.150000 50.814745 8.769587 220.145000 50.814741 8.769536 220.150000 50.814725 8.769539 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_87e17b72-3f4a-4c98-9699-6ecd2d3680a1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814741 8.769536 183.435000 50.814745 8.769587 183.435000 50.814728 8.769591 183.435000 50.814725 8.769539 183.435000 50.814741 8.769536 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_6a90c718-5df9-4103-a87d-64c9f0fe6e96" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814745 8.769587 220.145000 50.814728 8.769591 220.150000 50.814728 8.769591 183.435000 50.814745 8.769587 183.435000 50.814745 8.769587 220.145000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_d8f335d5-bcc7-49b4-8676-1d042e7005f2" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814728 8.769591 220.150000 50.814725 8.769539 220.150000 50.814725 8.769539 183.435000 50.814728 8.769591 183.435000 50.814728 8.769591 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_6737792e-43b1-4bf2-b450-e4b793c1f11a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814725 8.769539 220.150000 50.814741 8.769536 220.150000 50.814741 8.769536 220.140000 50.814741 8.769536 183.435000 50.814725 8.769539 183.435000 50.814725 8.769539 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_ec9aee58-1b5e-448c-98b1-cddb08ef5744" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814745 8.769587 220.145000 50.814741 8.769536 220.140000 50.814741 8.769536 220.150000 50.814745 8.769587 220.145000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_a86b64b1-87d4-4f3e-abae-154a86f8b13f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814745 8.769587 220.145000 50.814745 8.769587 183.435000 50.814741 8.769536 183.435000 50.814741 8.769536 220.140000 50.814745 8.769587 220.145000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_06f33730-5f8a-4e9e-88f8-67b0efa4dbd7'-->
                <gml:MultiCurve gml:id="GEOMETRY_06f33730-5f8a-4e9e-88f8-67b0efa4dbd7" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_ceb8cd0a-1398-43f0-8a62-456640fa0fc8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814741 8.769536 185.476000 50.814741 8.769539 185.465000 50.814742 8.769548 185.433000 50.814742 8.769550 185.430000 50.814743 8.769563 185.398000 50.814743 8.769566 185.390000 50.814744 8.769577 185.368000 50.814745 8.769583 185.358000 50.814745 8.769587 185.347000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_eb5567e5-91f5-4431-9fb2-2ee6db8621ee" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814745 8.769587 185.347000 50.814741 8.769588 185.325000 50.814739 8.769588 185.321000 50.814732 8.769590 185.311000 50.814731 8.769590 185.310000 50.814728 8.769591 185.304000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_bcab36fa-e957-4d19-8f37-085d16cee4eb" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814725 8.769539 185.425000 50.814725 8.769548 185.401000 50.814726 8.769553 185.379000 50.814726 8.769563 185.341000 50.814727 8.769569 185.330000 50.814727 8.769577 185.332000 50.814728 8.769585 185.315000 50.814728 8.769591 185.304000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_2dfd9a03-2bb5-41e1-a659-c8fb09d6db8a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814741 8.769536 185.476000 50.814734 8.769537 185.471000 50.814732 8.769538 185.474000 50.814726 8.769539 185.434000 50.814725 8.769539 185.425000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643326'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643326">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643326</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">36.715</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643326</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_3e995928-d1c3-4890-b4d0-2ec87a23604b'-->
                <gml:MultiSurface gml:id="GEOMETRY_3e995928-d1c3-4890-b4d0-2ec87a23604b" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_35ac7c34-3b6c-4a56-835b-4d881fe8ba24" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815031 8.769527 220.150000 50.815016 8.769530 220.150000 50.815016 8.769530 183.435000 50.815031 8.769527 183.435000 50.815031 8.769527 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_7ceefbe1-d75d-4935-8770-4981adb77c8b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815012 8.769481 220.150000 50.815016 8.769530 220.150000 50.815031 8.769527 220.150000 50.815027 8.769478 220.150000 50.815012 8.769481 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_8eacbb0e-4935-45cb-976f-4ca903c75367" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815027 8.769478 220.150000 50.815031 8.769527 220.150000 50.815031 8.769527 183.435000 50.815027 8.769478 183.435000 50.815027 8.769478 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_af6d75b1-92bf-4a21-876e-2832c33783b7" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815027 8.769478 183.435000 50.815031 8.769527 183.435000 50.815016 8.769530 183.435000 50.815012 8.769481 183.435000 50.815027 8.769478 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_2ee9e4e5-1531-4f77-8b76-3fbf369829de" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815012 8.769481 220.150000 50.815027 8.769478 220.150000 50.815027 8.769478 183.435000 50.815012 8.769481 183.435000 50.815012 8.769481 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_45fe2409-56af-4abc-953e-0c5061a5ac58" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815016 8.769530 220.150000 50.815012 8.769481 220.150000 50.815012 8.769481 183.435000 50.815016 8.769530 183.435000 50.815016 8.769530 220.150000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_f19aa82f-af1d-4d61-bfa4-c89f909b027d'-->
                <gml:MultiCurve gml:id="GEOMETRY_f19aa82f-af1d-4d61-bfa4-c89f909b027d" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_8adf5f1b-70d7-4b4e-a870-1e4a63e48eb8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815027 8.769478 185.300000 50.815028 8.769489 185.286000 50.815028 8.769490 185.286000 50.815028 8.769495 185.278000 50.815029 8.769504 185.263000 50.815029 8.769506 185.262000 50.815031 8.769519 185.246000 50.815031 8.769522 185.244000 50.815031 8.769527 185.239000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_36fc5d14-5ff4-4363-9795-456278a82c68" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815031 8.769527 185.239000 50.815029 8.769527 185.245000 50.815025 8.769528 185.255000 50.815020 8.769529 185.275000 50.815018 8.769530 185.282000 50.815016 8.769530 185.287000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_6e7c8034-dadc-493c-b62a-633938ec3370" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815012 8.769481 185.346000 50.815013 8.769490 185.346000 50.815013 8.769495 185.335000 50.815014 8.769504 185.318000 50.815015 8.769511 185.310000 50.815015 8.769519 185.300000 50.815016 8.769527 185.291000 50.815016 8.769530 185.287000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_891a2a8c-b36a-4a50-9f56-292171b7e5f4" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815027 8.769478 185.300000 50.815021 8.769479 185.315000 50.815019 8.769480 185.324000 50.815013 8.769481 185.343000 50.815012 8.769481 185.346000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643290'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643290">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643290</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">24.208</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643290</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_16a5408d-9d99-417e-8bc2-a0267ccc0456'-->
                <gml:MultiSurface gml:id="GEOMETRY_16a5408d-9d99-417e-8bc2-a0267ccc0456" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_24755a3e-8f38-4191-b175-99a7f0204050" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814839 8.770266 207.643000 50.814840 8.770281 207.643000 50.814840 8.770281 183.435000 50.814839 8.770266 183.435000 50.814839 8.770266 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_d29c833e-3fae-426e-b4a8-61d44a77d812" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814840 8.770281 207.643000 50.814829 8.770283 207.643000 50.814829 8.770283 183.435000 50.814840 8.770281 183.435000 50.814840 8.770281 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_ff3de0a2-0467-4323-81c4-8bf980ab2874" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814828 8.770268 207.643000 50.814829 8.770283 207.643000 50.814840 8.770281 207.643000 50.814839 8.770266 207.643000 50.814828 8.770268 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_eecbb77a-5bed-403e-b075-28ddefa2f2a4" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814829 8.770283 207.643000 50.814828 8.770268 207.643000 50.814828 8.770268 183.435000 50.814829 8.770283 183.435000 50.814829 8.770283 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_d8f90af6-404b-472c-9556-591a9570723d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814839 8.770266 183.435000 50.814840 8.770281 183.435000 50.814829 8.770283 183.435000 50.814828 8.770268 183.435000 50.814839 8.770266 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_1dfdac3f-7bc9-407a-8a3d-34e747e76026" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814828 8.770268 207.643000 50.814839 8.770266 207.643000 50.814839 8.770266 183.435000 50.814828 8.770268 183.435000 50.814828 8.770268 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_99b51022-01ac-460a-b9fc-e3ee67b900f8'-->
                <gml:MultiCurve gml:id="GEOMETRY_99b51022-01ac-460a-b9fc-e3ee67b900f8" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_d0e5589d-8b01-43f1-904c-8eec55c8c374" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814839 8.770266 184.253000 50.814839 8.770269 184.245000 50.814839 8.770272 184.237000 50.814840 8.770281 184.195000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_ee4a36d8-f258-410d-a071-98fa35a677e1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814840 8.770281 184.195000 50.814838 8.770282 184.200000 50.814832 8.770283 184.234000 50.814830 8.770283 184.232000 50.814829 8.770283 184.229000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_4bf49329-65dd-4be2-b978-668a3ed5479f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814828 8.770268 184.279000 50.814828 8.770272 184.266000 50.814828 8.770280 184.241000 50.814829 8.770283 184.229000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_1b4cf8d5-b303-4c60-a9e2-994c9cc725fc" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814839 8.770266 184.253000 50.814838 8.770267 184.254000 50.814832 8.770268 184.277000 50.814830 8.770268 184.281000 50.814828 8.770268 184.279000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643319'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643319">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643319</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">24.208</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643319</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_1ed8c976-abe9-4a01-a4b3-932c022cb14c'-->
                <gml:MultiSurface gml:id="GEOMETRY_1ed8c976-abe9-4a01-a4b3-932c022cb14c" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_a37e3686-4858-4cd1-8865-f94f22b3fe67" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814727 8.770141 207.643000 50.814736 8.770144 207.643000 50.814736 8.770144 183.435000 50.814727 8.770141 183.435000 50.814727 8.770141 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_5facffc6-d02f-45db-a842-028953876a6d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814733 8.770163 207.643000 50.814736 8.770144 207.643000 50.814727 8.770141 207.643000 50.814724 8.770160 207.643000 50.814733 8.770163 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_9270caeb-694c-47a4-92d8-8aa1a458976f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814733 8.770163 207.643000 50.814724 8.770160 207.643000 50.814724 8.770160 183.435000 50.814733 8.770163 183.435000 50.814733 8.770163 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_6b87b295-981d-4549-8f9e-28de62b01aa5" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814724 8.770160 207.643000 50.814727 8.770141 207.643000 50.814727 8.770141 183.435000 50.814724 8.770160 183.435000 50.814724 8.770160 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_2f7b9d23-ff15-4aa1-8bf4-9f1127dd1eca" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814724 8.770160 183.435000 50.814727 8.770141 183.435000 50.814736 8.770144 183.435000 50.814733 8.770163 183.435000 50.814724 8.770160 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_b2d4558b-51a6-498e-a932-f3a8f534d1f1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814736 8.770144 207.643000 50.814733 8.770163 207.643000 50.814733 8.770163 183.435000 50.814736 8.770144 183.435000 50.814736 8.770144 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_a8e920bf-db66-404e-985e-0b75e7401516'-->
                <gml:MultiCurve gml:id="GEOMETRY_a8e920bf-db66-404e-985e-0b75e7401516" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_bdccea6c-114e-4ac4-9e14-898ef6debbb3" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814727 8.770141 184.572000 50.814726 8.770145 184.570000 50.814726 8.770147 184.564000 50.814724 8.770158 184.548000 50.814724 8.770159 184.548000 50.814724 8.770160 184.546000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_bbfa4bd6-c62d-4627-864d-c276cd83f314" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814727 8.770141 184.572000 50.814732 8.770142 184.598000 50.814733 8.770143 184.604000 50.814736 8.770144 184.608000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_1378611b-fede-4086-9f87-1ea3272a444f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814736 8.770144 184.608000 50.814736 8.770145 184.608000 50.814735 8.770149 184.602000 50.814734 8.770159 184.586000 50.814734 8.770160 184.584000 50.814733 8.770163 184.574000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_3aa80837-42c8-465b-838a-3d241908734c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814724 8.770160 184.546000 50.814724 8.770160 184.546000 50.814725 8.770160 184.548000 50.814733 8.770163 184.574000 50.814733 8.770163 184.574000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643304'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643304">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643304</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">24.208</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643304</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_64270b7d-2649-4a13-8ea5-ec22e5b17e90'-->
                <gml:MultiSurface gml:id="GEOMETRY_64270b7d-2649-4a13-8ea5-ec22e5b17e90" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_63ba8db4-64f4-417d-b9a3-716cf1f2c4e5" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815093 8.770036 207.643000 50.815092 8.770040 207.643000 50.815092 8.770040 183.435000 50.815093 8.770036 183.435000 50.815093 8.770036 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_f9c5fdfd-e308-4b30-9c58-b1dcd10930c2" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815077 8.770043 207.643000 50.815088 8.770053 207.643000 50.815092 8.770040 207.643000 50.815093 8.770036 207.643000 50.815081 8.770028 207.643000 50.815077 8.770043 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_8aa91cc0-98db-4d41-b848-78594e69d0c8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815092 8.770040 207.643000 50.815088 8.770053 207.643000 50.815088 8.770053 183.435000 50.815092 8.770040 183.435000 50.815092 8.770040 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_0205ae3e-01d8-47c7-ac77-09274a1a52c6" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815081 8.770028 207.643000 50.815093 8.770036 207.643000 50.815093 8.770036 183.435000 50.815081 8.770028 183.435000 50.815081 8.770028 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_9acb0da9-1422-4e16-937d-c7020124a89f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815077 8.770043 207.643000 50.815081 8.770028 207.643000 50.815081 8.770028 183.435000 50.815077 8.770043 183.435000 50.815077 8.770043 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_fa90af91-8f49-488a-906f-80ec8e82b9f7" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815081 8.770028 183.435000 50.815093 8.770036 183.435000 50.815092 8.770040 183.435000 50.815088 8.770053 183.435000 50.815077 8.770043 183.435000 50.815081 8.770028 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_7bc0dfc8-632f-4ba4-b846-2341ddfb8ea3" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815088 8.770053 207.643000 50.815077 8.770043 207.643000 50.815077 8.770043 183.435000 50.815088 8.770053 183.435000 50.815088 8.770053 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_5937e099-d62c-4234-aa09-c40923797cb5'-->
                <gml:MultiCurve gml:id="GEOMETRY_5937e099-d62c-4234-aa09-c40923797cb5" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_7d5be19d-e866-45db-ba94-2ccdfeeacbcf" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815081 8.770028 184.263000 50.815083 8.770029 184.255000 50.815083 8.770030 184.252000 50.815084 8.770030 184.249000 50.815092 8.770036 184.188000 50.815093 8.770036 184.183000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_ec2896cf-d981-4c6b-9c9c-3281b70c3c52" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815093 8.770036 184.183000 50.815092 8.770038 184.187000 50.815092 8.770040 184.191000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_2c2b82bb-ed1e-49b4-bc3a-85c293f49b01" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815092 8.770040 184.191000 50.815091 8.770042 184.193000 50.815091 8.770043 184.190000 50.815089 8.770051 184.177000 50.815088 8.770053 184.175000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_3a6dbc49-4f5e-4d6f-97f5-fedc685cb995" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815077 8.770043 184.244000 50.815077 8.770044 184.243000 50.815084 8.770049 184.206000 50.815088 8.770053 184.175000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_09943986-3dd6-42be-9b8e-76060d23a778" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815081 8.770028 184.263000 50.815081 8.770029 184.261000 50.815079 8.770037 184.251000 50.815077 8.770043 184.244000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643299'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643299">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643299</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">32.776</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643299</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_758239be-bd73-4f93-a7b4-2c8445d3657b'-->
                <gml:MultiSurface gml:id="GEOMETRY_758239be-bd73-4f93-a7b4-2c8445d3657b" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_99f19737-0bdd-4bb2-90c8-3b42a8d98039" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814931 8.770251 216.211000 50.814868 8.770262 207.643000 50.814869 8.770276 207.643000 50.814871 8.770308 207.643000 50.814874 8.770361 207.643000 50.814938 8.770353 216.211000 50.814931 8.770251 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_631eb1ca-7c38-470a-9024-8fd8693585e3" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814938 8.770353 216.211000 50.814991 8.770347 207.643000 50.814985 8.770242 207.643000 50.814931 8.770251 216.211000 50.814938 8.770353 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_b94899b7-2265-4fcd-b5f7-7a5345c5b208" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814869 8.770276 183.435000 50.814868 8.770262 183.435000 50.814931 8.770251 183.435000 50.814985 8.770242 183.435000 50.814991 8.770347 183.435000 50.814938 8.770353 183.435000 50.814874 8.770361 183.435000 50.814871 8.770308 183.435000 50.814869 8.770276 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_87b17f49-3926-4421-873f-98eed76112c6" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814871 8.770308 207.643000 50.814869 8.770276 207.643000 50.814869 8.770276 183.435000 50.814871 8.770308 183.435000 50.814871 8.770308 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_deb48c26-88f4-4b0f-a850-2b8579077a99" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814938 8.770353 207.643000 50.814991 8.770347 207.643000 50.814938 8.770353 216.211000 50.814938 8.770353 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_8893a603-62b4-4df3-8849-b7b2923d464d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814938 8.770353 183.435000 50.814991 8.770347 183.435000 50.814991 8.770347 197.552000 50.814991 8.770347 207.643000 50.814938 8.770353 207.643000 50.814938 8.770353 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_dac7d13a-44ed-4207-bdf3-2b23fea8ba66" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814931 8.770251 216.211000 50.814985 8.770242 207.643000 50.814985 8.770242 197.552000 50.814985 8.770242 183.435000 50.814931 8.770251 183.435000 50.814931 8.770251 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_68f19d35-5e6e-42ef-9537-2416ee73f25d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814869 8.770276 207.643000 50.814868 8.770262 207.643000 50.814868 8.770262 183.435000 50.814869 8.770276 183.435000 50.814869 8.770276 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_8e76c199-e8df-46a9-b8f8-cbf5dcca23df" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814991 8.770347 197.552000 50.814985 8.770242 197.552000 50.814985 8.770242 207.643000 50.814991 8.770347 207.643000 50.814991 8.770347 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_cf3e0a55-9a26-4a5d-8e46-d6b384be290c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814991 8.770347 183.435000 50.814985 8.770242 183.435000 50.814985 8.770242 197.552000 50.814991 8.770347 197.552000 50.814991 8.770347 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_52cdb16e-87ca-4697-a75d-74ced6cef278" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814874 8.770361 207.643000 50.814938 8.770353 207.643000 50.814938 8.770353 216.211000 50.814874 8.770361 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_2d9d9fcd-b002-4982-a9cd-8d1accc7d4ae" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814874 8.770361 207.643000 50.814874 8.770361 183.435000 50.814938 8.770353 183.435000 50.814938 8.770353 207.643000 50.814874 8.770361 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_a57bb356-9a14-4eff-836e-abec2044d2bd" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814874 8.770361 207.643000 50.814871 8.770308 207.643000 50.814871 8.770308 183.435000 50.814874 8.770361 183.435000 50.814874 8.770361 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_3257fa75-7344-47fb-b164-0d52a1aaebd8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814868 8.770262 207.643000 50.814931 8.770251 216.211000 50.814931 8.770251 183.435000 50.814868 8.770262 183.435000 50.814868 8.770262 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_c0dd822b-b9b1-443b-9a87-d97d1521945b'-->
                <gml:MultiCurve gml:id="GEOMETRY_c0dd822b-b9b1-443b-9a87-d97d1521945b" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_541c3f83-7b2e-4acf-8fb7-ca2d770b9535" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814868 8.770262 184.235000 50.814869 8.770272 184.212000 50.814869 8.770273 184.210000 50.814869 8.770276 184.205000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_56ed88ac-d18f-4576-b350-851f1df7bb9d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814931 8.770251 184.189000 50.814928 8.770252 184.195000 50.814922 8.770253 184.205000 50.814919 8.770253 184.208000 50.814913 8.770254 184.218000 50.814911 8.770254 184.220000 50.814904 8.770256 184.226000 50.814903 8.770256 184.227000 50.814895 8.770257 184.231000 50.814895 8.770257 184.231000 50.814894 8.770257 184.232000 50.814887 8.770259 184.233000 50.814886 8.770259 184.233000 50.814879 8.770260 184.231000 50.814877 8.770260 184.230000 50.814870 8.770261 184.235000 50.814868 8.770262 184.235000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_9215d6ac-6f82-4b1b-be98-f20d3fe25283" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814985 8.770242 184.039000 50.814985 8.770242 184.040000 50.814985 8.770242 184.041000 50.814982 8.770243 184.049000 50.814977 8.770244 184.066000 50.814976 8.770244 184.068000 50.814968 8.770245 184.090000 50.814967 8.770245 184.094000 50.814960 8.770246 184.112000 50.814958 8.770247 184.118000 50.814952 8.770248 184.132000 50.814949 8.770248 184.140000 50.814944 8.770249 184.156000 50.814940 8.770250 184.167000 50.814936 8.770250 184.177000 50.814931 8.770251 184.189000 50.814931 8.770251 184.189000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_15025e1a-77d1-42a4-9212-d9d29ee560d1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814985 8.770242 184.039000 50.814985 8.770243 184.038000 50.814985 8.770243 184.036000 50.814986 8.770257 184.006000 50.814986 8.770259 184.002000 50.814987 8.770271 183.974000 50.814987 8.770274 183.967000 50.814988 8.770285 183.943000 50.814988 8.770290 183.934000 50.814988 8.770299 183.913000 50.814989 8.770305 183.902000 50.814989 8.770314 183.885000 50.814989 8.770320 183.872000 50.814990 8.770328 183.857000 50.814990 8.770336 183.843000 50.814990 8.770342 183.831000 50.814991 8.770347 183.823000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_45ffbc0c-cc87-4f75-8826-16af063a43d7" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814991 8.770347 183.823000 50.814988 8.770347 183.832000 50.814985 8.770347 183.843000 50.814980 8.770348 183.861000 50.814976 8.770348 183.874000 50.814971 8.770349 183.891000 50.814967 8.770349 183.906000 50.814963 8.770350 183.920000 50.814958 8.770350 183.937000 50.814955 8.770351 183.948000 50.814949 8.770352 183.966000 50.814946 8.770352 183.974000 50.814940 8.770353 183.992000 50.814938 8.770353 183.997000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_9daf842b-9074-4951-8ed7-cb9d5f4bbf96" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814938 8.770353 183.997000 50.814938 8.770353 183.998000 50.814931 8.770354 184.015000 50.814930 8.770354 184.018000 50.814922 8.770355 184.033000 50.814921 8.770355 184.035000 50.814913 8.770356 184.048000 50.814913 8.770356 184.049000 50.814906 8.770357 184.056000 50.814904 8.770357 184.059000 50.814904 8.770357 184.059000 50.814896 8.770358 184.066000 50.814895 8.770358 184.066000 50.814888 8.770359 184.073000 50.814886 8.770359 184.073000 50.814879 8.770360 184.081000 50.814877 8.770360 184.083000 50.814874 8.770361 184.091000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_ca5b6808-f18c-4ace-b08f-5517da3cfd93" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814871 8.770308 184.169000 50.814872 8.770314 184.161000 50.814872 8.770320 184.156000 50.814872 8.770328 184.155000 50.814873 8.770336 184.144000 50.814873 8.770343 184.139000 50.814874 8.770351 184.114000 50.814874 8.770357 184.103000 50.814874 8.770361 184.091000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_837586d1-9c05-4097-b610-ce89f6bd2360" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814869 8.770276 184.205000 50.814870 8.770286 184.189000 50.814870 8.770289 184.186000 50.814871 8.770300 184.178000 50.814871 8.770304 184.174000 50.814871 8.770308 184.169000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643323'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643323">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643323</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">24.208</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643323</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_cc507e60-8b9f-4a19-ae00-a4b9e9ea2db1'-->
                <gml:MultiSurface gml:id="GEOMETRY_cc507e60-8b9f-4a19-ae00-a4b9e9ea2db1" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_c37f78aa-68ff-418f-85e5-5858a2969351" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814808 8.770272 207.643000 50.814809 8.770285 207.643000 50.814809 8.770285 183.435000 50.814808 8.770272 183.435000 50.814808 8.770272 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_ea9396da-6d0f-41d1-bd16-d748962be6df" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814794 8.770288 207.643000 50.814793 8.770271 207.643000 50.814793 8.770271 183.435000 50.814794 8.770288 183.435000 50.814794 8.770288 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_a74b4061-fffc-448f-90e7-cb262941fb6d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814807 8.770269 207.643000 50.814808 8.770272 207.643000 50.814808 8.770272 183.435000 50.814807 8.770269 183.435000 50.814807 8.770269 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_11dd641c-577a-4c2a-a2c0-adc437ef9773" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814809 8.770285 207.643000 50.814794 8.770288 207.643000 50.814794 8.770288 183.435000 50.814809 8.770285 183.435000 50.814809 8.770285 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_c0b0d00d-362d-4aed-9f95-337a16884b0b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814807 8.770269 183.435000 50.814808 8.770272 183.435000 50.814809 8.770285 183.435000 50.814794 8.770288 183.435000 50.814793 8.770271 183.435000 50.814807 8.770269 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_db325380-bca8-4f85-94f2-a33b1871a497" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814793 8.770271 207.643000 50.814794 8.770288 207.643000 50.814809 8.770285 207.643000 50.814808 8.770272 207.643000 50.814807 8.770269 207.643000 50.814793 8.770271 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_9428d87d-f420-4703-bb53-0950cd1e64fa" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814793 8.770271 207.643000 50.814807 8.770269 207.643000 50.814807 8.770269 183.435000 50.814793 8.770271 183.435000 50.814793 8.770271 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_b75003ca-6e93-4f9d-814c-3c1d99aae1a5'-->
                <gml:MultiCurve gml:id="GEOMETRY_b75003ca-6e93-4f9d-814c-3c1d99aae1a5" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_7c5e1336-46bb-4cf5-8bb2-7b6ff684e0dc" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814807 8.770269 184.325000 50.814808 8.770272 184.320000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_9a26a6f9-8a19-42f9-870f-06283f694cc3" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814808 8.770272 184.320000 50.814808 8.770272 184.319000 50.814808 8.770276 184.308000 50.814809 8.770285 184.269000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_61804eeb-3cd7-4710-b953-b36bb31c4367" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814809 8.770285 184.269000 50.814805 8.770286 184.272000 50.814805 8.770286 184.273000 50.814804 8.770286 184.276000 50.814797 8.770287 184.295000 50.814796 8.770287 184.298000 50.814794 8.770288 184.302000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_cd13cf48-ceb5-41b0-92e4-4022ac9be22d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814793 8.770271 184.373000 50.814793 8.770272 184.371000 50.814794 8.770283 184.321000 50.814794 8.770286 184.306000 50.814794 8.770288 184.302000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_03998db6-c916-4ab6-afb4-69b35648e141" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814807 8.770269 184.325000 50.814805 8.770269 184.334000 50.814803 8.770269 184.339000 50.814796 8.770270 184.364000 50.814795 8.770270 184.367000 50.814793 8.770271 184.373000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643309'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643309">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643309</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">32.776</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643309</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_4d499e73-ebbb-4ffc-821c-0ab916bfee4c'-->
                <gml:MultiSurface gml:id="GEOMETRY_4d499e73-ebbb-4ffc-821c-0ab916bfee4c" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_5ea90bc5-9421-4ce0-a34c-8131e1d64e1f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814938 8.770353 216.211000 50.814967 8.770444 207.643000 50.814986 8.770416 207.643000 50.814938 8.770353 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_968c0377-a88c-485c-9780-5244477328b2" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814895 8.770432 183.435000 50.814887 8.770417 183.435000 50.814876 8.770380 183.435000 50.814873 8.770361 183.435000 50.814874 8.770361 183.435000 50.814938 8.770353 183.435000 50.814991 8.770347 183.435000 50.814993 8.770383 183.435000 50.814992 8.770399 183.435000 50.814986 8.770416 183.435000 50.814967 8.770444 183.435000 50.814955 8.770452 183.435000 50.814930 8.770456 183.435000 50.814918 8.770452 183.435000 50.814895 8.770432 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_bf06ad90-698c-46f8-89cf-a6c5087857c6" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814938 8.770353 216.211000 50.814930 8.770456 207.643000 50.814955 8.770452 207.643000 50.814938 8.770353 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_6b390910-2474-453d-8b21-c9d4ecfeaf35" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814938 8.770353 216.211000 50.814993 8.770383 207.643000 50.814991 8.770347 207.643000 50.814938 8.770353 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_b81657bd-92be-4e9c-a876-da5ad982b8c1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814938 8.770353 216.211000 50.814876 8.770380 207.643000 50.814887 8.770417 207.643000 50.814938 8.770353 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_92e4368f-9599-41fb-86a7-c0d3ad9f59fc" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814938 8.770353 216.211000 50.814986 8.770416 207.643000 50.814992 8.770399 207.643000 50.814938 8.770353 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_b340d737-a75f-4ff8-9c36-b676c732a40e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814938 8.770353 216.211000 50.814955 8.770452 207.643000 50.814967 8.770444 207.643000 50.814938 8.770353 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_9fde57c9-3afe-434b-8df2-1d3ad615bc7b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814938 8.770353 216.211000 50.814887 8.770417 207.643000 50.814895 8.770432 207.643000 50.814938 8.770353 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_fca35de0-6fb4-43ec-a8d0-48ea5bb3448e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814887 8.770417 207.643000 50.814876 8.770380 207.643000 50.814876 8.770380 183.435000 50.814887 8.770417 183.435000 50.814887 8.770417 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_cfc447c9-c0fb-482b-b46b-0065a6bc06e4" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814938 8.770353 216.211000 50.814918 8.770452 207.643000 50.814930 8.770456 207.643000 50.814938 8.770353 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_d06c04be-ee7b-40b0-b9e3-8e8ea75138aa" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814993 8.770383 207.643000 50.814992 8.770399 207.643000 50.814992 8.770399 183.435000 50.814993 8.770383 183.435000 50.814993 8.770383 197.552000 50.814993 8.770383 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_06539a25-aa29-45ed-9079-7e1f0b8633f1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814986 8.770416 207.643000 50.814967 8.770444 207.643000 50.814967 8.770444 183.435000 50.814986 8.770416 183.435000 50.814986 8.770416 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_038bbd1b-be6f-4069-a806-a385d685fdd5" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814918 8.770452 207.643000 50.814895 8.770432 207.643000 50.814895 8.770432 183.435000 50.814918 8.770452 183.435000 50.814918 8.770452 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_8c938c24-9554-4dc8-8676-3b0f8e5c7808" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814938 8.770353 216.211000 50.814895 8.770432 207.643000 50.814918 8.770452 207.643000 50.814938 8.770353 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_7cfcb357-a51c-4a66-8684-d079827f0268" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814938 8.770353 216.211000 50.814992 8.770399 207.643000 50.814993 8.770383 207.643000 50.814938 8.770353 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_8f1c5fe8-5bac-45cc-83a9-91964f4e0bc0" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814938 8.770353 216.211000 50.814873 8.770361 207.643000 50.814876 8.770380 207.643000 50.814938 8.770353 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_74c44b12-8cdf-4104-b593-5ad79661d70b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814955 8.770452 207.643000 50.814930 8.770456 207.643000 50.814930 8.770456 183.435000 50.814955 8.770452 183.435000 50.814955 8.770452 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_f7efbba2-9470-4146-81b5-d689f27f2103" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814967 8.770444 207.643000 50.814955 8.770452 207.643000 50.814955 8.770452 183.435000 50.814967 8.770444 183.435000 50.814967 8.770444 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_448ef49e-9973-46f1-9b89-9f360bf6a56c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814876 8.770380 207.643000 50.814873 8.770361 207.643000 50.814873 8.770361 183.435000 50.814876 8.770380 183.435000 50.814876 8.770380 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_57ecfba1-8ca3-425e-8707-9b5be71560b9" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814938 8.770353 216.211000 50.814874 8.770361 207.643000 50.814873 8.770361 207.643000 50.814938 8.770353 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_1deeef41-0206-447d-85f4-87de8e59610e" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814938 8.770353 216.211000 50.814991 8.770347 207.643000 50.814938 8.770353 207.643000 50.814938 8.770353 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_98c59526-755f-4f7f-b274-4427369b92f8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814938 8.770353 216.211000 50.814938 8.770353 207.643000 50.814874 8.770361 207.643000 50.814938 8.770353 216.211000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_bb2907db-9afb-486e-b0dd-3c49247f55de" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814993 8.770383 197.552000 50.814991 8.770347 197.552000 50.814991 8.770347 207.643000 50.814993 8.770383 207.643000 50.814993 8.770383 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_9fcee07f-81d2-41fc-a956-cdd76e87ad5b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814991 8.770347 183.435000 50.814991 8.770347 197.552000 50.814993 8.770383 197.552000 50.814993 8.770383 183.435000 50.814991 8.770347 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_27d9b642-a103-428c-97b5-db3da5b0ad58" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814930 8.770456 207.643000 50.814918 8.770452 207.643000 50.814918 8.770452 183.435000 50.814930 8.770456 183.435000 50.814930 8.770456 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_b4c05ad6-11c1-43e3-93cc-0ed80cbbbd50" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814992 8.770399 207.643000 50.814986 8.770416 207.643000 50.814986 8.770416 183.435000 50.814992 8.770399 183.435000 50.814992 8.770399 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_8d0cdfb9-fc37-4c2d-ac38-570f74da0b16" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814873 8.770361 207.643000 50.814874 8.770361 207.643000 50.814874 8.770361 183.435000 50.814873 8.770361 183.435000 50.814873 8.770361 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_028bc349-2936-46a9-bc3b-a7f33089f2fa" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814991 8.770347 183.435000 50.814938 8.770353 183.435000 50.814938 8.770353 207.643000 50.814991 8.770347 207.643000 50.814991 8.770347 197.552000 50.814991 8.770347 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_996d4a13-994f-4540-8896-7d6cff8b3c3a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814938 8.770353 183.435000 50.814874 8.770361 183.435000 50.814874 8.770361 207.643000 50.814938 8.770353 207.643000 50.814938 8.770353 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_f101b639-2924-45ec-9f00-3ca08f435022" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.814895 8.770432 207.643000 50.814887 8.770417 207.643000 50.814887 8.770417 183.435000 50.814895 8.770432 183.435000 50.814895 8.770432 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_3810630d-08df-4506-b3b2-2e314e3333d0'-->
                <gml:MultiCurve gml:id="GEOMETRY_3810630d-08df-4506-b3b2-2e314e3333d0" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_44f2a767-9cb6-4ff7-9112-e716025372d4" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814887 8.770417 184.002000 50.814893 8.770428 184.005000 50.814895 8.770432 184.010000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_8d5dd8c9-e4de-412c-813f-09e54cc7eea1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814876 8.770380 184.029000 50.814877 8.770383 184.021000 50.814878 8.770385 184.016000 50.814878 8.770387 184.015000 50.814882 8.770399 184.007000 50.814886 8.770412 184.004000 50.814886 8.770414 184.002000 50.814886 8.770415 184.002000 50.814887 8.770417 184.002000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_3307496f-2748-4c5c-b387-7d456d5711bc" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814873 8.770361 184.094000 50.814874 8.770366 184.075000 50.814875 8.770371 184.052000 50.814876 8.770380 184.029000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_87dc1a57-560f-43c4-8407-87f7edbde4c7" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814991 8.770347 183.823000 50.814988 8.770347 183.832000 50.814985 8.770347 183.843000 50.814980 8.770348 183.861000 50.814976 8.770348 183.874000 50.814971 8.770349 183.891000 50.814967 8.770349 183.906000 50.814963 8.770350 183.920000 50.814958 8.770350 183.937000 50.814955 8.770351 183.948000 50.814949 8.770352 183.966000 50.814946 8.770352 183.974000 50.814940 8.770353 183.992000 50.814938 8.770353 183.998000 50.814931 8.770354 184.015000 50.814930 8.770354 184.018000 50.814922 8.770355 184.033000 50.814921 8.770355 184.035000 50.814913 8.770356 184.048000 50.814913 8.770356 184.049000 50.814906 8.770357 184.056000 50.814904 8.770357 184.059000 50.814904 8.770357 184.059000 50.814896 8.770358 184.066000 50.814895 8.770358 184.066000 50.814888 8.770359 184.073000 50.814886 8.770359 184.073000 50.814879 8.770360 184.081000 50.814877 8.770360 184.083000 50.814873 8.770361 184.094000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_99351f92-c62c-4a09-985b-6ad36cccf962" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814991 8.770347 183.823000 50.814991 8.770351 183.814000 50.814991 8.770356 183.805000 50.814992 8.770366 183.786000 50.814992 8.770370 183.779000 50.814992 8.770382 183.757000 50.814993 8.770383 183.756000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_44cd3ddd-d71b-4b4a-8e40-4691cfc3f673" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814993 8.770383 183.756000 50.814992 8.770385 183.753000 50.814992 8.770395 183.738000 50.814992 8.770399 183.734000 50.814992 8.770399 183.733000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_868bb46c-649d-4e49-9210-b69bd548a185" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814992 8.770399 183.733000 50.814990 8.770406 183.735000 50.814987 8.770413 183.734000 50.814986 8.770415 183.734000 50.814986 8.770416 183.734000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_9bf51ca0-db17-4a7f-9bdc-7fba3746440a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814986 8.770416 183.734000 50.814985 8.770417 183.735000 50.814982 8.770422 183.744000 50.814978 8.770427 183.753000 50.814977 8.770429 183.757000 50.814976 8.770430 183.760000 50.814973 8.770435 183.775000 50.814968 8.770442 183.780000 50.814968 8.770442 183.781000 50.814967 8.770443 183.782000 50.814967 8.770444 183.783000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_81405839-c5b5-4e7b-bdcf-60b116c2d92f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814967 8.770444 183.783000 50.814962 8.770447 183.803000 50.814958 8.770449 183.810000 50.814956 8.770451 183.823000 50.814955 8.770452 183.824000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_65729e83-9354-48cc-b2ee-2b5a2abfc88b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814955 8.770452 183.824000 50.814949 8.770453 183.861000 50.814948 8.770453 183.871000 50.814940 8.770454 183.974000 50.814940 8.770454 183.978000 50.814932 8.770456 184.016000 50.814931 8.770456 184.017000 50.814930 8.770456 184.014000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_15025ba9-988c-44f4-ac3b-7e22b3c8005c" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814918 8.770452 184.006000 50.814921 8.770453 184.004000 50.814922 8.770454 184.002000 50.814929 8.770456 184.013000 50.814930 8.770456 184.014000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_d2a8c19b-3704-48a0-a6f0-9a6d8c03bd20" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.814895 8.770432 184.010000 50.814902 8.770438 184.003000 50.814904 8.770440 184.002000 50.814906 8.770442 184.001000 50.814913 8.770449 184.006000 50.814918 8.770452 184.006000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643310'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643310">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643310</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">24.208</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643310</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_739904cc-c1b1-4da1-9fbd-15a06594b275'-->
                <gml:MultiSurface gml:id="GEOMETRY_739904cc-c1b1-4da1-9fbd-15a06594b275" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_ca56430c-45d2-4e93-a656-b98f29e0585a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815098 8.770200 207.643000 50.815107 8.770216 207.643000 50.815107 8.770216 183.435000 50.815098 8.770200 183.435000 50.815098 8.770200 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_98ad2edf-4f8b-4318-81b6-01c4fa764f97" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815088 8.770213 207.643000 50.815097 8.770229 207.643000 50.815107 8.770216 207.643000 50.815098 8.770200 207.643000 50.815088 8.770213 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_21341d8d-2809-472e-a7b0-5eba427b4a5f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815097 8.770229 207.643000 50.815088 8.770213 207.643000 50.815088 8.770213 183.435000 50.815097 8.770229 183.435000 50.815097 8.770229 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_547834ed-b807-4682-b966-7fb9cbe98880" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815107 8.770216 207.643000 50.815097 8.770229 207.643000 50.815097 8.770229 183.435000 50.815107 8.770216 183.435000 50.815107 8.770216 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_fe317870-2653-4689-b2c0-1039104fdeb0" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815098 8.770200 183.435000 50.815107 8.770216 183.435000 50.815097 8.770229 183.435000 50.815088 8.770213 183.435000 50.815098 8.770200 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_1d59d867-2a55-4022-b3c0-1b8dc64cf8ad" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815088 8.770213 207.643000 50.815098 8.770200 207.643000 50.815098 8.770200 183.435000 50.815088 8.770213 183.435000 50.815088 8.770213 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_319cfb42-2141-4eb8-80d2-d76c295e6fd5'-->
                <gml:MultiCurve gml:id="GEOMETRY_319cfb42-2141-4eb8-80d2-d76c295e6fd5" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_1f3dc9a1-a1fc-45a5-aa7c-3fab57d93faa" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815098 8.770200 183.692000 50.815102 8.770208 183.632000 50.815105 8.770214 183.584000 50.815107 8.770216 183.569000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_711bfdfe-bf3f-4b27-88e8-43660161383a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815107 8.770216 183.569000 50.815105 8.770219 183.572000 50.815102 8.770223 183.626000 50.815100 8.770225 183.645000 50.815098 8.770228 183.643000 50.815097 8.770229 183.635000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_3f6d4ad2-0cf3-453d-8962-5ddc66ac76d1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815088 8.770213 183.692000 50.815089 8.770214 183.688000 50.815093 8.770221 183.658000 50.815097 8.770228 183.645000 50.815097 8.770229 183.635000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_acb8f1d4-9d6c-4917-879f-1c7e2bafaa08" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815098 8.770200 183.692000 50.815095 8.770204 183.686000 50.815093 8.770207 183.693000 50.815091 8.770210 183.693000 50.815088 8.770213 183.692000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643293'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643293">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643293</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">14.117</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643293</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_4cc3eefd-8232-4fbc-b11a-a9de5a4cd47d'-->
                <gml:MultiSurface gml:id="GEOMETRY_4cc3eefd-8232-4fbc-b11a-a9de5a4cd47d" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_72e7c257-c32c-4418-a23c-af4ead1b0211" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815076 8.770393 197.552000 50.815086 8.770392 197.552000 50.815085 8.770378 197.554000 50.815076 8.770379 197.551000 50.815076 8.770393 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_13db0e2b-91b9-4ed9-a926-a89f2e061f9a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815085 8.770378 197.554000 50.815086 8.770392 197.552000 50.815086 8.770392 183.435000 50.815085 8.770378 183.435000 50.815085 8.770378 197.554000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_96a531f5-9d78-4925-8b83-1ec8b0866a03" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815076 8.770379 183.435000 50.815085 8.770378 183.435000 50.815086 8.770392 183.435000 50.815076 8.770393 183.435000 50.815076 8.770379 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_0b08bc1e-d0be-47fd-bcd2-9fc9f421e29d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815086 8.770392 197.552000 50.815076 8.770393 197.552000 50.815076 8.770393 196.138000 50.815076 8.770393 183.435000 50.815086 8.770392 183.435000 50.815086 8.770392 197.552000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_ecdd241d-a271-447a-8119-7509c2b6df75" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815076 8.770379 197.551000 50.815085 8.770378 197.554000 50.815085 8.770378 183.435000 50.815076 8.770379 183.435000 50.815076 8.770379 197.551000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_ef80f6c8-ba60-4bfe-b515-debc6ead9ce3" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815076 8.770379 197.551000 50.815076 8.770393 196.138000 50.815076 8.770393 197.552000 50.815076 8.770379 197.551000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_b7c8215c-fed0-477f-912a-e13e991b01b1" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815076 8.770379 197.551000 50.815076 8.770379 183.435000 50.815076 8.770393 183.435000 50.815076 8.770393 196.138000 50.815076 8.770379 197.551000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_444badaf-95ef-4e9b-a8bc-5b730643dd52'-->
                <gml:MultiCurve gml:id="GEOMETRY_444badaf-95ef-4e9b-a8bc-5b730643dd52" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_4c6395cc-3cd5-4552-8fbe-dc6028d45dce" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815085 8.770378 183.472000 50.815084 8.770378 183.480000 50.815080 8.770378 183.493000 50.815076 8.770379 183.506000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_1c7d374a-9361-49da-9348-c7f2bcad5e45" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815085 8.770378 183.472000 50.815086 8.770384 183.480000 50.815086 8.770387 183.478000 50.815086 8.770392 183.463000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_2e04afff-3967-4d52-b0da-3257f57fe98a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815086 8.770392 183.463000 50.815084 8.770392 183.468000 50.815081 8.770393 183.475000 50.815076 8.770393 183.492000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_82ae92b4-f8e9-4274-8ca7-f5b99ab01c4b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815076 8.770379 183.506000 50.815076 8.770384 183.510000 50.815076 8.770385 183.507000 50.815076 8.770393 183.492000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
      <bu-base:parts>
        <!--Inlined feature 'BuildingPart_GUID_1488958994062_25643327'-->
        <bu-core3d:BuildingPart gml:id="BuildingPart_GUID_1488958994062_25643327">
          <gml:identifier codeSpace="http://inspire.ec.europa.eu/ids">https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2/BuildingPart_GUID_1488958994062_25643327</gml:identifier>
          <bu-base:beginLifespanVersion>2019-07-23T22:00:00Z</bu-base:beginLifespanVersion>
          <bu-base:conditionOfConstruction xsi:nil="true" nilReason="other:unpopulated"/>
          <bu-base:heightAboveGround>
            <bu-base:HeightAboveGround>
              <bu-base:heightReference xsi:nil="true"/>
              <bu-base:lowReference xsi:nil="true" nilReason="unknown"/>
              <bu-base:status xlink:href="http://inspire.ec.europa.eu/codelist/HeightStatusValue/measured"/>
              <bu-base:value uom="m">24.208</bu-base:value>
            </bu-base:HeightAboveGround>
          </bu-base:heightAboveGround>
          <bu-base:inspireId>
            <base:Identifier>
              <base:localId>BuildingPart_GUID_1488958994062_25643327</base:localId>
              <base:namespace>https://registry.gdi-de.org/id/de.he.0462.de7.bu-3d.lod2</base:namespace>
            </base:Identifier>
          </bu-base:inspireId>
          <bu-core3d:geometry3DLoD2>
            <bu-core3d:BuildingGeometry3DLoD2>
              <bu-core3d:geometryMultiSurface>
                <!--Inlined geometry 'GEOMETRY_a74c35ec-412f-4569-a669-965c8789cece'-->
                <gml:MultiSurface gml:id="GEOMETRY_a74c35ec-412f-4569-a669-965c8789cece" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_879afafb-1900-4c4b-aa4b-089eba48a06f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815024 8.769919 207.643000 50.815017 8.769921 207.643000 50.815017 8.769921 183.435000 50.815024 8.769919 183.435000 50.815024 8.769919 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_375f816c-46e8-4bdf-9cd1-d29d1b8c9287" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815052 8.770035 207.643000 50.815054 8.770036 207.643000 50.815054 8.770036 183.435000 50.815052 8.770035 183.435000 50.815052 8.770035 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_594d4dab-399c-43b6-800c-bc2bc93e0dba" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815031 8.769989 207.643000 50.815022 8.769990 207.643000 50.815022 8.769990 183.435000 50.815031 8.769989 183.435000 50.815031 8.769989 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_512af200-3d68-42a0-b604-0cadb18d0f67" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815025 8.770017 207.643000 50.815033 8.770015 207.643000 50.815033 8.770015 183.435000 50.815025 8.770017 183.435000 50.815025 8.770017 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_df1880cc-9efc-46cd-ab9c-622b3a4f7a72" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815033 8.770015 207.643000 50.815038 8.770022 207.643000 50.815038 8.770022 183.435000 50.815033 8.770015 183.435000 50.815033 8.770015 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_7ee46dcd-61d2-4314-a17b-d7397cbba0c8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815015 8.769899 207.643000 50.815022 8.769898 207.643000 50.815022 8.769898 183.435000 50.815015 8.769899 183.435000 50.815015 8.769899 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_09975ca2-fadc-4de3-a1e5-ef9db470c602" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815025 8.770017 183.435000 50.815033 8.770015 183.435000 50.815038 8.770022 183.435000 50.815051 8.770019 183.435000 50.815052 8.770035 183.435000 50.815054 8.770036 183.435000 50.815023 8.770041 183.435000 50.815012 8.769901 183.435000 50.815015 8.769899 183.435000 50.815022 8.769898 183.435000 50.815024 8.769919 183.435000 50.815017 8.769921 183.435000 50.815021 8.769971 183.435000 50.815029 8.769970 183.435000 50.815031 8.769989 183.435000 50.815022 8.769990 183.435000 50.815025 8.770017 183.435000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_8c7effc4-873b-434f-a3ee-7452c59b631d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815021 8.769971 207.643000 50.815029 8.769970 207.643000 50.815029 8.769970 183.435000 50.815021 8.769971 183.435000 50.815021 8.769971 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_0ccf03ab-892e-4692-b403-8e345e606111" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815012 8.769901 207.643000 50.815015 8.769899 207.643000 50.815015 8.769899 183.435000 50.815012 8.769901 183.435000 50.815012 8.769901 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_ab200e28-c1c9-4e68-b9a6-17f249c4585a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815051 8.770019 207.643000 50.815052 8.770035 207.643000 50.815052 8.770035 183.435000 50.815051 8.770019 183.435000 50.815051 8.770019 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_0863bd15-6598-468d-9911-e8eec7e36e2a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815022 8.769990 207.643000 50.815025 8.770017 207.643000 50.815025 8.770017 183.435000 50.815022 8.769990 183.435000 50.815022 8.769990 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_540348d9-4657-40b9-8b71-89e2af4ab958" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815022 8.769990 207.643000 50.815031 8.769989 207.643000 50.815029 8.769970 207.643000 50.815021 8.769971 207.643000 50.815017 8.769921 207.643000 50.815024 8.769919 207.643000 50.815022 8.769898 207.643000 50.815015 8.769899 207.643000 50.815012 8.769901 207.643000 50.815023 8.770041 207.643000 50.815054 8.770036 207.643000 50.815052 8.770035 207.643000 50.815051 8.770019 207.643000 50.815038 8.770022 207.643000 50.815033 8.770015 207.643000 50.815025 8.770017 207.643000 50.815022 8.769990 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_5c58de86-fed0-45e8-aabe-96b0242586f6" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815017 8.769921 207.643000 50.815021 8.769971 207.643000 50.815021 8.769971 183.435000 50.815017 8.769921 183.435000 50.815017 8.769921 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_1638bb55-6932-4767-aa98-920351cc704f" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815022 8.769898 207.643000 50.815024 8.769919 207.643000 50.815024 8.769919 183.435000 50.815022 8.769898 183.435000 50.815022 8.769898 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_9b694ccb-0c68-4766-99c7-d41a2bd8a9eb" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815029 8.769970 207.643000 50.815031 8.769989 207.643000 50.815031 8.769989 183.435000 50.815029 8.769970 183.435000 50.815029 8.769970 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_a45c9aee-47e1-470f-8f43-952826effd8a" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815038 8.770022 207.643000 50.815051 8.770019 207.643000 50.815051 8.770019 183.435000 50.815038 8.770022 183.435000 50.815038 8.770022 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_4e12a3fb-c72f-4338-97ed-791598dc0251" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815054 8.770036 207.643000 50.815023 8.770041 207.643000 50.815023 8.770041 183.435000 50.815054 8.770036 183.435000 50.815054 8.770036 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                  <gml:surfaceMember>
                    <gml:Polygon gml:id="GEOMETRY_d3b0d175-242b-4cbc-bd5f-7e19f7e14fb2" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:exterior>
                        <gml:LinearRing>
                          <gml:posList>50.815023 8.770041 207.643000 50.815012 8.769901 207.643000 50.815012 8.769901 183.435000 50.815023 8.770041 183.435000 50.815023 8.770041 207.643000</gml:posList>
                        </gml:LinearRing>
                      </gml:exterior>
                    </gml:Polygon>
                  </gml:surfaceMember>
                </gml:MultiSurface>
              </bu-core3d:geometryMultiSurface>
              <bu-core3d:terrainIntersection>
                <!--Inlined geometry 'GEOMETRY_9d12292d-9a70-4165-8087-489dee582d96'-->
                <gml:MultiCurve gml:id="GEOMETRY_9d12292d-9a70-4165-8087-489dee582d96" srsName="urn:ogc:def:crs:EPSG::7423">
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_032876ea-e0e2-448a-b164-78b246066c15" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815033 8.770015 184.533000 50.815031 8.770015 184.540000 50.815030 8.770016 184.548000 50.815029 8.770016 184.548000 50.815025 8.770017 184.548000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_d6db58fb-11d3-4aaf-9177-d4fdee0fce53" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815033 8.770015 184.533000 50.815033 8.770015 184.531000 50.815038 8.770022 184.497000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_f4b73203-4b05-4534-be3b-e965df77d5d8" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815051 8.770019 184.442000 50.815050 8.770019 184.446000 50.815047 8.770020 184.462000 50.815042 8.770021 184.480000 50.815038 8.770022 184.496000 50.815038 8.770022 184.497000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_82a7b47b-3f1c-4743-8224-7b321811fb67" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815051 8.770019 184.442000 50.815051 8.770021 184.439000 50.815051 8.770029 184.419000 50.815052 8.770035 184.406000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_f19da470-509d-4ff2-8871-730c84ce0750" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815052 8.770035 184.406000 50.815054 8.770036 184.389000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_83b5b4fe-00e0-4917-8356-417d38faad9b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815054 8.770036 184.389000 50.815052 8.770036 184.405000 50.815048 8.770037 184.418000 50.815044 8.770037 184.434000 50.815039 8.770038 184.449000 50.815035 8.770039 184.451000 50.815030 8.770040 184.466000 50.815027 8.770040 184.471000 50.815023 8.770041 184.478000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_60cd3ea0-8310-4ad7-b3a8-85d8bdf96517" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815012 8.769901 184.803000 50.815012 8.769902 184.801000 50.815012 8.769903 184.799000 50.815013 8.769916 184.758000 50.815013 8.769919 184.749000 50.815014 8.769930 184.721000 50.815014 8.769935 184.718000 50.815015 8.769944 184.703000 50.815016 8.769951 184.689000 50.815016 8.769959 184.676000 50.815017 8.769968 184.656000 50.815018 8.769973 184.646000 50.815018 8.769984 184.625000 50.815019 8.769987 184.619000 50.815020 8.770000 184.592000 50.815020 8.770001 184.590000 50.815020 8.770008 184.574000 50.815021 8.770015 184.557000 50.815021 8.770017 184.552000 50.815022 8.770030 184.515000 50.815023 8.770033 184.504000 50.815023 8.770041 184.478000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_1f3958e3-2cb7-4079-8d98-cf46466fe750" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815015 8.769899 184.803000 50.815012 8.769901 184.803000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_b0e8d23c-ab65-4761-95b6-db3646047794" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815022 8.769898 184.795000 50.815020 8.769898 184.808000 50.815018 8.769899 184.799000 50.815015 8.769899 184.803000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_ee9ad2f9-f92b-4577-bdb4-a4e00098bcaf" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815022 8.769898 184.795000 50.815023 8.769902 184.771000 50.815023 8.769906 184.758000 50.815024 8.769916 184.724000 50.815024 8.769919 184.718000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_4e6f0d1a-34ad-4aa2-9605-aee1d7c1b23d" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815024 8.769919 184.718000 50.815023 8.769920 184.727000 50.815020 8.769920 184.731000 50.815017 8.769921 184.736000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_1f71a2bb-6994-4e6c-b499-61218beb9c44" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815017 8.769921 184.736000 50.815017 8.769926 184.720000 50.815018 8.769930 184.709000 50.815019 8.769942 184.702000 50.815019 8.769944 184.698000 50.815020 8.769958 184.671000 50.815020 8.769959 184.670000 50.815020 8.769963 184.660000 50.815021 8.769971 184.642000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_855a7d2a-5ca6-48d0-b90e-459fad6b0e49" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815029 8.769970 184.623000 50.815029 8.769970 184.623000 50.815028 8.769970 184.627000 50.815021 8.769971 184.642000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_e85821de-a79a-480b-b1dc-3a87eb309fa4" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815029 8.769970 184.623000 50.815030 8.769973 184.616000 50.815030 8.769973 184.615000 50.815031 8.769987 184.607000 50.815031 8.769989 184.603000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_ccf56512-e87c-43e9-9ed1-7a70757ff758" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815031 8.769989 184.603000 50.815031 8.769989 184.605000 50.815029 8.769989 184.609000 50.815023 8.769990 184.605000 50.815022 8.769990 184.606000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                  <gml:curveMember>
                    <gml:LineString gml:id="GEOMETRY_7aa0c9a9-3a18-453d-ad16-093efc9ced5b" srsName="urn:ogc:def:crs:EPSG::7423">
                      <gml:posList>50.815022 8.769990 184.606000 50.815024 8.770001 184.583000 50.815024 8.770007 184.573000 50.815025 8.770015 184.553000 50.815025 8.770017 184.548000</gml:posList>
                    </gml:LineString>
                  </gml:curveMember>
                </gml:MultiCurve>
              </bu-core3d:terrainIntersection>
              <bu-core3d:horizontalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:horizontalGeometryEstimatedAccuracy>
              <bu-core3d:verticalGeometryEstimatedAccuracy uom="m">0.5</bu-core3d:verticalGeometryEstimatedAccuracy>
            </bu-core3d:BuildingGeometry3DLoD2>
          </bu-core3d:geometry3DLoD2>
        </bu-core3d:BuildingPart>
      </bu-base:parts>
    </bu-core3d:Building>
  </wfs:member>
</wfs:FeatureCollection>