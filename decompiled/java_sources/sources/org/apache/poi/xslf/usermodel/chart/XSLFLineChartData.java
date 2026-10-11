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
import org.openxmlformats.schemas.drawingml.x2006.chart.CTLineChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTLineSer;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTNumDataSource;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSerTx;

/* loaded from: classes13.dex */
public class XSLFLineChartData extends XSLFChartData<CTLineChart> {
    private CTLineChart chart;

    /* loaded from: classes13.dex */
    public class Series extends XSLFChartData<CTLineChart>.XSLFSeries<CTLineSer> {
        private CTLineSer series;

        public Series(CTLineSer cTLineSer, XDDFDataSource<?> xDDFDataSource, XDDFNumericalDataSource<? extends Number> xDDFNumericalDataSource) {
            super(xDDFDataSource, xDDFNumericalDataSource);
            this.series = cTLineSer;
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
        public CTLineSer getInternalSeries() {
            return this.series;
        }

        public Series(CTLineSer cTLineSer, CTAxDataSource cTAxDataSource, CTNumDataSource cTNumDataSource) {
            super(XSLFDataSourcesFactory.fromDataSource(cTAxDataSource), XSLFDataSourcesFactory.fromDataSource(cTNumDataSource));
            this.series = cTLineSer;
        }
    }

    @Internal
    public XSLFLineChartData(XDDFChart xDDFChart, CTLineChart cTLineChart, Map<Long, XDDFChartAxis> map, Map<Long, XDDFValueAxis> map2) {
        super(xDDFChart);
        this.chart = cTLineChart;
        for (CTLineSer cTLineSer : cTLineChart.getSerList()) {
            this.series.add(new Series(cTLineSer, cTLineSer.getCat(), cTLineSer.getVal()));
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

    public Grouping getGrouping() {
        return Grouping.valueOf(this.chart.getGrouping().getVal());
    }

    @Override // org.apache.poi.xslf.usermodel.chart.XSLFChartData
    public CTLineChart getInternalChart() {
        return null;
    }

    @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData
    @Internal
    public void removeCTSeries(int i) {
        this.chart.removeSer(i);
    }

    public void setGrouping(Grouping grouping) {
        if (this.chart.getGrouping() != null) {
            this.chart.getGrouping().setVal(grouping.underlying);
        } else {
            this.chart.addNewGrouping().setVal(grouping.underlying);
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
}
