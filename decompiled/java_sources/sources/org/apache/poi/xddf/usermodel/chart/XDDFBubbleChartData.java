package org.apache.poi.xddf.usermodel.chart;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.poi.util.Internal;
import org.apache.poi.xddf.usermodel.XDDFShapeProperties;
import org.apache.poi.xddf.usermodel.chart.XDDFChartData;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTAxDataSource;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleChart;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBubbleSer;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDPt;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTNumDataSource;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSerTx;

/* loaded from: classes13.dex */
public class XDDFBubbleChartData extends XDDFChartData {
    private CTBubbleChart chart;

    public XDDFBubbleChartData(XDDFChart xDDFChart, CTBubbleChart cTBubbleChart, XDDFChartAxis xDDFChartAxis, XDDFValueAxis xDDFValueAxis) {
        super(xDDFChart);
        this.chart = cTBubbleChart;
        Map<Long, XDDFChartAxis> singletonMap = Collections.singletonMap(Long.valueOf(xDDFChartAxis.getId()), xDDFChartAxis);
        Map<Long, XDDFValueAxis> singletonMap2 = Collections.singletonMap(Long.valueOf(xDDFValueAxis.getId()), xDDFValueAxis);
        for (CTBubbleSer cTBubbleSer : cTBubbleChart.getSerList()) {
            this.series.add(new Series(cTBubbleSer, cTBubbleSer.getXVal(), cTBubbleSer.getYVal()));
        }
        defineAxes(singletonMap, singletonMap2);
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

    @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData
    public XDDFChartData.Series addSeries(XDDFDataSource<?> xDDFDataSource, XDDFNumericalDataSource<? extends Number> xDDFNumericalDataSource) {
        long incrementSeriesCount = this.parent.incrementSeriesCount();
        CTBubbleSer addNewSer = this.chart.addNewSer();
        addNewSer.addNewXVal();
        addNewSer.addNewYVal();
        addNewSer.addNewIdx().setVal(incrementSeriesCount);
        addNewSer.addNewOrder().setVal(incrementSeriesCount);
        Series series = new Series(addNewSer, xDDFDataSource, xDDFNumericalDataSource);
        this.series.add(series);
        return series;
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

    /* loaded from: classes13.dex */
    public class Series extends XDDFChartData.Series {
        private CTBubbleSer series;

        public Series(CTBubbleSer cTBubbleSer, XDDFDataSource<?> xDDFDataSource, XDDFNumericalDataSource<?> xDDFNumericalDataSource) {
            super(xDDFDataSource, xDDFNumericalDataSource);
            this.series = cTBubbleSer;
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public CTAxDataSource getAxDS() {
            return this.series.getXVal();
        }

        public CTBubbleSer getCTBubbleSer() {
            return this.series;
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public List<CTDPt> getDPtList() {
            return this.series.getDPtList();
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public CTNumDataSource getNumDS() {
            return this.series.getYVal();
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
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

        public void setBubbleSizes(XDDFNumericalDataSource<?> xDDFNumericalDataSource) {
            if (this.series.isSetBubbleSize()) {
                this.series.unsetBubbleSize();
            }
            xDDFNumericalDataSource.fillNumericalCache(retrieveNumCache(this.series.addNewBubbleSize(), xDDFNumericalDataSource));
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public void setIndex(long j) {
            this.series.getIdx().setVal(j);
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
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

        public Series(CTBubbleSer cTBubbleSer, CTAxDataSource cTAxDataSource, CTNumDataSource cTNumDataSource) {
            super(XDDFDataSourcesFactory.fromDataSource(cTAxDataSource), XDDFDataSourcesFactory.fromDataSource(cTNumDataSource));
            this.series = cTBubbleSer;
        }
    }

    @Internal
    public XDDFBubbleChartData(XDDFChart xDDFChart, CTBubbleChart cTBubbleChart, Map<Long, XDDFChartAxis> map, Map<Long, XDDFValueAxis> map2) {
        super(xDDFChart);
        this.chart = cTBubbleChart;
        for (CTBubbleSer cTBubbleSer : cTBubbleChart.getSerList()) {
            this.series.add(new Series(cTBubbleSer, cTBubbleSer.getXVal(), cTBubbleSer.getYVal()));
        }
        defineAxes(map, map2);
    }
}
