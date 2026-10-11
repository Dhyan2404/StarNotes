package org.apache.poi.xslf.usermodel.chart;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.poi.util.Internal;
import org.apache.poi.xddf.usermodel.XDDFShapeProperties;
import org.apache.poi.xddf.usermodel.chart.XDDFChart;
import org.apache.poi.xddf.usermodel.chart.XDDFChartAxis;
import org.apache.poi.xddf.usermodel.chart.XDDFDataSource;
import org.apache.poi.xddf.usermodel.chart.XDDFNumericalDataSource;
import org.apache.poi.xddf.usermodel.chart.XDDFValueAxis;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTAxDataSource;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDLbls;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDPt;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTMarker;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTNumDataSource;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTScatterChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTScatterSer;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTScatterStyle;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSerTx;

/* loaded from: classes13.dex */
public class XSLFScatterChartData extends XSLFChartData<CTScatterChart> {
    private CTScatterChart chart;

    /* loaded from: classes13.dex */
    public class Series extends XSLFChartData<CTScatterChart>.XSLFSeries<CTScatterSer> {
        private CTScatterSer series;

        public Series(CTScatterSer cTScatterSer, XDDFDataSource<?> xDDFDataSource, XDDFNumericalDataSource<?> xDDFNumericalDataSource) {
            super(xDDFDataSource, xDDFNumericalDataSource);
            this.series = cTScatterSer;
        }

        private CTMarker getMarker() {
            return this.series.isSetMarker() ? this.series.getMarker() : this.series.addNewMarker();
        }

        @Override // org.apache.poi.xslf.usermodel.chart.XSLFChartData.XSLFSeries, org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public CTAxDataSource getAxDS() {
            return this.series.getXVal();
        }

        @Override // org.apache.poi.xslf.usermodel.chart.XSLFChartData.XSLFSeries
        public CTDLbls getCTDLBls() {
            return this.series.getDLbls();
        }

