package androidx.constraintlayout.motion.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Flow;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.core.widgets.Placeholder;
import androidx.constraintlayout.core.widgets.VirtualLayout;
import androidx.constraintlayout.motion.utils.StopLogic;
import androidx.constraintlayout.motion.utils.ViewState;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.widget.C0503R;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintLayoutStates;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.StateSet;
import androidx.core.view.NestedScrollingParent3;
import com.blankj.utilcode.util.ShadowUtils;
import com.bumptech.glide.load.engine.GlideException;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.ocr.data.constant.OcrValues;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.text.AlphabetConverter;

/* loaded from: classes3.dex */
public class MotionLayout extends ConstraintLayout implements NestedScrollingParent3 {
    public static final int DEBUG_SHOW_NONE = 0;
    public static final int DEBUG_SHOW_PATH = 2;
    public static final int DEBUG_SHOW_PROGRESS = 1;
    public static boolean IS_IN_EDIT_MODE = false;
    public static final int TOUCH_UP_COMPLETE = 0;
    public static final int TOUCH_UP_COMPLETE_TO_END = 2;
    public static final int TOUCH_UP_COMPLETE_TO_START = 1;
    public static final int TOUCH_UP_DECELERATE = 4;
    public static final int TOUCH_UP_DECELERATE_AND_COMPLETE = 5;
    public static final int TOUCH_UP_NEVER_TO_END = 7;
    public static final int TOUCH_UP_NEVER_TO_START = 6;
    public static final int TOUCH_UP_STOP = 3;

    /* renamed from: V1 */
    public static final String f3781V1 = "MotionLayout";
    public static final int VELOCITY_LAYOUT = 1;
    public static final int VELOCITY_POST_LAYOUT = 0;
    public static final int VELOCITY_STATIC_LAYOUT = 3;
    public static final int VELOCITY_STATIC_POST_LAYOUT = 2;

    /* renamed from: W1 */
    public static final boolean f3782W1 = false;

    /* renamed from: X1 */
    public static final int f3783X1 = 50;

    /* renamed from: Y1 */
    public static final float f3784Y1 = 1.0E-5f;

    /* renamed from: A0 */
    public int f3785A0;

    /* renamed from: A1 */
    public KeyCache f3786A1;

    /* renamed from: B0 */
    public int f3787B0;

    /* renamed from: B1 */
    public boolean f3788B1;

    /* renamed from: C0 */
    public int f3789C0;

    /* renamed from: C1 */
    public C0479j f3790C1;

    /* renamed from: D0 */
    public int f3791D0;

    /* renamed from: D1 */
    public Runnable f3792D1;

    /* renamed from: E0 */
    public boolean f3793E0;

    /* renamed from: E1 */
    public int[] f3794E1;

    /* renamed from: F0 */
    public HashMap<View, MotionController> f3795F0;

    /* renamed from: F1 */
    public int f3796F1;

    /* renamed from: G0 */
    public long f3797G0;

    /* renamed from: G1 */
    public boolean f3798G1;

    /* renamed from: H0 */
    public float f3799H0;

    /* renamed from: H1 */
    public int f3800H1;

    /* renamed from: I0 */
    public float f3801I0;

    /* renamed from: I1 */
    public HashMap<View, ViewState> f3802I1;

    /* renamed from: J0 */
    public float f3803J0;

    /* renamed from: J1 */
    public int f3804J1;

    /* renamed from: K0 */
    public long f3805K0;

    /* renamed from: K1 */
    public int f3806K1;

    /* renamed from: L0 */
    public float f3807L0;

    /* renamed from: L1 */
    public int f3808L1;

    /* renamed from: M0 */
    public boolean f3809M0;

    /* renamed from: M1 */
    public Rect f3810M1;

    /* renamed from: N0 */
    public boolean f3811N0;

    /* renamed from: N1 */
    public boolean f3812N1;

    /* renamed from: O0 */
    public boolean f3813O0;

    /* renamed from: O1 */
    public TransitionState f3814O1;

    /* renamed from: P0 */
    public TransitionListener f3815P0;

    /* renamed from: P1 */
    public C0477h f3816P1;

    /* renamed from: Q0 */
    public float f3817Q0;

    /* renamed from: Q1 */
    public boolean f3818Q1;

    /* renamed from: R0 */
    public float f3819R0;

    /* renamed from: R1 */
    public RectF f3820R1;

    /* renamed from: S0 */
    public int f3821S0;

    /* renamed from: S1 */
    public View f3822S1;

    /* renamed from: T0 */
    public C0476g f3823T0;

    /* renamed from: T1 */
    public Matrix f3824T1;

    /* renamed from: U0 */
    public boolean f3825U0;

    /* renamed from: U1 */
    public ArrayList<Integer> f3826U1;

    /* renamed from: V0 */
    public StopLogic f3827V0;

    /* renamed from: W0 */
    public C0475f f3828W0;

    /* renamed from: X0 */
    public DesignTool f3829X0;

    /* renamed from: Y0 */
    public boolean f3830Y0;

    /* renamed from: Z0 */
    public int f3831Z0;

    /* renamed from: a1 */
    public int f3832a1;

    /* renamed from: b1 */
    public int f3833b1;

    /* renamed from: c1 */
    public int f3834c1;

    /* renamed from: d1 */
    public boolean f3835d1;

    /* renamed from: e1 */
    public float f3836e1;

    /* renamed from: f1 */
    public float f3837f1;

    /* renamed from: g1 */
    public long f3838g1;

    /* renamed from: h1 */
    public float f3839h1;

    /* renamed from: i1 */
    public boolean f3840i1;

    /* renamed from: j1 */
    public ArrayList<MotionHelper> f3841j1;

    /* renamed from: k1 */
    public ArrayList<MotionHelper> f3842k1;

    /* renamed from: l1 */
    public ArrayList<MotionHelper> f3843l1;

    /* renamed from: m1 */
    public CopyOnWriteArrayList<TransitionListener> f3844m1;
    protected boolean mMeasureDuringTransition;

    /* renamed from: n1 */
    public int f3845n1;

    /* renamed from: o1 */
    public long f3846o1;

    /* renamed from: p1 */
    public float f3847p1;

    /* renamed from: q1 */
    public int f3848q1;

    /* renamed from: r1 */
    public float f3849r1;

    /* renamed from: s1 */
    public boolean f3850s1;

    /* renamed from: t1 */
    public int f3851t1;

    /* renamed from: u1 */
    public int f3852u1;

    /* renamed from: v0 */
    public MotionScene f3853v0;

    /* renamed from: v1 */
    public int f3854v1;

    /* renamed from: w0 */
    public Interpolator f3855w0;

    /* renamed from: w1 */
    public int f3856w1;

    /* renamed from: x0 */
    public Interpolator f3857x0;

    /* renamed from: x1 */
    public int f3858x1;

    /* renamed from: y0 */
    public float f3859y0;

    /* renamed from: y1 */
    public int f3860y1;

    /* renamed from: z0 */
    public int f3861z0;

    /* renamed from: z1 */
    public float f3862z1;

    /* loaded from: classes3.dex */
    public interface MotionTracker {
        void addMovement(MotionEvent event);

        void clear();

        void computeCurrentVelocity(int units);

        void computeCurrentVelocity(int units, float maxVelocity);

        float getXVelocity();

        float getXVelocity(int id);

        float getYVelocity();

        float getYVelocity(int id);

        void recycle();
    }

    /* loaded from: classes3.dex */
    public interface TransitionListener {
        void onTransitionChange(MotionLayout motionLayout, int startId, int endId, float progress);

        void onTransitionCompleted(MotionLayout motionLayout, int currentId);

        void onTransitionStarted(MotionLayout motionLayout, int startId, int endId);

        void onTransitionTrigger(MotionLayout motionLayout, int triggerId, boolean positive, float progress);
    }

    /* loaded from: classes3.dex */
    public enum TransitionState {
        UNDEFINED,
        SETUP,
        MOVING,
        FINISHED
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$a */
    /* loaded from: classes3.dex */
    public class RunnableC0470a implements Runnable {
        public RunnableC0470a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MotionLayout.this.f3790C1.m1955a();
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$b */
    /* loaded from: classes3.dex */
    public class RunnableC0471b implements Runnable {
        public RunnableC0471b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MotionLayout.this.f3798G1 = false;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$c */
    /* loaded from: classes3.dex */
    public class RunnableC0472c implements Runnable {

        /* renamed from: e */
        public final /* synthetic */ View f3865e;

