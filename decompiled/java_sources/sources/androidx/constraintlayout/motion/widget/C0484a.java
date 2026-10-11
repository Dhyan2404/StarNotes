package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.C0503R;
import androidx.core.widget.NestedScrollView;
import org.xmlpull.v1.XmlPullParser;

/* renamed from: androidx.constraintlayout.motion.widget.a */
/* loaded from: classes3.dex */
public class C0484a {

    /* renamed from: G */
    public static final String f4066G = "TouchResponse";

    /* renamed from: H */
    public static final boolean f4067H = false;

    /* renamed from: I */
    public static final int f4068I = 1000;

    /* renamed from: J */
    public static final float f4069J = 1.0E-7f;

    /* renamed from: K */
    public static final float[][] f4070K = {new float[]{0.5f, 0.0f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}, new float[]{0.5f, 1.0f}, new float[]{0.5f, 0.5f}, new float[]{0.0f, 0.5f}, new float[]{1.0f, 0.5f}};

    /* renamed from: L */
    public static final float[][] f4071L = {new float[]{0.0f, -1.0f}, new float[]{0.0f, 1.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}, new float[]{-1.0f, 0.0f}, new float[]{1.0f, 0.0f}};

    /* renamed from: M */
    public static final int f4072M = 0;

    /* renamed from: N */
    public static final int f4073N = 1;

    /* renamed from: O */
    public static final int f4074O = 2;

    /* renamed from: P */
    public static final int f4075P = 3;

    /* renamed from: Q */
    public static final int f4076Q = 4;

    /* renamed from: R */
    public static final int f4077R = 5;

    /* renamed from: S */
    public static final int f4078S = 0;

    /* renamed from: T */
    public static final int f4079T = 1;

    /* renamed from: U */
    public static final int f4080U = 2;

    /* renamed from: V */
    public static final int f4081V = 3;

    /* renamed from: W */
    public static final int f4082W = 4;

    /* renamed from: X */
    public static final int f4083X = 5;

    /* renamed from: Y */
    public static final int f4084Y = 6;

    /* renamed from: Z */
    public static final int f4085Z = 1;

    /* renamed from: a0 */
    public static final int f4086a0 = 2;

    /* renamed from: b0 */
    public static final int f4087b0 = 4;

    /* renamed from: c0 */
    public static final int f4088c0 = 0;

    /* renamed from: d0 */
    public static final int f4089d0 = 1;

    /* renamed from: A */
    public float f4090A;

    /* renamed from: B */
    public float f4091B;

    /* renamed from: C */
    public float f4092C;

    /* renamed from: D */
    public float f4093D;

    /* renamed from: E */
    public int f4094E;

    /* renamed from: F */
    public int f4095F;

    /* renamed from: a */
    public int f4096a;

    /* renamed from: b */
    public int f4097b;

    /* renamed from: c */
    public int f4098c;

    /* renamed from: d */
    public int f4099d;

    /* renamed from: e */
    public int f4100e;

    /* renamed from: f */
    public int f4101f;

    /* renamed from: g */
    public float f4102g;

    /* renamed from: h */
    public float f4103h;

    /* renamed from: i */
    public float f4104i;

    /* renamed from: j */
    public float f4105j;

    /* renamed from: k */
    public int f4106k;

    /* renamed from: l */
    public boolean f4107l;

    /* renamed from: m */
    public float f4108m;

    /* renamed from: n */
    public float f4109n;

    /* renamed from: o */
    public boolean f4110o;

    /* renamed from: p */
    public float[] f4111p;

    /* renamed from: q */
    public int[] f4112q;

    /* renamed from: r */
    public float f4113r;

    /* renamed from: s */
    public float f4114s;

    /* renamed from: t */
    public final MotionLayout f4115t;

    /* renamed from: u */
    public float f4116u;

    /* renamed from: v */
    public float f4117v;

    /* renamed from: w */
    public boolean f4118w;

    /* renamed from: x */
    public float f4119x;

    /* renamed from: y */
    public int f4120y;

    /* renamed from: z */
    public float f4121z;