        @Override // org.apache.poi.xslf.usermodel.chart.XSLFChartData.XSLFSeries, org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public List<CTDPt> getDPtList() {
            return this.series.getDPtList();
        }

        @Override // org.apache.poi.xslf.usermodel.chart.XSLFChartData.XSLFSeries, org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public CTNumDataSource getNumDS() {
            return this.series.getYVal();
        }

        @Override // org.apache.poi.xslf.usermodel.chart.XSLFChartData.XSLFSeries, org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public CTSerTx getSeriesText() {
            return this.series.isSetTx() ? this.series.getTx() : this.series.addNewTx();
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public XDDFShapeProperties getShapeProperties() {
            if (this.series.isSetSpPr()) {
                return new XDDFShapeProperties(this.series.getSpPr());
            }
            return null;
        }

        public Boolean isSmooth() {
            if (this.series.isSetSmooth()) {
                return Boolean.valueOf(this.series.getSmooth().getVal());
            }
            return null;
        }

        @Override // org.apache.poi.xslf.usermodel.chart.XSLFChartData.XSLFSeries, org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public void setIndex(long j) {
            this.series.getIdx().setVal(j);
        }

        public void setMarkerSize(short s) {
            if (s < 2 || 72 < s) {
                throw new IllegalArgumentException("Minimum inclusive: 2; Maximum inclusive: 72");
            }
            CTMarker marker = getMarker();
            if (marker.isSetSize()) {
                marker.getSize().setVal(s);
            } else {
                marker.addNewSize().setVal(s);
            }
        }

        public void setMarkerStyle(MarkerStyle markerStyle) {
            CTMarker marker = getMarker();
            if (marker.isSetSymbol()) {
                marker.getSymbol().setVal(markerStyle.underlying);
            } else {
                marker.addNewSymbol().setVal(markerStyle.underlying);
            }
        }

        @Override // org.apache.poi.xslf.usermodel.chart.XSLFChartData.XSLFSeries, org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public void setOrder(long j) {
            this.series.getOrder().setVal(j);
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public void setShapeProperties(XDDFShapeProperties xDDFShapeProperties) {
            if (xDDFShapeProperties == null) {
                if (this.series.isSetSpPr()) {
                    this.series.unsetSpPr();
                }
            } else if (this.series.isSetSpPr()) {
                this.series.setSpPr(xDDFShapeProperties.getXmlObject());
            } else {
                this.series.addNewSpPr().set(xDDFShapeProperties.getXmlObject());
            }
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public void setShowLeaderLines(boolean z) {
            if (!this.series.isSetDLbls()) {
                this.series.addNewDLbls();
            }
            if (this.series.getDLbls().isSetShowLeaderLines()) {
                this.series.getDLbls().getShowLeaderLines().setVal(z);
            } else {
                this.series.getDLbls().addNewShowLeaderLines().setVal(z);
            }
        }

        public void setSmooth(Boolean bool) {
            if (bool == null) {
                if (this.series.isSetSmooth()) {
                    this.series.unsetSmooth();
                }
            } else if (this.series.isSetSmooth()) {
                this.series.getSmooth().setVal(bool.booleanValue());
            } else {
                this.series.addNewSmooth().setVal(bool.booleanValue());
            }
        }

        @Override // org.apache.poi.xslf.usermodel.chart.XSLFChartData.XSLFSeries
        public CTScatterSer getInternalSeries() {
            return this.series;
        }

        public Series(CTScatterSer cTScatterSer, CTAxDataSource cTAxDataSource, CTNumDataSource cTNumDataSource) {
            super(XSLFDataSourcesFactory.fromDataSource(cTAxDataSource), XSLFDataSourcesFactory.fromDataSource(cTNumDataSource));
            this.series = cTScatterSer;
        }
    }

    @Internal
    public XSLFScatterChartData(XDDFChart xDDFChart, CTScatterChart cTScatterChart, Map<Long, XDDFChartAxis> map, Map<Long, XDDFValueAxis> map2) {
        super(xDDFChart);
        this.chart = cTScatterChart;
        for (CTScatterSer cTScatterSer : cTScatterChart.getSerList()) {
            this.series.add(new Series(cTScatterSer, cTScatterSer.getXVal(), cTScatterSer.getYVal()));
        }
        defineAxes(map, map2);
    }

    private void defineAxes(Map<Long, XDDFChartAxis> map, Map<Long, XDDFValueAxis> map2) {
        if (this.chart.sizeOfAxIdArray() == 0) {
            Iterator<Long> it2 = map.keySet().iterator();
            while (it2.hasNext()) {
                this.chart.addNewAxId().setVal(it2.next().longValue());
            }
            Iterator<Long> it3 = map2.keySet().iterator();
            while (it3.hasNext()) {
                this.chart.addNewAxId().setVal(it3.next().longValue());
            }
        }
        defineAxes(this.chart.getAxIdArray(), map, map2);
    }

    public ScatterStyle getStyle() {
        CTScatterStyle scatterStyle = this.chart.getScatterStyle();
        if (scatterStyle == null) {
            scatterStyle = this.chart.addNewScatterStyle();
            scatterStyle.setVal(ScatterStyle.LINE_MARKER.underlying);
        }
        return ScatterStyle.valueOf(scatterStyle.getVal());
    }

    @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData
    @Internal
    public void removeCTSeries(int i) {
        this.chart.removeSer(i);
    }

    public void setStyle(ScatterStyle scatterStyle) {
        CTScatterStyle scatterStyle2 = this.chart.getScatterStyle();
        if (scatterStyle2 == null) {
            scatterStyle2 = this.chart.addNewScatterStyle();
        }
        scatterStyle2.setVal(scatterStyle.underlying);
    }

    @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData
    public void setVaryColors(Boolean bool) {
        if (bool == null) {
            if (this.chart.isSetVaryColors()) {
                this.chart.unsetVaryColors();
            }
        } else if (this.chart.isSetVaryColors()) {
            this.chart.getVaryColors().setVal(bool.booleanValue());
        } else {
            this.chart.addNewVaryColors().setVal(bool.booleanValue());
        }
    }

    @Override // org.apache.poi.xslf.usermodel.chart.XSLFChartData
    public CTScatterChart getInternalChart() {
        return this.chart;
    }
}
