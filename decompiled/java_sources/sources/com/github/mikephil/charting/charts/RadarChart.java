package com.github.mikephil.charting.charts;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.RectF;
import android.util.AttributeSet;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.RadarData;
import com.github.mikephil.charting.highlight.RadarHighlighter;
import com.github.mikephil.charting.renderer.RadarChartRenderer;
import com.github.mikephil.charting.renderer.XAxisRendererRadarChart;
import com.github.mikephil.charting.renderer.YAxisRendererRadarChart;
import com.github.mikephil.charting.utils.Utils;

/* loaded from: classes4.dex */
public class RadarChart extends PieRadarChartBase<RadarData> {
    protected XAxisRendererRadarChart mXAxisRenderer;
    protected YAxisRendererRadarChart mYAxisRenderer;

    /* renamed from: q */
    public float f21519q;

    /* renamed from: r */
    public float f21520r;

    /* renamed from: s */
    public int f21521s;

    /* renamed from: t */
    public int f21522t;

    /* renamed from: u */
    public int f21523u;

    /* renamed from: v */
    public boolean f21524v;

    /* renamed from: w */
    public int f21525w;

    /* renamed from: x */
    public YAxis f21526x;

    public RadarChart(Context context) {
        super(context);
        this.f21519q = 2.5f;
        this.f21520r = 1.5f;
        this.f21521s = Color.rgb(122, 122, 122);
        this.f21522t = Color.rgb(122, 122, 122);
        this.f21523u = 150;
        this.f21524v = true;
        this.f21525w = 0;
    }

    @Override // com.github.mikephil.charting.charts.PieRadarChartBase, com.github.mikephil.charting.charts.Chart
    public void calcMinMax() {
        super.calcMinMax();
        YAxis yAxis = this.f21526x;
        RadarData radarData = (RadarData) this.mData;
        YAxis.AxisDependency axisDependency = YAxis.AxisDependency.LEFT;
        yAxis.calculate(radarData.getYMin(axisDependency), ((RadarData) this.mData).getYMax(axisDependency));
        this.mXAxis.calculate(0.0f, ((RadarData) this.mData).getMaxEntryCountSet().getEntryCount());
    }

    public float getFactor() {
        RectF contentRect = this.mViewPortHandler.getContentRect();
        return Math.min(contentRect.width() / 2.0f, contentRect.height() / 2.0f) / this.f21526x.mAxisRange;
    }

    @Override // com.github.mikephil.charting.charts.PieRadarChartBase
    public int getIndexForAngle(float f) {
        float normalizedAngle = Utils.getNormalizedAngle(f - getRotationAngle());
        float sliceAngle = getSliceAngle();
        int entryCount = ((RadarData) this.mData).getMaxEntryCountSet().getEntryCount();
        int i = 0;
        while (i < entryCount) {
            int i2 = i + 1;
            if ((i2 * sliceAngle) - (sliceAngle / 2.0f) > normalizedAngle) {
                return i;
            }
            i = i2;
        }
        return 0;
    }

    @Override // com.github.mikephil.charting.charts.PieRadarChartBase
    public float getRadius() {
        RectF contentRect = this.mViewPortHandler.getContentRect();
        return Math.min(contentRect.width() / 2.0f, contentRect.height() / 2.0f);
    }

    @Override // com.github.mikephil.charting.charts.PieRadarChartBase
    public float getRequiredBaseOffset() {
        return (this.mXAxis.isEnabled() && this.mXAxis.isDrawLabelsEnabled()) ? this.mXAxis.mLabelRotatedWidth : Utils.convertDpToPixel(10.0f);
    }

    @Override // com.github.mikephil.charting.charts.PieRadarChartBase
    public float getRequiredLegendOffset() {
        return this.mLegendRenderer.getLabelPaint().getTextSize() * 4.0f;
    }

    public int getSkipWebLineCount() {
        return this.f21525w;
    }

    public float getSliceAngle() {
        return 360.0f / ((RadarData) this.mData).getMaxEntryCountSet().getEntryCount();
    }

    public int getWebAlpha() {
        return this.f21523u;
    }

    public int getWebColor() {
        return this.f21521s;
    }

    public int getWebColorInner() {
        return this.f21522t;
    }

    public float getWebLineWidth() {
        return this.f21519q;
    }

    public float getWebLineWidthInner() {
        return this.f21520r;
    }

    public YAxis getYAxis() {
        return this.f21526x;
    }

