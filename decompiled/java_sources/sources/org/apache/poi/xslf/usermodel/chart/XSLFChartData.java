package org.apache.poi.xslf.usermodel.chart;

import java.util.List;
import org.apache.poi.xddf.usermodel.chart.XDDFChart;
import org.apache.poi.xddf.usermodel.chart.XDDFChartData;
import org.apache.poi.xddf.usermodel.chart.XDDFDataSource;
import org.apache.poi.xddf.usermodel.chart.XDDFNumericalDataSource;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTAxDataSource;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDLbls;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDPt;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTNumDataSource;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSerTx;

/* loaded from: classes13.dex */
public abstract class XSLFChartData<C> extends XDDFChartData {

    /* loaded from: classes13.dex */
    public abstract class XSLFSeries<T> extends XDDFChartData.Series {
        public XSLFSeries(XDDFDataSource<?> xDDFDataSource, XDDFNumericalDataSource<? extends Number> xDDFNumericalDataSource) {
            super(xDDFDataSource, xDDFNumericalDataSource);
        }

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public abstract CTAxDataSource getAxDS();

        public abstract CTDLbls getCTDLBls();

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public abstract List<CTDPt> getDPtList();

        public abstract T getInternalSeries();

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public abstract CTNumDataSource getNumDS();

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public abstract CTSerTx getSeriesText();

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public abstract void setIndex(long j);

        @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData.Series
        public abstract void setOrder(long j);
    }

    public XSLFChartData(XDDFChart xDDFChart) {
        super(xDDFChart);
    }

    @Override // org.apache.poi.xddf.usermodel.chart.XDDFChartData
    public XDDFChartData.Series addSeries(XDDFDataSource<?> xDDFDataSource, XDDFNumericalDataSource<? extends Number> xDDFNumericalDataSource) {
        throw new UnsupportedOperationException();
    }

    public abstract C getInternalChart();

    public XDDFChart getParent() {
        return this.parent;
    }

    public final XSLFSeries getXSLFSeries(int i) {
        return (XSLFSeries) this.series.get(i);
    }
}
