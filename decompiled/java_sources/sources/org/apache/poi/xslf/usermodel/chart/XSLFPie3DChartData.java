package org.apache.poi.xslf.usermodel.chart;

import java.util.List;
import org.apache.poi.util.Internal;
import org.apache.poi.xddf.usermodel.XDDFShapeProperties;
import org.apache.poi.xddf.usermodel.chart.XDDFChart;
import org.apache.poi.xddf.usermodel.chart.XDDFDataSource;
import org.apache.poi.xddf.usermodel.chart.XDDFNumericalDataSource;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTAxDataSource;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDLbls;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDPt;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTNumDataSource;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTPie3DChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTPieSer;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSerTx;

/* loaded from: classes13.dex */
public class XSLFPie3DChartData extends XSLFChartData<CTPie3DChart> {
    private CTPie3DChart chart;

    /* loaded from: classes13.dex */
    public class Series extends XSLFChartData<CTPie3DChart>.XSLFSeries<CTPieSer> {
        private CTPieSer series;

        public Series(CTPieSer cTPieSer, XDDFDataSource<?> xDDFDataSource, XDDFNumericalDataSource<? extends Number> xDDFNumericalDataSource) {
            super(xDDFDataSource, xDDFNumericalDataSource);
            this.series = cTPieSer;
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

        public Long getExplosion() {
            if (this.series.isSetExplosion()) {
                return Long.valueOf(this.series.getExplosion().getVal());
            }
            return null;
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

        public void setExplosion(Long l) {
            if (l == null) {
                if (this.series.isSetExplosion()) {
                    this.series.unsetExplosion();
                }
            } else if (this.series.isSetExplosion()) {
                this.series.getExplosion().setVal(l.longValue());
            } else {
                this.series.addNewExplosion().setVal(l.longValue());
            }
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

        @Override // org.apache.poi.xslf.usermodel.chart.XSLFChartData.XSLFSeries
        public CTPieSer getInternalSeries() {
            return this.series;
        }

        public Series(CTPieSer cTPieSer, CTAxDataSource cTAxDataSource, CTNumDataSource cTNumDataSource) {
            super(XSLFDataSourcesFactory.fromDataSource(cTAxDataSource), XSLFDataSourcesFactory.fromDataSource(cTNumDataSource));
            this.series = cTPieSer;
        }
    }

    @Internal
    public XSLFPie3DChartData(XDDFChart xDDFChart, CTPie3DChart cTPie3DChart) {
        super(xDDFChart);
        this.chart = cTPie3DChart;
        for (CTPieSer cTPieSer : cTPie3DChart.getSerList()) {
            this.series.add(new Series(cTPieSer, cTPieSer.getCat(), cTPieSer.getVal()));
        }
    }

    @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData
    @Internal
    public void removeCTSeries(int i) {
        this.chart.removeSer(i);
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
    public CTPie3DChart getInternalChart() {
        return this.chart;
    }
}
