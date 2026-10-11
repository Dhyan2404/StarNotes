package com.github.mikephil.charting.renderer;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.github.mikephil.charting.animation.ChartAnimator;
import com.github.mikephil.charting.buffer.BarBuffer;
import com.github.mikephil.charting.buffer.HorizontalBarBuffer;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.formatter.IValueFormatter;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.dataprovider.BarDataProvider;
import com.github.mikephil.charting.interfaces.dataprovider.ChartInterface;
import com.github.mikephil.charting.interfaces.datasets.IBarDataSet;
import com.github.mikephil.charting.utils.Transformer;
import com.github.mikephil.charting.utils.Utils;
import com.github.mikephil.charting.utils.ViewPortHandler;
import java.util.List;

/* loaded from: classes4.dex */
public class HorizontalBarChartRenderer extends BarChartRenderer {

    /* renamed from: b */
    public RectF f21706b;

    public HorizontalBarChartRenderer(BarDataProvider barDataProvider, ChartAnimator chartAnimator, ViewPortHandler viewPortHandler) {
        super(barDataProvider, chartAnimator, viewPortHandler);
        this.f21706b = new RectF();
        this.mValuePaint.setTextAlign(Paint.Align.LEFT);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.github.mikephil.charting.renderer.BarChartRenderer
    public void drawDataSet(Canvas canvas, IBarDataSet iBarDataSet, int i) {
        Transformer transformer = this.mChart.getTransformer(iBarDataSet.getAxisDependency());
        this.mBarBorderPaint.setColor(iBarDataSet.getBarBorderColor());
        this.mBarBorderPaint.setStrokeWidth(Utils.convertDpToPixel(iBarDataSet.getBarBorderWidth()));
        boolean z = iBarDataSet.getBarBorderWidth() > 0.0f;
        float phaseX = this.mAnimator.getPhaseX();
        float phaseY = this.mAnimator.getPhaseY();
        if (this.mChart.isDrawBarShadowEnabled()) {
            this.mShadowPaint.setColor(iBarDataSet.getBarShadowColor());
            float barWidth = this.mChart.getBarData().getBarWidth() / 2.0f;
            int min = Math.min((int) Math.ceil(iBarDataSet.getEntryCount() * phaseX), iBarDataSet.getEntryCount());
            for (int i2 = 0; i2 < min; i2++) {
                float x = ((BarEntry) iBarDataSet.getEntryForIndex(i2)).getX();
                RectF rectF = this.f21706b;
                rectF.top = x - barWidth;
                rectF.bottom = x + barWidth;
                transformer.rectValueToPixel(rectF);
                if (this.mViewPortHandler.isInBoundsTop(this.f21706b.bottom)) {
                    if (!this.mViewPortHandler.isInBoundsBottom(this.f21706b.top)) {
                        break;
                    }
                    this.f21706b.left = this.mViewPortHandler.contentLeft();
                    this.f21706b.right = this.mViewPortHandler.contentRight();
                    canvas.drawRect(this.f21706b, this.mShadowPaint);
                }
            }
        }
        BarBuffer barBuffer = this.mBarBuffers[i];
        barBuffer.setPhases(phaseX, phaseY);
        barBuffer.setDataSet(i);
        barBuffer.setInverted(this.mChart.isInverted(iBarDataSet.getAxisDependency()));
        barBuffer.setBarWidth(this.mChart.getBarData().getBarWidth());
        barBuffer.feed(iBarDataSet);
        transformer.pointValuesToPixel(barBuffer.buffer);
        boolean z2 = iBarDataSet.getColors().size() == 1;
        if (z2) {
            this.mRenderPaint.setColor(iBarDataSet.getColor());
        }
        for (int i3 = 0; i3 < barBuffer.size(); i3 += 4) {
            int i4 = i3 + 3;
            if (!this.mViewPortHandler.isInBoundsTop(barBuffer.buffer[i4])) {
                return;
            }
            int i5 = i3 + 1;
            if (this.mViewPortHandler.isInBoundsBottom(barBuffer.buffer[i5])) {
                if (!z2) {
                    this.mRenderPaint.setColor(iBarDataSet.getColor(i3 / 4));
                }
                float[] fArr = barBuffer.buffer;
                int i6 = i3 + 2;
                canvas.drawRect(fArr[i3], fArr[i5], fArr[i6], fArr[i4], this.mRenderPaint);
                if (z) {
                    float[] fArr2 = barBuffer.buffer;
                    canvas.drawRect(fArr2[i3], fArr2[i5], fArr2[i6], fArr2[i4], this.mBarBorderPaint);
                }
            }
        }
    }

    public void drawValue(Canvas canvas, String str, float f, float f2, int i) {
        this.mValuePaint.setColor(i);
        canvas.drawText(str, f, f2, this.mValuePaint);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.github.mikephil.charting.renderer.BarChartRenderer, com.github.mikephil.charting.renderer.DataRenderer
    public void drawValues(Canvas canvas) {
        List list;
        int i;
        IBarDataSet iBarDataSet;
        float[] fArr;
        int i2;
        float[] fArr2;
        float f;
        int i3;
        BarBuffer barBuffer;
        List list2;
        IValueFormatter iValueFormatter;
        if (isDrawingValuesAllowed(this.mChart)) {
            List dataSets = this.mChart.getBarData().getDataSets();
            float convertDpToPixel = Utils.convertDpToPixel(5.0f);
            boolean isDrawValueAboveBarEnabled = this.mChart.isDrawValueAboveBarEnabled();
            int i4 = 0;
            while (i4 < this.mChart.getBarData().getDataSetCount()) {
                IBarDataSet iBarDataSet2 = (IBarDataSet) dataSets.get(i4);
                if (shouldDrawValues(iBarDataSet2)) {
                    boolean isInverted = this.mChart.isInverted(iBarDataSet2.getAxisDependency());
                    applyValueTextStyle(iBarDataSet2);
                    float f2 = 2.0f;
                    float calcTextHeight = Utils.calcTextHeight(this.mValuePaint, "10") / 2.0f;
                    IValueFormatter valueFormatter = iBarDataSet2.getValueFormatter();
                    BarBuffer barBuffer2 = this.mBarBuffers[i4];
                    float phaseY = this.mAnimator.getPhaseY();
                    if (iBarDataSet2.isStacked()) {
                        list = dataSets;
                        Transformer transformer = this.mChart.getTransformer(iBarDataSet2.getAxisDependency());
                        int i5 = 0;
                        int i6 = 0;
                        while (i5 < iBarDataSet2.getEntryCount() * this.mAnimator.getPhaseX()) {
                            BarEntry barEntry = (BarEntry) iBarDataSet2.getEntryForIndex(i5);
                            int valueTextColor = iBarDataSet2.getValueTextColor(i5);
                            float[] yVals = barEntry.getYVals();
                            if (yVals == null) {
                                int i7 = i6 + 1;
                                if (!this.mViewPortHandler.isInBoundsTop(barBuffer2.buffer[i7])) {
                                    break;
                                }
                                if (this.mViewPortHandler.isInBoundsX(barBuffer2.buffer[i6]) && this.mViewPortHandler.isInBoundsBottom(barBuffer2.buffer[i7])) {
                                    String formattedValue = valueFormatter.getFormattedValue(barEntry.getY(), barEntry, i4, this.mViewPortHandler);
                                    float calcTextWidth = Utils.calcTextWidth(this.mValuePaint, formattedValue);
                                    float f3 = isDrawValueAboveBarEnabled ? convertDpToPixel : -(calcTextWidth + convertDpToPixel);
                                    float f4 = isDrawValueAboveBarEnabled ? -(calcTextWidth + convertDpToPixel) : convertDpToPixel;
                                    if (isInverted) {
                                        f3 = (-f3) - calcTextWidth;
                                        f4 = (-f4) - calcTextWidth;
                                    }
                                    float f5 = barBuffer2.buffer[i6 + 2];
                                    if (barEntry.getY() < 0.0f) {
                                        f3 = f4;
                                    }
                                    iBarDataSet = iBarDataSet2;
                                    fArr = yVals;
                                    i = i5;
                                    drawValue(canvas, formattedValue, f5 + f3, barBuffer2.buffer[i7] + calcTextHeight, valueTextColor);
                                }
                            } else {
                                i = i5;
                                iBarDataSet = iBarDataSet2;
                                fArr = yVals;
                                int length = fArr.length * 2;
                                float[] fArr3 = new float[length];
                                float f6 = -barEntry.getNegativeSum();
                                float f7 = 0.0f;
                                int i8 = 0;
                                int i9 = 0;
                                while (i8 < length) {
                                    float f8 = fArr[i9];
                                    if (f8 >= 0.0f) {
                                        f7 += f8;
                                        f = f6;
                                        f6 = f7;
                                    } else {
                                        f = f6 - f8;
                                    }
                                    fArr3[i8] = f6 * phaseY;
                                    i8 += 2;
                                    i9++;
                                    f6 = f;
                                }
                                transformer.pointValuesToPixel(fArr3);
                                int i10 = 0;
                                while (i10 < length) {
                                    float f9 = fArr[i10 / 2];
                                    String formattedValue2 = valueFormatter.getFormattedValue(f9, barEntry, i4, this.mViewPortHandler);
                                    BarEntry barEntry2 = barEntry;
                                    float calcTextWidth2 = Utils.calcTextWidth(this.mValuePaint, formattedValue2);
                                    float f10 = isDrawValueAboveBarEnabled ? convertDpToPixel : -(calcTextWidth2 + convertDpToPixel);
                                    int i11 = length;
                                    float f11 = isDrawValueAboveBarEnabled ? -(calcTextWidth2 + convertDpToPixel) : convertDpToPixel;
                                    if (isInverted) {
                                        f10 = (-f10) - calcTextWidth2;
                                        f11 = (-f11) - calcTextWidth2;
                                    }
                                    float f12 = fArr3[i10];
                                    if (f9 < 0.0f) {
                                        f10 = f11;
                                    }
                                    float f13 = f12 + f10;
                                    float[] fArr4 = barBuffer2.buffer;
                                    float f14 = (fArr4[i6 + 1] + fArr4[i6 + 3]) / 2.0f;
                                    if (!this.mViewPortHandler.isInBoundsTop(f14)) {
                                        break;
                                    }
                                    if (this.mViewPortHandler.isInBoundsX(f13) && this.mViewPortHandler.isInBoundsBottom(f14)) {
                                        i2 = i10;
                                        fArr2 = fArr3;
                                        drawValue(canvas, formattedValue2, f13, f14 + calcTextHeight, valueTextColor);
                                    } else {
                                        i2 = i10;
                                        fArr2 = fArr3;
                                    }
                                    i10 = i2 + 2;
                                    barEntry = barEntry2;
                                    fArr3 = fArr2;
                                    length = i11;
                                }
                            }
                            i6 = fArr == null ? i6 + 4 : i6 + (fArr.length * 4);
                            i5 = i + 1;
                            iBarDataSet2 = iBarDataSet;
                        }
                        i4++;
                        dataSets = list;
                    } else {
                        int i12 = 0;
                        while (i12 < barBuffer2.buffer.length * this.mAnimator.getPhaseX()) {
                            float[] fArr5 = barBuffer2.buffer;
                            int i13 = i12 + 1;
                            float f15 = fArr5[i13];
                            float f16 = (fArr5[i12 + 3] + f15) / f2;
                            if (!this.mViewPortHandler.isInBoundsTop(f15)) {
                                break;
                            }
                            if (this.mViewPortHandler.isInBoundsX(barBuffer2.buffer[i12]) && this.mViewPortHandler.isInBoundsBottom(barBuffer2.buffer[i13])) {
                                BarEntry barEntry3 = (BarEntry) iBarDataSet2.getEntryForIndex(i12 / 4);
                                float y = barEntry3.getY();
                                String formattedValue3 = valueFormatter.getFormattedValue(y, barEntry3, i4, this.mViewPortHandler);
                                float calcTextWidth3 = Utils.calcTextWidth(this.mValuePaint, formattedValue3);
                                float f17 = isDrawValueAboveBarEnabled ? convertDpToPixel : -(calcTextWidth3 + convertDpToPixel);
                                IValueFormatter iValueFormatter2 = valueFormatter;
                                float f18 = isDrawValueAboveBarEnabled ? -(calcTextWidth3 + convertDpToPixel) : convertDpToPixel;
                                if (isInverted) {
                                    f17 = (-f17) - calcTextWidth3;
                                    f18 = (-f18) - calcTextWidth3;
                                }
                                float f19 = barBuffer2.buffer[i12 + 2];
                                if (y >= 0.0f) {
                                    f18 = f17;
                                }
                                i3 = i12;
                                barBuffer = barBuffer2;
                                list2 = dataSets;
                                iValueFormatter = iValueFormatter2;
                                drawValue(canvas, formattedValue3, f18 + f19, f16 + calcTextHeight, iBarDataSet2.getValueTextColor(i12 / 2));
                            } else {
                                i3 = i12;
                                barBuffer = barBuffer2;
                                list2 = dataSets;
                                iValueFormatter = valueFormatter;
                            }
                            i12 = i3 + 4;
                            valueFormatter = iValueFormatter;
                            barBuffer2 = barBuffer;
                            dataSets = list2;
                            f2 = 2.0f;
                        }
                    }
                }
                list = dataSets;
                i4++;
                dataSets = list;
            }
        }
    }

    @Override // com.github.mikephil.charting.renderer.BarChartRenderer, com.github.mikephil.charting.renderer.DataRenderer
    public void initBuffers() {
        BarData barData = this.mChart.getBarData();
        this.mBarBuffers = new HorizontalBarBuffer[barData.getDataSetCount()];
        for (int i = 0; i < this.mBarBuffers.length; i++) {
            IBarDataSet iBarDataSet = (IBarDataSet) barData.getDataSetByIndex(i);
            this.mBarBuffers[i] = new HorizontalBarBuffer(iBarDataSet.getEntryCount() * 4 * (iBarDataSet.isStacked() ? iBarDataSet.getStackSize() : 1), barData.getDataSetCount(), iBarDataSet.isStacked());
        }
    }

    @Override // com.github.mikephil.charting.renderer.DataRenderer
    public boolean isDrawingValuesAllowed(ChartInterface chartInterface) {
        return ((float) chartInterface.getData().getEntryCount()) < ((float) chartInterface.getMaxVisibleCount()) * this.mViewPortHandler.getScaleY();
    }

    @Override // com.github.mikephil.charting.renderer.BarChartRenderer
    public void prepareBarHighlight(float f, float f2, float f3, float f4, Transformer transformer) {
        this.mBarRect.set(f2, f - f4, f3, f + f4);
        transformer.rectToPixelPhaseHorizontal(this.mBarRect, this.mAnimator.getPhaseY());
    }

    @Override // com.github.mikephil.charting.renderer.BarChartRenderer
    public void setHighlightDrawPos(Highlight highlight, RectF rectF) {
        highlight.setDraw(rectF.centerY(), rectF.right);
    }
}
