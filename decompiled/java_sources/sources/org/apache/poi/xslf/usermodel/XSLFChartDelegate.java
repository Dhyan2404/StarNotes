package org.apache.poi.xslf.usermodel;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.poi.xddf.usermodel.chart.XDDFCategoryAxis;
import org.apache.poi.xddf.usermodel.chart.XDDFChartAxis;
import org.apache.poi.xddf.usermodel.chart.XDDFValueAxis;
import org.apache.poi.xslf.usermodel.chart.XSLFArea3DChartData;
import org.apache.poi.xslf.usermodel.chart.XSLFAreaChartData;
import org.apache.poi.xslf.usermodel.chart.XSLFBar3DChartData;
import org.apache.poi.xslf.usermodel.chart.XSLFBarChartData;
import org.apache.poi.xslf.usermodel.chart.XSLFBubbleChartData;
import org.apache.poi.xslf.usermodel.chart.XSLFChartData;
import org.apache.poi.xslf.usermodel.chart.XSLFDoughnutChartData;
import org.apache.poi.xslf.usermodel.chart.XSLFLine3DChartData;
import org.apache.poi.xslf.usermodel.chart.XSLFLineChartData;
import org.apache.poi.xslf.usermodel.chart.XSLFPie3DChartData;
import org.apache.poi.xslf.usermodel.chart.XSLFPieChartData;
import org.apache.poi.xslf.usermodel.chart.XSLFRadarChartData;
import org.apache.poi.xslf.usermodel.chart.XSLFScatterChartData;
import org.apache.poi.xslf.usermodel.chart.XSLFStockChartData;
import org.apache.poi.xslf.usermodel.chart.XSLFSurface3DChartData;
import org.apache.poi.xslf.usermodel.chart.XSLFSurfaceChartData;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTCatAx;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTValAx;

/* loaded from: classes13.dex */
public class XSLFChartDelegate {
    private XSLFChart chart;
    private List<XSLFChartData> series;
    private long seriesCount = 0;

    public XSLFChartDelegate(XSLFChart xSLFChart) {
        this.chart = xSLFChart;
    }

    public CTPlotArea getCTPlotArea() {
        return this.chart.getCTChart().getPlotArea();
    }

    public Map<Long, XDDFChartAxis> getCategoryAxes() {
        CTPlotArea cTPlotArea = getCTPlotArea();
        int sizeOfCatAxArray = cTPlotArea.sizeOfCatAxArray();
        HashMap hashMap = new HashMap(sizeOfCatAxArray);
        for (int i = 0; i < sizeOfCatAxArray; i++) {
            CTCatAx catAxArray = cTPlotArea.getCatAxArray(i);
            hashMap.put(Long.valueOf(catAxArray.getAxId().getVal()), new XDDFCategoryAxis(catAxArray));
        }
        return hashMap;
    }

    public XSLFChart getChart() {
        return this.chart;
    }

