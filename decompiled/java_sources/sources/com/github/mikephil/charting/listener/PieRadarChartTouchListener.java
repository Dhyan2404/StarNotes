package com.github.mikephil.charting.listener;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.github.mikephil.charting.charts.PieRadarChartBase;
import com.github.mikephil.charting.listener.ChartTouchListener;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.Utils;
import java.util.ArrayList;

/* loaded from: classes4.dex */
public class PieRadarChartTouchListener extends ChartTouchListener<PieRadarChartBase<?>> {

    /* renamed from: e */
    public MPPointF f21684e;

    /* renamed from: f */
    public float f21685f;

    /* renamed from: g */
    public ArrayList<C4596a> f21686g;

    /* renamed from: h */
    public long f21687h;

    /* renamed from: i */
    public float f21688i;

    /* renamed from: com.github.mikephil.charting.listener.PieRadarChartTouchListener$a */
    /* loaded from: classes4.dex */
    public class C4596a {

        /* renamed from: a */
        public long f21689a;

        /* renamed from: b */
        public float f21690b;

        public C4596a(long j, float f) {
            this.f21689a = j;
            this.f21690b = f;
        }
    }

    public PieRadarChartTouchListener(PieRadarChartBase<?> pieRadarChartBase) {
        super(pieRadarChartBase);
        this.f21684e = MPPointF.getInstance(0.0f, 0.0f);
        this.f21685f = 0.0f;
        this.f21686g = new ArrayList<>();
        this.f21687h = 0L;
        this.f21688i = 0.0f;
    }

    /* renamed from: a */
    public final float m17375a() {
        if (this.f21686g.isEmpty()) {
            return 0.0f;
        }
        C4596a c4596a = this.f21686g.get(0);
        ArrayList<C4596a> arrayList = this.f21686g;
        C4596a c4596a2 = arrayList.get(arrayList.size() - 1);
        C4596a c4596a3 = c4596a;
        for (int size = this.f21686g.size() - 1; size >= 0; size--) {
            c4596a3 = this.f21686g.get(size);
            if (c4596a3.f21690b != c4596a2.f21690b) {
                break;
            }
        }
        float f = ((float) (c4596a2.f21689a - c4596a.f21689a)) / 1000.0f;
        if (f == 0.0f) {
            f = 0.1f;
        }
        boolean z = c4596a2.f21690b >= c4596a3.f21690b;
        if (Math.abs(r1 - r4) > 270.0d) {
            z = !z;
        }
        float f2 = c4596a2.f21690b;
        float f3 = c4596a.f21690b;
        if (f2 - f3 > 180.0d) {
            c4596a.f21690b = (float) (f3 + 360.0d);
        } else if (f3 - f2 > 180.0d) {
            c4596a2.f21690b = (float) (f2 + 360.0d);
        }
        float abs = Math.abs((c4596a2.f21690b - c4596a.f21690b) / f);
        return !z ? -abs : abs;
    }

    /* renamed from: b */
    public final void m17376b() {
        this.f21686g.clear();
    }

    /* renamed from: c */
    public final void m17377c(float f, float f2) {
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        this.f21686g.add(new C4596a(currentAnimationTimeMillis, ((PieRadarChartBase) this.mChart).getAngleForPoint(f, f2)));
        for (int size = this.f21686g.size(); size - 2 > 0 && currentAnimationTimeMillis - this.f21686g.get(0).f21689a > 1000; size--) {
            this.f21686g.remove(0);
        }
    }

    public void computeScroll() {
        if (this.f21688i == 0.0f) {
            return;
        }
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        this.f21688i *= ((PieRadarChartBase) this.mChart).getDragDecelerationFrictionCoef();
        float f = ((float) (currentAnimationTimeMillis - this.f21687h)) / 1000.0f;
        T t = this.mChart;
        ((PieRadarChartBase) t).setRotationAngle(((PieRadarChartBase) t).getRotationAngle() + (this.f21688i * f));
        this.f21687h = currentAnimationTimeMillis;
        if (Math.abs(this.f21688i) >= 0.001d) {
            Utils.postInvalidateOnAnimation(this.mChart);
        } else {
            stopDeceleration();
        }
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        this.mLastGesture = ChartTouchListener.ChartGesture.LONG_PRESS;
        OnChartGestureListener onChartGestureListener = ((PieRadarChartBase) this.mChart).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.onChartLongPressed(motionEvent);
        }
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        this.mLastGesture = ChartTouchListener.ChartGesture.SINGLE_TAP;
        OnChartGestureListener onChartGestureListener = ((PieRadarChartBase) this.mChart).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.onChartSingleTapped(motionEvent);
        }
        if (!((PieRadarChartBase) this.mChart).isHighlightPerTapEnabled()) {
            return false;
        }
        performHighlight(((PieRadarChartBase) this.mChart).getHighlightByTouchPoint(motionEvent.getX(), motionEvent.getY()), motionEvent);
        return true;
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.mGestureDetector.onTouchEvent(motionEvent) && ((PieRadarChartBase) this.mChart).isRotationEnabled()) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int action = motionEvent.getAction();
            if (action == 0) {
                startAction(motionEvent);
                stopDeceleration();
                m17376b();
                if (((PieRadarChartBase) this.mChart).isDragDecelerationEnabled()) {
                    m17377c(x, y);
                }
                setGestureStartAngle(x, y);
                MPPointF mPPointF = this.f21684e;
                mPPointF.f21741x = x;
                mPPointF.f21742y = y;
            } else if (action == 1) {
                if (((PieRadarChartBase) this.mChart).isDragDecelerationEnabled()) {
                    stopDeceleration();
                    m17377c(x, y);
                    float m17375a = m17375a();
                    this.f21688i = m17375a;
                    if (m17375a != 0.0f) {
                        this.f21687h = AnimationUtils.currentAnimationTimeMillis();
                        Utils.postInvalidateOnAnimation(this.mChart);
                    }
                }
                ((PieRadarChartBase) this.mChart).enableScroll();
                this.mTouchMode = 0;
                endAction(motionEvent);
            } else if (action == 2) {
                if (((PieRadarChartBase) this.mChart).isDragDecelerationEnabled()) {
                    m17377c(x, y);
                }
                if (this.mTouchMode == 0) {
                    MPPointF mPPointF2 = this.f21684e;
                    if (ChartTouchListener.distance(x, mPPointF2.f21741x, y, mPPointF2.f21742y) > Utils.convertDpToPixel(8.0f)) {
                        this.mLastGesture = ChartTouchListener.ChartGesture.ROTATE;
                        this.mTouchMode = 6;
                        ((PieRadarChartBase) this.mChart).disableScroll();
                        endAction(motionEvent);
                    }
                }
                if (this.mTouchMode == 6) {
                    updateGestureRotation(x, y);
                    ((PieRadarChartBase) this.mChart).invalidate();
                }
                endAction(motionEvent);
            }
        }
        return true;
    }

    public void setGestureStartAngle(float f, float f2) {
        this.f21685f = ((PieRadarChartBase) this.mChart).getAngleForPoint(f, f2) - ((PieRadarChartBase) this.mChart).getRawRotationAngle();
    }

    public void stopDeceleration() {
        this.f21688i = 0.0f;
    }

    public void updateGestureRotation(float f, float f2) {
        T t = this.mChart;
        ((PieRadarChartBase) t).setRotationAngle(((PieRadarChartBase) t).getAngleForPoint(f, f2) - this.f21685f);
    }
}
