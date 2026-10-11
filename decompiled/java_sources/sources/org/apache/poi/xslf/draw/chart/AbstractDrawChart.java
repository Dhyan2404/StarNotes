package org.apache.poi.xslf.draw.chart;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.os.Looper;
import com.github.mikephil.charting.charts.BarLineChartBase;
import com.github.mikephil.charting.charts.Chart;
import com.github.mikephil.charting.charts.PieChart;
import com.github.mikephil.charting.charts.RadarChart;
import com.github.mikephil.charting.components.AxisBase;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.BaseDataSet;
import com.github.mikephil.charting.data.ChartData;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.formatter.IAxisValueFormatter;
import com.github.mikephil.charting.formatter.IValueFormatter;
import com.github.mikephil.charting.utils.Utils;
import com.onyx.common.util.BitmapUtils;
import com.onyx.common.util.CollectionUtils;
import com.onyx.common.util.ContextUtils;
import com.onyx.common.util.JLog;
import com.trans.android.AndroidImage;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Paint;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;
import java.awt.image.ImageObserver;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.poi.xddf.usermodel.XDDFShapeProperties;
import org.apache.poi.xddf.usermodel.chart.XDDFDataSource;
import org.apache.poi.xddf.usermodel.chart.XDDFNumericalDataSource;
import org.apache.poi.xslf.draw.formatter.AxisFormatter;
import org.apache.poi.xslf.draw.formatter.FormatType;
import org.apache.poi.xslf.draw.shape.XSLFPaintDelegateShape;
import org.apache.poi.xslf.usermodel.XSLFChart;
import org.apache.poi.xslf.usermodel.XSLFColorDelegate;
import org.apache.poi.xslf.usermodel.XSLFSheet;
import org.apache.poi.xslf.usermodel.chart.XSLFChartData;
import org.apache.xmlbeans.XmlObject;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTAxPos;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBoolean;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTCatAx;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTChartLines;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDLbls;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTDateAx;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTLegend;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTLegendPos;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTNumFmt;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTPlotArea;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTSerTx;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTStrData;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTStrRef;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTStrVal;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTTickLblPos;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTValAx;
import org.openxmlformats.schemas.drawingml.x2006.chart.STAxPos;
import org.openxmlformats.schemas.drawingml.x2006.chart.STDLblPos;
import org.openxmlformats.schemas.drawingml.x2006.chart.STTickLblPos;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShapeProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextBody;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextCharacterProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextParagraphProperties;

/* loaded from: classes13.dex */
public abstract class AbstractDrawChart<T extends XSLFChartData, C extends Chart, D extends ChartData, E extends Entry> {
    protected static final float AXIS_EXTRA_OFFSET = 0.4f;
    protected static final float AXIS_TEXT_SIZE = 10.0f;
    protected static final float CHART_OFFSET_10 = 10.0f;
    protected static final float CHART_OFFSET_12 = 12.0f;
    protected static final float CHART_OFFSET_16 = 16.0f;
    protected static final float CHART_OFFSET_5 = 5.0f;
    protected static final float CIRCLE_RADIUS = 2.0f;
    protected static final int DEFAULT_LABEL_COUNT = 6;
    protected static final float LEGEND_FORM_LINE_SIZE = 12.0f;
    protected static final float LEGEND_FORM_LINE_WIDTH = 1.4f;
    protected static final float LEGEND_FORM_SIZE = 4.0f;
    protected static final float LEGEND_TEXT_SIZE = 10.0f;
    protected static final float LINE_WIDTH = 1.0f;
    protected Color accent2;
    protected Rectangle2D anchor;
    protected XSLFChart chart;
    protected T chartData;
    protected int seriesCount;
    protected XSLFSheet sheet;
    protected final String TAG = getClass().getSimpleName();
    protected YAxis.AxisDependency yAxisDependency = getYAxisDependency(getValAx());

    public AbstractDrawChart(XSLFChart xSLFChart, T t) {
        this.chart = xSLFChart;
        this.chartData = t;
        this.sheet = (XSLFSheet) xSLFChart.getParent();
        this.seriesCount = t.getSeriesCount();
        init();
    }

