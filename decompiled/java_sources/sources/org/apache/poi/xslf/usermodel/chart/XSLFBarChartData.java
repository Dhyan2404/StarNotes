package org.apache.poi.xslf.usermodel.chart;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.apache.poi.util.Internal;
import org.apache.poi.xddf.usermodel.XDDFShapeProperties;
import org.apache.poi.xddf.usermodel.chart.XDDFChart;
import org.apache.poi.xddf.usermodel.chart.XDDFChartAxis;
import org.apache.poi.xddf.usermodel.chart.XDDFDataSource;
import org.apache.poi.xddf.usermodel.chart.XDDFNumericalDataSource;
import org.apache.poi.xddf.usermodel.chart.XDDFValueAxis;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTAxDataSource;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBarChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBarSer;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDLbls;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDPt;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTNumDataSource;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSerTx;

/* loaded from: classes13.dex */
public class XSLFBarChartData extends XSLFChartData<CTBarChart> {
    private CTBarChart chart;

    /* loaded from: classes13.dex */
    public class Series extends XSLFChartData<CTBarChart>.XSLFSeries<CTBarSer> {
        private CTBarSer series;

        public Series(CTBarSer cTBarSer, XDDFDataSource<?> xDDFDataSource, XDDFNumericalDataSource<? extends Number> xDDFNumericalDataSource) {
            super(xDDFDataSource, xDDFNumericalDataSource);
            this.series = cTBarSer;
        }

        @Override // org.apache.poi.xslf.usermodel.chart.XSLFChartData.XSLFSeries, org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public CTAxDataSource getAxDS() {
            return this.series.getCat();
        }

        @Override // org.apache.poi.xslf.usermodel.chart.XSLFChartData.XSLFSeries
        public CTDLbls getCTDLBls() {
            return this.series.getDLbls();
        }

        @Override // org.apache.poi.xslf.usermodel.chart.XSLFChartData.XSLFSeries, org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public List<CTDPt> getDPtList() {
            return this.series.getDPtList();
        }

        public boolean getInvertIfNegative() {
            if (this.series.isSetInvertIfNegative()) {
                return this.series.getInvertIfNegative().getVal();
            }
            return false;
        }

        @Override // org.apache.poi.xslf.usermodel.chart.XSLFChartData.XSLFSeries, org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public CTNumDataSource getNumDS() {
            return this.series.getVal();
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

        @Override // org.apache.poi.xslf.usermodel.chart.XSLFChartData.XSLFSeries, org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public void setIndex(long j) {
            this.series.getIdx().setVal(j);
        }

        public void setInvertIfNegative(boolean z) {
            if (this.series.isSetInvertIfNegative()) {
                this.series.getInvertIfNegative().setVal(z);
            } else {
                this.series.addNewInvertIfNegative().setVal(z);
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

        @Override // org.apache.poi.xslf.usermodel.chart.XSLFChartData.XSLFSeries
        public CTBarSer getInternalSeries() {
            return this.series;
        }

        public Series(CTBarSer cTBarSer, CTAxDataSource cTAxDataSource, CTNumDataSource cTNumDataSource) {
            super(XSLFDataSourcesFactory.fromDataSource(cTAxDataSource), XSLFDataSourcesFactory.fromDataSource(cTNumDataSource));
            this.series = cTBarSer;
        }
    }

    @Internal
    public XSLFBarChartData(XDDFChart xDDFChart, CTBarChart cTBarChart, Map<Long, XDDFChartAxis> map, Map<Long, XDDFValueAxis> map2) {
        super(xDDFChart);
        this.chart = cTBarChart;
        if (cTBarChart.getBarDir() == null) {
            cTBarChart.addNewBarDir().setVal(BarDirection.BAR.underlying);
        }
        for (CTBarSer cTBarSer : cTBarChart.getSerList()) {
            this.series.add(new Series(cTBarSer, cTBarSer.getCat(), cTBarSer.getVal()));
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

    public BarDirection getBarDirection() {
        return BarDirection.valueOf(this.chart.getBarDir().getVal());
    }

    public BarGrouping getBarGrouping() {
        if (this.chart.isSetGrouping()) {
            return BarGrouping.valueOf(this.chart.getGrouping().getVal());
        }
        return null;
    }

    public Integer getGapWidth() {
        if (this.chart.isSetGapWidth()) {
            return Integer.valueOf((int) (POIXMLUnits.parsePercent(this.chart.getGapWidth().xgetVal()) / 1000.0d));
        }
        return null;
    }

    public Byte getOverlap() {
        if (this.chart.isSetOverlap()) {
            return Byte.valueOf((byte) (POIXMLUnits.parsePercent(this.chart.getOverlap().xgetVal()) / 1000));
        }
        return null;
    }

    @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData
    @Internal
    public void removeCTSeries(int i) {
        this.chart.removeSer(i);
    }

    public void setBarDirection(BarDirection barDirection) {
        this.chart.getBarDir().setVal(barDirection.underlying);
    }

    public void setBarGrouping(BarGrouping barGrouping) {
        if (barGrouping == null) {
            if (this.chart.isSetGrouping()) {
                this.chart.unsetGrouping();
            }
        } else if (this.chart.isSetGrouping()) {
            this.chart.getGrouping().setVal(barGrouping.underlying);
        } else {
            this.chart.addNewGrouping().setVal(barGrouping.underlying);
        }
    }

    public void setGapWidth(Integer num) {
        if (num == null) {
            if (this.chart.isSetGapWidth()) {
                this.chart.unsetGapWidth();
            }
        } else if (this.chart.isSetGapWidth()) {
            this.chart.getGapWidth().setVal(num);
        } else {
            this.chart.addNewGapWidth().setVal(num);
        }
    }

    public void setOverlap(Byte b) {
        if (b == null) {
            if (this.chart.isSetOverlap()) {
                this.chart.unsetOverlap();
            }
        } else {
            if (b.byteValue() < -100 || 100 < b.byteValue()) {
                return;
            }
            if (this.chart.isSetOverlap()) {
                this.chart.getOverlap().setVal(b);
            } else {
                this.chart.addNewOverlap().setVal(b);
            }
        }
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
    public CTBarChart getInternalChart() {
        return this.chart;
    }
}