        public RunnableC0472c(final MotionLayout this$0, final View val$target) {
            this.f3865e = val$target;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3865e.setNestedScrollingEnabled(true);
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$d */
    /* loaded from: classes3.dex */
    public class RunnableC0473d implements Runnable {
        public RunnableC0473d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MotionLayout.this.f3790C1.m1955a();
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$e */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C0474e {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3867a;

        static {
            int[] iArr = new int[TransitionState.values().length];
            f3867a = iArr;
            try {
                iArr[TransitionState.UNDEFINED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3867a[TransitionState.SETUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3867a[TransitionState.MOVING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3867a[TransitionState.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$f */
    /* loaded from: classes3.dex */
    public class C0475f extends MotionInterpolator {

        /* renamed from: a */
        public float f3868a = 0.0f;

        /* renamed from: b */
        public float f3869b = 0.0f;

        /* renamed from: c */
        public float f3870c;

        public C0475f() {
        }

        /* renamed from: a */
        public void m1927a(float velocity, float position, float maxAcceleration) {
            this.f3868a = velocity;
            this.f3869b = position;
            this.f3870c = maxAcceleration;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionInterpolator, android.animation.TimeInterpolator
        public float getInterpolation(float time) {
            float f;
            float f2;
            float f3 = this.f3868a;
            if (f3 > 0.0f) {
                float f4 = this.f3870c;
                if (f3 / f4 < time) {
                    time = f3 / f4;
                }
                MotionLayout.this.f3859y0 = f3 - (f4 * time);
                f = (f3 * time) - (((f4 * time) * time) / 2.0f);
                f2 = this.f3869b;
            } else {
                float f5 = this.f3870c;
                if ((-f3) / f5 < time) {
                    time = (-f3) / f5;
                }
                MotionLayout.this.f3859y0 = (f5 * time) + f3;
                f = (f3 * time) + (((f5 * time) * time) / 2.0f);
                f2 = this.f3869b;
            }
            return f + f2;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionInterpolator
        public float getVelocity() {
            return MotionLayout.this.f3859y0;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$g */
    /* loaded from: classes3.dex */
    public class C0476g {

        /* renamed from: v */
        public static final int f3872v = 16;

        /* renamed from: a */
        public float[] f3873a;

        /* renamed from: b */
        public int[] f3874b;

        /* renamed from: c */
        public float[] f3875c;

        /* renamed from: d */
        public Path f3876d;

        /* renamed from: e */
        public Paint f3877e;

        /* renamed from: f */
        public Paint f3878f;

        /* renamed from: g */
        public Paint f3879g;

        /* renamed from: h */
        public Paint f3880h;

        /* renamed from: i */
        public Paint f3881i;

        /* renamed from: j */
        public float[] f3882j;

        /* renamed from: p */
        public DashPathEffect f3888p;

        /* renamed from: q */
        public int f3889q;

        /* renamed from: t */
        public int f3892t;

        /* renamed from: k */
        public final int f3883k = -21965;

        /* renamed from: l */
        public final int f3884l = -2067046;

        /* renamed from: m */
        public final int f3885m = -13391360;

        /* renamed from: n */
        public final int f3886n = 1996488704;

        /* renamed from: o */
        public final int f3887o = 10;

        /* renamed from: r */
        public Rect f3890r = new Rect();

        /* renamed from: s */
        public boolean f3891s = false;

        public C0476g() {
            this.f3892t = 1;
            Paint paint = new Paint();
            this.f3877e = paint;
            paint.setAntiAlias(true);
            this.f3877e.setColor(-21965);
            this.f3877e.setStrokeWidth(2.0f);
            this.f3877e.setStyle(Paint.Style.STROKE);
            Paint paint2 = new Paint();
            this.f3878f = paint2;
            paint2.setAntiAlias(true);
            this.f3878f.setColor(-2067046);
            this.f3878f.setStrokeWidth(2.0f);
            this.f3878f.setStyle(Paint.Style.STROKE);
            Paint paint3 = new Paint();
            this.f3879g = paint3;
            paint3.setAntiAlias(true);
            this.f3879g.setColor(-13391360);
            this.f3879g.setStrokeWidth(2.0f);
            this.f3879g.setStyle(Paint.Style.STROKE);
            Paint paint4 = new Paint();
            this.f3880h = paint4;
            paint4.setAntiAlias(true);
            this.f3880h.setColor(-13391360);
            this.f3880h.setTextSize(MotionLayout.this.getContext().getResources().getDisplayMetrics().density * 12.0f);
            this.f3882j = new float[8];
            Paint paint5 = new Paint();
            this.f3881i = paint5;
            paint5.setAntiAlias(true);
            DashPathEffect dashPathEffect = new DashPathEffect(new float[]{4.0f, 8.0f}, 0.0f);
            this.f3888p = dashPathEffect;
            this.f3879g.setPathEffect(dashPathEffect);
            this.f3875c = new float[100];
            this.f3874b = new int[50];
            if (this.f3891s) {
                this.f3877e.setStrokeWidth(8.0f);
                this.f3881i.setStrokeWidth(8.0f);
                this.f3878f.setStrokeWidth(8.0f);
                this.f3892t = 4;
            }
        }

        /* renamed from: a */
        public void m1928a(Canvas canvas, HashMap<View, MotionController> frameArrayList, int duration, int debugPath) {
            if (frameArrayList == null || frameArrayList.size() == 0) {
                return;
            }
            canvas.save();
            if (!MotionLayout.this.isInEditMode() && (debugPath & 1) == 2) {
                String str = MotionLayout.this.getContext().getResources().getResourceName(MotionLayout.this.f3787B0) + ":" + MotionLayout.this.getProgress();
                canvas.drawText(str, 10.0f, MotionLayout.this.getHeight() - 30, this.f3880h);
                canvas.drawText(str, 11.0f, MotionLayout.this.getHeight() - 29, this.f3877e);
            }
            for (MotionController motionController : frameArrayList.values()) {
                int drawPath = motionController.getDrawPath();
                if (debugPath > 0 && drawPath == 0) {
                    drawPath = 1;
                }
                if (drawPath != 0) {
                    this.f3889q = motionController.m1857d(this.f3875c, this.f3874b);
                    if (drawPath >= 1) {
                        int i = duration / 16;
                        float[] fArr = this.f3873a;
                        if (fArr == null || fArr.length != i * 2) {
                            this.f3873a = new float[i * 2];
                            this.f3876d = new Path();
                        }
                        int i2 = this.f3892t;
                        canvas.translate(i2, i2);
                        this.f3877e.setColor(1996488704);
                        this.f3881i.setColor(1996488704);
                        this.f3878f.setColor(1996488704);
                        this.f3879g.setColor(1996488704);
                        motionController.m1858e(this.f3873a, i);
                        m1929b(canvas, drawPath, this.f3889q, motionController);
                        this.f3877e.setColor(-21965);
                        this.f3878f.setColor(-2067046);
                        this.f3881i.setColor(-2067046);
                        this.f3879g.setColor(-13391360);
                        int i3 = this.f3892t;
                        canvas.translate(-i3, -i3);
                        m1929b(canvas, drawPath, this.f3889q, motionController);
                        if (drawPath == 5) {
                            m1937j(canvas, motionController);
                        }
                    }
                }
            }
            canvas.restore();
        }

        /* renamed from: b */
        public void m1929b(Canvas canvas, int mode, int keyFrames, MotionController motionController) {
            if (mode == 4) {
                m1931d(canvas);
            }
            if (mode == 2) {
                m1934g(canvas);
            }
            if (mode == 3) {
                m1932e(canvas);
            }
            m1930c(canvas);
            m1938k(canvas, mode, keyFrames, motionController);
        }

        /* renamed from: c */
        public final void m1930c(Canvas canvas) {
            canvas.drawLines(this.f3873a, this.f3877e);
        }

        /* renamed from: d */
        public final void m1931d(Canvas canvas) {
            boolean z = false;
            boolean z2 = false;
            for (int i = 0; i < this.f3889q; i++) {
                int i2 = this.f3874b[i];
                if (i2 == 1) {
                    z = true;
                }
                if (i2 == 0) {
                    z2 = true;
                }
            }
            if (z) {
                m1934g(canvas);
            }
            if (z2) {
                m1932e(canvas);
            }
        }

        /* renamed from: e */
        public final void m1932e(Canvas canvas) {
            float[] fArr = this.f3873a;
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[fArr.length - 2];
            float f4 = fArr[fArr.length - 1];
            canvas.drawLine(Math.min(f, f3), Math.max(f2, f4), Math.max(f, f3), Math.max(f2, f4), this.f3879g);
            canvas.drawLine(Math.min(f, f3), Math.min(f2, f4), Math.min(f, f3), Math.max(f2, f4), this.f3879g);
        }

        /* renamed from: f */
        public final void m1933f(Canvas canvas, float x, float y) {
            float[] fArr = this.f3873a;
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[fArr.length - 2];
            float f4 = fArr[fArr.length - 1];
            float min = Math.min(f, f3);
            float max = Math.max(f2, f4);
            float min2 = x - Math.min(f, f3);
            float max2 = Math.max(f2, f4) - y;
            String str = "" + (((int) (((min2 * 100.0f) / Math.abs(f3 - f)) + 0.5d)) / 100.0f);
            m1940m(str, this.f3880h);
            canvas.drawText(str, ((min2 / 2.0f) - (this.f3890r.width() / 2)) + min, y - 20.0f, this.f3880h);
            canvas.drawLine(x, y, Math.min(f, f3), y, this.f3879g);
            String str2 = "" + (((int) (((max2 * 100.0f) / Math.abs(f4 - f2)) + 0.5d)) / 100.0f);
            m1940m(str2, this.f3880h);
            canvas.drawText(str2, x + 5.0f, max - ((max2 / 2.0f) - (this.f3890r.height() / 2)), this.f3880h);
            canvas.drawLine(x, y, x, Math.max(f2, f4), this.f3879g);
        }

        /* renamed from: g */
        public final void m1934g(Canvas canvas) {
            float[] fArr = this.f3873a;
            canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.f3879g);
        }

        /* renamed from: h */
        public final void m1935h(Canvas canvas, float x, float y) {
            float[] fArr = this.f3873a;
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[fArr.length - 2];
            float f4 = fArr[fArr.length - 1];
            float hypot = (float) Math.hypot(f - f3, f2 - f4);
            float f5 = f3 - f;
            float f6 = f4 - f2;
            float f7 = (((x - f) * f5) + ((y - f2) * f6)) / (hypot * hypot);
            float f8 = f + (f5 * f7);
            float f9 = f2 + (f7 * f6);
            Path path = new Path();
            path.moveTo(x, y);
            path.lineTo(f8, f9);
            float hypot2 = (float) Math.hypot(f8 - x, f9 - y);
            String str = "" + (((int) ((hypot2 * 100.0f) / hypot)) / 100.0f);
            m1940m(str, this.f3880h);
            canvas.drawTextOnPath(str, path, (hypot2 / 2.0f) - (this.f3890r.width() / 2), -20.0f, this.f3880h);
            canvas.drawLine(x, y, f8, f9, this.f3879g);
        }

        /* renamed from: i */
        public final void m1936i(Canvas canvas, float x, float y, int viewWidth, int viewHeight) {
            String str = "" + (((int) ((((x - (viewWidth / 2)) * 100.0f) / (MotionLayout.this.getWidth() - viewWidth)) + 0.5d)) / 100.0f);
            m1940m(str, this.f3880h);
            canvas.drawText(str, ((x / 2.0f) - (this.f3890r.width() / 2)) + 0.0f, y - 20.0f, this.f3880h);
            canvas.drawLine(x, y, Math.min(0.0f, 1.0f), y, this.f3879g);
            String str2 = "" + (((int) ((((y - (viewHeight / 2)) * 100.0f) / (MotionLayout.this.getHeight() - viewHeight)) + 0.5d)) / 100.0f);
            m1940m(str2, this.f3880h);
            canvas.drawText(str2, x + 5.0f, 0.0f - ((y / 2.0f) - (this.f3890r.height() / 2)), this.f3880h);
            canvas.drawLine(x, y, x, Math.max(0.0f, 1.0f), this.f3879g);
        }

        /* renamed from: j */
        public final void m1937j(Canvas canvas, MotionController motionController) {
            this.f3876d.reset();
            for (int i = 0; i <= 50; i++) {
                motionController.m1859f(i / 50, this.f3882j, 0);
                Path path = this.f3876d;
                float[] fArr = this.f3882j;
                path.moveTo(fArr[0], fArr[1]);
                Path path2 = this.f3876d;
                float[] fArr2 = this.f3882j;
                path2.lineTo(fArr2[2], fArr2[3]);
                Path path3 = this.f3876d;
                float[] fArr3 = this.f3882j;
                path3.lineTo(fArr3[4], fArr3[5]);
                Path path4 = this.f3876d;
                float[] fArr4 = this.f3882j;
                path4.lineTo(fArr4[6], fArr4[7]);
                this.f3876d.close();
            }
            this.f3877e.setColor(ShadowUtils.Config.f13967i);
            canvas.translate(2.0f, 2.0f);
            canvas.drawPath(this.f3876d, this.f3877e);
            canvas.translate(-2.0f, -2.0f);
            this.f3877e.setColor(-65536);
            canvas.drawPath(this.f3876d, this.f3877e);
        }

        /* renamed from: k */
        public final void m1938k(Canvas canvas, int mode, int keyFrames, MotionController motionController) {
            int i;
            int i2;
            float f;
            float f2;
            View view = motionController.f3752b;
            if (view != null) {
                i = view.getWidth();
                i2 = motionController.f3752b.getHeight();
            } else {
                i = 0;
                i2 = 0;
            }
            for (int i3 = 1; i3 < keyFrames - 1; i3++) {
                if (mode != 4 || this.f3874b[i3 - 1] != 0) {
                    float[] fArr = this.f3875c;
                    int i4 = i3 * 2;
                    float f3 = fArr[i4];
                    float f4 = fArr[i4 + 1];
                    this.f3876d.reset();
                    this.f3876d.moveTo(f3, f4 + 10.0f);
                    this.f3876d.lineTo(f3 + 10.0f, f4);
                    this.f3876d.lineTo(f3, f4 - 10.0f);
                    this.f3876d.lineTo(f3 - 10.0f, f4);
                    this.f3876d.close();
                    int i5 = i3 - 1;
                    motionController.m1865m(i5);
                    if (mode == 4) {
                        int i6 = this.f3874b[i5];
                        if (i6 == 1) {
                            m1935h(canvas, f3 - 0.0f, f4 - 0.0f);
                        } else if (i6 == 0) {
                            m1933f(canvas, f3 - 0.0f, f4 - 0.0f);
                        } else if (i6 == 2) {
                            f = f4;
                            f2 = f3;
                            m1936i(canvas, f3 - 0.0f, f4 - 0.0f, i, i2);
                            canvas.drawPath(this.f3876d, this.f3881i);
                        }
                        f = f4;
                        f2 = f3;
                        canvas.drawPath(this.f3876d, this.f3881i);
                    } else {
                        f = f4;
                        f2 = f3;
                    }
                    if (mode == 2) {
                        m1935h(canvas, f2 - 0.0f, f - 0.0f);
                    }
                    if (mode == 3) {
                        m1933f(canvas, f2 - 0.0f, f - 0.0f);
                    }
                    if (mode == 6) {
                        m1936i(canvas, f2 - 0.0f, f - 0.0f, i, i2);
                    }
                    canvas.drawPath(this.f3876d, this.f3881i);
                }
            }
            float[] fArr2 = this.f3873a;
            if (fArr2.length > 1) {
                canvas.drawCircle(fArr2[0], fArr2[1], 8.0f, this.f3878f);
                float[] fArr3 = this.f3873a;
                canvas.drawCircle(fArr3[fArr3.length - 2], fArr3[fArr3.length - 1], 8.0f, this.f3878f);
            }
        }

        /* renamed from: l */
        public final void m1939l(Canvas canvas, float x1, float y1, float x2, float y2) {
            canvas.drawRect(x1, y1, x2, y2, this.f3879g);
            canvas.drawLine(x1, y1, x2, y2, this.f3879g);
        }

        /* renamed from: m */
        public void m1940m(String text, Paint paint) {
            paint.getTextBounds(text, 0, text.length(), this.f3890r);
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$h */
    /* loaded from: classes3.dex */
    public class C0477h {

        /* renamed from: a */
        public ConstraintWidgetContainer f3894a = new ConstraintWidgetContainer();

        /* renamed from: b */
        public ConstraintWidgetContainer f3895b = new ConstraintWidgetContainer();

        /* renamed from: c */
        public ConstraintSet f3896c = null;

        /* renamed from: d */
        public ConstraintSet f3897d = null;

        /* renamed from: e */
        public int f3898e;

        /* renamed from: f */
        public int f3899f;

        public C0477h() {
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x00e9  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x013d A[SYNTHETIC] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void m1941a() {
            /*
                Method dump skipped, instructions count: 360
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.C0477h.m1941a():void");
        }

        /* renamed from: b */
        public final void m1942b(int widthMeasureSpec, int heightMeasureSpec) {
            int optimizationLevel = MotionLayout.this.getOptimizationLevel();
            MotionLayout motionLayout = MotionLayout.this;
            if (motionLayout.f3785A0 == motionLayout.getStartState()) {
                MotionLayout motionLayout2 = MotionLayout.this;
                ConstraintWidgetContainer constraintWidgetContainer = this.f3895b;
                ConstraintSet constraintSet = this.f3897d;
                motionLayout2.resolveSystem(constraintWidgetContainer, optimizationLevel, (constraintSet == null || constraintSet.mRotate == 0) ? widthMeasureSpec : heightMeasureSpec, (constraintSet == null || constraintSet.mRotate == 0) ? heightMeasureSpec : widthMeasureSpec);
                ConstraintSet constraintSet2 = this.f3896c;
                if (constraintSet2 != null) {
                    MotionLayout motionLayout3 = MotionLayout.this;
                    ConstraintWidgetContainer constraintWidgetContainer2 = this.f3894a;
                    int i = constraintSet2.mRotate;
                    int i2 = i == 0 ? widthMeasureSpec : heightMeasureSpec;
                    if (i == 0) {
                        widthMeasureSpec = heightMeasureSpec;
                    }
                    motionLayout3.resolveSystem(constraintWidgetContainer2, optimizationLevel, i2, widthMeasureSpec);
                    return;
                }
                return;
            }
            ConstraintSet constraintSet3 = this.f3896c;
            if (constraintSet3 != null) {
                MotionLayout motionLayout4 = MotionLayout.this;
                ConstraintWidgetContainer constraintWidgetContainer3 = this.f3894a;
                int i3 = constraintSet3.mRotate;
                motionLayout4.resolveSystem(constraintWidgetContainer3, optimizationLevel, i3 == 0 ? widthMeasureSpec : heightMeasureSpec, i3 == 0 ? heightMeasureSpec : widthMeasureSpec);
            }
            MotionLayout motionLayout5 = MotionLayout.this;
            ConstraintWidgetContainer constraintWidgetContainer4 = this.f3895b;
            ConstraintSet constraintSet4 = this.f3897d;
            int i4 = (constraintSet4 == null || constraintSet4.mRotate == 0) ? widthMeasureSpec : heightMeasureSpec;
            if (constraintSet4 == null || constraintSet4.mRotate == 0) {
                widthMeasureSpec = heightMeasureSpec;
            }
            motionLayout5.resolveSystem(constraintWidgetContainer4, optimizationLevel, i4, widthMeasureSpec);
        }

        /* renamed from: c */
        public void m1943c(ConstraintWidgetContainer src, ConstraintWidgetContainer dest) {
            ArrayList<ConstraintWidget> children = src.getChildren();
            HashMap<ConstraintWidget, ConstraintWidget> hashMap = new HashMap<>();
            hashMap.put(src, dest);
            dest.getChildren().clear();
            dest.copy(src, hashMap);
            Iterator<ConstraintWidget> it2 = children.iterator();
            while (it2.hasNext()) {
                ConstraintWidget next = it2.next();
                ConstraintWidget barrier = next instanceof Barrier ? new Barrier() : next instanceof Guideline ? new Guideline() : next instanceof Flow ? new Flow() : next instanceof Placeholder ? new Placeholder() : next instanceof Helper ? new HelperWidget() : new ConstraintWidget();
                dest.add(barrier);
                hashMap.put(next, barrier);
            }
            Iterator<ConstraintWidget> it3 = children.iterator();
            while (it3.hasNext()) {
                ConstraintWidget next2 = it3.next();
                hashMap.get(next2).copy(next2, hashMap);
            }
        }

        @SuppressLint({"LogConditional"})
        /* renamed from: d */
        public final void m1944d(String title, ConstraintWidgetContainer c) {
            String str = title + " " + Debug.getName((View) c.getCompanionWidget());
            Log.v(MotionLayout.f3781V1, str + "  ========= " + c);
            int size = c.getChildren().size();
            for (int i = 0; i < size; i++) {
                String str2 = str + IteratorUtils.f104923a + i + "] ";
                ConstraintWidget constraintWidget = c.getChildren().get(i);
                StringBuilder sb = new StringBuilder();
                sb.append("");
                sb.append(constraintWidget.mTop.mTarget != null ? "T" : "_");
                String sb2 = sb.toString();
                StringBuilder sb3 = new StringBuilder();
                sb3.append(sb2);
                sb3.append(constraintWidget.mBottom.mTarget != null ? "B" : "_");
                String sb4 = sb3.toString();
                StringBuilder sb5 = new StringBuilder();
                sb5.append(sb4);
                sb5.append(constraintWidget.mLeft.mTarget != null ? "L" : "_");
                String sb6 = sb5.toString();
                StringBuilder sb7 = new StringBuilder();
                sb7.append(sb6);
                sb7.append(constraintWidget.mRight.mTarget != null ? "R" : "_");
                String sb8 = sb7.toString();
                View view = (View) constraintWidget.getCompanionWidget();
                String name = Debug.getName(view);
                if (view instanceof TextView) {
                    name = name + MotionUtils.f31761c + ((Object) ((TextView) view).getText()) + MotionUtils.f31762d;
                }
                Log.v(MotionLayout.f3781V1, str2 + GlideException.C1935a.f14609h + name + " " + constraintWidget + " " + sb8);
            }
            Log.v(MotionLayout.f3781V1, str + " done. ");
        }

        @SuppressLint({"LogConditional"})
        /* renamed from: e */
        public final void m1945e(String str, ConstraintLayout.LayoutParams params) {
            StringBuilder sb = new StringBuilder();
            sb.append(" ");
            sb.append(params.startToStart != -1 ? "SS" : "__");
            String sb2 = sb.toString();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(sb2);
            sb3.append(params.startToEnd != -1 ? "|SE" : "|__");
            String sb4 = sb3.toString();
            StringBuilder sb5 = new StringBuilder();
            sb5.append(sb4);
            sb5.append(params.endToStart != -1 ? "|ES" : "|__");
            String sb6 = sb5.toString();
            StringBuilder sb7 = new StringBuilder();
            sb7.append(sb6);
            sb7.append(params.endToEnd != -1 ? "|EE" : "|__");
            String sb8 = sb7.toString();
            StringBuilder sb9 = new StringBuilder();
            sb9.append(sb8);
            sb9.append(params.leftToLeft != -1 ? "|LL" : "|__");
            String sb10 = sb9.toString();
            StringBuilder sb11 = new StringBuilder();
            sb11.append(sb10);
            sb11.append(params.leftToRight != -1 ? "|LR" : "|__");
            String sb12 = sb11.toString();
            StringBuilder sb13 = new StringBuilder();
            sb13.append(sb12);
            sb13.append(params.rightToLeft != -1 ? "|RL" : "|__");
            String sb14 = sb13.toString();
            StringBuilder sb15 = new StringBuilder();
            sb15.append(sb14);
            sb15.append(params.rightToRight != -1 ? "|RR" : "|__");
            String sb16 = sb15.toString();
            StringBuilder sb17 = new StringBuilder();
            sb17.append(sb16);
            sb17.append(params.topToTop != -1 ? "|TT" : "|__");
            String sb18 = sb17.toString();
            StringBuilder sb19 = new StringBuilder();
            sb19.append(sb18);
            sb19.append(params.topToBottom != -1 ? "|TB" : "|__");
            String sb20 = sb19.toString();
            StringBuilder sb21 = new StringBuilder();
            sb21.append(sb20);
            sb21.append(params.bottomToTop != -1 ? "|BT" : "|__");
            String sb22 = sb21.toString();
            StringBuilder sb23 = new StringBuilder();
            sb23.append(sb22);
            sb23.append(params.bottomToBottom != -1 ? "|BB" : "|__");
            Log.v(MotionLayout.f3781V1, str + sb23.toString());
        }

        @SuppressLint({"LogConditional"})
        /* renamed from: f */
        public final void m1946f(String str, ConstraintWidget child) {
            String str2;
            String str3;
            String str4;
            StringBuilder sb = new StringBuilder();
            sb.append(" ");
            String str5 = "__";
            if (child.mTop.mTarget != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("T");
                sb2.append(child.mTop.mTarget.mType == ConstraintAnchor.Type.TOP ? "T" : "B");
                str2 = sb2.toString();
            } else {
                str2 = "__";
            }
            sb.append(str2);
            String sb3 = sb.toString();
            StringBuilder sb4 = new StringBuilder();
            sb4.append(sb3);
            if (child.mBottom.mTarget != null) {
                StringBuilder sb5 = new StringBuilder();
                sb5.append("B");
                sb5.append(child.mBottom.mTarget.mType == ConstraintAnchor.Type.TOP ? "T" : "B");
                str3 = sb5.toString();
            } else {
                str3 = "__";
            }
            sb4.append(str3);
            String sb6 = sb4.toString();
            StringBuilder sb7 = new StringBuilder();
            sb7.append(sb6);
            if (child.mLeft.mTarget != null) {
                StringBuilder sb8 = new StringBuilder();
                sb8.append("L");
                sb8.append(child.mLeft.mTarget.mType == ConstraintAnchor.Type.LEFT ? "L" : "R");
                str4 = sb8.toString();
            } else {
                str4 = "__";
            }
            sb7.append(str4);
            String sb9 = sb7.toString();
            StringBuilder sb10 = new StringBuilder();
            sb10.append(sb9);
            if (child.mRight.mTarget != null) {
                StringBuilder sb11 = new StringBuilder();
                sb11.append("R");
                sb11.append(child.mRight.mTarget.mType == ConstraintAnchor.Type.LEFT ? "L" : "R");
                str5 = sb11.toString();
            }
            sb10.append(str5);
            Log.v(MotionLayout.f3781V1, str + sb10.toString() + " ---  " + child);
        }

        /* renamed from: g */
        public ConstraintWidget m1947g(ConstraintWidgetContainer container, View view) {
            if (container.getCompanionWidget() == view) {
                return container;
            }
            ArrayList<ConstraintWidget> children = container.getChildren();
            int size = children.size();
            for (int i = 0; i < size; i++) {
                ConstraintWidget constraintWidget = children.get(i);
                if (constraintWidget.getCompanionWidget() == view) {
                    return constraintWidget;
                }
            }
            return null;
        }

        /* renamed from: h */
        public void m1948h(ConstraintWidgetContainer baseLayout, ConstraintSet start, ConstraintSet end) {
            this.f3896c = start;
            this.f3897d = end;
            this.f3894a = new ConstraintWidgetContainer();
            this.f3895b = new ConstraintWidgetContainer();
            this.f3894a.setMeasurer(((ConstraintLayout) MotionLayout.this).mLayoutWidget.getMeasurer());
            this.f3895b.setMeasurer(((ConstraintLayout) MotionLayout.this).mLayoutWidget.getMeasurer());
            this.f3894a.removeAllChildren();
            this.f3895b.removeAllChildren();
            m1943c(((ConstraintLayout) MotionLayout.this).mLayoutWidget, this.f3894a);
            m1943c(((ConstraintLayout) MotionLayout.this).mLayoutWidget, this.f3895b);
            if (MotionLayout.this.f3803J0 > 0.5d) {
                if (start != null) {
                    m1953m(this.f3894a, start);
                }
                m1953m(this.f3895b, end);
            } else {
                m1953m(this.f3895b, end);
                if (start != null) {
                    m1953m(this.f3894a, start);
                }
            }
            this.f3894a.setRtl(MotionLayout.this.isRtl());
            this.f3894a.updateHierarchy();
            this.f3895b.setRtl(MotionLayout.this.isRtl());
            this.f3895b.updateHierarchy();
            ViewGroup.LayoutParams layoutParams = MotionLayout.this.getLayoutParams();
            if (layoutParams != null) {
                if (layoutParams.width == -2) {
                    ConstraintWidgetContainer constraintWidgetContainer = this.f3894a;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    constraintWidgetContainer.setHorizontalDimensionBehaviour(dimensionBehaviour);
                    this.f3895b.setHorizontalDimensionBehaviour(dimensionBehaviour);
                }
                if (layoutParams.height == -2) {
                    ConstraintWidgetContainer constraintWidgetContainer2 = this.f3894a;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                    constraintWidgetContainer2.setVerticalDimensionBehaviour(dimensionBehaviour2);
                    this.f3895b.setVerticalDimensionBehaviour(dimensionBehaviour2);
                }
            }
        }

        /* renamed from: i */
        public boolean m1949i(int startId, int endId) {
            return (startId == this.f3898e && endId == this.f3899f) ? false : true;
        }

        /* renamed from: j */
        public void m1950j(int widthMeasureSpec, int heightMeasureSpec) {
            int mode = View.MeasureSpec.getMode(widthMeasureSpec);
            int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
            MotionLayout motionLayout = MotionLayout.this;
            motionLayout.f3858x1 = mode;
            motionLayout.f3860y1 = mode2;
            motionLayout.getOptimizationLevel();
            m1942b(widthMeasureSpec, heightMeasureSpec);
            if (((MotionLayout.this.getParent() instanceof MotionLayout) && mode == 1073741824 && mode2 == 1073741824) ? false : true) {
                m1942b(widthMeasureSpec, heightMeasureSpec);
                MotionLayout.this.f3851t1 = this.f3894a.getWidth();
                MotionLayout.this.f3852u1 = this.f3894a.getHeight();
                MotionLayout.this.f3854v1 = this.f3895b.getWidth();
                MotionLayout.this.f3856w1 = this.f3895b.getHeight();
                MotionLayout motionLayout2 = MotionLayout.this;
                motionLayout2.mMeasureDuringTransition = (motionLayout2.f3851t1 == motionLayout2.f3854v1 && motionLayout2.f3852u1 == motionLayout2.f3856w1) ? false : true;
            }
            MotionLayout motionLayout3 = MotionLayout.this;
            int i = motionLayout3.f3851t1;
            int i2 = motionLayout3.f3852u1;
            int i3 = motionLayout3.f3858x1;
            if (i3 == Integer.MIN_VALUE || i3 == 0) {
                i = (int) (i + (motionLayout3.f3862z1 * (motionLayout3.f3854v1 - i)));
            }
            int i4 = i;
            int i5 = motionLayout3.f3860y1;
            if (i5 == Integer.MIN_VALUE || i5 == 0) {
                i2 = (int) (i2 + (motionLayout3.f3862z1 * (motionLayout3.f3856w1 - i2)));
            }
            MotionLayout.this.resolveMeasuredDimension(widthMeasureSpec, heightMeasureSpec, i4, i2, this.f3894a.isWidthMeasuredTooSmall() || this.f3895b.isWidthMeasuredTooSmall(), this.f3894a.isHeightMeasuredTooSmall() || this.f3895b.isHeightMeasuredTooSmall());
        }

        /* renamed from: k */
        public void m1951k() {
            m1950j(MotionLayout.this.f3789C0, MotionLayout.this.f3791D0);
            MotionLayout.this.m1925f0();
        }

        /* renamed from: l */
        public void m1952l(int startId, int endId) {
            this.f3898e = startId;
            this.f3899f = endId;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: m */
        public final void m1953m(ConstraintWidgetContainer base, ConstraintSet cSet) {
            SparseArray<ConstraintWidget> sparseArray = new SparseArray<>();
            Constraints.LayoutParams layoutParams = new Constraints.LayoutParams(-2, -2);
            sparseArray.clear();
            sparseArray.put(0, base);
            sparseArray.put(MotionLayout.this.getId(), base);
            if (cSet != null && cSet.mRotate != 0) {
                MotionLayout motionLayout = MotionLayout.this;
                motionLayout.resolveSystem(this.f3895b, motionLayout.getOptimizationLevel(), View.MeasureSpec.makeMeasureSpec(MotionLayout.this.getHeight(), 1073741824), View.MeasureSpec.makeMeasureSpec(MotionLayout.this.getWidth(), 1073741824));
            }
            Iterator<ConstraintWidget> it2 = base.getChildren().iterator();
            while (it2.hasNext()) {
                ConstraintWidget next = it2.next();
                next.setAnimated(true);
                sparseArray.put(((View) next.getCompanionWidget()).getId(), next);
            }
            Iterator<ConstraintWidget> it3 = base.getChildren().iterator();
            while (it3.hasNext()) {
                ConstraintWidget next2 = it3.next();
                View view = (View) next2.getCompanionWidget();
                cSet.applyToLayoutParams(view.getId(), layoutParams);
                next2.setWidth(cSet.getWidth(view.getId()));
                next2.setHeight(cSet.getHeight(view.getId()));
                if (view instanceof ConstraintHelper) {
                    cSet.applyToHelper((ConstraintHelper) view, next2, layoutParams, sparseArray);
                    if (view instanceof androidx.constraintlayout.widget.Barrier) {
                        ((androidx.constraintlayout.widget.Barrier) view).validateParams();
                    }
                }
                layoutParams.resolveLayoutDirection(MotionLayout.this.getLayoutDirection());
                MotionLayout.this.applyConstraintsFromLayoutParams(false, view, next2, layoutParams, sparseArray);
                if (cSet.getVisibilityMode(view.getId()) == 1) {
                    next2.setVisibility(view.getVisibility());
                } else {
                    next2.setVisibility(cSet.getVisibility(view.getId()));
                }
            }
            Iterator<ConstraintWidget> it4 = base.getChildren().iterator();
            while (it4.hasNext()) {
                ConstraintWidget next3 = it4.next();
                if (next3 instanceof VirtualLayout) {
                    ConstraintHelper constraintHelper = (ConstraintHelper) next3.getCompanionWidget();
                    Helper helper = (Helper) next3;
                    constraintHelper.updatePreLayout(base, helper, sparseArray);
                    ((VirtualLayout) helper).captureWidgets();
                }
            }
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$j */
    /* loaded from: classes3.dex */
    public class C0479j {

        /* renamed from: a */
        public float f3903a = Float.NaN;

        /* renamed from: b */
        public float f3904b = Float.NaN;

        /* renamed from: c */
        public int f3905c = -1;

        /* renamed from: d */
        public int f3906d = -1;

        /* renamed from: e */
        public final String f3907e = "motion.progress";

        /* renamed from: f */
        public final String f3908f = "motion.velocity";

        /* renamed from: g */
        public final String f3909g = "motion.StartState";

        /* renamed from: h */
        public final String f3910h = "motion.EndState";

        public C0479j() {
        }

        /* renamed from: a */
        public void m1955a() {
            int i = this.f3905c;
            if (i != -1 || this.f3906d != -1) {
                if (i == -1) {
                    MotionLayout.this.transitionToState(this.f3906d);
                } else {
                    int i2 = this.f3906d;
                    if (i2 == -1) {
                        MotionLayout.this.setState(i, -1, -1);
                    } else {
                        MotionLayout.this.setTransition(i, i2);
                    }
                }
                MotionLayout.this.setState(TransitionState.SETUP);
            }
            if (Float.isNaN(this.f3904b)) {
                if (Float.isNaN(this.f3903a)) {
                    return;
                }
                MotionLayout.this.setProgress(this.f3903a);
            } else {
                MotionLayout.this.setProgress(this.f3903a, this.f3904b);
                this.f3903a = Float.NaN;
                this.f3904b = Float.NaN;
                this.f3905c = -1;
                this.f3906d = -1;
            }
        }

        /* renamed from: b */
        public Bundle m1956b() {
            Bundle bundle = new Bundle();
            bundle.putFloat("motion.progress", this.f3903a);
            bundle.putFloat("motion.velocity", this.f3904b);
            bundle.putInt("motion.StartState", this.f3905c);
            bundle.putInt("motion.EndState", this.f3906d);
            return bundle;
        }

        /* renamed from: c */
        public void m1957c() {
            this.f3906d = MotionLayout.this.f3787B0;
            this.f3905c = MotionLayout.this.f3861z0;
            this.f3904b = MotionLayout.this.getVelocity();
            this.f3903a = MotionLayout.this.getProgress();
        }

        /* renamed from: d */
        public void m1958d(int endState) {
            this.f3906d = endState;
        }

        /* renamed from: e */
        public void m1959e(float progress) {
            this.f3903a = progress;
        }

        /* renamed from: f */
        public void m1960f(int startState) {
            this.f3905c = startState;
        }

        /* renamed from: g */
        public void m1961g(Bundle bundle) {
            this.f3903a = bundle.getFloat("motion.progress");
            this.f3904b = bundle.getFloat("motion.velocity");
            this.f3905c = bundle.getInt("motion.StartState");
            this.f3906d = bundle.getInt("motion.EndState");
        }

        /* renamed from: h */
        public void m1962h(float mVelocity) {
            this.f3904b = mVelocity;
        }
    }

    public MotionLayout(@NonNull Context context) {
        super(context);
        this.f3857x0 = null;
        this.f3859y0 = 0.0f;
        this.f3861z0 = -1;
        this.f3785A0 = -1;
        this.f3787B0 = -1;
        this.f3789C0 = 0;
        this.f3791D0 = 0;
        this.f3793E0 = true;
        this.f3795F0 = new HashMap<>();
        this.f3797G0 = 0L;
        this.f3799H0 = 1.0f;
        this.f3801I0 = 0.0f;
        this.f3803J0 = 0.0f;
        this.f3807L0 = 0.0f;
        this.f3811N0 = false;
        this.f3813O0 = false;
        this.f3821S0 = 0;
        this.f3825U0 = false;
        this.f3827V0 = new StopLogic();
        this.f3828W0 = new C0475f();
        this.f3830Y0 = true;
        this.f3835d1 = false;
        this.f3840i1 = false;
        this.f3841j1 = null;
        this.f3842k1 = null;
        this.f3843l1 = null;
        this.f3844m1 = null;
        this.f3845n1 = 0;
        this.f3846o1 = -1L;
        this.f3847p1 = 0.0f;
        this.f3848q1 = 0;
        this.f3849r1 = 0.0f;
        this.f3850s1 = false;
        this.mMeasureDuringTransition = false;
        this.f3786A1 = new KeyCache();
        this.f3788B1 = false;
        this.f3792D1 = null;
        this.f3794E1 = null;
        this.f3796F1 = 0;
        this.f3798G1 = false;
        this.f3800H1 = 0;
        this.f3802I1 = new HashMap<>();
        this.f3810M1 = new Rect();
        this.f3812N1 = false;
        this.f3814O1 = TransitionState.UNDEFINED;
        this.f3816P1 = new C0477h();
        this.f3818Q1 = false;
        this.f3820R1 = new RectF();
        this.f3822S1 = null;
        this.f3824T1 = null;
        this.f3826U1 = new ArrayList<>();
        m1921b0(null);
    }

    /* renamed from: h0 */
    public static boolean m1889h0(float velocity, float position, float maxAcceleration) {
        if (velocity > 0.0f) {
            float f = velocity / maxAcceleration;
            return position + ((velocity * f) - (((maxAcceleration * f) * f) / 2.0f)) > 1.0f;
        }
        float f2 = (-velocity) / maxAcceleration;
        return position + ((velocity * f2) + (((maxAcceleration * f2) * f2) / 2.0f)) < 0.0f;
    }

    /* renamed from: K */
    public void m1904K(float position) {
        if (this.f3853v0 == null) {
            return;
        }
        float f = this.f3803J0;
        float f2 = this.f3801I0;
        if (f != f2 && this.f3809M0) {
            this.f3803J0 = f2;
        }
        float f3 = this.f3803J0;
        if (f3 == position) {
            return;
        }
        this.f3825U0 = false;
        this.f3807L0 = position;
        this.f3799H0 = r0.getDuration() / 1000.0f;
        setProgress(this.f3807L0);
        this.f3855w0 = null;
        this.f3857x0 = this.f3853v0.getInterpolator();
        this.f3809M0 = false;
        this.f3797G0 = getNanoTime();
        this.f3811N0 = true;
        this.f3801I0 = f3;
        this.f3803J0 = f3;
        invalidate();
    }

    /* renamed from: L */
    public final boolean m1905L(View view, MotionEvent event, float offsetX, float offsetY) {
        Matrix matrix = view.getMatrix();
        if (matrix.isIdentity()) {
            event.offsetLocation(offsetX, offsetY);
            boolean onTouchEvent = view.onTouchEvent(event);
            event.offsetLocation(-offsetX, -offsetY);
            return onTouchEvent;
        }
        MotionEvent obtain = MotionEvent.obtain(event);
        obtain.offsetLocation(offsetX, offsetY);
        if (this.f3824T1 == null) {
            this.f3824T1 = new Matrix();
        }
        matrix.invert(this.f3824T1);
        obtain.transform(this.f3824T1);
        boolean onTouchEvent2 = view.onTouchEvent(obtain);
        obtain.recycle();
        return onTouchEvent2;
    }

    /* renamed from: M */
    public final void m1906M() {
        MotionScene motionScene = this.f3853v0;
        if (motionScene == null) {
            Log.e(f3781V1, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\"");
            return;
        }
        int m2003y = motionScene.m2003y();
        MotionScene motionScene2 = this.f3853v0;
        m1907N(m2003y, motionScene2.m1987h(motionScene2.m2003y()));
        SparseIntArray sparseIntArray = new SparseIntArray();
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        Iterator<MotionScene.Transition> it2 = this.f3853v0.getDefinedTransitions().iterator();
        while (it2.hasNext()) {
            MotionScene.Transition next = it2.next();
            if (next == this.f3853v0.f3938c) {
                Log.v(f3781V1, "CHECK: CURRENT");
            }
            m1908O(next);
            int startConstraintSetId = next.getStartConstraintSetId();
            int endConstraintSetId = next.getEndConstraintSetId();
            String name = Debug.getName(getContext(), startConstraintSetId);
            String name2 = Debug.getName(getContext(), endConstraintSetId);
            if (sparseIntArray.get(startConstraintSetId) == endConstraintSetId) {
                Log.e(f3781V1, "CHECK: two transitions with the same start and end " + name + "->" + name2);
            }
            if (sparseIntArray2.get(endConstraintSetId) == startConstraintSetId) {
                Log.e(f3781V1, "CHECK: you can't have reverse transitions" + name + "->" + name2);
            }
            sparseIntArray.put(startConstraintSetId, endConstraintSetId);
            sparseIntArray2.put(endConstraintSetId, startConstraintSetId);
            if (this.f3853v0.m1987h(startConstraintSetId) == null) {
                Log.e(f3781V1, " no such constraintSetStart " + name);
            }
            if (this.f3853v0.m1987h(endConstraintSetId) == null) {
                Log.e(f3781V1, " no such constraintSetEnd " + name);
            }
        }
    }

    /* renamed from: N */
    public final void m1907N(int csetId, ConstraintSet set) {
        String name = Debug.getName(getContext(), csetId);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            if (id == -1) {
                Log.w(f3781V1, "CHECK: " + name + " ALL VIEWS SHOULD HAVE ID's " + childAt.getClass().getName() + " does not!");
            }
            if (set.getConstraint(id) == null) {
                Log.w(f3781V1, "CHECK: " + name + " NO CONSTRAINTS for " + Debug.getName(childAt));
            }
        }
        int[] knownIds = set.getKnownIds();
        for (int i2 = 0; i2 < knownIds.length; i2++) {
            int i3 = knownIds[i2];
            String name2 = Debug.getName(getContext(), i3);
            if (findViewById(knownIds[i2]) == null) {
                Log.w(f3781V1, "CHECK: " + name + " NO View matches id " + name2);
            }
            if (set.getHeight(i3) == -1) {
                Log.w(f3781V1, "CHECK: " + name + MotionUtils.f31761c + name2 + ") no LAYOUT_HEIGHT");
            }
            if (set.getWidth(i3) == -1) {
                Log.w(f3781V1, "CHECK: " + name + MotionUtils.f31761c + name2 + ") no LAYOUT_HEIGHT");
            }
        }
    }

    /* renamed from: O */
    public final void m1908O(MotionScene.Transition transition) {
        if (transition.getStartConstraintSetId() == transition.getEndConstraintSetId()) {
            Log.e(f3781V1, "CHECK: start and end constraint set should not be the same!");
        }
    }

    /* renamed from: P */
    public final void m1909P() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            MotionController motionController = this.f3795F0.get(childAt);
            if (motionController != null) {
                motionController.m1852A(childAt);
            }
        }
    }

    @SuppressLint({"LogConditional"})
    /* renamed from: Q */
    public final void m1910Q() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            Log.v(f3781V1, " " + Debug.getLocation() + " " + Debug.getName(this) + " " + Debug.getName(getContext(), this.f3785A0) + " " + Debug.getName(childAt) + childAt.getLeft() + " " + childAt.getTop());
        }
    }

    /* renamed from: R */
    public void m1911R(boolean disable) {
        MotionScene motionScene = this.f3853v0;
        if (motionScene == null) {
            return;
        }
        motionScene.disableAutoTransition(disable);
    }

    /* renamed from: S */
    public void m1912S(boolean start) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            MotionController motionController = this.f3795F0.get(getChildAt(i));
            if (motionController != null) {
                motionController.m1861h(start);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x016f  */
    /* renamed from: T */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1913T(boolean r23) {
        /*
            Method dump skipped, instructions count: 629
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.m1913T(boolean):void");
    }

    /* renamed from: U */
    public final void m1914U() {
        boolean z;
        float signum = Math.signum(this.f3807L0 - this.f3803J0);
        long nanoTime = getNanoTime();
        Interpolator interpolator = this.f3855w0;
        float f = this.f3803J0 + (!(interpolator instanceof StopLogic) ? ((((float) (nanoTime - this.f3805K0)) * signum) * 1.0E-9f) / this.f3799H0 : 0.0f);
        if (this.f3809M0) {
            f = this.f3807L0;
        }
        if ((signum <= 0.0f || f < this.f3807L0) && (signum > 0.0f || f > this.f3807L0)) {
            z = false;
        } else {
            f = this.f3807L0;
            z = true;
        }
        if (interpolator != null && !z) {
            f = this.f3825U0 ? interpolator.getInterpolation(((float) (nanoTime - this.f3797G0)) * 1.0E-9f) : interpolator.getInterpolation(f);
        }
        if ((signum > 0.0f && f >= this.f3807L0) || (signum <= 0.0f && f <= this.f3807L0)) {
            f = this.f3807L0;
        }
        this.f3862z1 = f;
        int childCount = getChildCount();
        long nanoTime2 = getNanoTime();
        Interpolator interpolator2 = this.f3857x0;
        if (interpolator2 != null) {
            f = interpolator2.getInterpolation(f);
        }
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            MotionController motionController = this.f3795F0.get(childAt);
            if (motionController != null) {
                motionController.m1872t(childAt, f, nanoTime2, this.f3786A1);
            }
        }
        if (this.mMeasureDuringTransition) {
            requestLayout();
        }
    }

    /* renamed from: V */
    public final void m1915V() {
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if ((this.f3815P0 == null && ((copyOnWriteArrayList = this.f3844m1) == null || copyOnWriteArrayList.isEmpty())) || this.f3849r1 == this.f3801I0) {
            return;
        }
        if (this.f3848q1 != -1) {
            TransitionListener transitionListener = this.f3815P0;
            if (transitionListener != null) {
                transitionListener.onTransitionStarted(this, this.f3861z0, this.f3787B0);
            }
            CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList2 = this.f3844m1;
            if (copyOnWriteArrayList2 != null) {
                Iterator<TransitionListener> it2 = copyOnWriteArrayList2.iterator();
                while (it2.hasNext()) {
                    it2.next().onTransitionStarted(this, this.f3861z0, this.f3787B0);
                }
            }
            this.f3850s1 = true;
        }
        this.f3848q1 = -1;
        float f = this.f3801I0;
        this.f3849r1 = f;
        TransitionListener transitionListener2 = this.f3815P0;
        if (transitionListener2 != null) {
            transitionListener2.onTransitionChange(this, this.f3861z0, this.f3787B0, f);
        }
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList3 = this.f3844m1;
        if (copyOnWriteArrayList3 != null) {
            Iterator<TransitionListener> it3 = copyOnWriteArrayList3.iterator();
            while (it3.hasNext()) {
                it3.next().onTransitionChange(this, this.f3861z0, this.f3787B0, this.f3801I0);
            }
        }
        this.f3850s1 = true;
    }

    /* renamed from: W */
    public final void m1916W(MotionLayout motionLayout, int mBeginState, int mEndState) {
        TransitionListener transitionListener = this.f3815P0;
        if (transitionListener != null) {
            transitionListener.onTransitionStarted(this, mBeginState, mEndState);
        }
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList = this.f3844m1;
        if (copyOnWriteArrayList != null) {
            Iterator<TransitionListener> it2 = copyOnWriteArrayList.iterator();
            while (it2.hasNext()) {
                it2.next().onTransitionStarted(motionLayout, mBeginState, mEndState);
            }
        }
    }

    /* renamed from: X */
    public void m1917X(int mTouchAnchorId, float pos, float locationX, float locationY, float[] mAnchorDpDt) {
        String resourceName;
        HashMap<View, MotionController> hashMap = this.f3795F0;
        View viewById = getViewById(mTouchAnchorId);
        MotionController motionController = hashMap.get(viewById);
        if (motionController != null) {
            motionController.m1864k(pos, locationX, locationY, mAnchorDpDt);
            float y = viewById.getY();
            this.f3817Q0 = pos;
            this.f3819R0 = y;
            return;
        }
        if (viewById == null) {
            resourceName = "" + mTouchAnchorId;
        } else {
            resourceName = viewById.getContext().getResources().getResourceName(mTouchAnchorId);
        }
        Log.w(f3781V1, "WARNING could not find view id " + resourceName);
    }

    /* renamed from: Y */
    public String m1918Y(int id) {
        MotionScene motionScene = this.f3853v0;
        if (motionScene == null) {
            return null;
        }
        return motionScene.lookUpConstraintName(id);
    }

    /* renamed from: Z */
    public MotionController m1919Z(int mTouchAnchorId) {
        return this.f3795F0.get(findViewById(mTouchAnchorId));
    }

    /* renamed from: a0 */
    public final boolean m1920a0(float x, float y, View view, MotionEvent event) {
        boolean z;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                if (m1920a0((r3.getLeft() + x) - view.getScrollX(), (r3.getTop() + y) - view.getScrollY(), viewGroup.getChildAt(childCount), event)) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (!z) {
            this.f3820R1.set(x, y, (view.getRight() + x) - view.getLeft(), (view.getBottom() + y) - view.getTop());
            if ((event.getAction() != 0 || this.f3820R1.contains(event.getX(), event.getY())) && m1905L(view, event, -x, -y)) {
                return true;
            }
        }
        return z;
    }

    public void addTransitionListener(TransitionListener listener) {
        if (this.f3844m1 == null) {
            this.f3844m1 = new CopyOnWriteArrayList<>();
        }
        this.f3844m1.add(listener);
    }

    public boolean applyViewTransition(int viewTransitionId, MotionController motionController) {
        MotionScene motionScene = this.f3853v0;
        if (motionScene != null) {
            return motionScene.applyViewTransition(viewTransitionId, motionController);
        }
        return false;
    }

    /* renamed from: b0 */
    public final void m1921b0(AttributeSet attrs) {
        MotionScene motionScene;
        IS_IN_EDIT_MODE = isInEditMode();
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, C0503R.styleable.MotionLayout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            boolean z = true;
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0503R.styleable.MotionLayout_layoutDescription) {
                    this.f3853v0 = new MotionScene(getContext(), this, obtainStyledAttributes.getResourceId(index, -1));
                } else if (index == C0503R.styleable.MotionLayout_currentState) {
                    this.f3785A0 = obtainStyledAttributes.getResourceId(index, -1);
                } else if (index == C0503R.styleable.MotionLayout_motionProgress) {
                    this.f3807L0 = obtainStyledAttributes.getFloat(index, 0.0f);
                    this.f3811N0 = true;
                } else if (index == C0503R.styleable.MotionLayout_applyMotionScene) {
                    z = obtainStyledAttributes.getBoolean(index, z);
                } else if (index == C0503R.styleable.MotionLayout_showPaths) {
                    if (this.f3821S0 == 0) {
                        this.f3821S0 = obtainStyledAttributes.getBoolean(index, false) ? 2 : 0;
                    }
                } else if (index == C0503R.styleable.MotionLayout_motionDebug) {
                    this.f3821S0 = obtainStyledAttributes.getInt(index, 0);
                }
            }
            obtainStyledAttributes.recycle();
            if (this.f3853v0 == null) {
                Log.e(f3781V1, "WARNING NO app:layoutDescription tag");
            }
            if (!z) {
                this.f3853v0 = null;
            }
        }
        if (this.f3821S0 != 0) {
            m1906M();
        }
        if (this.f3785A0 != -1 || (motionScene = this.f3853v0) == null) {
            return;
        }
        this.f3785A0 = motionScene.m2003y();
        this.f3861z0 = this.f3853v0.m2003y();
        this.f3787B0 = this.f3853v0.m1989j();
    }

    /* renamed from: c0 */
    public int m1922c0(String id) {
        MotionScene motionScene = this.f3853v0;
        if (motionScene == null) {
            return 0;
        }
        return motionScene.lookUpConstraintId(id);
    }

    public ConstraintSet cloneConstraintSet(int id) {
        MotionScene motionScene = this.f3853v0;
        if (motionScene == null) {
            return null;
        }
        ConstraintSet m1987h = motionScene.m1987h(id);
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(m1987h);
        return constraintSet;
    }

    /* renamed from: d0 */
    public void m1923d0() {
        MotionScene motionScene = this.f3853v0;
        if (motionScene == null) {
            return;
        }
        if (motionScene.m1985f(this, this.f3785A0)) {
            requestLayout();
            return;
        }
        int i = this.f3785A0;
        if (i != -1) {
            this.f3853v0.addOnClickListeners(this, i);
        }
        if (this.f3853v0.m1984P()) {
            this.f3853v0.m1983O();
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        ViewTransitionController viewTransitionController;
        ArrayList<MotionHelper> arrayList = this.f3843l1;
        if (arrayList != null) {
            Iterator<MotionHelper> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().onPreDraw(canvas);
            }
        }
        m1913T(false);
        MotionScene motionScene = this.f3853v0;
        if (motionScene != null && (viewTransitionController = motionScene.f3954s) != null) {
            viewTransitionController.m2049c();
        }
        super.dispatchDraw(canvas);
        if (this.f3853v0 == null) {
            return;
        }
        if ((this.f3821S0 & 1) == 1 && !isInEditMode()) {
            this.f3845n1++;
            long nanoTime = getNanoTime();
            long j = this.f3846o1;
            if (j != -1) {
                if (nanoTime - j > 200000000) {
                    this.f3847p1 = ((int) ((this.f3845n1 / (((float) r5) * 1.0E-9f)) * 100.0f)) / 100.0f;
                    this.f3845n1 = 0;
                    this.f3846o1 = nanoTime;
                }
            } else {
                this.f3846o1 = nanoTime;
            }
            Paint paint = new Paint();
            paint.setTextSize(42.0f);
            String str = this.f3847p1 + " fps " + Debug.getState(this, this.f3861z0) + AlphabetConverter.f109940d;
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(Debug.getState(this, this.f3787B0));
            sb.append(" (progress: ");
            sb.append(((int) (getProgress() * 1000.0f)) / 10.0f);
            sb.append(" ) state=");
            int i = this.f3785A0;
            sb.append(i == -1 ? OcrValues.ENGINE_UNDEFINED : Debug.getState(this, i));
            String sb2 = sb.toString();
            paint.setColor(-16777216);
            canvas.drawText(sb2, 11.0f, getHeight() - 29, paint);
            paint.setColor(-7864184);
            canvas.drawText(sb2, 10.0f, getHeight() - 30, paint);
        }
        if (this.f3821S0 > 1) {
            if (this.f3823T0 == null) {
                this.f3823T0 = new C0476g();
            }
            this.f3823T0.m1928a(canvas, this.f3795F0, this.f3853v0.getDuration(), this.f3821S0);
        }
        ArrayList<MotionHelper> arrayList2 = this.f3843l1;
        if (arrayList2 != null) {
            Iterator<MotionHelper> it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                it3.next().onPostDraw(canvas);
            }
        }
    }

    /* renamed from: e0 */
    public final void m1924e0() {
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if (this.f3815P0 == null && ((copyOnWriteArrayList = this.f3844m1) == null || copyOnWriteArrayList.isEmpty())) {
            return;
        }
        this.f3850s1 = false;
        Iterator<Integer> it2 = this.f3826U1.iterator();
        while (it2.hasNext()) {
            Integer next = it2.next();
            TransitionListener transitionListener = this.f3815P0;
            if (transitionListener != null) {
                transitionListener.onTransitionCompleted(this, next.intValue());
            }
            CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList2 = this.f3844m1;
            if (copyOnWriteArrayList2 != null) {
                Iterator<TransitionListener> it3 = copyOnWriteArrayList2.iterator();
                while (it3.hasNext()) {
                    it3.next().onTransitionCompleted(this, next.intValue());
                }
            }
        }
        this.f3826U1.clear();
    }

    public void enableTransition(int transitionID, boolean enable) {
        MotionScene.Transition transition = getTransition(transitionID);
        if (enable) {
            transition.setEnabled(true);
            return;
        }
        MotionScene motionScene = this.f3853v0;
        if (transition == motionScene.f3938c) {
            Iterator<MotionScene.Transition> it2 = motionScene.getTransitionsWithState(this.f3785A0).iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                MotionScene.Transition next = it2.next();
                if (next.isEnabled()) {
                    this.f3853v0.f3938c = next;
                    break;
                }
            }
        }
        transition.setEnabled(false);
    }

    public void enableViewTransition(int viewTransitionId, boolean enable) {
        MotionScene motionScene = this.f3853v0;
        if (motionScene != null) {
            motionScene.enableViewTransition(viewTransitionId, enable);
        }
    }

    /* renamed from: f0 */
    public final void m1925f0() {
        int childCount = getChildCount();
        this.f3816P1.m1941a();
        boolean z = true;
        this.f3811N0 = true;
        SparseArray sparseArray = new SparseArray();
        int i = 0;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            sparseArray.put(childAt.getId(), this.f3795F0.get(childAt));
        }
        int width = getWidth();
        int height = getHeight();
        int gatPathMotionArc = this.f3853v0.gatPathMotionArc();
        if (gatPathMotionArc != -1) {
            for (int i3 = 0; i3 < childCount; i3++) {
                MotionController motionController = this.f3795F0.get(getChildAt(i3));
                if (motionController != null) {
                    motionController.setPathMotionArc(gatPathMotionArc);
                }
            }
        }
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        int[] iArr = new int[this.f3795F0.size()];
        int i4 = 0;
        for (int i5 = 0; i5 < childCount; i5++) {
            MotionController motionController2 = this.f3795F0.get(getChildAt(i5));
            if (motionController2.getAnimateRelativeTo() != -1) {
                sparseBooleanArray.put(motionController2.getAnimateRelativeTo(), true);
                iArr[i4] = motionController2.getAnimateRelativeTo();
                i4++;
            }
        }
        if (this.f3843l1 != null) {
            for (int i6 = 0; i6 < i4; i6++) {
                MotionController motionController3 = this.f3795F0.get(findViewById(iArr[i6]));
                if (motionController3 != null) {
                    this.f3853v0.getKeyFrames(motionController3);
                }
            }
            Iterator<MotionHelper> it2 = this.f3843l1.iterator();
            while (it2.hasNext()) {
                it2.next().onPreSetup(this, this.f3795F0);
            }
            for (int i7 = 0; i7 < i4; i7++) {
                MotionController motionController4 = this.f3795F0.get(findViewById(iArr[i7]));
                if (motionController4 != null) {
                    motionController4.setup(width, height, this.f3799H0, getNanoTime());
                }
            }
        } else {
            for (int i8 = 0; i8 < i4; i8++) {
                MotionController motionController5 = this.f3795F0.get(findViewById(iArr[i8]));
                if (motionController5 != null) {
                    this.f3853v0.getKeyFrames(motionController5);
                    motionController5.setup(width, height, this.f3799H0, getNanoTime());
                }
            }
        }
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt2 = getChildAt(i9);
            MotionController motionController6 = this.f3795F0.get(childAt2);
            if (!sparseBooleanArray.get(childAt2.getId()) && motionController6 != null) {
                this.f3853v0.getKeyFrames(motionController6);
                motionController6.setup(width, height, this.f3799H0, getNanoTime());
            }
        }
        float staggered = this.f3853v0.getStaggered();
        if (staggered != 0.0f) {
            boolean z2 = ((double) staggered) < 0.0d;
            float abs = Math.abs(staggered);
            float f = -3.4028235E38f;
            float f2 = Float.MAX_VALUE;
            int i10 = 0;
            float f3 = -3.4028235E38f;
            float f4 = Float.MAX_VALUE;
            while (true) {
                if (i10 >= childCount) {
                    z = false;
                    break;
                }
                MotionController motionController7 = this.f3795F0.get(getChildAt(i10));
                if (!Float.isNaN(motionController7.f3763m)) {
                    break;
                }
                float finalX = motionController7.getFinalX();
                float finalY = motionController7.getFinalY();
                float f5 = z2 ? finalY - finalX : finalY + finalX;
                f4 = Math.min(f4, f5);
                f3 = Math.max(f3, f5);
                i10++;
            }
            if (!z) {
                while (i < childCount) {
                    MotionController motionController8 = this.f3795F0.get(getChildAt(i));
                    float finalX2 = motionController8.getFinalX();
                    float finalY2 = motionController8.getFinalY();
                    float f6 = z2 ? finalY2 - finalX2 : finalY2 + finalX2;
                    motionController8.f3765o = 1.0f / (1.0f - abs);
                    motionController8.f3764n = abs - (((f6 - f4) * abs) / (f3 - f4));
                    i++;
                }
                return;
            }
            for (int i11 = 0; i11 < childCount; i11++) {
                MotionController motionController9 = this.f3795F0.get(getChildAt(i11));
                if (!Float.isNaN(motionController9.f3763m)) {
                    f2 = Math.min(f2, motionController9.f3763m);
                    f = Math.max(f, motionController9.f3763m);
                }
            }
            while (i < childCount) {
                MotionController motionController10 = this.f3795F0.get(getChildAt(i));
                if (!Float.isNaN(motionController10.f3763m)) {
                    motionController10.f3765o = 1.0f / (1.0f - abs);
                    if (z2) {
                        motionController10.f3764n = abs - (((f - motionController10.f3763m) / (f - f2)) * abs);
                    } else {
                        motionController10.f3764n = abs - (((motionController10.f3763m - f2) * abs) / (f - f2));
                    }
                }
                i++;
            }
        }
    }

    public void fireTransitionCompleted() {
        int i;
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if ((this.f3815P0 != null || ((copyOnWriteArrayList = this.f3844m1) != null && !copyOnWriteArrayList.isEmpty())) && this.f3848q1 == -1) {
            this.f3848q1 = this.f3785A0;
            if (this.f3826U1.isEmpty()) {
                i = -1;
            } else {
                ArrayList<Integer> arrayList = this.f3826U1;
                i = arrayList.get(arrayList.size() - 1).intValue();
            }
            int i2 = this.f3785A0;
            if (i != i2 && i2 != -1) {
                this.f3826U1.add(Integer.valueOf(i2));
            }
        }
        m1924e0();
        Runnable runnable = this.f3792D1;
        if (runnable != null) {
            runnable.run();
        }
        int[] iArr = this.f3794E1;
        if (iArr == null || this.f3796F1 <= 0) {
            return;
        }
        transitionToState(iArr[0]);
        int[] iArr2 = this.f3794E1;
        System.arraycopy(iArr2, 1, iArr2, 0, iArr2.length - 1);
        this.f3796F1--;
    }

    public void fireTrigger(int triggerId, boolean positive, float progress) {
        TransitionListener transitionListener = this.f3815P0;
        if (transitionListener != null) {
            transitionListener.onTransitionTrigger(this, triggerId, positive, progress);
        }
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList = this.f3844m1;
        if (copyOnWriteArrayList != null) {
            Iterator<TransitionListener> it2 = copyOnWriteArrayList.iterator();
            while (it2.hasNext()) {
                it2.next().onTransitionTrigger(this, triggerId, positive, progress);
            }
        }
    }

    /* renamed from: g0 */
    public final Rect m1926g0(ConstraintWidget cw) {
        this.f3810M1.top = cw.getY();
        this.f3810M1.left = cw.getX();
        Rect rect = this.f3810M1;
        int width = cw.getWidth();
        Rect rect2 = this.f3810M1;
        rect.right = width + rect2.left;
        int height = cw.getHeight();
        Rect rect3 = this.f3810M1;
        rect2.bottom = height + rect3.top;
        return rect3;
    }

    public ConstraintSet getConstraintSet(int id) {
        MotionScene motionScene = this.f3853v0;
        if (motionScene == null) {
            return null;
        }
        return motionScene.m1987h(id);
    }

    public int[] getConstraintSetIds() {
        MotionScene motionScene = this.f3853v0;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getConstraintSetIds();
    }

    public int getCurrentState() {
        return this.f3785A0;
    }

    public void getDebugMode(boolean showPaths) {
        this.f3821S0 = showPaths ? 2 : 1;
        invalidate();
    }

    public ArrayList<MotionScene.Transition> getDefinedTransitions() {
        MotionScene motionScene = this.f3853v0;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getDefinedTransitions();
    }

    public DesignTool getDesignTool() {
        if (this.f3829X0 == null) {
            this.f3829X0 = new DesignTool(this);
        }
        return this.f3829X0;
    }

    public int getEndState() {
        return this.f3787B0;
    }

    public long getNanoTime() {
        return System.nanoTime();
    }

    public float getProgress() {
        return this.f3803J0;
    }

    public MotionScene getScene() {
        return this.f3853v0;
    }

    public int getStartState() {
        return this.f3861z0;
    }

    public float getTargetPosition() {
        return this.f3807L0;
    }

    public MotionScene.Transition getTransition(int id) {
        return this.f3853v0.getTransitionById(id);
    }

    public Bundle getTransitionState() {
        if (this.f3790C1 == null) {
            this.f3790C1 = new C0479j();
        }
        this.f3790C1.m1957c();
        return this.f3790C1.m1956b();
    }

    public long getTransitionTimeMs() {
        if (this.f3853v0 != null) {
            this.f3799H0 = r0.getDuration() / 1000.0f;
        }
        return this.f3799H0 * 1000.0f;
    }

    public float getVelocity() {
        return this.f3859y0;
    }

    public void getViewVelocity(View view, float posOnViewX, float posOnViewY, float[] returnVelocity, int type) {
        float f;
        float f2 = this.f3859y0;
        float f3 = this.f3803J0;
        if (this.f3855w0 != null) {
            float signum = Math.signum(this.f3807L0 - f3);
            float interpolation = this.f3855w0.getInterpolation(this.f3803J0 + 1.0E-5f);
            f = this.f3855w0.getInterpolation(this.f3803J0);
            f2 = (signum * ((interpolation - f) / 1.0E-5f)) / this.f3799H0;
        } else {
            f = f3;
        }
        Interpolator interpolator = this.f3855w0;
        if (interpolator instanceof MotionInterpolator) {
            f2 = ((MotionInterpolator) interpolator).getVelocity();
        }
        MotionController motionController = this.f3795F0.get(view);
        if ((type & 1) == 0) {
            motionController.m1869q(f, view.getWidth(), view.getHeight(), posOnViewX, posOnViewY, returnVelocity);
        } else {
            motionController.m1864k(f, posOnViewX, posOnViewY, returnVelocity);
        }
        if (type < 2) {
            returnVelocity[0] = returnVelocity[0] * f2;
            returnVelocity[1] = returnVelocity[1] * f2;
        }
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return super.isAttachedToWindow();
    }

    public boolean isDelayedApplicationOfInitialState() {
        return this.f3812N1;
    }

    public boolean isInRotation() {
        return this.f3798G1;
    }

    public boolean isInteractionEnabled() {
        return this.f3793E0;
    }

    public boolean isViewTransitionEnabled(int viewTransitionId) {
        MotionScene motionScene = this.f3853v0;
        if (motionScene != null) {
            return motionScene.isViewTransitionEnabled(viewTransitionId);
        }
        return false;
    }

    public void jumpToState(int id) {
        if (!isAttachedToWindow()) {
            this.f3785A0 = id;
        }
        if (this.f3861z0 == id) {
            setProgress(0.0f);
        } else if (this.f3787B0 == id) {
            setProgress(1.0f);
        } else {
            setTransition(id, id);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void loadLayoutDescription(int motionScene) {
        MotionScene.Transition transition;
        if (motionScene == 0) {
            this.f3853v0 = null;
            return;
        }
        try {
            MotionScene motionScene2 = new MotionScene(getContext(), this, motionScene);
            this.f3853v0 = motionScene2;
            if (this.f3785A0 == -1) {
                this.f3785A0 = motionScene2.m2003y();
                this.f3861z0 = this.f3853v0.m2003y();
                this.f3787B0 = this.f3853v0.m1989j();
            }
            if (!isAttachedToWindow()) {
                this.f3853v0 = null;
                return;
            }
            try {
                Display display = getDisplay();
                this.f3808L1 = display == null ? 0 : display.getRotation();
                MotionScene motionScene3 = this.f3853v0;
                if (motionScene3 != null) {
                    ConstraintSet m1987h = motionScene3.m1987h(this.f3785A0);
                    this.f3853v0.m1981M(this);
                    ArrayList<MotionHelper> arrayList = this.f3843l1;
                    if (arrayList != null) {
                        Iterator<MotionHelper> it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            it2.next().onFinishedMotionScene(this);
                        }
                    }
                    if (m1987h != null) {
                        m1987h.applyTo(this);
                    }
                    this.f3861z0 = this.f3785A0;
                }
                m1923d0();
                C0479j c0479j = this.f3790C1;
                if (c0479j != null) {
                    if (this.f3812N1) {
                        post(new RunnableC0470a());
                        return;
                    } else {
                        c0479j.m1955a();
                        return;
                    }
                }
                MotionScene motionScene4 = this.f3853v0;
                if (motionScene4 == null || (transition = motionScene4.f3938c) == null || transition.getAutoTransition() != 4) {
                    return;
                }
                transitionToEnd();
                setState(TransitionState.SETUP);
                setState(TransitionState.MOVING);
            } catch (Exception e) {
                throw new IllegalArgumentException("unable to parse MotionScene file", e);
            }
        } catch (Exception e2) {
            throw new IllegalArgumentException("unable to parse MotionScene file", e2);
        }
    }

    public MotionTracker obtainVelocityTracker() {
        return C0478i.m1954a();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        MotionScene.Transition transition;
        int i;
        super.onAttachedToWindow();
        Display display = getDisplay();
        if (display != null) {
            this.f3808L1 = display.getRotation();
        }
        MotionScene motionScene = this.f3853v0;
        if (motionScene != null && (i = this.f3785A0) != -1) {
            ConstraintSet m1987h = motionScene.m1987h(i);
            this.f3853v0.m1981M(this);
            ArrayList<MotionHelper> arrayList = this.f3843l1;
            if (arrayList != null) {
                Iterator<MotionHelper> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    it2.next().onFinishedMotionScene(this);
                }
            }
            if (m1987h != null) {
                m1987h.applyTo(this);
            }
            this.f3861z0 = this.f3785A0;
        }
        m1923d0();
        C0479j c0479j = this.f3790C1;
        if (c0479j != null) {
            if (this.f3812N1) {
                post(new RunnableC0473d());
                return;
            } else {
                c0479j.m1955a();
                return;
            }
        }
        MotionScene motionScene2 = this.f3853v0;
        if (motionScene2 == null || (transition = motionScene2.f3938c) == null || transition.getAutoTransition() != 4) {
            return;
        }
        transitionToEnd();
        setState(TransitionState.SETUP);
        setState(TransitionState.MOVING);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent event) {
        C0484a touchResponse;
        int m2086s;
        RectF m2085r;
        MotionScene motionScene = this.f3853v0;
        if (motionScene != null && this.f3793E0) {
            ViewTransitionController viewTransitionController = motionScene.f3954s;
            if (viewTransitionController != null) {
                viewTransitionController.m2057k(event);
            }
            MotionScene.Transition transition = this.f3853v0.f3938c;
            if (transition != null && transition.isEnabled() && (touchResponse = transition.getTouchResponse()) != null && ((event.getAction() != 0 || (m2085r = touchResponse.m2085r(this, new RectF())) == null || m2085r.contains(event.getX(), event.getY())) && (m2086s = touchResponse.m2086s()) != -1)) {
                View view = this.f3822S1;
                if (view == null || view.getId() != m2086s) {
                    this.f3822S1 = findViewById(m2086s);
                }
                if (this.f3822S1 != null) {
                    this.f3820R1.set(r0.getLeft(), this.f3822S1.getTop(), this.f3822S1.getRight(), this.f3822S1.getBottom());
                    if (this.f3820R1.contains(event.getX(), event.getY()) && !m1920a0(this.f3822S1.getLeft(), this.f3822S1.getTop(), this.f3822S1, event)) {
                        return onTouchEvent(event);
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        this.f3788B1 = true;
        try {
            if (this.f3853v0 == null) {
                super.onLayout(changed, left, top, right, bottom);
                return;
            }
            int i = right - left;
            int i2 = bottom - top;
            if (this.f3833b1 != i || this.f3834c1 != i2) {
                rebuildScene();
                m1913T(true);
            }
            this.f3833b1 = i;
            this.f3834c1 = i2;
            this.f3831Z0 = i;
            this.f3832a1 = i2;
        } finally {
            this.f3788B1 = false;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.f3853v0 == null) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        boolean z = false;
        boolean z2 = (this.f3789C0 == widthMeasureSpec && this.f3791D0 == heightMeasureSpec) ? false : true;
        if (this.f3818Q1) {
            this.f3818Q1 = false;
            m1923d0();
            m1924e0();
            z2 = true;
        }
        if (this.mDirtyHierarchy) {
            z2 = true;
        }
        this.f3789C0 = widthMeasureSpec;
        this.f3791D0 = heightMeasureSpec;
        int m2003y = this.f3853v0.m2003y();
        int m1989j = this.f3853v0.m1989j();
        if ((z2 || this.f3816P1.m1949i(m2003y, m1989j)) && this.f3861z0 != -1) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            this.f3816P1.m1948h(this.mLayoutWidget, this.f3853v0.m1987h(m2003y), this.f3853v0.m1987h(m1989j));
            this.f3816P1.m1951k();
            this.f3816P1.m1952l(m2003y, m1989j);
        } else {
            if (z2) {
                super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            }
            z = true;
        }
        if (this.mMeasureDuringTransition || z) {
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int width = this.mLayoutWidget.getWidth() + getPaddingLeft() + getPaddingRight();
            int height = this.mLayoutWidget.getHeight() + paddingTop;
            int i = this.f3858x1;
            if (i == Integer.MIN_VALUE || i == 0) {
                width = (int) (this.f3851t1 + (this.f3862z1 * (this.f3854v1 - r8)));
                requestLayout();
            }
            int i2 = this.f3860y1;
            if (i2 == Integer.MIN_VALUE || i2 == 0) {
                height = (int) (this.f3852u1 + (this.f3862z1 * (this.f3856w1 - r8)));
                requestLayout();
            }
            setMeasuredDimension(width, height);
        }
        m1914U();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(@NonNull View target, float velocityX, float velocityY, boolean consumed) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(@NonNull View target, float velocityX, float velocityY) {
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(@NonNull View target, int dx, int dy, @NonNull int[] consumed, int type) {
        MotionScene.Transition transition;
        C0484a touchResponse;
        int m2086s;
        MotionScene motionScene = this.f3853v0;
        if (motionScene == null || (transition = motionScene.f3938c) == null || !transition.isEnabled()) {
            return;
        }
        int i = -1;
        if (!transition.isEnabled() || (touchResponse = transition.getTouchResponse()) == null || (m2086s = touchResponse.m2086s()) == -1 || target.getId() == m2086s) {
            if (motionScene.m1995q()) {
                C0484a touchResponse2 = transition.getTouchResponse();
                if (touchResponse2 != null && (touchResponse2.m2073f() & 4) != 0) {
                    i = dy;
                }
                float f = this.f3801I0;
                if ((f == 1.0f || f == 0.0f) && target.canScrollVertically(i)) {
                    return;
                }
            }
            if (transition.getTouchResponse() != null && (transition.getTouchResponse().m2073f() & 1) != 0) {
                float m1996r = motionScene.m1996r(dx, dy);
                float f2 = this.f3803J0;
                if ((f2 <= 0.0f && m1996r < 0.0f) || (f2 >= 1.0f && m1996r > 0.0f)) {
                    target.setNestedScrollingEnabled(false);
                    target.post(new RunnableC0472c(this, target));
                    return;
                }
            }
            float f3 = this.f3801I0;
            long nanoTime = getNanoTime();
            float f4 = dx;
            this.f3836e1 = f4;
            float f5 = dy;
            this.f3837f1 = f5;
            this.f3839h1 = (float) ((nanoTime - this.f3838g1) * 1.0E-9d);
            this.f3838g1 = nanoTime;
            motionScene.m1977I(f4, f5);
            if (f3 != this.f3801I0) {
                consumed[0] = dx;
                consumed[1] = dy;
            }
            m1913T(false);
            if (consumed[0] == 0 && consumed[1] == 0) {
                return;
            }
            this.f3835d1 = true;
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(@NonNull View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int type) {
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(@NonNull View child, @NonNull View target, int axes, int type) {
        this.f3838g1 = getNanoTime();
        this.f3839h1 = 0.0f;
        this.f3836e1 = 0.0f;
        this.f3837f1 = 0.0f;
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int layoutDirection) {
        MotionScene motionScene = this.f3853v0;
        if (motionScene != null) {
            motionScene.setRtl(isRtl());
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(@NonNull View child, @NonNull View target, int axes, int type) {
        MotionScene.Transition transition;
        MotionScene motionScene = this.f3853v0;
        return (motionScene == null || (transition = motionScene.f3938c) == null || transition.getTouchResponse() == null || (this.f3853v0.f3938c.getTouchResponse().m2073f() & 2) != 0) ? false : true;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(@NonNull View target, int type) {
        MotionScene motionScene = this.f3853v0;
        if (motionScene != null) {
            float f = this.f3839h1;
            if (f == 0.0f) {
                return;
            }
            motionScene.m1978J(this.f3836e1 / f, this.f3837f1 / f);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        MotionScene motionScene = this.f3853v0;
        if (motionScene == null || !this.f3793E0 || !motionScene.m1984P()) {
            return super.onTouchEvent(event);
        }
        MotionScene.Transition transition = this.f3853v0.f3938c;
        if (transition != null && !transition.isEnabled()) {
            return super.onTouchEvent(event);
        }
        this.f3853v0.m1979K(event, getCurrentState(), this);
        if (this.f3853v0.f3938c.isTransitionFlag(4)) {
            return this.f3853v0.f3938c.getTouchResponse().m2087t();
        }
        return true;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.f3844m1 == null) {
                this.f3844m1 = new CopyOnWriteArrayList<>();
            }
            this.f3844m1.add(motionHelper);
            if (motionHelper.isUsedOnShow()) {
                if (this.f3841j1 == null) {
                    this.f3841j1 = new ArrayList<>();
                }
                this.f3841j1.add(motionHelper);
            }
            if (motionHelper.isUseOnHide()) {
                if (this.f3842k1 == null) {
                    this.f3842k1 = new ArrayList<>();
                }
                this.f3842k1.add(motionHelper);
            }
            if (motionHelper.isDecorator()) {
                if (this.f3843l1 == null) {
                    this.f3843l1 = new ArrayList<>();
                }
                this.f3843l1.add(motionHelper);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList<MotionHelper> arrayList = this.f3841j1;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList<MotionHelper> arrayList2 = this.f3842k1;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void parseLayoutDescription(int id) {
        this.mConstraintLayoutSpec = null;
    }

    @Deprecated
    public void rebuildMotion() {
        Log.e(f3781V1, "This method is deprecated. Please call rebuildScene() instead.");
        rebuildScene();
    }

    public void rebuildScene() {
        this.f3816P1.m1951k();
        invalidate();
    }

    public boolean removeTransitionListener(TransitionListener listener) {
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList = this.f3844m1;
        if (copyOnWriteArrayList == null) {
            return false;
        }
        return copyOnWriteArrayList.remove(listener);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        MotionScene motionScene;
        MotionScene.Transition transition;
        if (!this.mMeasureDuringTransition && this.f3785A0 == -1 && (motionScene = this.f3853v0) != null && (transition = motionScene.f3938c) != null) {
            int layoutDuringTransition = transition.getLayoutDuringTransition();
            if (layoutDuringTransition == 0) {
                return;
            }
            if (layoutDuringTransition == 2) {
                int childCount = getChildCount();
                for (int i = 0; i < childCount; i++) {
                    this.f3795F0.get(getChildAt(i)).remeasure();
                }
                return;
            }
        }
        super.requestLayout();
    }

    @RequiresApi(api = 17)
    public void rotateTo(int id, int duration) {
        this.f3798G1 = true;
        this.f3804J1 = getWidth();
        this.f3806K1 = getHeight();
        int rotation = getDisplay().getRotation();
        this.f3800H1 = (rotation + 1) % 4 <= (this.f3808L1 + 1) % 4 ? 2 : 1;
        this.f3808L1 = rotation;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            ViewState viewState = this.f3802I1.get(childAt);
            if (viewState == null) {
                viewState = new ViewState();
                this.f3802I1.put(childAt, viewState);
            }
            viewState.getState(childAt);
        }
        this.f3861z0 = -1;
        this.f3787B0 = id;
        this.f3853v0.m1982N(-1, id);
        this.f3816P1.m1948h(this.mLayoutWidget, null, this.f3853v0.m1987h(this.f3787B0));
        this.f3801I0 = 0.0f;
        this.f3803J0 = 0.0f;
        invalidate();
        transitionToEnd(new RunnableC0471b());
        if (duration > 0) {
            this.f3799H0 = duration / 1000.0f;
        }
    }

    public void scheduleTransitionTo(int id) {
        if (getCurrentState() == -1) {
            transitionToState(id);
            return;
        }
        int[] iArr = this.f3794E1;
        if (iArr == null) {
            this.f3794E1 = new int[4];
        } else if (iArr.length <= this.f3796F1) {
            this.f3794E1 = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f3794E1;
        int i = this.f3796F1;
        this.f3796F1 = i + 1;
        iArr2[i] = id;
    }

    public void setDebugMode(int debugMode) {
        this.f3821S0 = debugMode;
        invalidate();
    }

    public void setDelayedApplicationOfInitialState(boolean delayedApply) {
        this.f3812N1 = delayedApply;
    }

    public void setInteractionEnabled(boolean enabled) {
        this.f3793E0 = enabled;
    }

    public void setInterpolatedProgress(float pos) {
        if (this.f3853v0 != null) {
            setState(TransitionState.MOVING);
            Interpolator interpolator = this.f3853v0.getInterpolator();
            if (interpolator != null) {
                setProgress(interpolator.getInterpolation(pos));
                return;
            }
        }
        setProgress(pos);
    }

    public void setOnHide(float progress) {
        ArrayList<MotionHelper> arrayList = this.f3842k1;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f3842k1.get(i).setProgress(progress);
            }
        }
    }

    public void setOnShow(float progress) {
        ArrayList<MotionHelper> arrayList = this.f3841j1;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f3841j1.get(i).setProgress(progress);
            }
        }
    }

    public void setProgress(float pos, float velocity) {
        if (!isAttachedToWindow()) {
            if (this.f3790C1 == null) {
                this.f3790C1 = new C0479j();
            }
            this.f3790C1.m1959e(pos);
            this.f3790C1.m1962h(velocity);
            return;
        }
        setProgress(pos);
        setState(TransitionState.MOVING);
        this.f3859y0 = velocity;
        if (velocity != 0.0f) {
            m1904K(velocity > 0.0f ? 1.0f : 0.0f);
        } else {
            if (pos == 0.0f || pos == 1.0f) {
                return;
            }
            m1904K(pos > 0.5f ? 1.0f : 0.0f);
        }
    }

    public void setScene(MotionScene scene) {
        this.f3853v0 = scene;
        scene.setRtl(isRtl());
        rebuildScene();
    }

    public void setStartState(int beginId) {
        if (isAttachedToWindow()) {
            this.f3785A0 = beginId;
            return;
        }
        if (this.f3790C1 == null) {
            this.f3790C1 = new C0479j();
        }
        this.f3790C1.m1960f(beginId);
        this.f3790C1.m1958d(beginId);
    }

    public void setState(TransitionState newState) {
        TransitionState transitionState = TransitionState.FINISHED;
        if (newState == transitionState && this.f3785A0 == -1) {
            return;
        }
        TransitionState transitionState2 = this.f3814O1;
        this.f3814O1 = newState;
        TransitionState transitionState3 = TransitionState.MOVING;
        if (transitionState2 == transitionState3 && newState == transitionState3) {
            m1915V();
        }
        int i = C0474e.f3867a[transitionState2.ordinal()];
        if (i != 1 && i != 2) {
            if (i == 3 && newState == transitionState) {
                fireTransitionCompleted();
                return;
            }
            return;
        }
        if (newState == transitionState3) {
            m1915V();
        }
        if (newState == transitionState) {
            fireTransitionCompleted();
        }
    }

    public void setTransition(int beginId, int endId) {
        if (!isAttachedToWindow()) {
            if (this.f3790C1 == null) {
                this.f3790C1 = new C0479j();
            }
            this.f3790C1.m1960f(beginId);
            this.f3790C1.m1958d(endId);
            return;
        }
        MotionScene motionScene = this.f3853v0;
        if (motionScene != null) {
            this.f3861z0 = beginId;
            this.f3787B0 = endId;
            motionScene.m1982N(beginId, endId);
            this.f3816P1.m1948h(this.mLayoutWidget, this.f3853v0.m1987h(beginId), this.f3853v0.m1987h(endId));
            rebuildScene();
            this.f3803J0 = 0.0f;
            transitionToStart();
        }
    }

    public void setTransitionDuration(int milliseconds) {
        MotionScene motionScene = this.f3853v0;
        if (motionScene == null) {
            Log.e(f3781V1, "MotionScene not defined");
        } else {
            motionScene.setDuration(milliseconds);
        }
    }

    public void setTransitionListener(TransitionListener listener) {
        this.f3815P0 = listener;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.f3790C1 == null) {
            this.f3790C1 = new C0479j();
        }
        this.f3790C1.m1961g(bundle);
        if (isAttachedToWindow()) {
            this.f3790C1.m1955a();
        }
    }

    @Override // android.view.View
    public String toString() {
        Context context = getContext();
        return Debug.getName(context, this.f3861z0) + "->" + Debug.getName(context, this.f3787B0) + " (pos:" + this.f3803J0 + " Dpos/Dt:" + this.f3859y0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0037, code lost:
    
        if (r10 != 7) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void touchAnimateTo(int r10, float r11, float r12) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.touchAnimateTo(int, float, float):void");
    }

    public void touchSpringTo(float position, float currentVelocity) {
        if (this.f3853v0 == null || this.f3803J0 == position) {
            return;
        }
        this.f3825U0 = true;
        this.f3797G0 = getNanoTime();
        this.f3799H0 = this.f3853v0.getDuration() / 1000.0f;
        this.f3807L0 = position;
        this.f3811N0 = true;
        this.f3827V0.springConfig(this.f3803J0, position, currentVelocity, this.f3853v0.m2000v(), this.f3853v0.m2001w(), this.f3853v0.m1999u(), this.f3853v0.m2002x(), this.f3853v0.m1998t());
        int i = this.f3785A0;
        this.f3807L0 = position;
        this.f3785A0 = i;
        this.f3855w0 = this.f3827V0;
        this.f3809M0 = false;
        this.f3797G0 = getNanoTime();
        invalidate();
    }

    public void transitionToEnd() {
        m1904K(1.0f);
        this.f3792D1 = null;
    }

    public void transitionToStart() {
        m1904K(0.0f);
    }

    public void transitionToState(int id) {
        if (!isAttachedToWindow()) {
            if (this.f3790C1 == null) {
                this.f3790C1 = new C0479j();
            }
            this.f3790C1.m1958d(id);
            return;
        }
        transitionToState(id, -1, -1);
    }

    public void updateState(int stateId, ConstraintSet set) {
        MotionScene motionScene = this.f3853v0;
        if (motionScene != null) {
            motionScene.setConstraintSet(stateId, set);
        }
        updateState();
        if (this.f3785A0 == stateId) {
            set.applyTo(this);
        }
    }

    public void updateStateAnimate(int stateId, ConstraintSet set, int duration) {
        if (this.f3853v0 != null && this.f3785A0 == stateId) {
            updateState(C0503R.id.view_transition, getConstraintSet(stateId));
            setState(C0503R.id.view_transition, -1, -1);
            updateState(stateId, set);
            MotionScene.Transition transition = new MotionScene.Transition(-1, this.f3853v0, C0503R.id.view_transition, stateId);
            transition.setDuration(duration);
            setTransition(transition);
            transitionToEnd();
        }
    }

    public void viewTransition(int viewTransitionId, View... view) {
        MotionScene motionScene = this.f3853v0;
        if (motionScene != null) {
            motionScene.viewTransition(viewTransitionId, view);
        } else {
            Log.e(f3781V1, " no motionScene");
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.MotionLayout$i */
    /* loaded from: classes3.dex */
    public static class C0478i implements MotionTracker {

        /* renamed from: b */
        public static C0478i f3901b = new C0478i();

        /* renamed from: a */
        public VelocityTracker f3902a;

        /* renamed from: a */
        public static C0478i m1954a() {
            f3901b.f3902a = VelocityTracker.obtain();
            return f3901b;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void addMovement(MotionEvent event) {
            VelocityTracker velocityTracker = this.f3902a;
            if (velocityTracker != null) {
                velocityTracker.addMovement(event);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void clear() {
            VelocityTracker velocityTracker = this.f3902a;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void computeCurrentVelocity(int units) {
            VelocityTracker velocityTracker = this.f3902a;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(units);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getXVelocity() {
            VelocityTracker velocityTracker = this.f3902a;
            if (velocityTracker != null) {
                return velocityTracker.getXVelocity();
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getYVelocity() {
            VelocityTracker velocityTracker = this.f3902a;
            if (velocityTracker != null) {
                return velocityTracker.getYVelocity();
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void recycle() {
            VelocityTracker velocityTracker = this.f3902a;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f3902a = null;
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void computeCurrentVelocity(int units, float maxVelocity) {
            VelocityTracker velocityTracker = this.f3902a;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(units, maxVelocity);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getXVelocity(int id) {
            VelocityTracker velocityTracker = this.f3902a;
            if (velocityTracker != null) {
                return velocityTracker.getXVelocity(id);
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getYVelocity(int id) {
            if (this.f3902a != null) {
                return getYVelocity(id);
            }
            return 0.0f;
        }
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(@NonNull View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int type, int[] consumed) {
        if (this.f3835d1 || dxConsumed != 0 || dyConsumed != 0) {
            consumed[0] = consumed[0] + dxUnconsumed;
            consumed[1] = consumed[1] + dyUnconsumed;
        }
        this.f3835d1 = false;
    }

    public void transitionToEnd(Runnable onComplete) {
        m1904K(1.0f);
        this.f3792D1 = onComplete;
    }

    public void transitionToState(int id, int duration) {
        if (!isAttachedToWindow()) {
            if (this.f3790C1 == null) {
                this.f3790C1 = new C0479j();
            }
            this.f3790C1.m1958d(id);
            return;
        }
        transitionToState(id, -1, -1, duration);
    }

    public void updateState() {
        this.f3816P1.m1948h(this.mLayoutWidget, this.f3853v0.m1987h(this.f3861z0), this.f3853v0.m1987h(this.f3787B0));
        rebuildScene();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void setState(int id, int screenWidth, int screenHeight) {
        setState(TransitionState.SETUP);
        this.f3785A0 = id;
        this.f3861z0 = -1;
        this.f3787B0 = -1;
        ConstraintLayoutStates constraintLayoutStates = this.mConstraintLayoutSpec;
        if (constraintLayoutStates != null) {
            constraintLayoutStates.updateConstraints(id, screenWidth, screenHeight);
            return;
        }
        MotionScene motionScene = this.f3853v0;
        if (motionScene != null) {
            motionScene.m1987h(id).applyTo(this);
        }
    }

    public void setProgress(float pos) {
        if (pos < 0.0f || pos > 1.0f) {
            Log.w(f3781V1, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive");
        }
        if (!isAttachedToWindow()) {
            if (this.f3790C1 == null) {
                this.f3790C1 = new C0479j();
            }
            this.f3790C1.m1959e(pos);
            return;
        }
        if (pos <= 0.0f) {
            if (this.f3803J0 == 1.0f && this.f3785A0 == this.f3787B0) {
                setState(TransitionState.MOVING);
            }
            this.f3785A0 = this.f3861z0;
            if (this.f3803J0 == 0.0f) {
                setState(TransitionState.FINISHED);
            }
        } else if (pos >= 1.0f) {
            if (this.f3803J0 == 0.0f && this.f3785A0 == this.f3861z0) {
                setState(TransitionState.MOVING);
            }
            this.f3785A0 = this.f3787B0;
            if (this.f3803J0 == 1.0f) {
                setState(TransitionState.FINISHED);
            }
        } else {
            this.f3785A0 = -1;
            setState(TransitionState.MOVING);
        }
        if (this.f3853v0 == null) {
            return;
        }
        this.f3809M0 = true;
        this.f3807L0 = pos;
        this.f3801I0 = pos;
        this.f3805K0 = -1L;
        this.f3797G0 = -1L;
        this.f3855w0 = null;
        this.f3811N0 = true;
        invalidate();
    }

    public void transitionToState(int id, int screenWidth, int screenHeight) {
        transitionToState(id, screenWidth, screenHeight, -1);
    }

    public void transitionToState(int id, int screenWidth, int screenHeight, int duration) {
        StateSet stateSet;
        int convertToConstraintSet;
        MotionScene motionScene = this.f3853v0;
        if (motionScene != null && (stateSet = motionScene.f3937b) != null && (convertToConstraintSet = stateSet.convertToConstraintSet(this.f3785A0, id, screenWidth, screenHeight)) != -1) {
            id = convertToConstraintSet;
        }
        int i = this.f3785A0;
        if (i == id) {
            return;
        }
        if (this.f3861z0 == id) {
            m1904K(0.0f);
            if (duration > 0) {
                this.f3799H0 = duration / 1000.0f;
                return;
            }
            return;
        }
        if (this.f3787B0 == id) {
            m1904K(1.0f);
            if (duration > 0) {
                this.f3799H0 = duration / 1000.0f;
                return;
            }
            return;
        }
        this.f3787B0 = id;
        if (i != -1) {
            setTransition(i, id);
            m1904K(1.0f);
            this.f3803J0 = 0.0f;
            transitionToEnd();
            if (duration > 0) {
                this.f3799H0 = duration / 1000.0f;
                return;
            }
            return;
        }
        this.f3825U0 = false;
        this.f3807L0 = 1.0f;
        this.f3801I0 = 0.0f;
        this.f3803J0 = 0.0f;
        this.f3805K0 = getNanoTime();
        this.f3797G0 = getNanoTime();
        this.f3809M0 = false;
        this.f3855w0 = null;
        if (duration == -1) {
            this.f3799H0 = this.f3853v0.getDuration() / 1000.0f;
        }
        this.f3861z0 = -1;
        this.f3853v0.m1982N(-1, this.f3787B0);
        SparseArray sparseArray = new SparseArray();
        if (duration == 0) {
            this.f3799H0 = this.f3853v0.getDuration() / 1000.0f;
        } else if (duration > 0) {
            this.f3799H0 = duration / 1000.0f;
        }
        int childCount = getChildCount();
        this.f3795F0.clear();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            this.f3795F0.put(childAt, new MotionController(childAt));
            sparseArray.put(childAt.getId(), this.f3795F0.get(childAt));
        }
        this.f3811N0 = true;
        this.f3816P1.m1948h(this.mLayoutWidget, null, this.f3853v0.m1987h(id));
        rebuildScene();
        this.f3816P1.m1941a();
        m1909P();
        int width = getWidth();
        int height = getHeight();
        if (this.f3843l1 != null) {
            for (int i3 = 0; i3 < childCount; i3++) {
                MotionController motionController = this.f3795F0.get(getChildAt(i3));
                if (motionController != null) {
                    this.f3853v0.getKeyFrames(motionController);
                }
            }
            Iterator<MotionHelper> it2 = this.f3843l1.iterator();
            while (it2.hasNext()) {
                it2.next().onPreSetup(this, this.f3795F0);
            }
            for (int i4 = 0; i4 < childCount; i4++) {
                MotionController motionController2 = this.f3795F0.get(getChildAt(i4));
                if (motionController2 != null) {
                    motionController2.setup(width, height, this.f3799H0, getNanoTime());
                }
            }
        } else {
            for (int i5 = 0; i5 < childCount; i5++) {
                MotionController motionController3 = this.f3795F0.get(getChildAt(i5));
                if (motionController3 != null) {
                    this.f3853v0.getKeyFrames(motionController3);
                    motionController3.setup(width, height, this.f3799H0, getNanoTime());
                }
            }
        }
        float staggered = this.f3853v0.getStaggered();
        if (staggered != 0.0f) {
            float f = Float.MAX_VALUE;
            float f2 = -3.4028235E38f;
            for (int i6 = 0; i6 < childCount; i6++) {
                MotionController motionController4 = this.f3795F0.get(getChildAt(i6));
                float finalY = motionController4.getFinalY() + motionController4.getFinalX();
                f = Math.min(f, finalY);
                f2 = Math.max(f2, finalY);
            }
            for (int i7 = 0; i7 < childCount; i7++) {
                MotionController motionController5 = this.f3795F0.get(getChildAt(i7));
                float finalX = motionController5.getFinalX();
                float finalY2 = motionController5.getFinalY();
                motionController5.f3765o = 1.0f / (1.0f - staggered);
                motionController5.f3764n = staggered - ((((finalX + finalY2) - f) * staggered) / (f2 - f));
            }
        }
        this.f3801I0 = 0.0f;
        this.f3803J0 = 0.0f;
        this.f3811N0 = true;
        invalidate();
    }

    public void setTransition(int transitionId) {
        float f;
        if (this.f3853v0 != null) {
            MotionScene.Transition transition = getTransition(transitionId);
            this.f3861z0 = transition.getStartConstraintSetId();
            this.f3787B0 = transition.getEndConstraintSetId();
            if (!isAttachedToWindow()) {
                if (this.f3790C1 == null) {
                    this.f3790C1 = new C0479j();
                }
                this.f3790C1.m1960f(this.f3861z0);
                this.f3790C1.m1958d(this.f3787B0);
                return;
            }
            int i = this.f3785A0;
            if (i == this.f3861z0) {
                f = 0.0f;
            } else {
                f = i == this.f3787B0 ? 1.0f : Float.NaN;
            }
            this.f3853v0.setTransition(transition);
            this.f3816P1.m1948h(this.mLayoutWidget, this.f3853v0.m1987h(this.f3861z0), this.f3853v0.m1987h(this.f3787B0));
            rebuildScene();
            if (this.f3803J0 != f) {
                if (f == 0.0f) {
                    m1912S(true);
                    this.f3853v0.m1987h(this.f3861z0).applyTo(this);
                } else if (f == 1.0f) {
                    m1912S(false);
                    this.f3853v0.m1987h(this.f3787B0).applyTo(this);
                }
            }
            this.f3803J0 = Float.isNaN(f) ? 0.0f : f;
            if (Float.isNaN(f)) {
                Log.v(f3781V1, Debug.getLocation() + " transitionToStart ");
                transitionToStart();
                return;
            }
            setProgress(f);
        }
    }

    public void setTransition(MotionScene.Transition transition) {
        this.f3853v0.setTransition(transition);
        setState(TransitionState.SETUP);
        if (this.f3785A0 == this.f3853v0.m1989j()) {
            this.f3803J0 = 1.0f;
            this.f3801I0 = 1.0f;
            this.f3807L0 = 1.0f;
        } else {
            this.f3803J0 = 0.0f;
            this.f3801I0 = 0.0f;
            this.f3807L0 = 0.0f;
        }
        this.f3805K0 = transition.isTransitionFlag(1) ? -1L : getNanoTime();
        int m2003y = this.f3853v0.m2003y();
        int m1989j = this.f3853v0.m1989j();
        if (m2003y == this.f3861z0 && m1989j == this.f3787B0) {
            return;
        }
        this.f3861z0 = m2003y;
        this.f3787B0 = m1989j;
        this.f3853v0.m1982N(m2003y, m1989j);
        this.f3816P1.m1948h(this.mLayoutWidget, this.f3853v0.m1987h(this.f3861z0), this.f3853v0.m1987h(this.f3787B0));
        this.f3816P1.m1952l(this.f3861z0, this.f3787B0);
        this.f3816P1.m1951k();
        rebuildScene();
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        this.f3857x0 = null;
        this.f3859y0 = 0.0f;
        this.f3861z0 = -1;
        this.f3785A0 = -1;
        this.f3787B0 = -1;
        this.f3789C0 = 0;
        this.f3791D0 = 0;
        this.f3793E0 = true;
        this.f3795F0 = new HashMap<>();
        this.f3797G0 = 0L;
        this.f3799H0 = 1.0f;
        this.f3801I0 = 0.0f;
        this.f3803J0 = 0.0f;
        this.f3807L0 = 0.0f;
        this.f3811N0 = false;
        this.f3813O0 = false;
        this.f3821S0 = 0;
        this.f3825U0 = false;
        this.f3827V0 = new StopLogic();
        this.f3828W0 = new C0475f();
        this.f3830Y0 = true;
        this.f3835d1 = false;
        this.f3840i1 = false;
        this.f3841j1 = null;
        this.f3842k1 = null;
        this.f3843l1 = null;
        this.f3844m1 = null;
        this.f3845n1 = 0;
        this.f3846o1 = -1L;
        this.f3847p1 = 0.0f;
        this.f3848q1 = 0;
        this.f3849r1 = 0.0f;
        this.f3850s1 = false;
        this.mMeasureDuringTransition = false;
        this.f3786A1 = new KeyCache();
        this.f3788B1 = false;
        this.f3792D1 = null;
        this.f3794E1 = null;
        this.f3796F1 = 0;
        this.f3798G1 = false;
        this.f3800H1 = 0;
        this.f3802I1 = new HashMap<>();
        this.f3810M1 = new Rect();
        this.f3812N1 = false;
        this.f3814O1 = TransitionState.UNDEFINED;
        this.f3816P1 = new C0477h();
        this.f3818Q1 = false;
        this.f3820R1 = new RectF();
        this.f3822S1 = null;
        this.f3824T1 = null;
        this.f3826U1 = new ArrayList<>();
        m1921b0(attrs);
    }

    public MotionLayout(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f3857x0 = null;
        this.f3859y0 = 0.0f;
        this.f3861z0 = -1;
        this.f3785A0 = -1;
        this.f3787B0 = -1;
        this.f3789C0 = 0;
        this.f3791D0 = 0;
        this.f3793E0 = true;
        this.f3795F0 = new HashMap<>();
        this.f3797G0 = 0L;
        this.f3799H0 = 1.0f;
        this.f3801I0 = 0.0f;
        this.f3803J0 = 0.0f;
        this.f3807L0 = 0.0f;
        this.f3811N0 = false;
        this.f3813O0 = false;
        this.f3821S0 = 0;
        this.f3825U0 = false;
        this.f3827V0 = new StopLogic();
        this.f3828W0 = new C0475f();
        this.f3830Y0 = true;
        this.f3835d1 = false;
        this.f3840i1 = false;
        this.f3841j1 = null;
        this.f3842k1 = null;
        this.f3843l1 = null;
        this.f3844m1 = null;
        this.f3845n1 = 0;
        this.f3846o1 = -1L;
        this.f3847p1 = 0.0f;
        this.f3848q1 = 0;
        this.f3849r1 = 0.0f;
        this.f3850s1 = false;
        this.mMeasureDuringTransition = false;
        this.f3786A1 = new KeyCache();
        this.f3788B1 = false;
        this.f3792D1 = null;
        this.f3794E1 = null;
        this.f3796F1 = 0;
        this.f3798G1 = false;
        this.f3800H1 = 0;
        this.f3802I1 = new HashMap<>();
        this.f3810M1 = new Rect();
        this.f3812N1 = false;
        this.f3814O1 = TransitionState.UNDEFINED;
        this.f3816P1 = new C0477h();
        this.f3818Q1 = false;
        this.f3820R1 = new RectF();
        this.f3822S1 = null;
        this.f3824T1 = null;
        this.f3826U1 = new ArrayList<>();
        m1921b0(attrs);
    }
}