    public List<XSLFChartData> getSeries() {
        List<XSLFChartData> list = this.series;
        if (list != null) {
            return list;
        }
        this.series = new ArrayList();
        CTPlotArea cTPlotArea = getCTPlotArea();
        Map<Long, XDDFChartAxis> categoryAxes = getCategoryAxes();
        Map<Long, XDDFValueAxis> valueAxes = getValueAxes();
        for (int i = 0; i < cTPlotArea.sizeOfAreaChartArray(); i++) {
            this.series.add(new XSLFAreaChartData(this.chart, cTPlotArea.getAreaChartArray(i), categoryAxes, valueAxes));
        }
        for (int i2 = 0; i2 < cTPlotArea.sizeOfArea3DChartArray(); i2++) {
            this.series.add(new XSLFArea3DChartData(this.chart, cTPlotArea.getArea3DChartArray(i2), categoryAxes, valueAxes));
        }
        for (int i3 = 0; i3 < cTPlotArea.sizeOfBarChartArray(); i3++) {
            this.series.add(new XSLFBarChartData(this.chart, cTPlotArea.getBarChartArray(i3), categoryAxes, valueAxes));
        }
        for (int i4 = 0; i4 < cTPlotArea.sizeOfBar3DChartArray(); i4++) {
            this.series.add(new XSLFBar3DChartData(this.chart, cTPlotArea.getBar3DChartArray(i4), categoryAxes, valueAxes));
        }
        for (int i5 = 0; i5 < cTPlotArea.sizeOfDoughnutChartArray(); i5++) {
            this.series.add(new XSLFDoughnutChartData(this.chart, cTPlotArea.getDoughnutChartArray(i5)));
        }
        for (int i6 = 0; i6 < cTPlotArea.sizeOfLineChartArray(); i6++) {
            this.series.add(new XSLFLineChartData(this.chart, cTPlotArea.getLineChartArray(i6), categoryAxes, valueAxes));
        }
        for (int i7 = 0; i7 < cTPlotArea.sizeOfLine3DChartArray(); i7++) {
            this.series.add(new XSLFLine3DChartData(this.chart, cTPlotArea.getLine3DChartArray(i7), categoryAxes, valueAxes));
        }
        for (int i8 = 0; i8 < cTPlotArea.sizeOfPieChartArray(); i8++) {
            this.series.add(new XSLFPieChartData(this.chart, cTPlotArea.getPieChartArray(i8)));
        }
        for (int i9 = 0; i9 < cTPlotArea.sizeOfPie3DChartArray(); i9++) {
            this.series.add(new XSLFPie3DChartData(this.chart, cTPlotArea.getPie3DChartArray(i9)));
        }
        for (int i10 = 0; i10 < cTPlotArea.sizeOfRadarChartArray(); i10++) {
            this.series.add(new XSLFRadarChartData(this.chart, cTPlotArea.getRadarChartArray(i10), categoryAxes, valueAxes));
        }
        for (int i11 = 0; i11 < cTPlotArea.sizeOfScatterChartArray(); i11++) {
            this.series.add(new XSLFScatterChartData(this.chart, cTPlotArea.getScatterChartArray(i11), categoryAxes, valueAxes));
        }
        for (int i12 = 0; i12 < cTPlotArea.sizeOfSurfaceChartArray(); i12++) {
            this.series.add(new XSLFSurfaceChartData(this.chart, cTPlotArea.getSurfaceChartArray(i12), categoryAxes, valueAxes));
        }
        for (int i13 = 0; i13 < cTPlotArea.sizeOfSurface3DChartArray(); i13++) {
            this.series.add(new XSLFSurface3DChartData(this.chart, cTPlotArea.getSurface3DChartArray(i13), categoryAxes, valueAxes));
        }
        for (int i14 = 0; i14 < cTPlotArea.sizeOfStockChartArray(); i14++) {
            this.series.add(new XSLFStockChartData(this.chart, cTPlotArea.getStockChartArray(i14), categoryAxes, valueAxes));
        }
        for (int i15 = 0; i15 < cTPlotArea.sizeOfBubbleChartArray(); i15++) {
            this.series.add(new XSLFBubbleChartData(this.chart, cTPlotArea.getBubbleChartArray(i15), categoryAxes, valueAxes));
        }
        this.seriesCount = this.series.size();
        return this.series;
    }

    public long getSeriesCount() {
        return this.seriesCount;
    }

    public Map<Long, XDDFValueAxis> getValueAxes() {
        CTPlotArea cTPlotArea = getCTPlotArea();
        int sizeOfValAxArray = cTPlotArea.sizeOfValAxArray();
        HashMap hashMap = new HashMap(sizeOfValAxArray);
        for (int i = 0; i < sizeOfValAxArray; i++) {
            CTValAx valAxArray = cTPlotArea.getValAxArray(i);
            hashMap.put(Long.valueOf(valAxArray.getAxId().getVal()), new XDDFValueAxis(valAxArray));
        }
        return hashMap;
    }
}