    /* renamed from: androidx.constraintlayout.motion.widget.a$a */
    /* loaded from: classes3.dex */
    public class a implements View.OnTouchListener {
        public a(final C0484a this$0) {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return false;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.a$b */
    /* loaded from: classes3.dex */
    public class b implements NestedScrollView.OnScrollChangeListener {
        public b(final C0484a this$0) {
        }

        @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
        public void onScrollChange(NestedScrollView v, int scrollX, int scrollY, int oldScrollX, int oldScrollY) {
        }
    }

    public C0484a(Context context, MotionLayout layout, XmlPullParser parser) {
        this.f4096a = 0;
        this.f4097b = 0;
        this.f4098c = 0;
        this.f4099d = -1;
        this.f4100e = -1;
        this.f4101f = -1;
        this.f4102g = 0.5f;
        this.f4103h = 0.5f;
        this.f4104i = 0.5f;
        this.f4105j = 0.5f;
        this.f4106k = -1;
        this.f4107l = false;
        this.f4108m = 0.0f;
        this.f4109n = 1.0f;
        this.f4110o = false;
        this.f4111p = new float[2];
        this.f4112q = new int[2];
        this.f4116u = 4.0f;
        this.f4117v = 1.2f;
        this.f4118w = true;
        this.f4119x = 1.0f;
        this.f4120y = 0;
        this.f4121z = 10.0f;
        this.f4090A = 10.0f;
        this.f4091B = 1.0f;
        this.f4092C = Float.NaN;
        this.f4093D = Float.NaN;
        this.f4094E = 0;
        this.f4095F = 0;
        this.f4115t = layout;
        m2070c(context, Xml.asAttributeSet(parser));
    }

    /* renamed from: A */
    public void m2060A(float lastTouchX, float lastTouchY) {
        this.f4113r = lastTouchX;
        this.f4114s = lastTouchY;
    }

    /* renamed from: B */
    public void m2061B(float acceleration) {
        this.f4117v = acceleration;
    }

    /* renamed from: C */
    public void m2062C(float velocity) {
        this.f4116u = velocity;
    }

    /* renamed from: D */
    public void m2063D(boolean rtl) {
        if (rtl) {
            float[][] fArr = f4071L;
            fArr[4] = fArr[3];
            fArr[5] = fArr[2];
            float[][] fArr2 = f4070K;
            fArr2[5] = fArr2[2];
            fArr2[6] = fArr2[1];
        } else {
            float[][] fArr3 = f4071L;
            fArr3[4] = fArr3[2];
            fArr3[5] = fArr3[3];
            float[][] fArr4 = f4070K;
            fArr4[5] = fArr4[1];
            fArr4[6] = fArr4[2];
        }
        float[] fArr5 = f4070K[this.f4096a];
        this.f4103h = fArr5[0];
        this.f4102g = fArr5[1];
        int i = this.f4097b;
        float[][] fArr6 = f4071L;
        if (i >= fArr6.length) {
            return;
        }
        float[] fArr7 = fArr6[i];
        this.f4108m = fArr7[0];
        this.f4109n = fArr7[1];
    }

    /* renamed from: E */
    public void m2064E(float x, float y) {
        this.f4103h = x;
        this.f4102g = y;
    }

    /* renamed from: F */
    public void m2065F(int touchUpMode) {
        this.f4098c = touchUpMode;
    }

    /* renamed from: G */
    public void m2066G(float lastTouchX, float lastTouchY) {
        this.f4113r = lastTouchX;
        this.f4114s = lastTouchY;
        this.f4110o = false;
    }

    /* renamed from: H */
    public void m2067H() {
        View view;
        int i = this.f4099d;
        if (i != -1) {
            view = this.f4115t.findViewById(i);
            if (view == null) {
                Log.e(f4066G, "cannot find TouchAnchorId @id/" + Debug.getName(this.f4115t.getContext(), this.f4099d));
            }
        } else {
            view = null;
        }
        if (view instanceof NestedScrollView) {
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            nestedScrollView.setOnTouchListener(new a(this));
            nestedScrollView.setOnScrollChangeListener(new b(this));
        }
    }

    /* renamed from: a */
    public float m2068a(float dx, float dy) {
        return (dx * this.f4108m) + (dy * this.f4109n);
    }

    /* renamed from: b */
    public final void m2069b(TypedArray a2) {
        int indexCount = a2.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = a2.getIndex(i);
            if (index == C0503R.styleable.OnSwipe_touchAnchorId) {
                this.f4099d = a2.getResourceId(index, this.f4099d);
            } else if (index == C0503R.styleable.OnSwipe_touchAnchorSide) {
                int i2 = a2.getInt(index, this.f4096a);
                this.f4096a = i2;
                float[] fArr = f4070K[i2];
                this.f4103h = fArr[0];
                this.f4102g = fArr[1];
            } else if (index == C0503R.styleable.OnSwipe_dragDirection) {
                int i3 = a2.getInt(index, this.f4097b);
                this.f4097b = i3;
                float[][] fArr2 = f4071L;
                if (i3 < fArr2.length) {
                    float[] fArr3 = fArr2[i3];
                    this.f4108m = fArr3[0];
                    this.f4109n = fArr3[1];
                } else {
                    this.f4109n = Float.NaN;
                    this.f4108m = Float.NaN;
                    this.f4107l = true;
                }
            } else if (index == C0503R.styleable.OnSwipe_maxVelocity) {
                this.f4116u = a2.getFloat(index, this.f4116u);
            } else if (index == C0503R.styleable.OnSwipe_maxAcceleration) {
                this.f4117v = a2.getFloat(index, this.f4117v);
            } else if (index == C0503R.styleable.OnSwipe_moveWhenScrollAtTop) {
                this.f4118w = a2.getBoolean(index, this.f4118w);
            } else if (index == C0503R.styleable.OnSwipe_dragScale) {
                this.f4119x = a2.getFloat(index, this.f4119x);
            } else if (index == C0503R.styleable.OnSwipe_dragThreshold) {
                this.f4121z = a2.getFloat(index, this.f4121z);
            } else if (index == C0503R.styleable.OnSwipe_touchRegionId) {
                this.f4100e = a2.getResourceId(index, this.f4100e);
            } else if (index == C0503R.styleable.OnSwipe_onTouchUp) {
                this.f4098c = a2.getInt(index, this.f4098c);
            } else if (index == C0503R.styleable.OnSwipe_nestedScrollFlags) {
                this.f4120y = a2.getInteger(index, 0);
            } else if (index == C0503R.styleable.OnSwipe_limitBoundsTo) {
                this.f4101f = a2.getResourceId(index, 0);
            } else if (index == C0503R.styleable.OnSwipe_rotationCenterId) {
                this.f4106k = a2.getResourceId(index, this.f4106k);
            } else if (index == C0503R.styleable.OnSwipe_springDamping) {
                this.f4090A = a2.getFloat(index, this.f4090A);
            } else if (index == C0503R.styleable.OnSwipe_springMass) {
                this.f4091B = a2.getFloat(index, this.f4091B);
            } else if (index == C0503R.styleable.OnSwipe_springStiffness) {
                this.f4092C = a2.getFloat(index, this.f4092C);
            } else if (index == C0503R.styleable.OnSwipe_springStopThreshold) {
                this.f4093D = a2.getFloat(index, this.f4093D);
            } else if (index == C0503R.styleable.OnSwipe_springBoundary) {
                this.f4094E = a2.getInt(index, this.f4094E);
            } else if (index == C0503R.styleable.OnSwipe_autoCompleteMode) {
                this.f4095F = a2.getInt(index, this.f4095F);
            }
        }
    }

