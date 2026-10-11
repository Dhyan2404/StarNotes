package com.github.mikephil.charting.listener;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.github.mikephil.charting.charts.BarLineChartBase;
import com.github.mikephil.charting.data.BarLineScatterCandleBubbleData;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.datasets.IBarLineScatterCandleBubbleDataSet;
import com.github.mikephil.charting.interfaces.datasets.IDataSet;
import com.github.mikephil.charting.listener.ChartTouchListener;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.Utils;
import com.github.mikephil.charting.utils.ViewPortHandler;

/* loaded from: classes4.dex */
public class BarLineChartTouchListener extends ChartTouchListener<BarLineChartBase<? extends BarLineScatterCandleBubbleData<? extends IBarLineScatterCandleBubbleDataSet<? extends Entry>>>> {

    /* renamed from: e */
    public Matrix f21670e;

    /* renamed from: f */
    public Matrix f21671f;

    /* renamed from: g */
    public MPPointF f21672g;

    /* renamed from: h */
    public MPPointF f21673h;

    /* renamed from: i */
    public float f21674i;

    /* renamed from: j */
    public float f21675j;

    /* renamed from: k */
    public float f21676k;

    /* renamed from: l */
    public IDataSet f21677l;

    /* renamed from: m */
    public VelocityTracker f21678m;

    /* renamed from: n */
    public long f21679n;

    /* renamed from: o */
    public MPPointF f21680o;

    /* renamed from: p */
    public MPPointF f21681p;

    /* renamed from: q */
    public float f21682q;

    /* renamed from: r */
    public float f21683r;

    public BarLineChartTouchListener(BarLineChartBase<? extends BarLineScatterCandleBubbleData<? extends IBarLineScatterCandleBubbleDataSet<? extends Entry>>> barLineChartBase, Matrix matrix, float f) {
        super(barLineChartBase);
        this.f21670e = new Matrix();
        this.f21671f = new Matrix();
        this.f21672g = MPPointF.getInstance(0.0f, 0.0f);
        this.f21673h = MPPointF.getInstance(0.0f, 0.0f);
        this.f21674i = 1.0f;
        this.f21675j = 1.0f;
        this.f21676k = 1.0f;
        this.f21679n = 0L;
        this.f21680o = MPPointF.getInstance(0.0f, 0.0f);
        this.f21681p = MPPointF.getInstance(0.0f, 0.0f);
        this.f21670e = matrix;
        this.f21682q = Utils.convertDpToPixel(f);
        this.f21683r = Utils.convertDpToPixel(3.5f);
    }

    /* renamed from: a */
    public static float m17366a(MotionEvent motionEvent) {
        return Math.abs(motionEvent.getX(0) - motionEvent.getX(1));
    }

    /* renamed from: b */
    public static float m17367b(MotionEvent motionEvent) {
        return Math.abs(motionEvent.getY(0) - motionEvent.getY(1));
    }

    /* renamed from: d */
    public static void m17368d(MPPointF mPPointF, MotionEvent motionEvent) {
        float x = motionEvent.getX(0) + motionEvent.getX(1);
        float y = motionEvent.getY(0) + motionEvent.getY(1);
        mPPointF.f21741x = x / 2.0f;
        mPPointF.f21742y = y / 2.0f;
    }

    /* renamed from: i */
    public static float m17369i(MotionEvent motionEvent) {
        float x = motionEvent.getX(0) - motionEvent.getX(1);
        float y = motionEvent.getY(0) - motionEvent.getY(1);
        return (float) Math.sqrt((x * x) + (y * y));
    }

    /* renamed from: c */
    public final boolean m17370c() {
        IDataSet iDataSet;
        return (this.f21677l == null && ((BarLineChartBase) this.mChart).isAnyAxisInverted()) || ((iDataSet = this.f21677l) != null && ((BarLineChartBase) this.mChart).isInverted(iDataSet.getAxisDependency()));
    }

