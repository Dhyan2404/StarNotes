package com.github.mikephil.charting.charts;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.util.AttributeSet;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.data.PieData;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.highlight.PieHighlighter;
import com.github.mikephil.charting.interfaces.datasets.IPieDataSet;
import com.github.mikephil.charting.renderer.DataRenderer;
import com.github.mikephil.charting.renderer.PieChartRenderer;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.Utils;
import java.util.List;

/* loaded from: classes4.dex */
public class PieChart extends PieRadarChartBase<PieData> {

    /* renamed from: J */
    public float f21500J;

    /* renamed from: O */
    public boolean f21501O;

    /* renamed from: Q */
    public float f21502Q;
    protected float mMaxAngle;
    protected float mTransparentCircleRadiusPercent;

    /* renamed from: q */
    public RectF f21503q;

    /* renamed from: r */
    public boolean f21504r;

    /* renamed from: s */
    public float[] f21505s;

    /* renamed from: t */
    public float[] f21506t;

    /* renamed from: u */
    public boolean f21507u;

    /* renamed from: v */
    public boolean f21508v;

    /* renamed from: w */
    public boolean f21509w;

    /* renamed from: x */
    public boolean f21510x;

    /* renamed from: y */
    public CharSequence f21511y;

    /* renamed from: z */
    public MPPointF f21512z;

    public PieChart(Context context) {
        super(context);
        this.f21503q = new RectF();
        this.f21504r = true;
        this.f21505s = new float[1];
        this.f21506t = new float[1];
        this.f21507u = true;
        this.f21508v = false;
        this.f21509w = false;
        this.f21510x = false;
        this.f21511y = "";
        this.f21512z = MPPointF.getInstance(0.0f, 0.0f);
        this.f21500J = 50.0f;
        this.mTransparentCircleRadiusPercent = 55.0f;
        this.f21501O = true;
        this.f21502Q = 100.0f;
        this.mMaxAngle = 360.0f;
    }

    /* renamed from: b */
    public final float m17354b(float f) {
        return m17355c(f, ((PieData) this.mData).getYValueSum());
    }

    /* renamed from: c */
    public final float m17355c(float f, float f2) {
        return (f / f2) * this.mMaxAngle;
    }

    @Override // com.github.mikephil.charting.charts.PieRadarChartBase, com.github.mikephil.charting.charts.Chart
    public void calcMinMax() {
        m17356d();
    }

    @Override // com.github.mikephil.charting.charts.PieRadarChartBase, com.github.mikephil.charting.charts.Chart
    public void calculateOffsets() {
        super.calculateOffsets();
        if (this.mData == 0) {
            return;
        }
        float diameter = getDiameter() / 2.0f;
        MPPointF centerOffsets = getCenterOffsets();
        float selectionShift = ((PieData) this.mData).getDataSet().getSelectionShift();
        RectF rectF = this.f21503q;
        float f = centerOffsets.f21741x;
        float f2 = centerOffsets.f21742y;
        rectF.set((f - diameter) + selectionShift, (f2 - diameter) + selectionShift, (f + diameter) - selectionShift, (f2 + diameter) - selectionShift);
        MPPointF.recycleInstance(centerOffsets);
    }

    /* renamed from: d */
    public final void m17356d() {
        int entryCount = ((PieData) this.mData).getEntryCount();
        if (this.f21505s.length != entryCount) {
            this.f21505s = new float[entryCount];
        } else {
            for (int i = 0; i < entryCount; i++) {
                this.f21505s[i] = 0.0f;
            }
        }
        if (this.f21506t.length != entryCount) {
            this.f21506t = new float[entryCount];
        } else {
            for (int i2 = 0; i2 < entryCount; i2++) {
                this.f21506t[i2] = 0.0f;
            }
        }
        float yValueSum = ((PieData) this.mData).getYValueSum();
        List<IPieDataSet> dataSets = ((PieData) this.mData).getDataSets();
        int i3 = 0;
        for (int i4 = 0; i4 < ((PieData) this.mData).getDataSetCount(); i4++) {
            IPieDataSet iPieDataSet = dataSets.get(i4);
            for (int i5 = 0; i5 < iPieDataSet.getEntryCount(); i5++) {
                this.f21505s[i3] = m17355c(Math.abs(iPieDataSet.getEntryForIndex(i5).getY()), yValueSum);
                if (i3 == 0) {
                    this.f21506t[i3] = this.f21505s[i3];
                } else {
                    float[] fArr = this.f21506t;
                    fArr[i3] = fArr[i3 - 1] + this.f21505s[i3];
                }
                i3++;
            }
        }
    }

    public float[] getAbsoluteAngles() {
        return this.f21506t;
    }

    public MPPointF getCenterCircleBox() {
        return MPPointF.getInstance(this.f21503q.centerX(), this.f21503q.centerY());
    }

    public CharSequence getCenterText() {
        return this.f21511y;
    }

