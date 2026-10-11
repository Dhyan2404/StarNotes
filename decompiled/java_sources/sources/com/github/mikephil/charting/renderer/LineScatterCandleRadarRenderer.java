package com.github.mikephil.charting.renderer;

import android.graphics.Canvas;
import android.graphics.Path;
import com.github.mikephil.charting.animation.ChartAnimator;
import com.github.mikephil.charting.interfaces.datasets.ILineScatterCandleRadarDataSet;
import com.github.mikephil.charting.utils.ViewPortHandler;

/* loaded from: classes4.dex */
public abstract class LineScatterCandleRadarRenderer extends BarLineScatterCandleBubbleRenderer {

    /* renamed from: a */
    public Path f21719a;

    public LineScatterCandleRadarRenderer(ChartAnimator chartAnimator, ViewPortHandler viewPortHandler) {
        super(chartAnimator, viewPortHandler);
        this.f21719a = new Path();
    }

    public void drawHighlightLines(Canvas canvas, float f, float f2, ILineScatterCandleRadarDataSet iLineScatterCandleRadarDataSet) {
        this.mHighlightPaint.setColor(iLineScatterCandleRadarDataSet.getHighLightColor());
        this.mHighlightPaint.setStrokeWidth(iLineScatterCandleRadarDataSet.getHighlightLineWidth());
        this.mHighlightPaint.setPathEffect(iLineScatterCandleRadarDataSet.getDashPathEffectHighlight());
        if (iLineScatterCandleRadarDataSet.isVerticalHighlightIndicatorEnabled()) {
            this.f21719a.reset();
            this.f21719a.moveTo(f, this.mViewPortHandler.contentTop());
            this.f21719a.lineTo(f, this.mViewPortHandler.contentBottom());
            canvas.drawPath(this.f21719a, this.mHighlightPaint);
        }
        if (iLineScatterCandleRadarDataSet.isHorizontalHighlightIndicatorEnabled()) {
            this.f21719a.reset();
            this.f21719a.moveTo(this.mViewPortHandler.contentLeft(), f2);
            this.f21719a.lineTo(this.mViewPortHandler.contentRight(), f2);
            canvas.drawPath(this.f21719a, this.mHighlightPaint);
        }
    }
}