    private void drawChartBackground(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        Paint paint = getPaint(this.chart.getCTChartSpace().getSpPr());
        if (paint == null) {
            return;
        }
        Paint paint2 = graphics2D.getPaint();
        graphics2D.setPaint(paint);
        graphics2D.fill(rectangle2D);
        graphics2D.setPaint(paint2);
    }

    private void drawChartContentBackground(Graphics2D graphics2D, C c) {
        Paint paint = getPaint(getPloArea().getSpPr());
        if (paint == null) {
            return;
        }
        RectF viewPortContentRect = getViewPortContentRect(c);
        Paint paint2 = graphics2D.getPaint();
        graphics2D.setPaint(paint);
        graphics2D.fill(new Rectangle2D.Double(viewPortContentRect.left, viewPortContentRect.top, viewPortContentRect.width(), viewPortContentRect.height()));
        graphics2D.setPaint(paint2);
    }

    private XAxis.XAxisPosition getXAxisPosition(CTCatAx cTCatAx) {
        CTAxPos axPos;
        return (cTCatAx == null || (axPos = cTCatAx.getAxPos()) == null || !(axPos.getVal() == STAxPos.f115657R || axPos.getVal() == STAxPos.f115658T)) ? XAxis.XAxisPosition.BOTTOM : XAxis.XAxisPosition.TOP;
    }

    private YAxis.AxisDependency getYAxisDependency(CTValAx cTValAx) {
        CTAxPos axPos;
        return (cTValAx == null || (axPos = cTValAx.getAxPos()) == null || !(axPos.getVal() == STAxPos.f115657R || axPos.getVal() == STAxPos.f115655B)) ? YAxis.AxisDependency.LEFT : YAxis.AxisDependency.RIGHT;
    }

    private void setAxisTextSizeAndColor(AxisBase axisBase, float f, CTTextBody cTTextBody) {
        CTTextParagraphProperties pPr;
        CTTextCharacterProperties defRPr;
        if (cTTextBody == null || cTTextBody.sizeOfPArray() <= 0 || (pPr = cTTextBody.getPArray(0).getPPr()) == null || (defRPr = pPr.getDefRPr()) == null) {
            ChartUtils.setTextSize(axisBase, f);
            return;
        }
        if (defRPr.getSz() > 0) {
            ChartUtils.setTextSize(axisBase, Utils.convertPixelsToDp(r0 / 100));
        } else {
            ChartUtils.setTextSize(axisBase, f);
        }
        Color color = getColor(defRPr);
        if (color != null) {
            axisBase.setTextColor(color.getRGB());
        }
    }

    private void setChartViewPort(C c, Rectangle2D rectangle2D) {
        c.getViewPortHandler().setChartDimens((float) rectangle2D.getWidth(), (float) rectangle2D.getHeight());
    }

    public abstract <N extends Number> E createEntry(N n, N n2);

    public void draw(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        if (this.seriesCount <= 0) {
            JLog.m41642e(this.TAG, "No Series", new Object[0]);
            return;
        }
        this.anchor = rectangle2D;
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        C chart = getChart();
        setChartViewPort(chart, rectangle2D);
        setChart(chart);
        drawAndroidChart(graphics2D, chart, rectangle2D);
    }

    public void drawAndroidChart(Graphics2D graphics2D, C c, Rectangle2D rectangle2D) {
        Bitmap createBitmap = Bitmap.createBitmap((int) (rectangle2D.getWidth() + 0.5d), (int) (rectangle2D.getHeight() + 0.5d), Bitmap.Config.ARGB_8888);
        c.draw(new Canvas(createBitmap));
        drawChartBackground(graphics2D, rectangle2D);
        AffineTransform transform = graphics2D.getTransform();
        graphics2D.translate(rectangle2D.getX(), rectangle2D.getY());
        drawChartContentBackground(graphics2D, c);
        graphics2D.drawImage(new AndroidImage(createBitmap), 0, 0, (ImageObserver) null);
        graphics2D.setTransform(transform);
        BitmapUtils.recycle(createBitmap);
    }

