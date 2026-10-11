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
import org.apache.poi.xddf.usermodel.chart.XDDFSeriesAxis;
import org.apache.poi.xddf.usermodel.chart.XDDFValueAxis;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTAxDataSource;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDLbls;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDPt;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTNumDataSource;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSerTx;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSurface3DChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSurfaceSer;

/* loaded from: classes13.dex */
public class XSLFSurface3DChartData extends XSLFChartData<CTSurface3DChart> {
    private CTSurface3DChart chart;

    /* loaded from: classes13.dex */
    public class Series extends XSLFChartData<CTSurface3DChart>.XSLFSeries<CTSurfaceSer> {
        private CTSurfaceSer series;

        public Series(CTSurfaceSer cTSurfaceSer, XDDFDataSource<?> xDDFDataSource, XDDFNumericalDataSource<? extends Number> xDDFNumericalDataSource) {
            super(xDDFDataSource, xDDFNumericalDataSource);
            this.series = cTSurfaceSer;
        }

        @Override // org.apache.poi.xslf.usermodel.chart.XSLFChartData.XSLFSeries, org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public CTAxDataSource getAxDS() {
            return this.series.getCat();
        }

        @Override // org.apache.poi.xslf.usermodel.chart.XSLFChartData.XSLFSeries
        public CTDLbls getCTDLBls() {
            return null;
        }

        @Override // org.apache.poi.xslf.usermodel.chart.XSLFChartData.XSLFSeries, org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public List<CTDPt> getDPtList() {
            throw new IllegalStateException("Surface data series don't support data point settings.");
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
        }

        @Override // org.apache.poi.xslf.usermodel.chart.XSLFChartData.XSLFSeries
        public CTSurfaceSer getInternalSeries() {
            return this.series;
        }

        public Series(CTSurfaceSer cTSurfaceSer, CTAxDataSource cTAxDataSource, CTNumDataSource cTNumDataSource) {
            super(XSLFDataSourcesFactory.fromDataSource(cTAxDataSource), XSLFDataSourcesFactory.fromDataSource(cTNumDataSource));
            this.series = cTSurfaceSer;
        }
    }

    @Internal
    public XSLFSurface3DChartData(XDDFChart xDDFChart, CTSurface3DChart cTSurface3DChart, Map<Long, XDDFChartAxis> map, Map<Long, XDDFValueAxis> map2) {
        super(xDDFChart);
        this.chart = cTSurface3DChart;
        for (CTSurfaceSer cTSurfaceSer : cTSurface3DChart.getSerList()) {
            this.series.add(new Series(cTSurfaceSer, cTSurfaceSer.getCat(), cTSurfaceSer.getVal()));
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

    public void defineSeriesAxis(XDDFSeriesAxis xDDFSeriesAxis) {
        this.chart.addNewAxId().setVal(xDDFSeriesAxis.getId());
    }

    public Boolean isWireframe() {
        if (this.chart.isSetWireframe()) {
            return Boolean.valueOf(this.chart.getWireframe().getVal());
        }
        return null;
    }

    @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData
    @Internal
    public void removeCTSeries(int i) {
        this.chart.removeSer(i);
    }

    @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData
    public void setVaryColors(Boolean bool) {
    }

    public void setWireframe(Boolean bool) {
        if (bool == null) {
            if (this.chart.isSetWireframe()) {
                this.chart.unsetWireframe();
            }
        } else if (this.chart.isSetWireframe()) {
            this.chart.getWireframe().setVal(bool.booleanValue());
        } else {
            this.chart.addNewWireframe().setVal(bool.booleanValue());
        }
    }

    @Override // org.apache.poi.xslf.usermodel.chart.XSLFChartData
    public CTSurface3DChart getInternalChart() {
        return this.chart;
    }
}
