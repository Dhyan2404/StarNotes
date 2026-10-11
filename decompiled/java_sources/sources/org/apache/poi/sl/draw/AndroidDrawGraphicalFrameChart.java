package org.apache.poi.sl.draw;

import com.onyx.common.util.JLog;
import com.onyx.common.util.RectUtils;
import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;
import java.util.List;
import org.apache.poi.sl.usermodel.GraphicalFrame;
import org.apache.poi.xslf.draw.chart.AbstractDrawChart;
import org.apache.poi.xslf.draw.chart.DrawArea3DChart;
import org.apache.poi.xslf.draw.chart.DrawAreaChart;
import org.apache.poi.xslf.draw.chart.DrawBar3DChart;
import org.apache.poi.xslf.draw.chart.DrawBarChart;
import org.apache.poi.xslf.draw.chart.DrawBubbleChart;
import org.apache.poi.xslf.draw.chart.DrawCombinedChart;
import org.apache.poi.xslf.draw.chart.DrawDoughnutChart;
import org.apache.poi.xslf.draw.chart.DrawLine3DChart;
import org.apache.poi.xslf.draw.chart.DrawLineChart;
import org.apache.poi.xslf.draw.chart.DrawPie3DChart;
import org.apache.poi.xslf.draw.chart.DrawPieChart;
import org.apache.poi.xslf.draw.chart.DrawRadarChart;
import org.apache.poi.xslf.draw.chart.DrawScatterChart;
import org.apache.poi.xslf.draw.chart.DrawStockChart;
import org.apache.poi.xslf.draw.chart.DrawSurface3DChart;
import org.apache.poi.xslf.draw.chart.DrawSurfaceChart;
import org.apache.poi.xslf.usermodel.XSLFChart;
import org.apache.poi.xslf.usermodel.XSLFChartDelegate;
import org.apache.poi.xslf.usermodel.XSLFGraphicFrame;
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

/* loaded from: classes12.dex */
public class AndroidDrawGraphicalFrameChart implements DrawGraphicalFrameChart {
    private static final String TAG = "AndroidDrawGraphicalFrameChart";
    private Rectangle2D anchor;
    private XSLFChart chart;
    private XSLFChartDelegate delegate;

    private void drawCombinedChart(Graphics2D graphics2D, List<XSLFChartData> list) {
        new DrawCombinedChart(this.chart, list).draw(graphics2D, this.anchor);
    }

    private void drawSpecialChart(Graphics2D graphics2D, XSLFChartData xSLFChartData) {
        AbstractDrawChart specificDrawChart = getSpecificDrawChart(this.chart, xSLFChartData);
        if (specificDrawChart != null) {
            specificDrawChart.draw(graphics2D, this.anchor);
        }
    }

    public static AbstractDrawChart getSpecificDrawChart(XSLFChart xSLFChart, XSLFChartData xSLFChartData) {
        if (xSLFChartData instanceof XSLFLineChartData) {
            return new DrawLineChart(xSLFChart, (XSLFLineChartData) xSLFChartData);
        }
        if (xSLFChartData instanceof XSLFLine3DChartData) {
            return new DrawLine3DChart(xSLFChart, (XSLFLine3DChartData) xSLFChartData);
        }
        if (xSLFChartData instanceof XSLFPieChartData) {
            return new DrawPieChart(xSLFChart, (XSLFPieChartData) xSLFChartData);
        }
        if (xSLFChartData instanceof XSLFPie3DChartData) {
            return new DrawPie3DChart(xSLFChart, (XSLFPie3DChartData) xSLFChartData);
        }
        if (xSLFChartData instanceof XSLFBarChartData) {
            return new DrawBarChart(xSLFChart, (XSLFBarChartData) xSLFChartData);
        }
        if (xSLFChartData instanceof XSLFBar3DChartData) {
            return new DrawBar3DChart(xSLFChart, (XSLFBar3DChartData) xSLFChartData);
        }
        if (xSLFChartData instanceof XSLFAreaChartData) {
            return new DrawAreaChart(xSLFChart, (XSLFAreaChartData) xSLFChartData);
        }
        if (xSLFChartData instanceof XSLFArea3DChartData) {
            return new DrawArea3DChart(xSLFChart, (XSLFArea3DChartData) xSLFChartData);
        }
        if (xSLFChartData instanceof XSLFScatterChartData) {
            return new DrawScatterChart(xSLFChart, (XSLFScatterChartData) xSLFChartData);
        }
        if (xSLFChartData instanceof XSLFStockChartData) {
            return new DrawStockChart(xSLFChart, (XSLFStockChartData) xSLFChartData);
        }
        if (xSLFChartData instanceof XSLFBubbleChartData) {
            return new DrawBubbleChart(xSLFChart, (XSLFBubbleChartData) xSLFChartData);
        }
        if (xSLFChartData instanceof XSLFRadarChartData) {
            return new DrawRadarChart(xSLFChart, (XSLFRadarChartData) xSLFChartData);
        }
        if (xSLFChartData instanceof XSLFDoughnutChartData) {
            return new DrawDoughnutChart(xSLFChart, (XSLFDoughnutChartData) xSLFChartData);
        }
        if (xSLFChartData instanceof XSLFSurfaceChartData) {
            return new DrawSurfaceChart(xSLFChart, (XSLFSurfaceChartData) xSLFChartData);
        }
        if (xSLFChartData instanceof XSLFSurface3DChartData) {
            return new DrawSurface3DChart(xSLFChart, (XSLFSurface3DChartData) xSLFChartData);
        }
        JLog.m41642e(TAG, "Can't draw data:" + xSLFChartData.getClass().getSimpleName(), new Object[0]);
        return null;
    }

    @Override // org.apache.poi.sl.draw.DrawGraphicalFrameChart
    public boolean canDraw(GraphicalFrame<?, ?> graphicalFrame) {
        return graphicalFrame instanceof XSLFGraphicFrame;
    }

    @Override // org.apache.poi.sl.draw.DrawGraphicalFrameChart
    public void draw(GraphicalFrame<?, ?> graphicalFrame, Graphics2D graphics2D) {
        XSLFGraphicFrame xSLFGraphicFrame = (XSLFGraphicFrame) graphicalFrame;
        Rectangle2D anchor = DrawShape.getAnchor(graphics2D, xSLFGraphicFrame);
        this.anchor = anchor;
        if (RectUtils.isNullOrEmpty(anchor)) {
            JLog.m41642e(TAG, "anchor is empty", new Object[0]);
            return;
        }
        XSLFChart chart = xSLFGraphicFrame.getChart();
        this.chart = chart;
        if (chart == null) {
            JLog.m41642e(TAG, "chart is null", new Object[0]);
            return;
        }
        XSLFChartDelegate xSLFChartDelegate = new XSLFChartDelegate(chart);
        this.delegate = xSLFChartDelegate;
        List<XSLFChartData> series = xSLFChartDelegate.getSeries();
        if (series == null) {
            JLog.m41642e(TAG, "No char data", new Object[0]);
        } else if (series.size() > 1) {
            drawCombinedChart(graphics2D, series);
        } else {
            drawSpecialChart(graphics2D, series.get(0));
        }
    }
}