    public void drawBoundary(Graphics2D graphics2D, Rectangle2D rectangle2D) {
        Color color = graphics2D.getColor();
        graphics2D.setColor(Color.BLACK);
        graphics2D.draw(rectangle2D);
        graphics2D.setColor(color);
    }

    public boolean drawValues(CTDLbls cTDLbls) {
        CTBoolean showVal;
        return (cTDLbls == null || (showVal = cTDLbls.getShowVal()) == null || !showVal.getVal()) ? false : true;
    }

    public Color getAccent2Color() {
        if (this.accent2 == null) {
            this.accent2 = XSLFColorDelegate.getAccentColor(this.sheet, this.chart.getCTChartSpace().getClrMapOvr(), 2);
        }
        return this.accent2;
    }

    public CTCatAx getCatAx() {
        CTPlotArea ploArea = getPloArea();
        if (ploArea.sizeOfCatAxArray() <= 0) {
            return null;
        }
        return ploArea.getCatAxArray(0);
    }

    public List<String> getCategory(XSLFChartData.XSLFSeries xSLFSeries) {
        ArrayList arrayList = new ArrayList();
        XDDFDataSource<?> categoryData = xSLFSeries.getCategoryData();
        int pointCount = categoryData.getPointCount();
        for (int i = 0; i < pointCount; i++) {
            arrayList.add(categoryData.getPointAt(i).toString());
        }
        if (isXAxisInverted()) {
            Collections.reverse(arrayList);
        }
        return arrayList;
    }

    public abstract C getChart();

    public abstract D getChartData();

    public Color getColor(CTShapeProperties cTShapeProperties) {
        return XSLFColorDelegate.getColor(this.sheet, cTShapeProperties);
    }

    public Context getContext() {
        return ContextUtils.getContext();
    }

    public Color getDataSetColor(XSLFChartData.XSLFSeries xSLFSeries) {
        XDDFShapeProperties shapeProperties = xSLFSeries.getShapeProperties();
        if (shapeProperties == null) {
            return null;
        }
        return getColor(shapeProperties.getXmlObject());
    }

    public CTDateAx getDateAx() {
        CTPlotArea ploArea = getPloArea();
        if (ploArea.sizeOfDateAxArray() <= 0) {
            return null;
        }
        return ploArea.getDateAxArray(0);
    }

    public STDLblPos.Enum getDlblsPos(CTDLbls cTDLbls) {
        if (cTDLbls == null || !cTDLbls.isSetDLblPos()) {
            return null;
        }
        return cTDLbls.getDLblPos().getVal();
    }

    public Color getGridlineColor(CTChartLines cTChartLines) {
        if (cTChartLines == null) {
            return null;
        }
        return getColor(cTChartLines.getSpPr());
    }

    public String getLabel(XSLFChartData.XSLFSeries xSLFSeries) {
        CTStrRef strRef;
        CTStrData strCache;
        CTSerTx seriesText = xSLFSeries.getSeriesText();
        if (seriesText == null || (strRef = seriesText.getStrRef()) == null || (strCache = strRef.getStrCache()) == null) {
            return "";
        }
        List<CTStrVal> ptList = strCache.getPtList();
        if (CollectionUtils.isNullOrEmpty(ptList)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (CTStrVal cTStrVal : ptList) {
            if (cTStrVal != null) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(cTStrVal.getV());
            }
        }
        return sb.toString();
    }

    public Paint getPaint(XmlObject xmlObject) {
        return new XSLFPaintDelegateShape(this.sheet, xmlObject, this.anchor).getPaint();
    }

    public CTPlotArea getPloArea() {
        return this.chart.getCTChart().getPlotArea();
    }

    public CTValAx getValAx() {
        CTPlotArea ploArea = getPloArea();
        if (ploArea.sizeOfValAxArray() <= 0) {
            return null;
        }
        return ploArea.getValAxArray(0);
    }

