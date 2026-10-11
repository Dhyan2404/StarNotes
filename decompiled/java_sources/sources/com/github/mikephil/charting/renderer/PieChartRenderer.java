package com.github.mikephil.charting.renderer;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import com.github.mikephil.charting.animation.ChartAnimator;
import com.github.mikephil.charting.charts.PieChart;
import com.github.mikephil.charting.data.PieData;
import com.github.mikephil.charting.data.PieDataSet;
import com.github.mikephil.charting.data.PieEntry;
import com.github.mikephil.charting.formatter.IValueFormatter;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.datasets.IPieDataSet;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.Utils;
import com.github.mikephil.charting.utils.ViewPortHandler;
import java.lang.ref.WeakReference;
import java.util.List;

/* loaded from: classes4.dex */
public class PieChartRenderer extends DataRenderer {

    /* renamed from: a */
    public TextPaint f21720a;

    /* renamed from: b */
    public Paint f21721b;

    /* renamed from: c */
    public StaticLayout f21722c;

    /* renamed from: d */
    public CharSequence f21723d;

    /* renamed from: e */
    public RectF f21724e;

    /* renamed from: f */
    public RectF[] f21725f;

    /* renamed from: g */
    public Path f21726g;

    /* renamed from: h */
    public RectF f21727h;

    /* renamed from: i */
    public Path f21728i;
    protected Canvas mBitmapCanvas;
    protected PieChart mChart;
    protected WeakReference<Bitmap> mDrawBitmap;
    protected Path mDrawCenterTextPathBuffer;
    protected RectF mDrawHighlightedRectF;
    protected Paint mHolePaint;
    protected Paint mTransparentCirclePaint;
    protected Paint mValueLinePaint;

    public PieChartRenderer(PieChart pieChart, ChartAnimator chartAnimator, ViewPortHandler viewPortHandler) {
        super(chartAnimator, viewPortHandler);
        this.f21724e = new RectF();
        this.f21725f = new RectF[]{new RectF(), new RectF(), new RectF()};
        this.f21726g = new Path();
        this.f21727h = new RectF();
        this.f21728i = new Path();
        this.mDrawCenterTextPathBuffer = new Path();
        this.mDrawHighlightedRectF = new RectF();
        this.mChart = pieChart;
        Paint paint = new Paint(1);
        this.mHolePaint = paint;
        paint.setColor(-1);
        this.mHolePaint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint(1);
        this.mTransparentCirclePaint = paint2;
        paint2.setColor(-1);
        this.mTransparentCirclePaint.setStyle(Paint.Style.FILL);
        this.mTransparentCirclePaint.setAlpha(105);
        TextPaint textPaint = new TextPaint(1);
        this.f21720a = textPaint;
        textPaint.setColor(-16777216);
        this.f21720a.setTextSize(Utils.convertDpToPixel(12.0f));
        this.mValuePaint.setTextSize(Utils.convertDpToPixel(13.0f));
        this.mValuePaint.setColor(-1);
        this.mValuePaint.setTextAlign(Paint.Align.CENTER);
        Paint paint3 = new Paint(1);
        this.f21721b = paint3;
        paint3.setColor(-1);
        this.f21721b.setTextAlign(Paint.Align.CENTER);
        this.f21721b.setTextSize(Utils.convertDpToPixel(13.0f));
        Paint paint4 = new Paint(1);
        this.mValueLinePaint = paint4;
        paint4.setStyle(Paint.Style.STROKE);
    }

    public float calculateMinimumRadiusForSpacedSlice(MPPointF mPPointF, float f, float f2, float f3, float f4, float f5, float f6) {
        double d = (f5 + f6) * 0.017453292f;
        float cos = mPPointF.f21741x + (((float) Math.cos(d)) * f);
        float sin = mPPointF.f21742y + (((float) Math.sin(d)) * f);
        double d2 = (f5 + (f6 / 2.0f)) * 0.017453292f;
        return (float) ((f - ((float) ((Math.sqrt(Math.pow(cos - f3, 2.0d) + Math.pow(sin - f4, 2.0d)) / 2.0d) * Math.tan(((180.0d - f2) / 2.0d) * 0.017453292519943295d)))) - Math.sqrt(Math.pow((mPPointF.f21741x + (((float) Math.cos(d2)) * f)) - ((cos + f3) / 2.0f), 2.0d) + Math.pow((mPPointF.f21742y + (((float) Math.sin(d2)) * f)) - ((sin + f4) / 2.0f), 2.0d)));
    }