    public void computeScroll() {
        MPPointF mPPointF = this.f21681p;
        if (mPPointF.f21741x == 0.0f && mPPointF.f21742y == 0.0f) {
            return;
        }
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        this.f21681p.f21741x *= ((BarLineChartBase) this.mChart).getDragDecelerationFrictionCoef();
        this.f21681p.f21742y *= ((BarLineChartBase) this.mChart).getDragDecelerationFrictionCoef();
        float f = ((float) (currentAnimationTimeMillis - this.f21679n)) / 1000.0f;
        MPPointF mPPointF2 = this.f21681p;
        float f2 = mPPointF2.f21741x * f;
        float f3 = mPPointF2.f21742y * f;
        MPPointF mPPointF3 = this.f21680o;
        float f4 = mPPointF3.f21741x + f2;
        mPPointF3.f21741x = f4;
        float f5 = mPPointF3.f21742y + f3;
        mPPointF3.f21742y = f5;
        MotionEvent obtain = MotionEvent.obtain(currentAnimationTimeMillis, currentAnimationTimeMillis, 2, f4, f5, 0);
        m17371e(obtain);
        obtain.recycle();
        this.f21670e = ((BarLineChartBase) this.mChart).getViewPortHandler().refresh(this.f21670e, this.mChart, false);
        this.f21679n = currentAnimationTimeMillis;
        if (Math.abs(this.f21681p.f21741x) >= 0.01d || Math.abs(this.f21681p.f21742y) >= 0.01d) {
            Utils.postInvalidateOnAnimation(this.mChart);
            return;
        }
        ((BarLineChartBase) this.mChart).calculateOffsets();
        ((BarLineChartBase) this.mChart).postInvalidate();
        stopDeceleration();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x005f  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m17371e(android.view.MotionEvent r5) {
        /*
            r4 = this;
            com.github.mikephil.charting.listener.ChartTouchListener$ChartGesture r0 = com.github.mikephil.charting.listener.ChartTouchListener.ChartGesture.DRAG
            r4.mLastGesture = r0
            android.graphics.Matrix r0 = r4.f21670e
            android.graphics.Matrix r1 = r4.f21671f
            r0.set(r1)
            T extends com.github.mikephil.charting.charts.Chart<?> r0 = r4.mChart
            com.github.mikephil.charting.charts.BarLineChartBase r0 = (com.github.mikephil.charting.charts.BarLineChartBase) r0
            com.github.mikephil.charting.listener.OnChartGestureListener r0 = r0.getOnChartGestureListener()
            boolean r1 = r4.m17370c()
            if (r1 == 0) goto L46
            T extends com.github.mikephil.charting.charts.Chart<?> r1 = r4.mChart
            boolean r1 = r1 instanceof com.github.mikephil.charting.charts.HorizontalBarChart
            if (r1 == 0) goto L32
            float r1 = r5.getX()
            com.github.mikephil.charting.utils.MPPointF r2 = r4.f21672g
            float r2 = r2.f21741x
            float r1 = r1 - r2
            float r1 = -r1
            float r2 = r5.getY()
            com.github.mikephil.charting.utils.MPPointF r3 = r4.f21672g
            float r3 = r3.f21742y
            goto L57
        L32:
            float r1 = r5.getX()
            com.github.mikephil.charting.utils.MPPointF r2 = r4.f21672g
            float r2 = r2.f21741x
            float r1 = r1 - r2
            float r2 = r5.getY()
            com.github.mikephil.charting.utils.MPPointF r3 = r4.f21672g
            float r3 = r3.f21742y
            float r2 = r2 - r3
            float r2 = -r2
            goto L58
        L46:
            float r1 = r5.getX()
            com.github.mikephil.charting.utils.MPPointF r2 = r4.f21672g
            float r2 = r2.f21741x
            float r1 = r1 - r2
            float r2 = r5.getY()
            com.github.mikephil.charting.utils.MPPointF r3 = r4.f21672g
            float r3 = r3.f21742y
        L57:
            float r2 = r2 - r3
        L58:
            android.graphics.Matrix r4 = r4.f21670e
            r4.postTranslate(r1, r2)
            if (r0 == 0) goto L62
            r0.onChartTranslate(r5, r1, r2)
        L62:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.mikephil.charting.listener.BarLineChartTouchListener.m17371e(android.view.MotionEvent):void");
    }

    /* renamed from: f */
    public final void m17372f(MotionEvent motionEvent) {
        Highlight highlightByTouchPoint = ((BarLineChartBase) this.mChart).getHighlightByTouchPoint(motionEvent.getX(), motionEvent.getY());
        if (highlightByTouchPoint == null || highlightByTouchPoint.equalTo(this.mLastHighlighted)) {
            return;
        }
        this.mLastHighlighted = highlightByTouchPoint;
        ((BarLineChartBase) this.mChart).highlightValue(highlightByTouchPoint, true);
    }

    /* renamed from: g */
    public final void m17373g(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() >= 2) {
            OnChartGestureListener onChartGestureListener = ((BarLineChartBase) this.mChart).getOnChartGestureListener();
            float m17369i = m17369i(motionEvent);
            if (m17369i > this.f21683r) {
                MPPointF mPPointF = this.f21673h;
                MPPointF trans = getTrans(mPPointF.f21741x, mPPointF.f21742y);
                ViewPortHandler viewPortHandler = ((BarLineChartBase) this.mChart).getViewPortHandler();
                int i = this.mTouchMode;
                if (i == 4) {
                    this.mLastGesture = ChartTouchListener.ChartGesture.PINCH_ZOOM;
                    float f = m17369i / this.f21676k;
                    boolean z = f < 1.0f;
                    boolean canZoomOutMoreX = z ? viewPortHandler.canZoomOutMoreX() : viewPortHandler.canZoomInMoreX();
                    boolean canZoomOutMoreY = z ? viewPortHandler.canZoomOutMoreY() : viewPortHandler.canZoomInMoreY();
                    float f2 = ((BarLineChartBase) this.mChart).isScaleXEnabled() ? f : 1.0f;
                    float f3 = ((BarLineChartBase) this.mChart).isScaleYEnabled() ? f : 1.0f;
                    if (canZoomOutMoreY || canZoomOutMoreX) {
                        this.f21670e.set(this.f21671f);
                        this.f21670e.postScale(f2, f3, trans.f21741x, trans.f21742y);
                        if (onChartGestureListener != null) {
                            onChartGestureListener.onChartScale(motionEvent, f2, f3);
                        }
                    }
                } else if (i == 2 && ((BarLineChartBase) this.mChart).isScaleXEnabled()) {
                    this.mLastGesture = ChartTouchListener.ChartGesture.X_ZOOM;
                    float m17366a = m17366a(motionEvent) / this.f21674i;
                    if (m17366a < 1.0f ? viewPortHandler.canZoomOutMoreX() : viewPortHandler.canZoomInMoreX()) {
                        this.f21670e.set(this.f21671f);
                        this.f21670e.postScale(m17366a, 1.0f, trans.f21741x, trans.f21742y);
                        if (onChartGestureListener != null) {
                            onChartGestureListener.onChartScale(motionEvent, m17366a, 1.0f);
                        }
                    }
                } else if (this.mTouchMode == 3 && ((BarLineChartBase) this.mChart).isScaleYEnabled()) {
                    this.mLastGesture = ChartTouchListener.ChartGesture.Y_ZOOM;
                    float m17367b = m17367b(motionEvent) / this.f21675j;
                    if (m17367b < 1.0f ? viewPortHandler.canZoomOutMoreY() : viewPortHandler.canZoomInMoreY()) {
                        this.f21670e.set(this.f21671f);
                        this.f21670e.postScale(1.0f, m17367b, trans.f21741x, trans.f21742y);
                        if (onChartGestureListener != null) {
                            onChartGestureListener.onChartScale(motionEvent, 1.0f, m17367b);
                        }
                    }
                }
                MPPointF.recycleInstance(trans);
            }
        }
    }

    public Matrix getMatrix() {
        return this.f21670e;
    }

    public MPPointF getTrans(float f, float f2) {
        ViewPortHandler viewPortHandler = ((BarLineChartBase) this.mChart).getViewPortHandler();
        return MPPointF.getInstance(f - viewPortHandler.offsetLeft(), m17370c() ? -(f2 - viewPortHandler.offsetTop()) : -((((BarLineChartBase) this.mChart).getMeasuredHeight() - f2) - viewPortHandler.offsetBottom()));
    }

    /* renamed from: h */
    public final void m17374h(MotionEvent motionEvent) {
        this.f21671f.set(this.f21670e);
        this.f21672g.f21741x = motionEvent.getX();
        this.f21672g.f21742y = motionEvent.getY();
        this.f21677l = ((BarLineChartBase) this.mChart).getDataSetByTouchPoint(motionEvent.getX(), motionEvent.getY());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        this.mLastGesture = ChartTouchListener.ChartGesture.DOUBLE_TAP;
        OnChartGestureListener onChartGestureListener = ((BarLineChartBase) this.mChart).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.onChartDoubleTapped(motionEvent);
        }
        if (((BarLineChartBase) this.mChart).isDoubleTapToZoomEnabled() && ((BarLineScatterCandleBubbleData) ((BarLineChartBase) this.mChart).getData()).getEntryCount() > 0) {
            MPPointF trans = getTrans(motionEvent.getX(), motionEvent.getY());
            T t = this.mChart;
            ((BarLineChartBase) t).zoom(((BarLineChartBase) t).isScaleXEnabled() ? 1.4f : 1.0f, ((BarLineChartBase) this.mChart).isScaleYEnabled() ? 1.4f : 1.0f, trans.f21741x, trans.f21742y);
            if (((BarLineChartBase) this.mChart).isLogEnabled()) {
                Log.i("BarlineChartTouch", "Double-Tap, Zooming In, x: " + trans.f21741x + ", y: " + trans.f21742y);
            }
            MPPointF.recycleInstance(trans);
        }
        return super.onDoubleTap(motionEvent);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        this.mLastGesture = ChartTouchListener.ChartGesture.FLING;
        OnChartGestureListener onChartGestureListener = ((BarLineChartBase) this.mChart).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.onChartFling(motionEvent, motionEvent2, f, f2);
        }
        return super.onFling(motionEvent, motionEvent2, f, f2);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        this.mLastGesture = ChartTouchListener.ChartGesture.LONG_PRESS;
        OnChartGestureListener onChartGestureListener = ((BarLineChartBase) this.mChart).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.onChartLongPressed(motionEvent);
        }
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        this.mLastGesture = ChartTouchListener.ChartGesture.SINGLE_TAP;
        OnChartGestureListener onChartGestureListener = ((BarLineChartBase) this.mChart).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.onChartSingleTapped(motionEvent);
        }
        if (!((BarLineChartBase) this.mChart).isHighlightPerTapEnabled()) {
            return false;
        }
        performHighlight(((BarLineChartBase) this.mChart).getHighlightByTouchPoint(motionEvent.getX(), motionEvent.getY()), motionEvent);
        return super.onSingleTapUp(motionEvent);
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        if (this.f21678m == null) {
            this.f21678m = VelocityTracker.obtain();
        }
        this.f21678m.addMovement(motionEvent);
        if (motionEvent.getActionMasked() == 3 && (velocityTracker = this.f21678m) != null) {
            velocityTracker.recycle();
            this.f21678m = null;
        }
        if (this.mTouchMode == 0) {
            this.mGestureDetector.onTouchEvent(motionEvent);
        }
        if (!((BarLineChartBase) this.mChart).isDragEnabled() && !((BarLineChartBase) this.mChart).isScaleXEnabled() && !((BarLineChartBase) this.mChart).isScaleYEnabled()) {
            return true;
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            startAction(motionEvent);
            stopDeceleration();
            m17374h(motionEvent);
        } else if (action == 1) {
            VelocityTracker velocityTracker2 = this.f21678m;
            int pointerId = motionEvent.getPointerId(0);
            velocityTracker2.computeCurrentVelocity(1000, Utils.getMaximumFlingVelocity());
            float yVelocity = velocityTracker2.getYVelocity(pointerId);
            float xVelocity = velocityTracker2.getXVelocity(pointerId);
            if ((Math.abs(xVelocity) > Utils.getMinimumFlingVelocity() || Math.abs(yVelocity) > Utils.getMinimumFlingVelocity()) && this.mTouchMode == 1 && ((BarLineChartBase) this.mChart).isDragDecelerationEnabled()) {
                stopDeceleration();
                this.f21679n = AnimationUtils.currentAnimationTimeMillis();
                this.f21680o.f21741x = motionEvent.getX();
                this.f21680o.f21742y = motionEvent.getY();
                MPPointF mPPointF = this.f21681p;
                mPPointF.f21741x = xVelocity;
                mPPointF.f21742y = yVelocity;
                Utils.postInvalidateOnAnimation(this.mChart);
            }
            int i = this.mTouchMode;
            if (i == 2 || i == 3 || i == 4 || i == 5) {
                ((BarLineChartBase) this.mChart).calculateOffsets();
                ((BarLineChartBase) this.mChart).postInvalidate();
            }
            this.mTouchMode = 0;
            ((BarLineChartBase) this.mChart).enableScroll();
            VelocityTracker velocityTracker3 = this.f21678m;
            if (velocityTracker3 != null) {
                velocityTracker3.recycle();
                this.f21678m = null;
            }
            endAction(motionEvent);
        } else if (action == 2) {
            int i2 = this.mTouchMode;
            if (i2 == 1) {
                ((BarLineChartBase) this.mChart).disableScroll();
                m17371e(motionEvent);
            } else if (i2 == 2 || i2 == 3 || i2 == 4) {
                ((BarLineChartBase) this.mChart).disableScroll();
                if (((BarLineChartBase) this.mChart).isScaleXEnabled() || ((BarLineChartBase) this.mChart).isScaleYEnabled()) {
                    m17373g(motionEvent);
                }
            } else if (i2 == 0 && Math.abs(ChartTouchListener.distance(motionEvent.getX(), this.f21672g.f21741x, motionEvent.getY(), this.f21672g.f21742y)) > this.f21682q) {
                if (((BarLineChartBase) this.mChart).hasNoDragOffset()) {
                    if (((BarLineChartBase) this.mChart).isFullyZoomedOut() || !((BarLineChartBase) this.mChart).isDragEnabled()) {
                        this.mLastGesture = ChartTouchListener.ChartGesture.DRAG;
                        if (((BarLineChartBase) this.mChart).isHighlightPerDragEnabled()) {
                            m17372f(motionEvent);
                        }
                    } else {
                        this.mTouchMode = 1;
                    }
                } else if (((BarLineChartBase) this.mChart).isDragEnabled()) {
                    this.mLastGesture = ChartTouchListener.ChartGesture.DRAG;
                    this.mTouchMode = 1;
                }
            }
        } else if (action == 3) {
            this.mTouchMode = 0;
            endAction(motionEvent);
        } else if (action != 5) {
            if (action == 6) {
                Utils.velocityTrackerPointerUpCleanUpIfNecessary(motionEvent, this.f21678m);
                this.mTouchMode = 5;
            }
        } else if (motionEvent.getPointerCount() >= 2) {
            ((BarLineChartBase) this.mChart).disableScroll();
            m17374h(motionEvent);
            this.f21674i = m17366a(motionEvent);
            this.f21675j = m17367b(motionEvent);
            float m17369i = m17369i(motionEvent);
            this.f21676k = m17369i;
            if (m17369i > 10.0f) {
                if (((BarLineChartBase) this.mChart).isPinchZoomEnabled()) {
                    this.mTouchMode = 4;
                } else if (((BarLineChartBase) this.mChart).isScaleXEnabled() != ((BarLineChartBase) this.mChart).isScaleYEnabled()) {
                    this.mTouchMode = ((BarLineChartBase) this.mChart).isScaleXEnabled() ? 2 : 3;
                } else {
                    this.mTouchMode = this.f21674i > this.f21675j ? 2 : 3;
                }
            }
            m17368d(this.f21673h, motionEvent);
        }
        this.f21670e = ((BarLineChartBase) this.mChart).getViewPortHandler().refresh(this.f21670e, this.mChart, true);
        return true;
    }

    public void setDragTriggerDist(float f) {
        this.f21682q = Utils.convertDpToPixel(f);
    }

    public void stopDeceleration() {
        MPPointF mPPointF = this.f21681p;
        mPPointF.f21741x = 0.0f;
        mPPointF.f21742y = 0.0f;
    }
}