    public MPPointF getCenterTextOffset() {
        MPPointF mPPointF = this.f21512z;
        return MPPointF.getInstance(mPPointF.f21741x, mPPointF.f21742y);
    }

    public float getCenterTextRadiusPercent() {
        return this.f21502Q;
    }

    public RectF getCircleBox() {
        return this.f21503q;
    }

    public int getDataSetIndexForIndex(int i) {
        List<IPieDataSet> dataSets = ((PieData) this.mData).getDataSets();
        for (int i2 = 0; i2 < dataSets.size(); i2++) {
            if (dataSets.get(i2).getEntryForXValue(i, Float.NaN) != null) {
                return i2;
            }
        }
        return -1;
    }

    public float[] getDrawAngles() {
        return this.f21505s;
    }

    public float getHoleRadius() {
        return this.f21500J;
    }

    @Override // com.github.mikephil.charting.charts.PieRadarChartBase
    public int getIndexForAngle(float f) {
        float normalizedAngle = Utils.getNormalizedAngle(f - getRotationAngle());
        int i = 0;
        while (true) {
            float[] fArr = this.f21506t;
            if (i >= fArr.length) {
                return -1;
            }
            if (fArr[i] > normalizedAngle) {
                return i;
            }
            i++;
        }
    }

    @Override // com.github.mikephil.charting.charts.Chart
    public float[] getMarkerPosition(Highlight highlight) {
        MPPointF centerCircleBox = getCenterCircleBox();
        float radius = getRadius();
        float f = (radius / 10.0f) * 3.6f;
        if (isDrawHoleEnabled()) {
            f = (radius - ((radius / 100.0f) * getHoleRadius())) / 2.0f;
        }
        float f2 = radius - f;
        float rotationAngle = getRotationAngle();
        float f3 = this.f21505s[(int) highlight.getX()] / 2.0f;
        double d = f2;
        float cos = (float) ((Math.cos(Math.toRadians(((this.f21506t[r11] + rotationAngle) - f3) * this.mAnimator.getPhaseY())) * d) + centerCircleBox.f21741x);
        float sin = (float) ((d * Math.sin(Math.toRadians(((rotationAngle + this.f21506t[r11]) - f3) * this.mAnimator.getPhaseY()))) + centerCircleBox.f21742y);
        MPPointF.recycleInstance(centerCircleBox);
        return new float[]{cos, sin};
    }

    public float getMaxAngle() {
        return this.mMaxAngle;
    }

    @Override // com.github.mikephil.charting.charts.PieRadarChartBase
    public float getRadius() {
        RectF rectF = this.f21503q;
        if (rectF == null) {
            return 0.0f;
        }
        return Math.min(rectF.width() / 2.0f, this.f21503q.height() / 2.0f);
    }

    @Override // com.github.mikephil.charting.charts.PieRadarChartBase
    public float getRequiredBaseOffset() {
        return 0.0f;
    }

    @Override // com.github.mikephil.charting.charts.PieRadarChartBase
    public float getRequiredLegendOffset() {
        return this.mLegendRenderer.getLabelPaint().getTextSize() * 2.0f;
    }

    public float getTransparentCircleRadius() {
        return this.mTransparentCircleRadiusPercent;
    }

    @Override // com.github.mikephil.charting.charts.Chart
    @Deprecated
    public XAxis getXAxis() {
        throw new RuntimeException("PieChart has no XAxis");
    }

    @Override // com.github.mikephil.charting.charts.PieRadarChartBase, com.github.mikephil.charting.charts.Chart
    public void init() {
        super.init();
        this.mRenderer = new PieChartRenderer(this, this.mAnimator, this.mViewPortHandler);
        this.mXAxis = null;
        this.mHighlighter = new PieHighlighter(this);
    }

    public boolean isDrawCenterTextEnabled() {
        return this.f21501O;
    }

    public boolean isDrawEntryLabelsEnabled() {
        return this.f21504r;
    }

    public boolean isDrawHoleEnabled() {
        return this.f21507u;
    }

    public boolean isDrawRoundedSlicesEnabled() {
        return this.f21510x;
    }

    public boolean isDrawSlicesUnderHoleEnabled() {
        return this.f21508v;
    }

    public boolean isUsePercentValuesEnabled() {
        return this.f21509w;
    }

    public boolean needsHighlight(int i) {
        if (!valuesToHighlight()) {
            return false;
        }
        int i2 = 0;
        while (true) {
            Highlight[] highlightArr = this.mIndicesToHighlight;
            if (i2 >= highlightArr.length) {
                return false;
            }
            if (((int) highlightArr[i2].getX()) == i) {
                return true;
            }
            i2++;
        }
    }