    @Override // com.github.mikephil.charting.charts.PieRadarChartBase, com.github.mikephil.charting.interfaces.dataprovider.ChartInterface
    public float getYChartMax() {
        return this.f21526x.mAxisMaximum;
    }

    @Override // com.github.mikephil.charting.charts.PieRadarChartBase, com.github.mikephil.charting.interfaces.dataprovider.ChartInterface
    public float getYChartMin() {
        return this.f21526x.mAxisMinimum;
    }

    public float getYRange() {
        return this.f21526x.mAxisRange;
    }

    @Override // com.github.mikephil.charting.charts.PieRadarChartBase, com.github.mikephil.charting.charts.Chart
    public void init() {
        super.init();
        this.f21526x = new YAxis(YAxis.AxisDependency.LEFT);
        this.f21519q = Utils.convertDpToPixel(1.5f);
        this.f21520r = Utils.convertDpToPixel(0.75f);
        this.mRenderer = new RadarChartRenderer(this, this.mAnimator, this.mViewPortHandler);
        this.mYAxisRenderer = new YAxisRendererRadarChart(this.mViewPortHandler, this.f21526x, this);
        this.mXAxisRenderer = new XAxisRendererRadarChart(this.mViewPortHandler, this.mXAxis, this);
        this.mHighlighter = new RadarHighlighter(this);
    }

    @Override // com.github.mikephil.charting.charts.PieRadarChartBase, com.github.mikephil.charting.charts.Chart
    public void notifyDataSetChanged() {
        if (this.mData == 0) {
            return;
        }
        calcMinMax();
        YAxisRendererRadarChart yAxisRendererRadarChart = this.mYAxisRenderer;
        YAxis yAxis = this.f21526x;
        yAxisRendererRadarChart.computeAxis(yAxis.mAxisMinimum, yAxis.mAxisMaximum, yAxis.isInverted());
        XAxisRendererRadarChart xAxisRendererRadarChart = this.mXAxisRenderer;
        XAxis xAxis = this.mXAxis;
        xAxisRendererRadarChart.computeAxis(xAxis.mAxisMinimum, xAxis.mAxisMaximum, false);
        Legend legend = this.mLegend;
        if (legend != null && !legend.isLegendCustom()) {
            this.mLegendRenderer.computeLegend(this.mData);
        }
        calculateOffsets();
    }

    @Override // com.github.mikephil.charting.charts.Chart, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mData == 0) {
            return;
        }
        if (this.mXAxis.isEnabled()) {
            XAxisRendererRadarChart xAxisRendererRadarChart = this.mXAxisRenderer;
            XAxis xAxis = this.mXAxis;
            xAxisRendererRadarChart.computeAxis(xAxis.mAxisMinimum, xAxis.mAxisMaximum, false);
        }
        this.mXAxisRenderer.renderAxisLabels(canvas);
        if (this.f21524v) {
            this.mRenderer.drawExtras(canvas);
        }
        this.mYAxisRenderer.renderLimitLines(canvas);
        this.mRenderer.drawData(canvas);
        if (valuesToHighlight()) {
            this.mRenderer.drawHighlighted(canvas, this.mIndicesToHighlight);
        }
        this.mYAxisRenderer.renderAxisLabels(canvas);
        this.mRenderer.drawValues(canvas);
        this.mLegendRenderer.renderLegend(canvas);
        drawDescription(canvas);
        drawMarkers(canvas);
    }

    public void setDrawWeb(boolean z) {
        this.f21524v = z;
    }

    public void setSkipWebLineCount(int i) {
        this.f21525w = Math.max(0, i);
    }

    public void setWebAlpha(int i) {
        this.f21523u = i;
    }

    public void setWebColor(int i) {
        this.f21521s = i;
    }

    public void setWebColorInner(int i) {
        this.f21522t = i;
    }

    public void setWebLineWidth(float f) {
        this.f21519q = Utils.convertDpToPixel(f);
    }

    public void setWebLineWidthInner(float f) {
        this.f21520r = Utils.convertDpToPixel(f);
    }

    public RadarChart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f21519q = 2.5f;
        this.f21520r = 1.5f;
        this.f21521s = Color.rgb(122, 122, 122);
        this.f21522t = Color.rgb(122, 122, 122);
        this.f21523u = 150;
        this.f21524v = true;
        this.f21525w = 0;
    }

    public RadarChart(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f21519q = 2.5f;
        this.f21520r = 1.5f;
        this.f21521s = Color.rgb(122, 122, 122);
        this.f21522t = Color.rgb(122, 122, 122);
        this.f21523u = 150;
        this.f21524v = true;
        this.f21525w = 0;
    }
}
