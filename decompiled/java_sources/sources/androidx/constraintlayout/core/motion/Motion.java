package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.key.MotionKey;
import androidx.constraintlayout.core.motion.key.MotionKeyAttributes;
import androidx.constraintlayout.core.motion.key.MotionKeyCycle;
import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.key.MotionKeyTimeCycle;
import androidx.constraintlayout.core.motion.key.MotionKeyTrigger;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.DifferentialInterpolator;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.FloatRect;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.KeyCycleOscillator;
import androidx.constraintlayout.core.motion.utils.KeyFrameArray;
import androidx.constraintlayout.core.motion.utils.Rect;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.motion.utils.Utils;
import androidx.constraintlayout.core.motion.utils.VelocityMatrix;
import androidx.constraintlayout.core.motion.utils.ViewState;
import com.sunia.HTREnginev2.apj;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class Motion implements TypedValues {
    public static final int DRAW_PATH_AS_CONFIGURED = 4;
    public static final int DRAW_PATH_BASIC = 1;
    public static final int DRAW_PATH_CARTESIAN = 3;
    public static final int DRAW_PATH_NONE = 0;
    public static final int DRAW_PATH_RECTANGLE = 5;
    public static final int DRAW_PATH_RELATIVE = 2;
    public static final int DRAW_PATH_SCREEN = 6;
    public static final int HORIZONTAL_PATH_X = 2;
    public static final int HORIZONTAL_PATH_Y = 3;

    /* renamed from: M */
    public static final String f2688M = "MotionController";

    /* renamed from: N */
    public static final boolean f2689N = false;

    /* renamed from: O */
    public static final boolean f2690O = false;

    /* renamed from: P */
    public static final int f2691P = 0;
    public static final int PATH_PERCENT = 0;
    public static final int PATH_PERPENDICULAR = 1;

    /* renamed from: Q */
    public static final int f2692Q = 1;

    /* renamed from: R */
    public static final int f2693R = 2;
    public static final int ROTATION_LEFT = 2;
    public static final int ROTATION_RIGHT = 1;

    /* renamed from: S */
    public static final int f2694S = 3;

    /* renamed from: T */
    public static final int f2695T = 4;

    /* renamed from: U */
    public static final int f2696U = 5;

    /* renamed from: V */
    public static final int f2697V = -1;
    public static final int VERTICAL_PATH_X = 4;
    public static final int VERTICAL_PATH_Y = 5;

    /* renamed from: W */
    public static final int f2698W = -2;

    /* renamed from: X */
    public static final int f2699X = -3;

    /* renamed from: A */
    public HashMap<String, TimeCycleSplineSet> f2700A;

    /* renamed from: B */
    public HashMap<String, SplineSet> f2701B;

    /* renamed from: C */
    public HashMap<String, KeyCycleOscillator> f2702C;

    /* renamed from: D */
    public MotionKeyTrigger[] f2703D;

    /* renamed from: L */
    public String[] f2711L;

    /* renamed from: b */
    public MotionWidget f2713b;

    /* renamed from: c */
    public int f2714c;

    /* renamed from: d */
    public String f2715d;

    /* renamed from: j */
    public CurveFit[] f2721j;

    /* renamed from: k */
    public CurveFit f2722k;

    /* renamed from: o */
    public float f2726o;

    /* renamed from: p */
    public float f2727p;

    /* renamed from: q */
    public int[] f2728q;

    /* renamed from: r */
    public double[] f2729r;

    /* renamed from: s */
    public double[] f2730s;

    /* renamed from: t */
    public String[] f2731t;

    /* renamed from: u */
    public int[] f2732u;

    /* renamed from: a */
    public Rect f2712a = new Rect();

    /* renamed from: e */
    public int f2716e = -1;

    /* renamed from: f */
    public MotionPaths f2717f = new MotionPaths();

    /* renamed from: g */
    public MotionPaths f2718g = new MotionPaths();

    /* renamed from: h */
    public apj f2719h = new apj();

    /* renamed from: i */
    public apj f2720i = new apj();

    /* renamed from: l */
    public float f2723l = Float.NaN;

    /* renamed from: m */
    public float f2724m = 0.0f;

    /* renamed from: n */
    public float f2725n = 1.0f;

    /* renamed from: v */
    public int f2733v = 4;

    /* renamed from: w */
    public float[] f2734w = new float[4];

    /* renamed from: x */
    public ArrayList<MotionPaths> f2735x = new ArrayList<>();

    /* renamed from: y */
    public float[] f2736y = new float[1];

    /* renamed from: z */
    public ArrayList<MotionKey> f2737z = new ArrayList<>();

    /* renamed from: E */
    public int f2704E = -1;

    /* renamed from: F */
    public int f2705F = -1;

    /* renamed from: G */
    public MotionWidget f2706G = null;

    /* renamed from: H */
    public int f2707H = -1;

    /* renamed from: I */
    public float f2708I = Float.NaN;

    /* renamed from: J */
    public DifferentialInterpolator f2709J = null;

    /* renamed from: K */
    public boolean f2710K = false;

    /* renamed from: androidx.constraintlayout.core.motion.Motion$a */
    /* loaded from: classes3.dex */
    public static class C0391a implements DifferentialInterpolator {

        /* renamed from: a */
        public float f2738a;

        /* renamed from: b */
        public final /* synthetic */ Easing f2739b;

        public C0391a(Easing easing) {
            this.f2739b = easing;
        }

        @Override // androidx.constraintlayout.core.motion.utils.DifferentialInterpolator
        public float getInterpolation(float f) {
            this.f2738a = f;
            return (float) this.f2739b.get(f);
        }

        @Override // androidx.constraintlayout.core.motion.utils.DifferentialInterpolator
        public float getVelocity() {
            return (float) this.f2739b.getDiff(this.f2738a);
        }
    }

    public Motion(MotionWidget motionWidget) {
        setView(motionWidget);
    }

    /* renamed from: i */
    public static DifferentialInterpolator m1418i(int i, String str, int i2) {
        if (i != -1) {
            return null;
        }
        return new C0391a(Easing.getInterpolator(str));
    }

    /* renamed from: a */
    public void m1419a(ArrayList<MotionKey> arrayList) {
        this.f2737z.addAll(arrayList);
    }

    public void addKey(MotionKey motionKey) {
        this.f2737z.add(motionKey);
    }

    /* renamed from: b */
    public void m1420b(float[] fArr, int i) {
        float f = 1.0f / (i - 1);
        HashMap<String, SplineSet> hashMap = this.f2701B;
        if (hashMap != null) {
            hashMap.get("translationX");
        }
        HashMap<String, SplineSet> hashMap2 = this.f2701B;
        if (hashMap2 != null) {
            hashMap2.get("translationY");
        }
        HashMap<String, KeyCycleOscillator> hashMap3 = this.f2702C;
        if (hashMap3 != null) {
            hashMap3.get("translationX");
        }
        HashMap<String, KeyCycleOscillator> hashMap4 = this.f2702C;
        if (hashMap4 != null) {
            hashMap4.get("translationY");
        }
        for (int i2 = 0; i2 < i; i2++) {
            float f2 = i2 * f;
            float f3 = this.f2725n;
            float f4 = 0.0f;
            if (f3 != 1.0f) {
                float f5 = this.f2724m;
                if (f2 < f5) {
                    f2 = 0.0f;
                }
                if (f2 > f5 && f2 < 1.0d) {
                    f2 = Math.min((f2 - f5) * f3, 1.0f);
                }
            }
            double d = f2;
            Easing easing = this.f2717f.f2747e;
            Iterator<MotionPaths> it2 = this.f2735x.iterator();
            float f6 = Float.NaN;
            while (it2.hasNext()) {
                MotionPaths next = it2.next();
                Easing easing2 = next.f2747e;
                if (easing2 != null) {
                    float f7 = next.f2749g;
                    if (f7 < f2) {
                        easing = easing2;
                        f4 = f7;
                    } else if (Float.isNaN(f6)) {
                        f6 = next.f2749g;
                    }
                }
            }
            if (easing != null) {
                if (Float.isNaN(f6)) {
                    f6 = 1.0f;
                }
                d = (((float) easing.get((f2 - f4) / r12)) * (f6 - f4)) + f4;
            }
            this.f2721j[0].getPos(d, this.f2729r);
            CurveFit curveFit = this.f2722k;
            if (curveFit != null) {
                double[] dArr = this.f2729r;
                if (dArr.length > 0) {
                    curveFit.getPos(d, dArr);
                }
            }
            this.f2717f.m1443d(this.f2728q, this.f2729r, fArr, i2 * 2);
        }
    }

    public int buildKeyFrames(float[] fArr, int[] iArr, int[] iArr2) {
        if (fArr == null) {
            return 0;
        }
        double[] timePoints = this.f2721j[0].getTimePoints();
        if (iArr != null) {
            Iterator<MotionPaths> it2 = this.f2735x.iterator();
            int i = 0;
            while (it2.hasNext()) {
                iArr[i] = it2.next().f2762t;
                i++;
            }
        }
        if (iArr2 != null) {
            Iterator<MotionPaths> it3 = this.f2735x.iterator();
            int i2 = 0;
            while (it3.hasNext()) {
                iArr2[i2] = (int) (it3.next().f2750h * 100.0f);
                i2++;
            }
        }
        int i3 = 0;
        for (int i4 = 0; i4 < timePoints.length; i4++) {
            this.f2721j[0].getPos(timePoints[i4], this.f2729r);
            this.f2717f.m1444e(timePoints[i4], this.f2728q, this.f2729r, fArr, i3);
            i3 += 2;
        }
        return i3 / 2;
    }

    public void buildPath(float[] fArr, int i) {
        double d;
        float f = 1.0f;
        float f2 = 1.0f / (i - 1);
        HashMap<String, SplineSet> hashMap = this.f2701B;
        SplineSet splineSet = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, SplineSet> hashMap2 = this.f2701B;
        SplineSet splineSet2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, KeyCycleOscillator> hashMap3 = this.f2702C;
        KeyCycleOscillator keyCycleOscillator = hashMap3 == null ? null : hashMap3.get("translationX");
        HashMap<String, KeyCycleOscillator> hashMap4 = this.f2702C;
        KeyCycleOscillator keyCycleOscillator2 = hashMap4 != null ? hashMap4.get("translationY") : null;
        int i2 = 0;
        while (i2 < i) {
            float f3 = i2 * f2;
            float f4 = this.f2725n;
            float f5 = 0.0f;
            if (f4 != f) {
                float f6 = this.f2724m;
                if (f3 < f6) {
                    f3 = 0.0f;
                }
                if (f3 > f6 && f3 < 1.0d) {
                    f3 = Math.min((f3 - f6) * f4, f);
                }
            }
            float f7 = f3;
            double d2 = f7;
            Easing easing = this.f2717f.f2747e;
            Iterator<MotionPaths> it2 = this.f2735x.iterator();
            float f8 = Float.NaN;
            while (it2.hasNext()) {
                MotionPaths next = it2.next();
                Easing easing2 = next.f2747e;
                double d3 = d2;
                if (easing2 != null) {
                    float f9 = next.f2749g;
                    if (f9 < f7) {
                        f5 = f9;
                        easing = easing2;
                    } else if (Float.isNaN(f8)) {
                        f8 = next.f2749g;
                    }
                }
                d2 = d3;
            }
            double d4 = d2;
            if (easing != null) {
                if (Float.isNaN(f8)) {
                    f8 = 1.0f;
                }
                d = (((float) easing.get((f7 - f5) / r16)) * (f8 - f5)) + f5;
            } else {
                d = d4;
            }
            this.f2721j[0].getPos(d, this.f2729r);
            CurveFit curveFit = this.f2722k;
            if (curveFit != null) {
                double[] dArr = this.f2729r;
                if (dArr.length > 0) {
                    curveFit.getPos(d, dArr);
                }
            }
            int i3 = i2 * 2;
            int i4 = i2;
            this.f2717f.m1444e(d, this.f2728q, this.f2729r, fArr, i3);
            if (keyCycleOscillator != null) {
                fArr[i3] = fArr[i3] + keyCycleOscillator.get(f7);
            } else if (splineSet != null) {
                fArr[i3] = fArr[i3] + splineSet.get(f7);
            }
            if (keyCycleOscillator2 != null) {
                int i5 = i3 + 1;
                fArr[i5] = fArr[i5] + keyCycleOscillator2.get(f7);
            } else if (splineSet2 != null) {
                int i6 = i3 + 1;
                fArr[i6] = fArr[i6] + splineSet2.get(f7);
            }
            i2 = i4 + 1;
            f = 1.0f;
        }
    }

    public void buildRect(float f, float[] fArr, int i) {
        this.f2721j[0].getPos(m1424f(f, null), this.f2729r);
        this.f2717f.m1449j(this.f2728q, this.f2729r, fArr, i);
    }

    /* renamed from: c */
    public int m1421c(float[] fArr, int[] iArr) {
        if (fArr == null) {
            return 0;
        }
        double[] timePoints = this.f2721j[0].getTimePoints();
        if (iArr != null) {
            Iterator<MotionPaths> it2 = this.f2735x.iterator();
            int i = 0;
            while (it2.hasNext()) {
                iArr[i] = it2.next().f2762t;
                i++;
            }
        }
        int i2 = 0;
        for (double d : timePoints) {
            this.f2721j[0].getPos(d, this.f2729r);
            this.f2717f.m1443d(this.f2728q, this.f2729r, fArr, i2);
            i2 += 2;
        }
        return i2 / 2;
    }

    /* renamed from: d */
    public void m1422d(float[] fArr, int i) {
        float f = 1.0f / (i - 1);
        for (int i2 = 0; i2 < i; i2++) {
            this.f2721j[0].getPos(m1424f(i2 * f, null), this.f2729r);
            this.f2717f.m1449j(this.f2728q, this.f2729r, fArr, i2 * 8);
        }
    }

    /* renamed from: e */
    public void m1423e(boolean z) {
    }

    /* renamed from: f */
    public final float m1424f(float f, float[] fArr) {
        float f2 = 0.0f;
        if (fArr != null) {
            fArr[0] = 1.0f;
        } else {
            float f3 = this.f2725n;
            if (f3 != 1.0d) {
                float f4 = this.f2724m;
                if (f < f4) {
                    f = 0.0f;
                }
                if (f > f4 && f < 1.0d) {
                    f = Math.min((f - f4) * f3, 1.0f);
                }
            }
        }
        Easing easing = this.f2717f.f2747e;
        Iterator<MotionPaths> it2 = this.f2735x.iterator();
        float f5 = Float.NaN;
        while (it2.hasNext()) {
            MotionPaths next = it2.next();
            Easing easing2 = next.f2747e;
            if (easing2 != null) {
                float f6 = next.f2749g;
                if (f6 < f) {
                    easing = easing2;
                    f2 = f6;
                } else if (Float.isNaN(f5)) {
                    f5 = next.f2749g;
                }
            }
        }
        if (easing == null) {
            return f;
        }
        float f7 = (Float.isNaN(f5) ? 1.0f : f5) - f2;
        double d = (f - f2) / f7;
        float f8 = f2 + (((float) easing.get(d)) * f7);
        if (fArr != null) {
            fArr[0] = (float) easing.getDiff(d);
        }
        return f8;
    }

    /* renamed from: g */
    public int m1425g(String str, float[] fArr, int i) {
        SplineSet splineSet = this.f2701B.get(str);
        if (splineSet == null) {
            return -1;
        }
        for (int i2 = 0; i2 < fArr.length; i2++) {
            fArr[i2] = splineSet.get(i2 / (fArr.length - 1));
        }
        return fArr.length;
    }

    public int getAnimateRelativeTo() {
        return this.f2717f.f2758p;
    }

    public void getCenter(double d, float[] fArr, float[] fArr2) {
        double[] dArr = new double[4];
        double[] dArr2 = new double[4];
        this.f2721j[0].getPos(d, dArr);
        this.f2721j[0].getSlope(d, dArr2);
        Arrays.fill(fArr2, 0.0f);
        this.f2717f.m1445f(d, this.f2728q, dArr, fArr, dArr2, fArr2);
    }

    public float getCenterX() {
        return this.f2726o;
    }

    public float getCenterY() {
        return this.f2727p;
    }

    public int getDrawPath() {
        int i = this.f2717f.f2748f;
        Iterator<MotionPaths> it2 = this.f2735x.iterator();
        while (it2.hasNext()) {
            i = Math.max(i, it2.next().f2748f);
        }
        return Math.max(i, this.f2718g.f2748f);
    }

    public float getFinalHeight() {
        return this.f2718g.f2754l;
    }

    public float getFinalWidth() {
        return this.f2718g.f2753k;
    }

    public float getFinalX() {
        return this.f2718g.f2751i;
    }

    public float getFinalY() {
        return this.f2718g.f2752j;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        return 0;
    }

    public MotionPaths getKeyFrame(int i) {
        return this.f2735x.get(i);
    }

    public int getKeyFrameInfo(int i, int[] iArr) {
        float[] fArr = new float[2];
        Iterator<MotionKey> it2 = this.f2737z.iterator();
        int i2 = 0;
        int i3 = 0;
        while (it2.hasNext()) {
            MotionKey next = it2.next();
            int i4 = next.mType;
            if (i4 == i || i != -1) {
                iArr[i3] = 0;
                int i5 = i3 + 1;
                iArr[i5] = i4;
                int i6 = i5 + 1;
                int i7 = next.mFramePosition;
                iArr[i6] = i7;
                double d = i7 / 100.0f;
                this.f2721j[0].getPos(d, this.f2729r);
                this.f2717f.m1444e(d, this.f2728q, this.f2729r, fArr, 0);
                int i8 = i6 + 1;
                iArr[i8] = Float.floatToIntBits(fArr[0]);
                int i9 = i8 + 1;
                iArr[i9] = Float.floatToIntBits(fArr[1]);
                if (next instanceof MotionKeyPosition) {
                    MotionKeyPosition motionKeyPosition = (MotionKeyPosition) next;
                    int i10 = i9 + 1;
                    iArr[i10] = motionKeyPosition.mPositionType;
                    int i11 = i10 + 1;
                    iArr[i11] = Float.floatToIntBits(motionKeyPosition.mPercentX);
                    i9 = i11 + 1;
                    iArr[i9] = Float.floatToIntBits(motionKeyPosition.mPercentY);
                }
                int i12 = i9 + 1;
                iArr[i3] = i12 - i3;
                i2++;
                i3 = i12;
            }
        }
        return i2;
    }

    public int getKeyFramePositions(int[] iArr, float[] fArr) {
        Iterator<MotionKey> it2 = this.f2737z.iterator();
        int i = 0;
        int i2 = 0;
        while (it2.hasNext()) {
            MotionKey next = it2.next();
            int i3 = next.mFramePosition;
            iArr[i] = (next.mType * 1000) + i3;
            double d = i3 / 100.0f;
            this.f2721j[0].getPos(d, this.f2729r);
            this.f2717f.m1444e(d, this.f2728q, this.f2729r, fArr, i2);
            i2 += 2;
            i++;
        }
        return i;
    }

    public float getStartHeight() {
        return this.f2717f.f2754l;
    }

    public float getStartWidth() {
        return this.f2717f.f2753k;
    }

    public float getStartX() {
        return this.f2717f.f2751i;
    }

    public float getStartY() {
        return this.f2717f.f2752j;
    }

    public int getTransformPivotTarget() {
        return this.f2705F;
    }

    public MotionWidget getView() {
        return this.f2713b;
    }

    /* renamed from: h */
    public void m1426h(float f, float f2, float f3, float[] fArr) {
        double[] dArr;
        float m1424f = m1424f(f, this.f2736y);
        CurveFit[] curveFitArr = this.f2721j;
        int i = 0;
        if (curveFitArr == null) {
            MotionPaths motionPaths = this.f2718g;
            float f4 = motionPaths.f2751i;
            MotionPaths motionPaths2 = this.f2717f;
            float f5 = f4 - motionPaths2.f2751i;
            float f6 = motionPaths.f2752j - motionPaths2.f2752j;
            float f7 = (motionPaths.f2753k - motionPaths2.f2753k) + f5;
            float f8 = (motionPaths.f2754l - motionPaths2.f2754l) + f6;
            fArr[0] = (f5 * (1.0f - f2)) + (f7 * f2);
            fArr[1] = (f6 * (1.0f - f3)) + (f8 * f3);
            return;
        }
        double d = m1424f;
        curveFitArr[0].getSlope(d, this.f2730s);
        this.f2721j[0].getPos(d, this.f2729r);
        float f9 = this.f2736y[0];
        while (true) {
            dArr = this.f2730s;
            if (i >= dArr.length) {
                break;
            }
            dArr[i] = dArr[i] * f9;
            i++;
        }
        CurveFit curveFit = this.f2722k;
        if (curveFit == null) {
            this.f2717f.m1456q(f2, f3, fArr, this.f2728q, dArr, this.f2729r);
            return;
        }
        double[] dArr2 = this.f2729r;
        if (dArr2.length > 0) {
            curveFit.getPos(d, dArr2);
            this.f2722k.getSlope(d, this.f2730s);
            this.f2717f.m1456q(f2, f3, fArr, this.f2728q, this.f2730s, this.f2729r);
        }
    }

    public boolean interpolate(MotionWidget motionWidget, float f, long j, KeyCache keyCache) {
        double d;
        float m1424f = m1424f(f, null);
        int i = this.f2707H;
        if (i != -1) {
            float f2 = 1.0f / i;
            float floor = ((float) Math.floor(m1424f / f2)) * f2;
            float f3 = (m1424f % f2) / f2;
            if (!Float.isNaN(this.f2708I)) {
                f3 = (f3 + this.f2708I) % 1.0f;
            }
            DifferentialInterpolator differentialInterpolator = this.f2709J;
            m1424f = ((differentialInterpolator != null ? differentialInterpolator.getInterpolation(f3) : ((double) f3) > 0.5d ? 1.0f : 0.0f) * f2) + floor;
        }
        float f4 = m1424f;
        HashMap<String, SplineSet> hashMap = this.f2701B;
        if (hashMap != null) {
            Iterator<SplineSet> it2 = hashMap.values().iterator();
            while (it2.hasNext()) {
                it2.next().setProperty(motionWidget, f4);
            }
        }
        CurveFit[] curveFitArr = this.f2721j;
        if (curveFitArr != null) {
            double d2 = f4;
            curveFitArr[0].getPos(d2, this.f2729r);
            this.f2721j[0].getSlope(d2, this.f2730s);
            CurveFit curveFit = this.f2722k;
            if (curveFit != null) {
                double[] dArr = this.f2729r;
                if (dArr.length > 0) {
                    curveFit.getPos(d2, dArr);
                    this.f2722k.getSlope(d2, this.f2730s);
                }
            }
            if (this.f2710K) {
                d = d2;
            } else {
                d = d2;
                this.f2717f.m1457r(f4, motionWidget, this.f2728q, this.f2729r, this.f2730s, null);
            }
            if (this.f2705F != -1) {
                if (this.f2706G == null) {
                    this.f2706G = motionWidget.getParent().findViewById(this.f2705F);
                }
                if (this.f2706G != null) {
                    float top = (r1.getTop() + this.f2706G.getBottom()) / 2.0f;
                    float left = (this.f2706G.getLeft() + this.f2706G.getRight()) / 2.0f;
                    if (motionWidget.getRight() - motionWidget.getLeft() > 0 && motionWidget.getBottom() - motionWidget.getTop() > 0) {
                        motionWidget.setPivotX(left - motionWidget.getLeft());
                        motionWidget.setPivotY(top - motionWidget.getTop());
                    }
                }
            }
            int i2 = 1;
            while (true) {
                CurveFit[] curveFitArr2 = this.f2721j;
                if (i2 >= curveFitArr2.length) {
                    break;
                }
                curveFitArr2[i2].getPos(d, this.f2734w);
                this.f2717f.f2761s.get(this.f2731t[i2 - 1]).setInterpolatedValue(motionWidget, this.f2734w);
                i2++;
            }
            apj apjVar = this.f2719h;
            if (apjVar.f64947f == 0) {
                if (f4 <= 0.0f) {
                    motionWidget.setVisibility(apjVar.f64948g);
                } else if (f4 >= 1.0f) {
                    motionWidget.setVisibility(this.f2720i.f64948g);
                } else if (this.f2720i.f64948g != apjVar.f64948g) {
                    motionWidget.setVisibility(4);
                }
            }
            if (this.f2703D != null) {
                int i3 = 0;
                while (true) {
                    MotionKeyTrigger[] motionKeyTriggerArr = this.f2703D;
                    if (i3 >= motionKeyTriggerArr.length) {
                        break;
                    }
                    motionKeyTriggerArr[i3].conditionallyFire(f4, motionWidget);
                    i3++;
                }
            }
        } else {
            MotionPaths motionPaths = this.f2717f;
            float f5 = motionPaths.f2751i;
            MotionPaths motionPaths2 = this.f2718g;
            float f6 = f5 + ((motionPaths2.f2751i - f5) * f4);
            float f7 = motionPaths.f2752j;
            float f8 = f7 + ((motionPaths2.f2752j - f7) * f4);
            float f9 = motionPaths.f2753k;
            float f10 = f9 + ((motionPaths2.f2753k - f9) * f4);
            float f11 = motionPaths.f2754l;
            float f12 = f6 + 0.5f;
            float f13 = f8 + 0.5f;
            motionWidget.layout((int) f12, (int) f13, (int) (f12 + f10), (int) (f13 + f11 + ((motionPaths2.f2754l - f11) * f4)));
        }
        HashMap<String, KeyCycleOscillator> hashMap2 = this.f2702C;
        if (hashMap2 == null) {
            return false;
        }
        for (KeyCycleOscillator keyCycleOscillator : hashMap2.values()) {
            if (keyCycleOscillator instanceof KeyCycleOscillator.PathRotateSet) {
                double[] dArr2 = this.f2730s;
                ((KeyCycleOscillator.PathRotateSet) keyCycleOscillator).setPathRotate(motionWidget, f4, dArr2[0], dArr2[1]);
            } else {
                keyCycleOscillator.setProperty(motionWidget, f4);
            }
        }
        return false;
    }

    /* renamed from: j */
    public float m1427j(int i, float f, float f2) {
        MotionPaths motionPaths = this.f2718g;
        float f3 = motionPaths.f2751i;
        MotionPaths motionPaths2 = this.f2717f;
        float f4 = motionPaths2.f2751i;
        float f5 = f3 - f4;
        float f6 = motionPaths.f2752j;
        float f7 = motionPaths2.f2752j;
        float f8 = f6 - f7;
        float f9 = f4 + (motionPaths2.f2753k / 2.0f);
        float f10 = f7 + (motionPaths2.f2754l / 2.0f);
        float hypot = (float) Math.hypot(f5, f8);
        if (hypot < 1.0E-7d) {
            return Float.NaN;
        }
        float f11 = f - f9;
        float f12 = f2 - f10;
        if (((float) Math.hypot(f11, f12)) == 0.0f) {
            return 0.0f;
        }
        float f13 = (f11 * f5) + (f12 * f8);
        if (i == 0) {
            return f13 / hypot;
        }
        if (i == 1) {
            return (float) Math.sqrt((hypot * hypot) - (f13 * f13));
        }
        if (i == 2) {
            return f11 / f5;
        }
        if (i == 3) {
            return f12 / f5;
        }
        if (i == 4) {
            return f11 / f8;
        }
        if (i != 5) {
            return 0.0f;
        }
        return f12 / f8;
    }

    /* renamed from: k */
    public double[] m1428k(double d) {
        this.f2721j[0].getPos(d, this.f2729r);
        CurveFit curveFit = this.f2722k;
        if (curveFit != null) {
            double[] dArr = this.f2729r;
            if (dArr.length > 0) {
                curveFit.getPos(d, dArr);
            }
        }
        return this.f2729r;
    }

    /* renamed from: l */
    public MotionKeyPosition m1429l(int i, int i2, float f, float f2) {
        FloatRect floatRect = new FloatRect();
        MotionPaths motionPaths = this.f2717f;
        float f3 = motionPaths.f2751i;
        floatRect.left = f3;
        float f4 = motionPaths.f2752j;
        floatRect.top = f4;
        floatRect.right = f3 + motionPaths.f2753k;
        floatRect.bottom = f4 + motionPaths.f2754l;
        FloatRect floatRect2 = new FloatRect();
        MotionPaths motionPaths2 = this.f2718g;
        float f5 = motionPaths2.f2751i;
        floatRect2.left = f5;
        float f6 = motionPaths2.f2752j;
        floatRect2.top = f6;
        floatRect2.right = f5 + motionPaths2.f2753k;
        floatRect2.bottom = f6 + motionPaths2.f2754l;
        Iterator<MotionKey> it2 = this.f2737z.iterator();
        while (it2.hasNext()) {
            MotionKey next = it2.next();
            if (next instanceof MotionKeyPosition) {
                MotionKeyPosition motionKeyPosition = (MotionKeyPosition) next;
                if (motionKeyPosition.intersects(i, i2, floatRect, floatRect2, f, f2)) {
                    return motionKeyPosition;
                }
            }
        }
        return null;
    }

    /* renamed from: m */
    public void m1430m(float f, int i, int i2, float f2, float f3, float[] fArr) {
        float m1424f = m1424f(f, this.f2736y);
        HashMap<String, SplineSet> hashMap = this.f2701B;
        SplineSet splineSet = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, SplineSet> hashMap2 = this.f2701B;
        SplineSet splineSet2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, SplineSet> hashMap3 = this.f2701B;
        SplineSet splineSet3 = hashMap3 == null ? null : hashMap3.get("rotationZ");
        HashMap<String, SplineSet> hashMap4 = this.f2701B;
        SplineSet splineSet4 = hashMap4 == null ? null : hashMap4.get("scaleX");
        HashMap<String, SplineSet> hashMap5 = this.f2701B;
        SplineSet splineSet5 = hashMap5 == null ? null : hashMap5.get("scaleY");
        HashMap<String, KeyCycleOscillator> hashMap6 = this.f2702C;
        KeyCycleOscillator keyCycleOscillator = hashMap6 == null ? null : hashMap6.get("translationX");
        HashMap<String, KeyCycleOscillator> hashMap7 = this.f2702C;
        KeyCycleOscillator keyCycleOscillator2 = hashMap7 == null ? null : hashMap7.get("translationY");
        HashMap<String, KeyCycleOscillator> hashMap8 = this.f2702C;
        KeyCycleOscillator keyCycleOscillator3 = hashMap8 == null ? null : hashMap8.get("rotationZ");
        HashMap<String, KeyCycleOscillator> hashMap9 = this.f2702C;
        KeyCycleOscillator keyCycleOscillator4 = hashMap9 == null ? null : hashMap9.get("scaleX");
        HashMap<String, KeyCycleOscillator> hashMap10 = this.f2702C;
        KeyCycleOscillator keyCycleOscillator5 = hashMap10 != null ? hashMap10.get("scaleY") : null;
        VelocityMatrix velocityMatrix = new VelocityMatrix();
        velocityMatrix.clear();
        velocityMatrix.setRotationVelocity(splineSet3, m1424f);
        velocityMatrix.setTranslationVelocity(splineSet, splineSet2, m1424f);
        velocityMatrix.setScaleVelocity(splineSet4, splineSet5, m1424f);
        velocityMatrix.setRotationVelocity(keyCycleOscillator3, m1424f);
        velocityMatrix.setTranslationVelocity(keyCycleOscillator, keyCycleOscillator2, m1424f);
        velocityMatrix.setScaleVelocity(keyCycleOscillator4, keyCycleOscillator5, m1424f);
        CurveFit curveFit = this.f2722k;
        if (curveFit != null) {
            double[] dArr = this.f2729r;
            if (dArr.length > 0) {
                double d = m1424f;
                curveFit.getPos(d, dArr);
                this.f2722k.getSlope(d, this.f2730s);
                this.f2717f.m1456q(f2, f3, fArr, this.f2728q, this.f2730s, this.f2729r);
            }
            velocityMatrix.applyTransform(f2, f3, i, i2, fArr);
            return;
        }
        int i3 = 0;
        if (this.f2721j == null) {
            MotionPaths motionPaths = this.f2718g;
            float f4 = motionPaths.f2751i;
            MotionPaths motionPaths2 = this.f2717f;
            float f5 = f4 - motionPaths2.f2751i;
            KeyCycleOscillator keyCycleOscillator6 = keyCycleOscillator5;
            float f6 = motionPaths.f2752j - motionPaths2.f2752j;
            KeyCycleOscillator keyCycleOscillator7 = keyCycleOscillator4;
            float f7 = (motionPaths.f2753k - motionPaths2.f2753k) + f5;
            float f8 = (motionPaths.f2754l - motionPaths2.f2754l) + f6;
            fArr[0] = (f5 * (1.0f - f2)) + (f7 * f2);
            fArr[1] = (f6 * (1.0f - f3)) + (f8 * f3);
            velocityMatrix.clear();
            velocityMatrix.setRotationVelocity(splineSet3, m1424f);
            velocityMatrix.setTranslationVelocity(splineSet, splineSet2, m1424f);
            velocityMatrix.setScaleVelocity(splineSet4, splineSet5, m1424f);
            velocityMatrix.setRotationVelocity(keyCycleOscillator3, m1424f);
            velocityMatrix.setTranslationVelocity(keyCycleOscillator, keyCycleOscillator2, m1424f);
            velocityMatrix.setScaleVelocity(keyCycleOscillator7, keyCycleOscillator6, m1424f);
            velocityMatrix.applyTransform(f2, f3, i, i2, fArr);
            return;
        }
        double m1424f2 = m1424f(m1424f, this.f2736y);
        this.f2721j[0].getSlope(m1424f2, this.f2730s);
        this.f2721j[0].getPos(m1424f2, this.f2729r);
        float f9 = this.f2736y[0];
        while (true) {
            double[] dArr2 = this.f2730s;
            if (i3 >= dArr2.length) {
                this.f2717f.m1456q(f2, f3, fArr, this.f2728q, dArr2, this.f2729r);
                velocityMatrix.applyTransform(f2, f3, i, i2, fArr);
                return;
            } else {
                dArr2[i3] = dArr2[i3] * f9;
                i3++;
            }
        }
    }

    /* renamed from: n */
    public final float m1431n() {
        char c;
        float f;
        float[] fArr = new float[2];
        float f2 = 1.0f / 99;
        double d = 0.0d;
        double d2 = 0.0d;
        float f3 = 0.0f;
        int i = 0;
        while (i < 100) {
            float f4 = i * f2;
            double d3 = f4;
            Easing easing = this.f2717f.f2747e;
            Iterator<MotionPaths> it2 = this.f2735x.iterator();
            float f5 = Float.NaN;
            float f6 = 0.0f;
            while (it2.hasNext()) {
                MotionPaths next = it2.next();
                Easing easing2 = next.f2747e;
                if (easing2 != null) {
                    float f7 = next.f2749g;
                    if (f7 < f4) {
                        easing = easing2;
                        f6 = f7;
                    } else if (Float.isNaN(f5)) {
                        f5 = next.f2749g;
                    }
                }
            }
            if (easing != null) {
                if (Float.isNaN(f5)) {
                    f5 = 1.0f;
                }
                d3 = (((float) easing.get((f4 - f6) / r17)) * (f5 - f6)) + f6;
            }
            this.f2721j[0].getPos(d3, this.f2729r);
            float f8 = f3;
            int i2 = i;
            this.f2717f.m1444e(d3, this.f2728q, this.f2729r, fArr, 0);
            if (i2 > 0) {
                c = 0;
                f = (float) (f8 + Math.hypot(d2 - fArr[1], d - fArr[0]));
            } else {
                c = 0;
                f = f8;
            }
            d = fArr[c];
            i = i2 + 1;
            f3 = f;
            d2 = fArr[1];
        }
        return f3;
    }

    /* renamed from: o */
    public final void m1432o(MotionPaths motionPaths) {
        Iterator<MotionPaths> it2 = this.f2735x.iterator();
        MotionPaths motionPaths2 = null;
        while (it2.hasNext()) {
            MotionPaths next = it2.next();
            if (motionPaths.f2750h == next.f2750h) {
                motionPaths2 = next;
            }
        }
        if (motionPaths2 != null) {
            this.f2735x.remove(motionPaths2);
        }
        if (Collections.binarySearch(this.f2735x, motionPaths) == 0) {
            Utils.loge("MotionController", " KeyPath position \"" + motionPaths.f2750h + "\" outside of range");
        }
        this.f2735x.add((-r0) - 1, motionPaths);
    }

    /* renamed from: p */
    public String m1433p() {
        return this.f2713b.getName();
    }

    /* renamed from: q */
    public void m1434q(MotionWidget motionWidget, MotionKeyPosition motionKeyPosition, float f, float f2, String[] strArr, float[] fArr) {
        FloatRect floatRect = new FloatRect();
        MotionPaths motionPaths = this.f2717f;
        float f3 = motionPaths.f2751i;
        floatRect.left = f3;
        float f4 = motionPaths.f2752j;
        floatRect.top = f4;
        floatRect.right = f3 + motionPaths.f2753k;
        floatRect.bottom = f4 + motionPaths.f2754l;
        FloatRect floatRect2 = new FloatRect();
        MotionPaths motionPaths2 = this.f2718g;
        float f5 = motionPaths2.f2751i;
        floatRect2.left = f5;
        float f6 = motionPaths2.f2752j;
        floatRect2.top = f6;
        floatRect2.right = f5 + motionPaths2.f2753k;
        floatRect2.bottom = f6 + motionPaths2.f2754l;
        motionKeyPosition.positionAttributes(motionWidget, floatRect, floatRect2, f, f2, strArr, fArr);
    }

    /* renamed from: r */
    public final void m1435r(MotionPaths motionPaths) {
        motionPaths.m1455p(this.f2713b.getX(), this.f2713b.getY(), this.f2713b.getWidth(), this.f2713b.getHeight());
    }

    /* renamed from: s */
    public void m1436s(Rect rect, Rect rect2, int i, int i2, int i3) {
        if (i == 1) {
            int i4 = rect.left + rect.right;
            rect2.left = ((rect.top + rect.bottom) - rect.width()) / 2;
            rect2.top = i3 - ((i4 + rect.height()) / 2);
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
            return;
        }
        if (i == 2) {
            int i5 = rect.left + rect.right;
            rect2.left = i2 - (((rect.top + rect.bottom) + rect.width()) / 2);
            rect2.top = (i5 - rect.height()) / 2;
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
            return;
        }
        if (i == 3) {
            int i6 = rect.left + rect.right;
            rect2.left = ((rect.height() / 2) + rect.top) - (i6 / 2);
            rect2.top = i3 - ((i6 + rect.height()) / 2);
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
            return;
        }
        if (i != 4) {
            return;
        }
        int i7 = rect.left + rect.right;
        rect2.left = i2 - (((rect.bottom + rect.top) + rect.width()) / 2);
        rect2.top = (i7 - rect.height()) / 2;
        rect2.right = rect2.left + rect.width();
        rect2.bottom = rect2.top + rect.height();
    }

    public void setDrawPath(int i) {
        this.f2717f.f2748f = i;
    }

    public void setEnd(MotionWidget motionWidget) {
        MotionPaths motionPaths = this.f2718g;
        motionPaths.f2749g = 1.0f;
        motionPaths.f2750h = 1.0f;
        m1435r(motionPaths);
        this.f2718g.m1455p(motionWidget.getLeft(), motionWidget.getTop(), motionWidget.getWidth(), motionWidget.getHeight());
        this.f2718g.applyParameters(motionWidget);
        this.f2720i.m53072l(motionWidget);
    }

    public void setPathMotionArc(int i) {
        this.f2704E = i;
    }

    public void setStart(MotionWidget motionWidget) {
        MotionPaths motionPaths = this.f2717f;
        motionPaths.f2749g = 0.0f;
        motionPaths.f2750h = 0.0f;
        motionPaths.m1455p(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        this.f2717f.applyParameters(motionWidget);
        this.f2719h.m53072l(motionWidget);
    }

    public void setStartState(ViewState viewState, MotionWidget motionWidget, int i, int i2, int i3) {
        MotionPaths motionPaths = this.f2717f;
        motionPaths.f2749g = 0.0f;
        motionPaths.f2750h = 0.0f;
        Rect rect = new Rect();
        if (i == 1) {
            int i4 = viewState.left + viewState.right;
            rect.left = ((viewState.top + viewState.bottom) - viewState.width()) / 2;
            rect.top = i2 - ((i4 + viewState.height()) / 2);
            rect.right = rect.left + viewState.width();
            rect.bottom = rect.top + viewState.height();
        } else if (i == 2) {
            int i5 = viewState.left + viewState.right;
            rect.left = i3 - (((viewState.top + viewState.bottom) + viewState.width()) / 2);
            rect.top = (i5 - viewState.height()) / 2;
            rect.right = rect.left + viewState.width();
            rect.bottom = rect.top + viewState.height();
        }
        this.f2717f.m1455p(rect.left, rect.top, rect.width(), rect.height());
        this.f2719h.m53073m(rect, motionWidget, i, viewState.rotation);
    }

    public void setTransformPivotTarget(int i) {
        this.f2705F = i;
        this.f2706G = null;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, float f) {
        return false;
    }

    public void setView(MotionWidget motionWidget) {
        this.f2713b = motionWidget;
    }

    public void setup(int i, int i2, float f, long j) {
        ArrayList arrayList;
        String[] strArr;
        CustomVariable customVariable;
        SplineSet makeSpline;
        CustomVariable customVariable2;
        Integer num;
        SplineSet makeSpline2;
        CustomVariable customVariable3;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> hashMap = new HashMap<>();
        int i3 = this.f2704E;
        if (i3 != -1) {
            this.f2717f.f2757o = i3;
        }
        this.f2719h.m53065e(this.f2720i, hashSet2);
        ArrayList<MotionKey> arrayList2 = this.f2737z;
        if (arrayList2 != null) {
            Iterator<MotionKey> it2 = arrayList2.iterator();
            arrayList = null;
            while (it2.hasNext()) {
                MotionKey next = it2.next();
                if (next instanceof MotionKeyPosition) {
                    MotionKeyPosition motionKeyPosition = (MotionKeyPosition) next;
                    m1432o(new MotionPaths(i, i2, motionKeyPosition, this.f2717f, this.f2718g));
                    int i4 = motionKeyPosition.mCurveFit;
                    if (i4 != -1) {
                        this.f2716e = i4;
                    }
                } else if (next instanceof MotionKeyCycle) {
                    next.getAttributeNames(hashSet3);
                } else if (next instanceof MotionKeyTimeCycle) {
                    next.getAttributeNames(hashSet);
                } else if (next instanceof MotionKeyTrigger) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((MotionKeyTrigger) next);
                } else {
                    next.setInterpolation(hashMap);
                    next.getAttributeNames(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            this.f2703D = (MotionKeyTrigger[]) arrayList.toArray(new MotionKeyTrigger[0]);
        }
        char c = 1;
        if (!hashSet2.isEmpty()) {
            this.f2701B = new HashMap<>();
            Iterator<String> it3 = hashSet2.iterator();
            while (it3.hasNext()) {
                String next2 = it3.next();
                if (next2.startsWith("CUSTOM,")) {
                    KeyFrameArray.CustomVar customVar = new KeyFrameArray.CustomVar();
                    String str = next2.split(",")[c];
                    Iterator<MotionKey> it4 = this.f2737z.iterator();
                    while (it4.hasNext()) {
                        MotionKey next3 = it4.next();
                        HashMap<String, CustomVariable> hashMap2 = next3.mCustom;
                        if (hashMap2 != null && (customVariable3 = hashMap2.get(str)) != null) {
                            customVar.append(next3.mFramePosition, customVariable3);
                        }
                    }
                    makeSpline2 = SplineSet.makeCustomSplineSet(next2, customVar);
                } else {
                    makeSpline2 = SplineSet.makeSpline(next2, j);
                }
                if (makeSpline2 != null) {
                    makeSpline2.setType(next2);
                    this.f2701B.put(next2, makeSpline2);
                }
                c = 1;
            }
            ArrayList<MotionKey> arrayList3 = this.f2737z;
            if (arrayList3 != null) {
                Iterator<MotionKey> it5 = arrayList3.iterator();
                while (it5.hasNext()) {
                    MotionKey next4 = it5.next();
                    if (next4 instanceof MotionKeyAttributes) {
                        next4.addValues(this.f2701B);
                    }
                }
            }
            this.f2719h.m53061a(this.f2701B, 0);
            this.f2720i.m53061a(this.f2701B, 100);
            for (String str2 : this.f2701B.keySet()) {
                int intValue = (!hashMap.containsKey(str2) || (num = hashMap.get(str2)) == null) ? 0 : num.intValue();
                SplineSet splineSet = this.f2701B.get(str2);
                if (splineSet != null) {
                    splineSet.setup(intValue);
                }
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.f2700A == null) {
                this.f2700A = new HashMap<>();
            }
            Iterator<String> it6 = hashSet.iterator();
            while (it6.hasNext()) {
                String next5 = it6.next();
                if (!this.f2700A.containsKey(next5)) {
                    if (next5.startsWith("CUSTOM,")) {
                        KeyFrameArray.CustomVar customVar2 = new KeyFrameArray.CustomVar();
                        String str3 = next5.split(",")[1];
                        Iterator<MotionKey> it7 = this.f2737z.iterator();
                        while (it7.hasNext()) {
                            MotionKey next6 = it7.next();
                            HashMap<String, CustomVariable> hashMap3 = next6.mCustom;
                            if (hashMap3 != null && (customVariable2 = hashMap3.get(str3)) != null) {
                                customVar2.append(next6.mFramePosition, customVariable2);
                            }
                        }
                        makeSpline = SplineSet.makeCustomSplineSet(next5, customVar2);
                    } else {
                        makeSpline = SplineSet.makeSpline(next5, j);
                    }
                    if (makeSpline != null) {
                        makeSpline.setType(next5);
                    }
                }
            }
            ArrayList<MotionKey> arrayList4 = this.f2737z;
            if (arrayList4 != null) {
                Iterator<MotionKey> it8 = arrayList4.iterator();
                while (it8.hasNext()) {
                    MotionKey next7 = it8.next();
                    if (next7 instanceof MotionKeyTimeCycle) {
                        ((MotionKeyTimeCycle) next7).addTimeValues(this.f2700A);
                    }
                }
            }
            for (String str4 : this.f2700A.keySet()) {
                this.f2700A.get(str4).setup(hashMap.containsKey(str4) ? hashMap.get(str4).intValue() : 0);
            }
        }
        int size = this.f2735x.size() + 2;
        MotionPaths[] motionPathsArr = new MotionPaths[size];
        motionPathsArr[0] = this.f2717f;
        motionPathsArr[size - 1] = this.f2718g;
        if (this.f2735x.size() > 0 && this.f2716e == MotionKey.UNSET) {
            this.f2716e = 0;
        }
        Iterator<MotionPaths> it9 = this.f2735x.iterator();
        int i5 = 1;
        while (it9.hasNext()) {
            motionPathsArr[i5] = it9.next();
            i5++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str5 : this.f2718g.f2761s.keySet()) {
            if (this.f2717f.f2761s.containsKey(str5)) {
                if (!hashSet2.contains("CUSTOM," + str5)) {
                    hashSet4.add(str5);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.f2731t = strArr2;
        this.f2732u = new int[strArr2.length];
        int i6 = 0;
        while (true) {
            strArr = this.f2731t;
            if (i6 >= strArr.length) {
                break;
            }
            String str6 = strArr[i6];
            this.f2732u[i6] = 0;
            int i7 = 0;
            while (true) {
                if (i7 >= size) {
                    break;
                }
                if (motionPathsArr[i7].f2761s.containsKey(str6) && (customVariable = motionPathsArr[i7].f2761s.get(str6)) != null) {
                    int[] iArr = this.f2732u;
                    iArr[i6] = iArr[i6] + customVariable.numberOfInterpolatedValues();
                    break;
                }
                i7++;
            }
            i6++;
        }
        boolean z = motionPathsArr[0].f2757o != -1;
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i8 = 1; i8 < size; i8++) {
            motionPathsArr[i8].m1441b(motionPathsArr[i8 - 1], zArr, this.f2731t, z);
        }
        int i9 = 0;
        for (int i10 = 1; i10 < length; i10++) {
            if (zArr[i10]) {
                i9++;
            }
        }
        this.f2728q = new int[i9];
        int max = Math.max(2, i9);
        this.f2729r = new double[max];
        this.f2730s = new double[max];
        int i11 = 0;
        for (int i12 = 1; i12 < length; i12++) {
            if (zArr[i12]) {
                this.f2728q[i11] = i12;
                i11++;
            }
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, this.f2728q.length);
        double[] dArr2 = new double[size];
        for (int i13 = 0; i13 < size; i13++) {
            motionPathsArr[i13].m1442c(dArr[i13], this.f2728q);
            dArr2[i13] = motionPathsArr[i13].f2749g;
        }
        int i14 = 0;
        while (true) {
            int[] iArr2 = this.f2728q;
            if (i14 >= iArr2.length) {
                break;
            }
            if (iArr2[i14] < MotionPaths.f2743Z.length) {
                String str7 = MotionPaths.f2743Z[this.f2728q[i14]] + " [";
                for (int i15 = 0; i15 < size; i15++) {
                    str7 = str7 + dArr[i15][i14];
                }
            }
            i14++;
        }
        this.f2721j = new CurveFit[this.f2731t.length + 1];
        int i16 = 0;
        while (true) {
            String[] strArr3 = this.f2731t;
            if (i16 >= strArr3.length) {
                break;
            }
            String str8 = strArr3[i16];
            int i17 = 0;
            double[] dArr3 = null;
            double[][] dArr4 = null;
            for (int i18 = 0; i18 < size; i18++) {
                if (motionPathsArr[i18].m1450k(str8)) {
                    if (dArr4 == null) {
                        dArr3 = new double[size];
                        dArr4 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, motionPathsArr[i18].m1448i(str8));
                    }
                    MotionPaths motionPaths = motionPathsArr[i18];
                    dArr3[i17] = motionPaths.f2749g;
                    motionPaths.m1447h(str8, dArr4[i17], 0);
                    i17++;
                }
            }
            i16++;
            this.f2721j[i16] = CurveFit.get(this.f2716e, Arrays.copyOf(dArr3, i17), (double[][]) Arrays.copyOf(dArr4, i17));
        }
        this.f2721j[0] = CurveFit.get(this.f2716e, dArr2, dArr);
        if (motionPathsArr[0].f2757o != -1) {
            int[] iArr3 = new int[size];
            double[] dArr5 = new double[size];
            double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, 2);
            for (int i19 = 0; i19 < size; i19++) {
                iArr3[i19] = motionPathsArr[i19].f2757o;
                dArr5[i19] = r7.f2749g;
                double[] dArr7 = dArr6[i19];
                dArr7[0] = r7.f2751i;
                dArr7[1] = r7.f2752j;
            }
            this.f2722k = CurveFit.getArc(iArr3, dArr5, dArr6);
        }
        this.f2702C = new HashMap<>();
        if (this.f2737z != null) {
            Iterator<String> it10 = hashSet3.iterator();
            float f2 = Float.NaN;
            while (it10.hasNext()) {
                String next8 = it10.next();
                KeyCycleOscillator makeWidgetCycle = KeyCycleOscillator.makeWidgetCycle(next8);
                if (makeWidgetCycle != null) {
                    if (makeWidgetCycle.variesByPath() && Float.isNaN(f2)) {
                        f2 = m1431n();
                    }
                    makeWidgetCycle.setType(next8);
                    this.f2702C.put(next8, makeWidgetCycle);
                }
            }
            Iterator<MotionKey> it11 = this.f2737z.iterator();
            while (it11.hasNext()) {
                MotionKey next9 = it11.next();
                if (next9 instanceof MotionKeyCycle) {
                    ((MotionKeyCycle) next9).addCycleValues(this.f2702C);
                }
            }
            Iterator<KeyCycleOscillator> it12 = this.f2702C.values().iterator();
            while (it12.hasNext()) {
                it12.next().setup(f2);
            }
        }
    }

    public void setupRelative(Motion motion) {
        this.f2717f.setupRelative(motion, motion.f2717f);
        this.f2718g.setupRelative(motion, motion.f2718g);
    }

    /* renamed from: t */
    public void m1437t(MotionWidget motionWidget) {
        MotionPaths motionPaths = this.f2717f;
        motionPaths.f2749g = 0.0f;
        motionPaths.f2750h = 0.0f;
        this.f2710K = true;
        motionPaths.m1455p(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        this.f2718g.m1455p(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        this.f2719h.m53072l(motionWidget);
        this.f2720i.m53072l(motionWidget);
    }

    public String toString() {
        return " start: x: " + this.f2717f.f2751i + " y: " + this.f2717f.f2752j + " end: x: " + this.f2718g.f2751i + " y: " + this.f2718g.f2752j;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, boolean z) {
        return false;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, int i2) {
        if (i != 509) {
            return i == 704;
        }
        setPathMotionArc(i2);
        return true;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, String str) {
        if (705 == i) {
            System.out.println("TYPE_INTERPOLATOR  " + str);
            this.f2709J = m1418i(-1, str, 0);
        }
        return false;
    }
}