    /* renamed from: c */
    public final void m2070c(Context context, AttributeSet attrs) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, C0503R.styleable.OnSwipe);
        m2069b(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: d */
    public int m2071d() {
        return this.f4099d;
    }

    /* renamed from: e */
    public int m2072e() {
        return this.f4095F;
    }

    /* renamed from: f */
    public int m2073f() {
        return this.f4120y;
    }

    /* renamed from: g */
    public RectF m2074g(ViewGroup layout, RectF rect) {
        View findViewById;
        int i = this.f4101f;
        if (i == -1 || (findViewById = layout.findViewById(i)) == null) {
            return null;
        }
        rect.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
        return rect;
    }

    /* renamed from: h */
    public int m2075h() {
        return this.f4101f;
    }

    /* renamed from: i */
    public float m2076i() {
        return this.f4117v;
    }

    /* renamed from: j */
    public float m2077j() {
        return this.f4116u;
    }

    /* renamed from: k */
    public boolean m2078k() {
        return this.f4118w;
    }

    /* renamed from: l */
    public float m2079l(float dx, float dy) {
        this.f4115t.m1917X(this.f4099d, this.f4115t.getProgress(), this.f4103h, this.f4102g, this.f4111p);
        float f = this.f4108m;
        if (f != 0.0f) {
            float[] fArr = this.f4111p;
            if (fArr[0] == 0.0f) {
                fArr[0] = 1.0E-7f;
            }
            return (dx * f) / fArr[0];
        }
        float[] fArr2 = this.f4111p;
        if (fArr2[1] == 0.0f) {
            fArr2[1] = 1.0E-7f;
        }
        return (dy * this.f4109n) / fArr2[1];
    }

    /* renamed from: m */
    public int m2080m() {
        return this.f4094E;
    }

    /* renamed from: n */
    public float m2081n() {
        return this.f4090A;
    }

    /* renamed from: o */
    public float m2082o() {
        return this.f4091B;
    }

    /* renamed from: p */
    public float m2083p() {
        return this.f4092C;
    }

    /* renamed from: q */
    public float m2084q() {
        return this.f4093D;
    }

    /* renamed from: r */
    public RectF m2085r(ViewGroup layout, RectF rect) {
        View findViewById;
        int i = this.f4100e;
        if (i == -1 || (findViewById = layout.findViewById(i)) == null) {
            return null;
        }
        rect.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
        return rect;
    }

    /* renamed from: s */
    public int m2086s() {
        return this.f4100e;
    }

    /* renamed from: t */
    public boolean m2087t() {
        return this.f4110o;
    }

    public String toString() {
        if (Float.isNaN(this.f4108m)) {
            return "rotation";
        }
        return this.f4108m + " , " + this.f4109n;
    }

    /* renamed from: u */
    public void m2088u(MotionEvent event, MotionLayout.MotionTracker velocityTracker, int currentState, MotionScene motionScene) {
        int i;
        if (this.f4107l) {
            m2089v(event, velocityTracker, currentState, motionScene);
            return;
        }
        velocityTracker.addMovement(event);
        int action = event.getAction();
        if (action == 0) {
            this.f4113r = event.getRawX();
            this.f4114s = event.getRawY();
            this.f4110o = false;
            return;
        }
        if (action == 1) {
            this.f4110o = false;
            velocityTracker.computeCurrentVelocity(1000);
            float xVelocity = velocityTracker.getXVelocity();
            float yVelocity = velocityTracker.getYVelocity();
            float progress = this.f4115t.getProgress();
            int i2 = this.f4099d;
            if (i2 != -1) {
                this.f4115t.m1917X(i2, progress, this.f4103h, this.f4102g, this.f4111p);
            } else {
                float min = Math.min(this.f4115t.getWidth(), this.f4115t.getHeight());
                float[] fArr = this.f4111p;
                fArr[1] = this.f4109n * min;
                fArr[0] = min * this.f4108m;
            }
            float f = this.f4108m;
            float[] fArr2 = this.f4111p;
            float f2 = f != 0.0f ? xVelocity / fArr2[0] : yVelocity / fArr2[1];
            float f3 = !Float.isNaN(f2) ? (f2 / 3.0f) + progress : progress;
            if (f3 == 0.0f || f3 == 1.0f || (i = this.f4098c) == 3) {
                if (0.0f >= f3 || 1.0f <= f3) {
                    this.f4115t.setState(MotionLayout.TransitionState.FINISHED);
                    return;
                }
                return;
            }
            float f4 = ((double) f3) < 0.5d ? 0.0f : 1.0f;
            if (i == 6) {
                if (progress + f2 < 0.0f) {
                    f2 = Math.abs(f2);
                }
                f4 = 1.0f;
            }
            if (this.f4098c == 7) {
                if (progress + f2 > 1.0f) {
                    f2 = -Math.abs(f2);
                }
                f4 = 0.0f;
            }
            this.f4115t.touchAnimateTo(this.f4098c, f4, f2);
            if (0.0f >= progress || 1.0f <= progress) {
                this.f4115t.setState(MotionLayout.TransitionState.FINISHED);
                return;
            }
            return;
        }
        if (action != 2) {
            return;
        }
        float rawY = event.getRawY() - this.f4114s;
        float rawX = event.getRawX() - this.f4113r;
        if (Math.abs((this.f4108m * rawX) + (this.f4109n * rawY)) > this.f4121z || this.f4110o) {
            float progress2 = this.f4115t.getProgress();
            if (!this.f4110o) {
                this.f4110o = true;
                this.f4115t.setProgress(progress2);
            }
            int i3 = this.f4099d;
            if (i3 != -1) {
                this.f4115t.m1917X(i3, progress2, this.f4103h, this.f4102g, this.f4111p);
            } else {
                float min2 = Math.min(this.f4115t.getWidth(), this.f4115t.getHeight());
                float[] fArr3 = this.f4111p;
                fArr3[1] = this.f4109n * min2;
                fArr3[0] = min2 * this.f4108m;
            }
            float f5 = this.f4108m;
            float[] fArr4 = this.f4111p;
            if (Math.abs(((f5 * fArr4[0]) + (this.f4109n * fArr4[1])) * this.f4119x) < 0.01d) {
                float[] fArr5 = this.f4111p;
                fArr5[0] = 0.01f;
                fArr5[1] = 0.01f;
            }
            float max = Math.max(Math.min(progress2 + (this.f4108m != 0.0f ? rawX / this.f4111p[0] : rawY / this.f4111p[1]), 1.0f), 0.0f);
            if (this.f4098c == 6) {
                max = Math.max(max, 0.01f);
            }
            if (this.f4098c == 7) {
                max = Math.min(max, 0.99f);
            }
            float progress3 = this.f4115t.getProgress();
            if (max != progress3) {
                if (progress3 == 0.0f || progress3 == 1.0f) {
                    this.f4115t.m1912S(progress3 == 0.0f);
                }
                this.f4115t.setProgress(max);
                velocityTracker.computeCurrentVelocity(1000);
                this.f4115t.f3859y0 = this.f4108m != 0.0f ? velocityTracker.getXVelocity() / this.f4111p[0] : velocityTracker.getYVelocity() / this.f4111p[1];
            } else {
                this.f4115t.f3859y0 = 0.0f;
            }
            this.f4113r = event.getRawX();
            this.f4114s = event.getRawY();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0294  */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m2089v(android.view.MotionEvent r24, androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker r25, int r26, androidx.constraintlayout.motion.widget.MotionScene r27) {
        /*
            Method dump skipped, instructions count: 833
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.C0484a.m2089v(android.view.MotionEvent, androidx.constraintlayout.motion.widget.MotionLayout$MotionTracker, int, androidx.constraintlayout.motion.widget.MotionScene):void");
    }

    /* renamed from: w */
    public void m2090w(float dx, float dy) {
        float progress = this.f4115t.getProgress();
        if (!this.f4110o) {
            this.f4110o = true;
            this.f4115t.setProgress(progress);
        }
        this.f4115t.m1917X(this.f4099d, progress, this.f4103h, this.f4102g, this.f4111p);
        float f = this.f4108m;
        float[] fArr = this.f4111p;
        if (Math.abs((f * fArr[0]) + (this.f4109n * fArr[1])) < 0.01d) {
            float[] fArr2 = this.f4111p;
            fArr2[0] = 0.01f;
            fArr2[1] = 0.01f;
        }
        float f2 = this.f4108m;
        float max = Math.max(Math.min(progress + (f2 != 0.0f ? (dx * f2) / this.f4111p[0] : (dy * this.f4109n) / this.f4111p[1]), 1.0f), 0.0f);
        if (max != this.f4115t.getProgress()) {
            this.f4115t.setProgress(max);
        }
    }

    /* renamed from: x */
    public void m2091x(float dx, float dy) {
        this.f4110o = false;
        float progress = this.f4115t.getProgress();
        this.f4115t.m1917X(this.f4099d, progress, this.f4103h, this.f4102g, this.f4111p);
        float f = this.f4108m;
        float[] fArr = this.f4111p;
        float f2 = f != 0.0f ? (dx * f) / fArr[0] : (dy * this.f4109n) / fArr[1];
        if (!Float.isNaN(f2)) {
            progress += f2 / 3.0f;
        }
        if (progress != 0.0f) {
            boolean z = progress != 1.0f;
            int i = this.f4098c;
            if ((i != 3) && z) {
                this.f4115t.touchAnimateTo(i, ((double) progress) >= 0.5d ? 1.0f : 0.0f, f2);
            }
        }
    }

    /* renamed from: y */
    public void m2092y(int id) {
        this.f4099d = id;
    }

    /* renamed from: z */
    public void m2093z(int autoCompleteMode) {
        this.f4095F = autoCompleteMode;
    }

    public C0484a(MotionLayout layout, OnSwipe onSwipe) {
        this.f4096a = 0;
        this.f4097b = 0;
        this.f4098c = 0;
        this.f4099d = -1;
        this.f4100e = -1;
        this.f4101f = -1;
        this.f4102g = 0.5f;
        this.f4103h = 0.5f;
        this.f4104i = 0.5f;
        this.f4105j = 0.5f;
        this.f4106k = -1;
        this.f4107l = false;
        this.f4108m = 0.0f;
        this.f4109n = 1.0f;
        this.f4110o = false;
        this.f4111p = new float[2];
        this.f4112q = new int[2];
        this.f4116u = 4.0f;
        this.f4117v = 1.2f;
        this.f4118w = true;
        this.f4119x = 1.0f;
        this.f4120y = 0;
        this.f4121z = 10.0f;
        this.f4090A = 10.0f;
        this.f4091B = 1.0f;
        this.f4092C = Float.NaN;
        this.f4093D = Float.NaN;
        this.f4094E = 0;
        this.f4095F = 0;
        this.f4115t = layout;
        this.f4099d = onSwipe.getTouchAnchorId();
        int touchAnchorSide = onSwipe.getTouchAnchorSide();
        this.f4096a = touchAnchorSide;
        if (touchAnchorSide != -1) {
            float[] fArr = f4070K[touchAnchorSide];
            this.f4103h = fArr[0];
            this.f4102g = fArr[1];
        }
        int dragDirection = onSwipe.getDragDirection();
        this.f4097b = dragDirection;
        float[][] fArr2 = f4071L;
        if (dragDirection < fArr2.length) {
            float[] fArr3 = fArr2[dragDirection];
            this.f4108m = fArr3[0];
            this.f4109n = fArr3[1];
        } else {
            this.f4109n = Float.NaN;
            this.f4108m = Float.NaN;
            this.f4107l = true;
        }
        this.f4116u = onSwipe.getMaxVelocity();
        this.f4117v = onSwipe.getMaxAcceleration();
        this.f4118w = onSwipe.getMoveWhenScrollAtTop();
        this.f4119x = onSwipe.getDragScale();
        this.f4121z = onSwipe.getDragThreshold();
        this.f4100e = onSwipe.getTouchRegionId();
        this.f4098c = onSwipe.getOnTouchUp();
        this.f4120y = onSwipe.getNestedScrollFlags();
        this.f4101f = onSwipe.getLimitBoundsTo();
        this.f4106k = onSwipe.getRotationCenterId();
        this.f4094E = onSwipe.getSpringBoundary();
        this.f4090A = onSwipe.getSpringDamping();
        this.f4091B = onSwipe.getSpringMass();
        this.f4092C = onSwipe.getSpringStiffness();
        this.f4093D = onSwipe.getSpringStopThreshold();
        this.f4095F = onSwipe.getAutoCompleteMode();
    }
}