    public IValueFormatter getValueFormatter(XSLFChartData.XSLFSeries xSLFSeries, CTDLbls cTDLbls) {
        CTNumFmt numFmt;
        return AxisFormatter.create(FormatType.from((cTDLbls == null || (numFmt = cTDLbls.getNumFmt()) == null) ? xSLFSeries.getValuesData().getFormatCode() : numFmt.getFormatCode()));
    }

    public Color getValueTextColor(CTDLbls cTDLbls) {
        CTTextBody txPr;
        CTTextParagraphProperties pPr;
        CTTextCharacterProperties defRPr;
        if (cTDLbls == null || (txPr = cTDLbls.getTxPr()) == null || txPr.sizeOfPArray() <= 0 || (pPr = txPr.getPArray(0).getPPr()) == null || (defRPr = pPr.getDefRPr()) == null) {
            return null;
        }
        return getColor(defRPr);
    }

    public float getValueTextSize(CTDLbls cTDLbls) {
        CTTextBody txPr;
        CTTextParagraphProperties pPr;
        CTTextCharacterProperties defRPr;
        int sz;
        return (cTDLbls == null || (txPr = cTDLbls.getTxPr()) == null || txPr.sizeOfPArray() <= 0 || (pPr = txPr.getPArray(0).getPPr()) == null || (defRPr = pPr.getDefRPr()) == null || (sz = defRPr.getSz()) <= 0) ? Utils.convertPixelsToDp(10.0f) : Utils.convertPixelsToDp(sz / 100);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<E> getValues(XSLFChartData.XSLFSeries xSLFSeries) {
        ArrayList arrayList = new ArrayList();
        XDDFNumericalDataSource<? extends Number> valuesData = xSLFSeries.getValuesData();
        int pointCount = valuesData.getPointCount();
        for (int i = 0; i < pointCount; i++) {
            if (isXAxisInverted()) {
                arrayList.add(0, createEntry(Integer.valueOf((pointCount - i) - 1), (Number) valuesData.getPointAt(i)));
            } else {
                arrayList.add(createEntry(Integer.valueOf(i), (Number) valuesData.getPointAt(i)));
            }
        }
        return arrayList;
    }

    public RectF getViewPortContentRect(C c) {
        return c.getViewPortHandler().getContentRect();
    }

    public IAxisValueFormatter getXAxisValueFormatter(List<String> list, CTCatAx cTCatAx, CTDateAx cTDateAx, XSLFChartData.XSLFSeries xSLFSeries) {
        FormatType from;
        CTNumFmt numFmt;
        if (cTCatAx != null && (numFmt = cTCatAx.getNumFmt()) != null) {
            from = FormatType.from(numFmt.getFormatCode());
        } else if (cTDateAx != null) {
            from = FormatType.DATE;
            CTNumFmt numFmt2 = cTDateAx.getNumFmt();
            if (numFmt2 != null) {
                from.setFormat(numFmt2.getFormatCode());
            }
        } else {
            from = FormatType.from(xSLFSeries.getCategoryData().getFormatCode());
        }
        return AxisFormatter.create(list, from);
    }

    public CTChartLines getXGridlines() {
        CTCatAx catAx = getCatAx();
        if (catAx == null) {
            return null;
        }
        return catAx.getMajorGridlines();
    }

    public YAxis getYAxisLeft(C c) {
        if (c instanceof BarLineChartBase) {
            BarLineChartBase barLineChartBase = (BarLineChartBase) c;
            return this.yAxisDependency == YAxis.AxisDependency.LEFT ? barLineChartBase.getAxisLeft() : barLineChartBase.getAxisRight();
        }
        if (c instanceof RadarChart) {
            return ((RadarChart) c).getYAxis();
        }
        return null;
    }

    public YAxis getYAxisRight(C c) {
        if (!(c instanceof BarLineChartBase)) {
            return null;
        }
        BarLineChartBase barLineChartBase = (BarLineChartBase) c;
        return this.yAxisDependency == YAxis.AxisDependency.LEFT ? barLineChartBase.getAxisRight() : barLineChartBase.getAxisLeft();
    }

    public IAxisValueFormatter getYAxisValueFormatter(CTValAx cTValAx, XSLFChartData.XSLFSeries xSLFSeries) {
        CTNumFmt numFmt;
        return AxisFormatter.create((cTValAx == null || (numFmt = cTValAx.getNumFmt()) == null) ? FormatType.from(xSLFSeries.getValuesData().getFormatCode()) : FormatType.from(numFmt.getFormatCode()));
    }

    public CTChartLines getYGridlines() {
        CTValAx valAx = getValAx();
        if (valAx == null) {
            return null;
        }
        return valAx.getMajorGridlines();
    }

    public abstract void init();

    public boolean isXAxisInverted() {
        return this.yAxisDependency == YAxis.AxisDependency.RIGHT;
    }

    public boolean isYAxisInverted(C c) {
        XAxis.XAxisPosition position = c.getXAxis().getPosition();
        return position == XAxis.XAxisPosition.TOP || position == XAxis.XAxisPosition.TOP_INSIDE;
    }

    public void setAxis(C c) {
        if (c instanceof PieChart) {
            return;
        }
        CTChartLines xGridlines = getXGridlines();
        CTChartLines yGridlines = getYGridlines();
        setXAxis(c, xGridlines, yGridlines);
        setYAxisLeft(c, getYAxisLeft(c), xGridlines, yGridlines);
        setYAxisRight(c, getYAxisRight(c), xGridlines, yGridlines);
    }

    public abstract void setChart(C c);

    public void setCustomXAXis(C c, XAxis xAxis) {
        xAxis.setAxisMinimum(0.0f);
        xAxis.setGranularityEnabled(true);
    }

    public void setCustomYAxisLeft(C c, YAxis yAxis) {
        yAxis.setAxisMinimum(0.0f);
        if (Float.compare(c.getYMax(), 5.0f) >= 0) {
            yAxis.setGranularityEnabled(true);
        } else {
            yAxis.setAxisMaximum(Math.round(r0 + 0.5f));
        }
    }

    public void setCustomYAxisRight(C c, YAxis yAxis) {
    }

    public void setDataSetColor(BaseDataSet<E> baseDataSet, XSLFChartData.XSLFSeries xSLFSeries, int i) {
        Color dataSetColor = getDataSetColor(xSLFSeries);
        if (dataSetColor == null) {
            dataSetColor = getAccent2Color(i);
        }
        if (dataSetColor != null) {
            baseDataSet.setColor(dataSetColor.getRGB());
        }
    }

    public void setDataSetDrawValues(BaseDataSet<E> baseDataSet, CTDLbls cTDLbls) {
        baseDataSet.setDrawValues(drawValues(cTDLbls));
    }

    public void setDataSetValueFormatter(BaseDataSet<E> baseDataSet, XSLFChartData.XSLFSeries xSLFSeries, CTDLbls cTDLbls) {
        baseDataSet.setValueFormatter(getValueFormatter(xSLFSeries, cTDLbls));
    }

    public void setDataSetValueTextColor(BaseDataSet<E> baseDataSet, CTDLbls cTDLbls) {
        Color valueTextColor = getValueTextColor(cTDLbls);
        if (valueTextColor != null) {
            baseDataSet.setValueTextColor(valueTextColor.getRGB());
        }
    }

    public void setDataSetValueTextSize(BaseDataSet<E> baseDataSet, CTDLbls cTDLbls) {
        baseDataSet.setValueTextSize(getValueTextSize(cTDLbls));
    }

    public void setLegend(Legend legend) {
        CTLegend legend2 = this.chart.getCTChart().getLegend();
        if (legend2 == null) {
            legend.setEnabled(false);
            return;
        }
        setLegendForm(legend);
        setLegendTextSizeAndTextColor(legend, legend2);
        CTLegendPos legendPos = legend2.getLegendPos();
        if (legendPos == null) {
            return;
        }
        int intValue = legendPos.getVal().intValue();
        if (intValue == 1) {
            legend.setDrawInside(false);
            legend.setVerticalAlignment(Legend.LegendVerticalAlignment.BOTTOM);
            legend.setHorizontalAlignment(Legend.LegendHorizontalAlignment.CENTER);
            return;
        }
        if (intValue == 2) {
            legend.setDrawInside(false);
            legend.setHorizontalAlignment(Legend.LegendHorizontalAlignment.RIGHT);
            legend.setVerticalAlignment(Legend.LegendVerticalAlignment.TOP);
            legend.setOrientation(Legend.LegendOrientation.VERTICAL);
            return;
        }
        if (intValue == 3) {
            legend.setDrawInside(true);
            legend.setVerticalAlignment(Legend.LegendVerticalAlignment.CENTER);
            legend.setOrientation(Legend.LegendOrientation.VERTICAL);
        } else {
            if (intValue == 4) {
                legend.setDrawInside(true);
                legend.setHorizontalAlignment(Legend.LegendHorizontalAlignment.RIGHT);
                legend.setVerticalAlignment(Legend.LegendVerticalAlignment.CENTER);
                legend.setOrientation(Legend.LegendOrientation.VERTICAL);
                return;
            }
            if (intValue != 5) {
                return;
            }
            legend.setDrawInside(false);
            legend.setVerticalAlignment(Legend.LegendVerticalAlignment.TOP);
            legend.setHorizontalAlignment(Legend.LegendHorizontalAlignment.CENTER);
        }
    }

    public void setLegendForm(Legend legend) {
        legend.setFormSize(4.0f);
    }

    public void setLegendTextSizeAndTextColor(Legend legend, CTLegend cTLegend) {
        CTTextBody txPr;
        CTTextCharacterProperties defRPr;
        float convertPixelsToDp = Utils.convertPixelsToDp(10.0f);
        if (cTLegend == null || (txPr = cTLegend.getTxPr()) == null || txPr.sizeOfPArray() <= 0) {
            ChartUtils.setTextSize(legend, convertPixelsToDp);
            return;
        }
        CTTextParagraphProperties pPr = txPr.getPArray(0).getPPr();
        if (pPr == null || (defRPr = pPr.getDefRPr()) == null) {
            ChartUtils.setTextSize(legend, convertPixelsToDp);
            return;
        }
        if (defRPr.getSz() > 0) {
            ChartUtils.setTextSize(legend, Utils.convertPixelsToDp(r1 / 100));
        } else {
            ChartUtils.setTextSize(legend, convertPixelsToDp);
        }
        Color color = getColor(defRPr);
        if (color != null) {
            legend.setTextColor(color.getRGB());
        }
    }

    public void setXAxis(C c, CTChartLines cTChartLines, CTChartLines cTChartLines2) {
        CTCatAx catAx = getCatAx();
        CTDateAx dateAx = getDateAx();
        XSLFChartData.XSLFSeries xSLFSeries = this.chartData.getXSLFSeries(0);
        List<String> category = getCategory(xSLFSeries);
        XAxis xAxis = c.getXAxis();
        boolean showXAxis = showXAxis(catAx, dateAx);
        xAxis.setEnabled(showXAxis);
        xAxis.setDrawLabels(showXAxis);
        xAxis.setDrawAxisLine(cTChartLines != null);
        xAxis.setDrawGridLines(cTChartLines != null);
        xAxis.setPosition(getXAxisPosition(catAx));
        Color gridlineColor = getGridlineColor(cTChartLines);
        if (gridlineColor != null) {
            xAxis.setAxisLineColor(gridlineColor.getRGB());
        }
        if (category.size() > 6) {
            xAxis.setLabelCount(category.size());
        }
        xAxis.setValueFormatter(getXAxisValueFormatter(category, catAx, dateAx, xSLFSeries));
        setXAxisTextSizeAndColor(xAxis, catAx, dateAx);
        setCustomXAXis(c, xAxis);
    }

    public void setXAxisTextSizeAndColor(XAxis xAxis, CTCatAx cTCatAx, CTDateAx cTDateAx) {
        setAxisTextSizeAndColor(xAxis, Utils.convertPixelsToDp(10.0f), cTCatAx != null ? cTCatAx.getTxPr() : cTDateAx != null ? cTDateAx.getTxPr() : null);
    }

    public void setYAxisLeft(C c, YAxis yAxis, CTChartLines cTChartLines, CTChartLines cTChartLines2) {
        if (yAxis == null) {
            return;
        }
        XSLFChartData.XSLFSeries xSLFSeries = this.chartData.getXSLFSeries(0);
        CTValAx valAx = getValAx();
        boolean showYAxis = showYAxis(valAx);
        yAxis.setEnabled(showYAxis);
        yAxis.setDrawLabels(showYAxis);
        yAxis.setInverted(isYAxisInverted(c));
        yAxis.setDrawAxisLine(cTChartLines != null);
        yAxis.setDrawGridLines(cTChartLines2 != null);
        yAxis.setValueFormatter(getYAxisValueFormatter(valAx, xSLFSeries));
        Color gridlineColor = getGridlineColor(cTChartLines2);
        if (gridlineColor != null) {
            yAxis.setAxisLineColor(gridlineColor.getRGB());
        }
        setYAxisTextSizeAndColor(yAxis);
        setCustomYAxisLeft(c, yAxis);
    }

    public void setYAxisRight(C c, YAxis yAxis, CTChartLines cTChartLines, CTChartLines cTChartLines2) {
        if (yAxis == null) {
            return;
        }
        yAxis.setEnabled(false);
        yAxis.setDrawLabels(false);
        yAxis.setDrawGridLines(false);
        yAxis.setDrawAxisLine(false);
        setCustomYAxisRight(c, yAxis);
    }

    public void setYAxisTextSizeAndColor(YAxis yAxis) {
        CTValAx valAxArray;
        float convertPixelsToDp = Utils.convertPixelsToDp(10.0f);
        CTPlotArea ploArea = getPloArea();
        if (ploArea.sizeOfValAxArray() <= 0 || (valAxArray = ploArea.getValAxArray(0)) == null) {
            ChartUtils.setTextSize(yAxis, convertPixelsToDp);
        } else {
            setAxisTextSizeAndColor(yAxis, convertPixelsToDp, valAxArray.getTxPr());
        }
    }

    public boolean showXAxis(CTCatAx cTCatAx, CTDateAx cTDateAx) {
        CTBoolean delete;
        CTTickLblPos tickLblPos;
        CTTickLblPos tickLblPos2;
        if (cTCatAx == null) {
            return cTDateAx != null && ((delete = cTDateAx.getDelete()) == null || !delete.getVal()) && ((tickLblPos = cTDateAx.getTickLblPos()) == null || tickLblPos.getVal() != STTickLblPos.NONE);
        }
        CTBoolean delete2 = cTCatAx.getDelete();
        if (delete2 != null) {
            return !delete2.getVal() && ((tickLblPos2 = cTCatAx.getTickLblPos()) == null || tickLblPos2.getVal() != STTickLblPos.NONE);
        }
        return true;
    }

    public boolean showYAxis(CTValAx cTValAx) {
        CTBoolean delete;
        CTTickLblPos tickLblPos;
        return cTValAx != null && ((delete = cTValAx.getDelete()) == null || !delete.getVal()) && ((tickLblPos = cTValAx.getTickLblPos()) == null || tickLblPos.getVal() != STTickLblPos.NONE);
    }

    public Color getColor(CTTextCharacterProperties cTTextCharacterProperties) {
        return XSLFColorDelegate.getColor(this.sheet, cTTextCharacterProperties);
    }

    public Color getAccent2Color(int i) {
        Color accent2Color = getAccent2Color();
        return new Color(accent2Color.getRed(), accent2Color.getGreen(), accent2Color.getBlue(), (int) ((1.0f - (i * (1.0f / Math.max(this.seriesCount, 6)))) * 255.0f));
    }
}