    @Override // com.github.mikephil.charting.charts.Chart, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        DataRenderer dataRenderer = this.mRenderer;
        if (dataRenderer != null && (dataRenderer instanceof PieChartRenderer)) {
            ((PieChartRenderer) dataRenderer).releaseBitmap();
        }
        super.onDetachedFromWindow();
    }

    @Override // com.github.mikephil.charting.charts.Chart, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mData == 0) {
            return;
        }
        this.mRenderer.drawData(canvas);
        if (valuesToHighlight()) {
            this.mRenderer.drawHighlighted(canvas, this.mIndicesToHighlight);
        }
        this.mRenderer.drawExtras(canvas);
        this.mRenderer.drawValues(canvas);
        this.mLegendRenderer.renderLegend(canvas);
        drawDescription(canvas);
        drawMarkers(canvas);
    }

    public void setCenterText(CharSequence charSequence) {
        if (charSequence == null) {
            this.f21511y = "";
        } else {
            this.f21511y = charSequence;
        }
    }

    public void setCenterTextColor(int i) {
        ((PieChartRenderer) this.mRenderer).getPaintCenterText().setColor(i);
    }

    public void setCenterTextOffset(float f, float f2) {
        this.f21512z.f21741x = Utils.convertDpToPixel(f);
        this.f21512z.f21742y = Utils.convertDpToPixel(f2);
    }

    public void setCenterTextRadiusPercent(float f) {
        this.f21502Q = f;
    }

    public void setCenterTextSize(float f) {
        ((PieChartRenderer) this.mRenderer).getPaintCenterText().setTextSize(Utils.convertDpToPixel(f));
    }

    public void setCenterTextSizePixels(float f) {
        ((PieChartRenderer) this.mRenderer).getPaintCenterText().setTextSize(f);
    }

    public void setCenterTextTypeface(Typeface typeface) {
        ((PieChartRenderer) this.mRenderer).getPaintCenterText().setTypeface(typeface);
    }

    public void setDrawCenterText(boolean z) {
        this.f21501O = z;
    }

    public void setDrawEntryLabels(boolean z) {
        this.f21504r = z;
    }

    public void setDrawHoleEnabled(boolean z) {
        this.f21507u = z;
    }

    @Deprecated
    public void setDrawSliceText(boolean z) {
        this.f21504r = z;
    }

    public void setDrawSlicesUnderHole(boolean z) {
        this.f21508v = z;
    }

    public void setEntryLabelColor(int i) {
        ((PieChartRenderer) this.mRenderer).getPaintEntryLabels().setColor(i);
    }

    public void setEntryLabelTextSize(float f) {
        ((PieChartRenderer) this.mRenderer).getPaintEntryLabels().setTextSize(Utils.convertDpToPixel(f));
    }

    public void setEntryLabelTypeface(Typeface typeface) {
        ((PieChartRenderer) this.mRenderer).getPaintEntryLabels().setTypeface(typeface);
    }

    public void setHoleColor(int i) {
        ((PieChartRenderer) this.mRenderer).getPaintHole().setColor(i);
    }

    public void setHoleRadius(float f) {
        this.f21500J = f;
    }

    public void setMaxAngle(float f) {
        if (f > 360.0f) {
            f = 360.0f;
        }
        if (f < 90.0f) {
            f = 90.0f;
        }
        this.mMaxAngle = f;
    }

    public void setTransparentCircleAlpha(int i) {
        ((PieChartRenderer) this.mRenderer).getPaintTransparentCircle().setAlpha(i);
    }

    public void setTransparentCircleColor(int i) {
        Paint paintTransparentCircle = ((PieChartRenderer) this.mRenderer).getPaintTransparentCircle();
        int alpha = paintTransparentCircle.getAlpha();
        paintTransparentCircle.setColor(i);
        paintTransparentCircle.setAlpha(alpha);
    }

    public void setTransparentCircleRadius(float f) {
        this.mTransparentCircleRadiusPercent = f;
    }

    public void setUsePercentValues(boolean z) {
        this.f21509w = z;
    }

    public PieChart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f21503q = new RectF();
        this.f21504r = true;
        this.f21505s = new float[1];
        this.f21506t = new float[1];
        this.f21507u = true;
        this.f21508v = false;
        this.f21509w = false;
        this.f21510x = false;
        this.f21511y = "";
        this.f21512z = MPPointF.getInstance(0.0f, 0.0f);
        this.f21500J = 50.0f;
        this.mTransparentCircleRadiusPercent = 55.0f;
        this.f21501O = true;
        this.f21502Q = 100.0f;
        this.mMaxAngle = 360.0f;
    }

    public PieChart(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f21503q = new RectF();
        this.f21504r = true;
        this.f21505s = new float[1];
        this.f21506t = new float[1];
        this.f21507u = true;
        this.f21508v = false;
        this.f21509w = false;
        this.f21510x = false;
        this.f21511y = "";
        this.f21512z = MPPointF.getInstance(0.0f, 0.0f);
        this.f21500J = 50.0f;
        this.mTransparentCircleRadiusPercent = 55.0f;
        this.f21501O = true;
        this.f21502Q = 100.0f;
        this.mMaxAngle = 360.0f;
    }
}