    public void drawCenterText(Canvas canvas) {
        MPPointF mPPointF;
        CharSequence centerText = this.mChart.getCenterText();
        if (!this.mChart.isDrawCenterTextEnabled() || centerText == null) {
            return;
        }
        MPPointF centerCircleBox = this.mChart.getCenterCircleBox();
        MPPointF centerTextOffset = this.mChart.getCenterTextOffset();
        float f = centerCircleBox.f21741x + centerTextOffset.f21741x;
        float f2 = centerCircleBox.f21742y + centerTextOffset.f21742y;
        float radius = (!this.mChart.isDrawHoleEnabled() || this.mChart.isDrawSlicesUnderHoleEnabled()) ? this.mChart.getRadius() : this.mChart.getRadius() * (this.mChart.getHoleRadius() / 100.0f);
        RectF[] rectFArr = this.f21725f;
        RectF rectF = rectFArr[0];
        rectF.left = f - radius;
        rectF.top = f2 - radius;
        rectF.right = f + radius;
        rectF.bottom = f2 + radius;
        RectF rectF2 = rectFArr[1];
        rectF2.set(rectF);
        float centerTextRadiusPercent = this.mChart.getCenterTextRadiusPercent() / 100.0f;
        if (centerTextRadiusPercent > 0.0d) {
            rectF2.inset((rectF2.width() - (rectF2.width() * centerTextRadiusPercent)) / 2.0f, (rectF2.height() - (rectF2.height() * centerTextRadiusPercent)) / 2.0f);
        }
        if (centerText.equals(this.f21723d) && rectF2.equals(this.f21724e)) {
            mPPointF = centerTextOffset;
        } else {
            this.f21724e.set(rectF2);
            this.f21723d = centerText;
            mPPointF = centerTextOffset;
            this.f21722c = new StaticLayout(centerText, 0, centerText.length(), this.f21720a, (int) Math.max(Math.ceil(this.f21724e.width()), 1.0d), Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
        }
        float height = this.f21722c.getHeight();
        canvas.save();
        Path path = this.mDrawCenterTextPathBuffer;
        path.reset();
        path.addOval(rectF, Path.Direction.CW);
        canvas.clipPath(path);
        canvas.translate(rectF2.left, rectF2.top + ((rectF2.height() - height) / 2.0f));
        this.f21722c.draw(canvas);
        canvas.restore();
        MPPointF.recycleInstance(centerCircleBox);
        MPPointF.recycleInstance(mPPointF);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawData(Canvas canvas) {
        int chartWidth = (int) this.mViewPortHandler.getChartWidth();
        int chartHeight = (int) this.mViewPortHandler.getChartHeight();
        WeakReference<Bitmap> weakReference = this.mDrawBitmap;
        if (weakReference == null || weakReference.get().getWidth() != chartWidth || this.mDrawBitmap.get().getHeight() != chartHeight) {
            if (chartWidth <= 0 || chartHeight <= 0) {
                return;
            }
            this.mDrawBitmap = new WeakReference<>(Bitmap.createBitmap(chartWidth, chartHeight, Bitmap.Config.ARGB_4444));
            this.mBitmapCanvas = new Canvas(this.mDrawBitmap.get());
        }
        this.mDrawBitmap.get().eraseColor(0);
        for (IPieDataSet iPieDataSet : ((PieData) this.mChart.getData()).getDataSets()) {
            if (iPieDataSet.isVisible() && iPieDataSet.getEntryCount() > 0) {
                drawDataSet(canvas, iPieDataSet);
            }
        }
    }

    public void drawDataSet(Canvas canvas, IPieDataSet iPieDataSet) {
        int i;
        int i2;
        float f;
        float f2;
        float f3;
        RectF rectF;
        int i3;
        float[] fArr;
        int i4;
        float f4;
        MPPointF mPPointF;
        float f5;
        float f6;
        MPPointF mPPointF2;
        float f7;
        int i5;
        PieChartRenderer pieChartRenderer = this;
        IPieDataSet iPieDataSet2 = iPieDataSet;
        float rotationAngle = pieChartRenderer.mChart.getRotationAngle();
        float phaseX = pieChartRenderer.mAnimator.getPhaseX();
        float phaseY = pieChartRenderer.mAnimator.getPhaseY();
        RectF circleBox = pieChartRenderer.mChart.getCircleBox();
        int entryCount = iPieDataSet.getEntryCount();
        float[] drawAngles = pieChartRenderer.mChart.getDrawAngles();
        MPPointF centerCircleBox = pieChartRenderer.mChart.getCenterCircleBox();
        float radius = pieChartRenderer.mChart.getRadius();
        int i6 = 1;
        boolean z = pieChartRenderer.mChart.isDrawHoleEnabled() && !pieChartRenderer.mChart.isDrawSlicesUnderHoleEnabled();
        float holeRadius = z ? (pieChartRenderer.mChart.getHoleRadius() / 100.0f) * radius : 0.0f;
        int i7 = 0;
        for (int i8 = 0; i8 < entryCount; i8++) {
            if (Math.abs(iPieDataSet2.getEntryForIndex(i8).getY()) > Utils.FLOAT_EPSILON) {
                i7++;
            }
        }
        float sliceSpace = i7 <= 1 ? 0.0f : pieChartRenderer.getSliceSpace(iPieDataSet2);
        int i9 = 0;
        float f8 = 0.0f;
        while (i9 < entryCount) {
            float f9 = drawAngles[i9];
            float abs = Math.abs(iPieDataSet2.getEntryForIndex(i9).getY());
            float f10 = Utils.FLOAT_EPSILON;
            if (abs <= f10 || pieChartRenderer.mChart.needsHighlight(i9)) {
                i = i9;
                i2 = i6;
                f = radius;
                f2 = rotationAngle;
                f3 = phaseX;
                rectF = circleBox;
                i3 = entryCount;
                fArr = drawAngles;
                i4 = i7;
                f4 = holeRadius;
                mPPointF = centerCircleBox;
            } else {
                int i10 = (sliceSpace <= 0.0f || f9 > 180.0f) ? 0 : i6;
                pieChartRenderer.mRenderPaint.setColor(iPieDataSet2.getColor(i9));
                float f11 = i7 == 1 ? 0.0f : sliceSpace / (radius * 0.017453292f);
                float f12 = rotationAngle + ((f8 + (f11 / 2.0f)) * phaseY);
                float f13 = (f9 - f11) * phaseY;
                if (f13 < 0.0f) {
                    f13 = 0.0f;
                }
                pieChartRenderer.f21726g.reset();
                int i11 = i9;
                int i12 = i7;
                double d = f12 * 0.017453292f;
                i3 = entryCount;
                fArr = drawAngles;
                float cos = centerCircleBox.f21741x + (((float) Math.cos(d)) * radius);
                float sin = centerCircleBox.f21742y + (((float) Math.sin(d)) * radius);
                if (f13 < 360.0f || f13 % 360.0f > f10) {
                    f3 = phaseX;
                    pieChartRenderer.f21726g.moveTo(cos, sin);
                    pieChartRenderer.f21726g.arcTo(circleBox, f12, f13);
                } else {
                    f3 = phaseX;
                    pieChartRenderer.f21726g.addCircle(centerCircleBox.f21741x, centerCircleBox.f21742y, radius, Path.Direction.CW);
                }
                RectF rectF2 = pieChartRenderer.f21727h;
                float f14 = centerCircleBox.f21741x;
                float f15 = centerCircleBox.f21742y;
                float f16 = f13;
                rectF2.set(f14 - holeRadius, f15 - holeRadius, f14 + holeRadius, f15 + holeRadius);
                if (!z) {
                    f4 = holeRadius;
                    f2 = rotationAngle;
                    f5 = f16;
                    i2 = 1;
                    f = radius;
                    mPPointF = centerCircleBox;
                    rectF = circleBox;
                    i4 = i12;
                    i = i11;
                    f6 = 360.0f;
                } else if (holeRadius > 0.0f || i10 != 0) {
                    if (i10 != 0) {
                        f7 = f16;
                        rectF = circleBox;
                        i4 = i12;
                        i = i11;
                        f4 = holeRadius;
                        i5 = 1;
                        f = radius;
                        mPPointF2 = centerCircleBox;
                        float calculateMinimumRadiusForSpacedSlice = calculateMinimumRadiusForSpacedSlice(centerCircleBox, radius, f9 * phaseY, cos, sin, f12, f7);
                        if (calculateMinimumRadiusForSpacedSlice < 0.0f) {
                            calculateMinimumRadiusForSpacedSlice = -calculateMinimumRadiusForSpacedSlice;
                        }
                        holeRadius = Math.max(f4, calculateMinimumRadiusForSpacedSlice);
                    } else {
                        f4 = holeRadius;
                        mPPointF2 = centerCircleBox;
                        f7 = f16;
                        i5 = 1;
                        f = radius;
                        rectF = circleBox;
                        i4 = i12;
                        i = i11;
                    }
                    float f17 = (i4 == i5 || holeRadius == 0.0f) ? 0.0f : sliceSpace / (holeRadius * 0.017453292f);
                    float f18 = ((f8 + (f17 / 2.0f)) * phaseY) + rotationAngle;
                    float f19 = (f9 - f17) * phaseY;
                    if (f19 < 0.0f) {
                        f19 = 0.0f;
                    }
                    float f20 = f18 + f19;
                    if (f13 < 360.0f || f7 % 360.0f > f10) {
                        i2 = i5;
                        pieChartRenderer = this;
                        double d2 = f20 * 0.017453292f;
                        f2 = rotationAngle;
                        pieChartRenderer.f21726g.lineTo(mPPointF2.f21741x + (((float) Math.cos(d2)) * holeRadius), mPPointF2.f21742y + (holeRadius * ((float) Math.sin(d2))));
                        pieChartRenderer.f21726g.arcTo(pieChartRenderer.f21727h, f20, -f19);
                    } else {
                        i2 = i5;
                        pieChartRenderer = this;
                        pieChartRenderer.f21726g.addCircle(mPPointF2.f21741x, mPPointF2.f21742y, holeRadius, Path.Direction.CCW);
                        f2 = rotationAngle;
                    }
                    mPPointF = mPPointF2;
                    pieChartRenderer.f21726g.close();
                    pieChartRenderer.mBitmapCanvas.drawPath(pieChartRenderer.f21726g, pieChartRenderer.mRenderPaint);
                } else {
                    f4 = holeRadius;
                    f2 = rotationAngle;
                    f5 = f16;
                    f6 = 360.0f;
                    i2 = 1;
                    f = radius;
                    mPPointF = centerCircleBox;
                    rectF = circleBox;
                    i4 = i12;
                    i = i11;
                }
                if (f5 % f6 > f10) {
                    if (i10 != 0) {
                        float calculateMinimumRadiusForSpacedSlice2 = calculateMinimumRadiusForSpacedSlice(mPPointF, f, f9 * phaseY, cos, sin, f12, f5);
                        double d3 = (f12 + (f5 / 2.0f)) * 0.017453292f;
                        pieChartRenderer.f21726g.lineTo(mPPointF.f21741x + (((float) Math.cos(d3)) * calculateMinimumRadiusForSpacedSlice2), mPPointF.f21742y + (calculateMinimumRadiusForSpacedSlice2 * ((float) Math.sin(d3))));
                    } else {
                        pieChartRenderer.f21726g.lineTo(mPPointF.f21741x, mPPointF.f21742y);
                    }
                }
                pieChartRenderer.f21726g.close();
                pieChartRenderer.mBitmapCanvas.drawPath(pieChartRenderer.f21726g, pieChartRenderer.mRenderPaint);
            }
            f8 += f9 * f3;
            i9 = i + 1;
            iPieDataSet2 = iPieDataSet;
            centerCircleBox = mPPointF;
            i7 = i4;
            holeRadius = f4;
            circleBox = rectF;
            entryCount = i3;
            drawAngles = fArr;
            i6 = i2;
            phaseX = f3;
            radius = f;
            rotationAngle = f2;
        }
        MPPointF.recycleInstance(centerCircleBox);
    }

    public void drawEntryLabel(Canvas canvas, String str, float f, float f2) {
        canvas.drawText(str, f, f2, this.f21721b);
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawExtras(Canvas canvas) {
        drawHole(canvas);
        canvas.drawBitmap(this.mDrawBitmap.get(), 0.0f, 0.0f, (Paint) null);
        drawCenterText(canvas);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawHighlighted(Canvas canvas, Highlight[] highlightArr) {
        int i;
        RectF rectF;
        float f;
        float f2;
        float f3;
        float[] fArr;
        float[] fArr2;
        IPieDataSet dataSetByIndex;
        float f4;
        int i2;
        float f5;
        float f6;
        int i3;
        int i4;
        float f7;
        float f8;
        Highlight[] highlightArr2 = highlightArr;
        float phaseX = this.mAnimator.getPhaseX();
        float phaseY = this.mAnimator.getPhaseY();
        float rotationAngle = this.mChart.getRotationAngle();
        float[] drawAngles = this.mChart.getDrawAngles();
        float[] absoluteAngles = this.mChart.getAbsoluteAngles();
        MPPointF centerCircleBox = this.mChart.getCenterCircleBox();
        float radius = this.mChart.getRadius();
        boolean z = this.mChart.isDrawHoleEnabled() && !this.mChart.isDrawSlicesUnderHoleEnabled();
        float f9 = 0.0f;
        float holeRadius = z ? (this.mChart.getHoleRadius() / 100.0f) * radius : 0.0f;
        RectF rectF2 = this.mDrawHighlightedRectF;
        rectF2.set(0.0f, 0.0f, 0.0f, 0.0f);
        int i5 = 0;
        while (i5 < highlightArr2.length) {
            int x = (int) highlightArr2[i5].getX();
            if (x < drawAngles.length && (dataSetByIndex = ((PieData) this.mChart.getData()).getDataSetByIndex(highlightArr2[i5].getDataSetIndex())) != null && dataSetByIndex.isHighlightEnabled()) {
                int entryCount = dataSetByIndex.getEntryCount();
                int i6 = 0;
                for (int i7 = 0; i7 < entryCount; i7++) {
                    if (Math.abs(dataSetByIndex.getEntryForIndex(i7).getY()) > Utils.FLOAT_EPSILON) {
                        i6++;
                    }
                }
                if (x == 0) {
                    i2 = 1;
                    f4 = 0.0f;
                } else {
                    f4 = absoluteAngles[x - 1] * phaseX;
                    i2 = 1;
                }
                float sliceSpace = i6 <= i2 ? 0.0f : dataSetByIndex.getSliceSpace();
                float f10 = drawAngles[x];
                float selectionShift = dataSetByIndex.getSelectionShift();
                float f11 = radius + selectionShift;
                int i8 = i5;
                rectF2.set(this.mChart.getCircleBox());
                float f12 = -selectionShift;
                rectF2.inset(f12, f12);
                boolean z2 = sliceSpace > 0.0f && f10 <= 180.0f;
                this.mRenderPaint.setColor(dataSetByIndex.getColor(x));
                float f13 = i6 == 1 ? 0.0f : sliceSpace / (radius * 0.017453292f);
                float f14 = i6 == 1 ? 0.0f : sliceSpace / (f11 * 0.017453292f);
                float f15 = rotationAngle + ((f4 + (f13 / 2.0f)) * phaseY);
                float f16 = (f10 - f13) * phaseY;
                float f17 = f16 < 0.0f ? 0.0f : f16;
                float f18 = ((f4 + (f14 / 2.0f)) * phaseY) + rotationAngle;
                float f19 = (f10 - f14) * phaseY;
                if (f19 < 0.0f) {
                    f19 = 0.0f;
                }
                this.f21726g.reset();
                if (f17 < 360.0f || f17 % 360.0f > Utils.FLOAT_EPSILON) {
                    f5 = holeRadius;
                    f3 = phaseX;
                    double d = f18 * 0.017453292f;
                    fArr = drawAngles;
                    fArr2 = absoluteAngles;
                    this.f21726g.moveTo(centerCircleBox.f21741x + (((float) Math.cos(d)) * f11), centerCircleBox.f21742y + (f11 * ((float) Math.sin(d))));
                    this.f21726g.arcTo(rectF2, f18, f19);
                } else {
                    this.f21726g.addCircle(centerCircleBox.f21741x, centerCircleBox.f21742y, f11, Path.Direction.CW);
                    f5 = holeRadius;
                    f3 = phaseX;
                    fArr = drawAngles;
                    fArr2 = absoluteAngles;
                }
                if (z2) {
                    double d2 = f15 * 0.017453292f;
                    i = i8;
                    f6 = f5;
                    f2 = 0.0f;
                    rectF = rectF2;
                    i4 = 1;
                    i3 = i6;
                    f7 = calculateMinimumRadiusForSpacedSlice(centerCircleBox, radius, f10 * phaseY, (((float) Math.cos(d2)) * radius) + centerCircleBox.f21741x, centerCircleBox.f21742y + (((float) Math.sin(d2)) * radius), f15, f17);
                } else {
                    f6 = f5;
                    rectF = rectF2;
                    i3 = i6;
                    i = i8;
                    f2 = 0.0f;
                    i4 = 1;
                    f7 = 0.0f;
                }
                RectF rectF3 = this.f21727h;
                float f20 = centerCircleBox.f21741x;
                float f21 = centerCircleBox.f21742y;
                rectF3.set(f20 - f6, f21 - f6, f20 + f6, f21 + f6);
                if (!z || (f6 <= f2 && !z2)) {
                    f = f6;
                    if (f17 % 360.0f > Utils.FLOAT_EPSILON) {
                        if (z2) {
                            double d3 = (f15 + (f17 / 2.0f)) * 0.017453292f;
                            this.f21726g.lineTo(centerCircleBox.f21741x + (((float) Math.cos(d3)) * f7), centerCircleBox.f21742y + (f7 * ((float) Math.sin(d3))));
                        } else {
                            this.f21726g.lineTo(centerCircleBox.f21741x, centerCircleBox.f21742y);
                        }
                    }
                } else {
                    if (z2) {
                        if (f7 < f2) {
                            f7 = -f7;
                        }
                        f8 = Math.max(f6, f7);
                    } else {
                        f8 = f6;
                    }
                    float f22 = (i3 == i4 || f8 == f2) ? f2 : sliceSpace / (f8 * 0.017453292f);
                    float f23 = rotationAngle + ((f4 + (f22 / 2.0f)) * phaseY);
                    float f24 = (f10 - f22) * phaseY;
                    if (f24 < f2) {
                        f24 = f2;
                    }
                    float f25 = f23 + f24;
                    if (f17 < 360.0f || f17 % 360.0f > Utils.FLOAT_EPSILON) {
                        double d4 = f25 * 0.017453292f;
                        f = f6;
                        this.f21726g.lineTo(centerCircleBox.f21741x + (((float) Math.cos(d4)) * f8), centerCircleBox.f21742y + (f8 * ((float) Math.sin(d4))));
                        this.f21726g.arcTo(this.f21727h, f25, -f24);
                    } else {
                        this.f21726g.addCircle(centerCircleBox.f21741x, centerCircleBox.f21742y, f8, Path.Direction.CCW);
                        f = f6;
                    }
                }
                this.f21726g.close();
                this.mBitmapCanvas.drawPath(this.f21726g, this.mRenderPaint);
            } else {
                i = i5;
                rectF = rectF2;
                f = holeRadius;
                f2 = f9;
                f3 = phaseX;
                fArr = drawAngles;
                fArr2 = absoluteAngles;
            }
            i5 = i + 1;
            rectF2 = rectF;
            highlightArr2 = highlightArr;
            holeRadius = f;
            f9 = f2;
            phaseX = f3;
            drawAngles = fArr;
            absoluteAngles = fArr2;
        }
        MPPointF.recycleInstance(centerCircleBox);
    }

    public void drawHole(Canvas canvas) {
        if (!this.mChart.isDrawHoleEnabled() || this.mBitmapCanvas == null) {
            return;
        }
        float radius = this.mChart.getRadius();
        float holeRadius = (this.mChart.getHoleRadius() / 100.0f) * radius;
        MPPointF centerCircleBox = this.mChart.getCenterCircleBox();
        if (Color.alpha(this.mHolePaint.getColor()) > 0) {
            this.mBitmapCanvas.drawCircle(centerCircleBox.f21741x, centerCircleBox.f21742y, holeRadius, this.mHolePaint);
        }
        if (Color.alpha(this.mTransparentCirclePaint.getColor()) > 0 && this.mChart.getTransparentCircleRadius() > this.mChart.getHoleRadius()) {
            int alpha = this.mTransparentCirclePaint.getAlpha();
            float transparentCircleRadius = radius * (this.mChart.getTransparentCircleRadius() / 100.0f);
            this.mTransparentCirclePaint.setAlpha((int) (alpha * this.mAnimator.getPhaseX() * this.mAnimator.getPhaseY()));
            this.f21728i.reset();
            this.f21728i.addCircle(centerCircleBox.f21741x, centerCircleBox.f21742y, transparentCircleRadius, Path.Direction.CW);
            this.f21728i.addCircle(centerCircleBox.f21741x, centerCircleBox.f21742y, holeRadius, Path.Direction.CCW);
            this.mBitmapCanvas.drawPath(this.f21728i, this.mTransparentCirclePaint);
            this.mTransparentCirclePaint.setAlpha(alpha);
        }
        MPPointF.recycleInstance(centerCircleBox);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void drawRoundedSlices(Canvas canvas) {
        float f;
        float[] fArr;
        float f2;
        if (this.mChart.isDrawRoundedSlicesEnabled()) {
            IPieDataSet dataSet = ((PieData) this.mChart.getData()).getDataSet();
            if (dataSet.isVisible()) {
                float phaseX = this.mAnimator.getPhaseX();
                float phaseY = this.mAnimator.getPhaseY();
                MPPointF centerCircleBox = this.mChart.getCenterCircleBox();
                float radius = this.mChart.getRadius();
                float holeRadius = (radius - ((this.mChart.getHoleRadius() * radius) / 100.0f)) / 2.0f;
                float[] drawAngles = this.mChart.getDrawAngles();
                float rotationAngle = this.mChart.getRotationAngle();
                int i = 0;
                while (i < dataSet.getEntryCount()) {
                    float f3 = drawAngles[i];
                    if (Math.abs(dataSet.getEntryForIndex(i).getY()) > Utils.FLOAT_EPSILON) {
                        double d = radius - holeRadius;
                        double d2 = (rotationAngle + f3) * phaseY;
                        f = phaseY;
                        fArr = drawAngles;
                        f2 = rotationAngle;
                        float cos = (float) (centerCircleBox.f21741x + (Math.cos(Math.toRadians(d2)) * d));
                        float sin = (float) ((d * Math.sin(Math.toRadians(d2))) + centerCircleBox.f21742y);
                        this.mRenderPaint.setColor(dataSet.getColor(i));
                        this.mBitmapCanvas.drawCircle(cos, sin, holeRadius, this.mRenderPaint);
                    } else {
                        f = phaseY;
                        fArr = drawAngles;
                        f2 = rotationAngle;
                    }
                    rotationAngle = f2 + (f3 * phaseX);
                    i++;
                    phaseY = f;
                    drawAngles = fArr;
                }
                MPPointF.recycleInstance(centerCircleBox);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void drawValues(Canvas canvas) {
        int i;
        List<IPieDataSet> list;
        float f;
        float f2;
        float[] fArr;
        float[] fArr2;
        float f3;
        float f4;
        float f5;
        PieDataSet.ValuePosition valuePosition;
        float f6;
        int i2;
        PieDataSet.ValuePosition valuePosition2;
        float f7;
        IPieDataSet iPieDataSet;
        int i3;
        List<IPieDataSet> list2;
        float f8;
        IPieDataSet iPieDataSet2;
        float[] fArr3;
        MPPointF centerCircleBox = this.mChart.getCenterCircleBox();
        float radius = this.mChart.getRadius();
        float rotationAngle = this.mChart.getRotationAngle();
        float[] drawAngles = this.mChart.getDrawAngles();
        float[] absoluteAngles = this.mChart.getAbsoluteAngles();
        float phaseX = this.mAnimator.getPhaseX();
        float phaseY = this.mAnimator.getPhaseY();
        float holeRadius = this.mChart.getHoleRadius() / 100.0f;
        float f9 = (radius / 10.0f) * 3.6f;
        if (this.mChart.isDrawHoleEnabled()) {
            f9 = (radius - (radius * holeRadius)) / 2.0f;
        }
        float f10 = radius - f9;
        PieData pieData = (PieData) this.mChart.getData();
        List<IPieDataSet> dataSets = pieData.getDataSets();
        float yValueSum = pieData.getYValueSum();
        boolean isDrawEntryLabelsEnabled = this.mChart.isDrawEntryLabelsEnabled();
        canvas.save();
        float convertDpToPixel = Utils.convertDpToPixel(5.0f);
        int i4 = 0;
        int i5 = 0;
        while (i5 < dataSets.size()) {
            IPieDataSet iPieDataSet3 = dataSets.get(i5);
            boolean isDrawValuesEnabled = iPieDataSet3.isDrawValuesEnabled();
            if (isDrawValuesEnabled || isDrawEntryLabelsEnabled) {
                PieDataSet.ValuePosition xValuePosition = iPieDataSet3.getXValuePosition();
                PieDataSet.ValuePosition yValuePosition = iPieDataSet3.getYValuePosition();
                applyValueTextStyle(iPieDataSet3);
                float calcTextHeight = Utils.calcTextHeight(this.mValuePaint, "Q") + Utils.convertDpToPixel(4.0f);
                IValueFormatter valueFormatter = iPieDataSet3.getValueFormatter();
                int entryCount = iPieDataSet3.getEntryCount();
                this.mValueLinePaint.setColor(iPieDataSet3.getValueLineColor());
                this.mValueLinePaint.setStrokeWidth(Utils.convertDpToPixel(iPieDataSet3.getValueLineWidth()));
                float sliceSpace = getSliceSpace(iPieDataSet3);
                int i6 = i4;
                int i7 = 0;
                while (i7 < entryCount) {
                    PieEntry entryForIndex = iPieDataSet3.getEntryForIndex(i7);
                    float f11 = (((i6 == 0 ? 0.0f : absoluteAngles[i6 - 1] * phaseX) + ((drawAngles[i6] - ((sliceSpace / (f10 * 0.017453292f)) / 2.0f)) / 2.0f)) * phaseY) + rotationAngle;
                    float y = this.mChart.isUsePercentValuesEnabled() ? (entryForIndex.getY() / yValueSum) * 100.0f : entryForIndex.getY();
                    int i8 = i7;
                    double d = f11 * 0.017453292f;
                    int i9 = i5;
                    List<IPieDataSet> list3 = dataSets;
                    float cos = (float) Math.cos(d);
                    float f12 = rotationAngle;
                    float[] fArr4 = drawAngles;
                    float sin = (float) Math.sin(d);
                    boolean z = isDrawEntryLabelsEnabled && xValuePosition == PieDataSet.ValuePosition.OUTSIDE_SLICE;
                    boolean z2 = isDrawValuesEnabled && yValuePosition == PieDataSet.ValuePosition.OUTSIDE_SLICE;
                    int i10 = entryCount;
                    boolean z3 = isDrawEntryLabelsEnabled && xValuePosition == PieDataSet.ValuePosition.INSIDE_SLICE;
                    boolean z4 = isDrawValuesEnabled && yValuePosition == PieDataSet.ValuePosition.INSIDE_SLICE;
                    if (z || z2) {
                        float valueLinePart1Length = iPieDataSet3.getValueLinePart1Length();
                        float valueLinePart2Length = iPieDataSet3.getValueLinePart2Length();
                        float valueLinePart1OffsetPercentage = iPieDataSet3.getValueLinePart1OffsetPercentage() / 100.0f;
                        PieDataSet.ValuePosition valuePosition3 = yValuePosition;
                        if (this.mChart.isDrawHoleEnabled()) {
                            float f13 = radius * holeRadius;
                            f3 = ((radius - f13) * valueLinePart1OffsetPercentage) + f13;
                        } else {
                            f3 = radius * valueLinePart1OffsetPercentage;
                        }
                        float abs = iPieDataSet3.isValueLineVariableLength() ? valueLinePart2Length * f10 * ((float) Math.abs(Math.sin(d))) : valueLinePart2Length * f10;
                        float f14 = centerCircleBox.f21741x;
                        float f15 = (f3 * cos) + f14;
                        float f16 = centerCircleBox.f21742y;
                        float f17 = (f3 * sin) + f16;
                        float f18 = (valueLinePart1Length + 1.0f) * f10;
                        float f19 = (f18 * cos) + f14;
                        float f20 = (f18 * sin) + f16;
                        double d2 = f11 % 360.0d;
                        if (d2 < 90.0d || d2 > 270.0d) {
                            f4 = f19 + abs;
                            this.mValuePaint.setTextAlign(Paint.Align.LEFT);
                            if (z) {
                                this.f21721b.setTextAlign(Paint.Align.LEFT);
                            }
                            f5 = f4 + convertDpToPixel;
                        } else {
                            float f21 = f19 - abs;
                            this.mValuePaint.setTextAlign(Paint.Align.RIGHT);
                            if (z) {
                                this.f21721b.setTextAlign(Paint.Align.RIGHT);
                            }
                            f4 = f21;
                            f5 = f21 - convertDpToPixel;
                        }
                        if (iPieDataSet3.getValueLineColor() != 1122867) {
                            f6 = radius;
                            i2 = i8;
                            valuePosition2 = valuePosition3;
                            f7 = f5;
                            valuePosition = xValuePosition;
                            canvas.drawLine(f15, f17, f19, f20, this.mValueLinePaint);
                            canvas.drawLine(f19, f20, f4, f20, this.mValueLinePaint);
                        } else {
                            valuePosition = xValuePosition;
                            f6 = radius;
                            i2 = i8;
                            valuePosition2 = valuePosition3;
                            f7 = f5;
                        }
                        if (z && z2) {
                            iPieDataSet = iPieDataSet3;
                            i3 = i9;
                            list2 = list3;
                            f8 = cos;
                            drawValue(canvas, valueFormatter, y, entryForIndex, 0, f7, f20, iPieDataSet3.getValueTextColor(i2));
                            if (i2 < pieData.getEntryCount() && entryForIndex.getLabel() != null) {
                                drawEntryLabel(canvas, entryForIndex.getLabel(), f7, f20 + calcTextHeight);
                            }
                        } else {
                            iPieDataSet = iPieDataSet3;
                            i3 = i9;
                            float f22 = f7;
                            list2 = list3;
                            f8 = cos;
                            if (z) {
                                if (i2 < pieData.getEntryCount() && entryForIndex.getLabel() != null) {
                                    drawEntryLabel(canvas, entryForIndex.getLabel(), f22, f20 + (calcTextHeight / 2.0f));
                                }
                            } else if (z2) {
                                iPieDataSet2 = iPieDataSet;
                                drawValue(canvas, valueFormatter, y, entryForIndex, 0, f22, f20 + (calcTextHeight / 2.0f), iPieDataSet2.getValueTextColor(i2));
                            }
                        }
                        iPieDataSet2 = iPieDataSet;
                    } else {
                        valuePosition2 = yValuePosition;
                        valuePosition = xValuePosition;
                        iPieDataSet2 = iPieDataSet3;
                        f6 = radius;
                        i2 = i8;
                        i3 = i9;
                        list2 = list3;
                        f8 = cos;
                    }
                    if (z3 || z4) {
                        float f23 = (f10 * f8) + centerCircleBox.f21741x;
                        float f24 = (sin * f10) + centerCircleBox.f21742y;
                        this.mValuePaint.setTextAlign(Paint.Align.CENTER);
                        if (z3 && z4) {
                            fArr3 = absoluteAngles;
                            drawValue(canvas, valueFormatter, y, entryForIndex, 0, f23, f24, iPieDataSet2.getValueTextColor(i2));
                            if (i2 < pieData.getEntryCount() && entryForIndex.getLabel() != null) {
                                drawEntryLabel(canvas, entryForIndex.getLabel(), f23, f24 + calcTextHeight);
                            }
                        } else {
                            fArr3 = absoluteAngles;
                            if (z3) {
                                if (i2 < pieData.getEntryCount() && entryForIndex.getLabel() != null) {
                                    drawEntryLabel(canvas, entryForIndex.getLabel(), f23, f24 + (calcTextHeight / 2.0f));
                                }
                            } else if (z4) {
                                drawValue(canvas, valueFormatter, y, entryForIndex, 0, f23, f24 + (calcTextHeight / 2.0f), iPieDataSet2.getValueTextColor(i2));
                            }
                        }
                    } else {
                        fArr3 = absoluteAngles;
                    }
                    i6++;
                    i7 = i2 + 1;
                    iPieDataSet3 = iPieDataSet2;
                    i5 = i3;
                    dataSets = list2;
                    rotationAngle = f12;
                    drawAngles = fArr4;
                    entryCount = i10;
                    absoluteAngles = fArr3;
                    yValuePosition = valuePosition2;
                    radius = f6;
                    xValuePosition = valuePosition;
                }
                i = i5;
                list = dataSets;
                f = radius;
                f2 = rotationAngle;
                fArr = drawAngles;
                fArr2 = absoluteAngles;
                i4 = i6;
            } else {
                i = i5;
                list = dataSets;
                f = radius;
                f2 = rotationAngle;
                fArr = drawAngles;
                fArr2 = absoluteAngles;
            }
            i5 = i + 1;
            dataSets = list;
            rotationAngle = f2;
            drawAngles = fArr;
            absoluteAngles = fArr2;
            radius = f;
        }
        MPPointF.recycleInstance(centerCircleBox);
        canvas.restore();
    }

    public TextPaint getPaintCenterText() {
        return this.f21720a;
    }

    public Paint getPaintEntryLabels() {
        return this.f21721b;
    }

    public Paint getPaintHole() {
        return this.mHolePaint;
    }

    public Paint getPaintTransparentCircle() {
        return this.mTransparentCirclePaint;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public float getSliceSpace(IPieDataSet iPieDataSet) {
        if (iPieDataSet.isAutomaticallyDisableSliceSpacingEnabled() && iPieDataSet.getSliceSpace() / this.mViewPortHandler.getSmallestContentExtension() > (iPieDataSet.getYMin() / ((PieData) this.mChart.getData()).getYValueSum()) * 2.0f) {
            return 0.0f;
        }
        return iPieDataSet.getSliceSpace();
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public void initBuffers() {
    }

    public void releaseBitmap() {
        Canvas canvas = this.mBitmapCanvas;
        if (canvas != null) {
            canvas.setBitmap(null);
            this.mBitmapCanvas = null;
        }
        WeakReference<Bitmap> weakReference = this.mDrawBitmap;
        if (weakReference != null) {
            weakReference.get().recycle();
            this.mDrawBitmap.clear();
            this.mDrawBitmap = null;
        }
    }
}
