package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.VelocityMatrix;
import androidx.constraintlayout.motion.utils.CustomSupport;
import androidx.constraintlayout.motion.utils.ViewOscillator;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.motion.utils.ViewState;
import androidx.constraintlayout.motion.utils.ViewTimeCycle;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import com.sunia.HTREnginev2.bpj;
import com.sunia.HTREnginev2.bui;
import com.sunia.HTREnginev2.zoj;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class MotionController {
    public static final int DRAW_PATH_AS_CONFIGURED = 4;
    public static final int DRAW_PATH_BASIC = 1;
    public static final int DRAW_PATH_CARTESIAN = 3;
    public static final int DRAW_PATH_NONE = 0;
    public static final int DRAW_PATH_RECTANGLE = 5;
    public static final int DRAW_PATH_RELATIVE = 2;
    public static final int DRAW_PATH_SCREEN = 6;
    public static final int HORIZONTAL_PATH_X = 2;
    public static final int HORIZONTAL_PATH_Y = 3;

    /* renamed from: N */
    public static final String f3726N = "MotionController";

    /* renamed from: O */
    public static final boolean f3727O = false;

    /* renamed from: P */
    public static final boolean f3728P = false;
    public static final int PATH_PERCENT = 0;
    public static final int PATH_PERPENDICULAR = 1;

    /* renamed from: Q */
    public static final int f3729Q = 0;

    /* renamed from: R */
    public static final int f3730R = 1;
    public static final int ROTATION_LEFT = 2;
    public static final int ROTATION_RIGHT = 1;

    /* renamed from: S */
    public static final int f3731S = 2;

    /* renamed from: T */
    public static final int f3732T = 3;

    /* renamed from: U */
    public static final int f3733U = 4;

    /* renamed from: V */
    public static final int f3734V = 5;
    public static final int VERTICAL_PATH_X = 4;
    public static final int VERTICAL_PATH_Y = 5;

    /* renamed from: W */
    public static final int f3735W = -1;

    /* renamed from: X */
    public static final int f3736X = -2;

    /* renamed from: Y */
    public static final int f3737Y = -3;

    /* renamed from: B */
    public HashMap<String, ViewTimeCycle> f3739B;

    /* renamed from: C */
    public HashMap<String, ViewSpline> f3740C;

    /* renamed from: D */
    public HashMap<String, ViewOscillator> f3741D;

    /* renamed from: E */
    public KeyTrigger[] f3742E;

    /* renamed from: F */
    public int f3743F;

    /* renamed from: G */
    public int f3744G;

    /* renamed from: H */
    public View f3745H;

    /* renamed from: I */
    public int f3746I;

    /* renamed from: J */
    public float f3747J;

    /* renamed from: K */
    public Interpolator f3748K;

    /* renamed from: L */
    public boolean f3749L;

    /* renamed from: M */
    public String[] f3750M;

    /* renamed from: b */
    public View f3752b;

    /* renamed from: c */
    public int f3753c;

    /* renamed from: e */
    public String f3755e;

    /* renamed from: k */
    public CurveFit[] f3761k;

    /* renamed from: l */
    public CurveFit f3762l;

    /* renamed from: p */
    public float f3766p;

    /* renamed from: q */
    public float f3767q;

    /* renamed from: r */
    public int[] f3768r;

    /* renamed from: s */
    public double[] f3769s;

    /* renamed from: t */
    public double[] f3770t;

    /* renamed from: u */
    public String[] f3771u;

    /* renamed from: v */
    public int[] f3772v;

    /* renamed from: a */
    public Rect f3751a = new Rect();

    /* renamed from: d */
    public boolean f3754d = false;

    /* renamed from: f */
    public int f3756f = -1;

    /* renamed from: g */
    public bpj f3757g = new bpj();

    /* renamed from: h */
    public bpj f3758h = new bpj();

    /* renamed from: i */
    public zoj f3759i = new zoj();

    /* renamed from: j */
    public zoj f3760j = new zoj();

    /* renamed from: m */
    public float f3763m = Float.NaN;

    /* renamed from: n */
    public float f3764n = 0.0f;

    /* renamed from: o */
    public float f3765o = 1.0f;

    /* renamed from: w */
    public int f3773w = 4;

    /* renamed from: x */
    public float[] f3774x = new float[4];

    /* renamed from: y */
    public ArrayList<bpj> f3775y = new ArrayList<>();

    /* renamed from: z */
    public float[] f3776z = new float[1];

    /* renamed from: A */
    public ArrayList<Key> f3738A = new ArrayList<>();

    /* renamed from: androidx.constraintlayout.motion.widget.MotionController$a */
    /* loaded from: classes3.dex */
    public class InterpolatorC0469a implements Interpolator {

        /* renamed from: a */
        public final /* synthetic */ Easing f3777a;

        public InterpolatorC0469a(final Easing val$easing) {
            this.f3777a = val$easing;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float v) {
            return (float) this.f3777a.get(v);
        }
    }

    public MotionController(View view) {
        int i = Key.UNSET;
        this.f3743F = i;
        this.f3744G = i;
        this.f3745H = null;
        this.f3746I = i;
        this.f3747J = Float.NaN;
        this.f3748K = null;
        this.f3749L = false;
        setView(view);
    }

    /* renamed from: l */
    public static Interpolator m1851l(Context context, int type, String interpolatorString, int id) {
        if (type == -2) {
            return AnimationUtils.loadInterpolator(context, id);
        }
        if (type == -1) {
            return new InterpolatorC0469a(Easing.getInterpolator(interpolatorString));
        }
        if (type == 0) {
            return new AccelerateDecelerateInterpolator();
        }
        if (type == 1) {
            return new AccelerateInterpolator();
        }
        if (type == 2) {
            return new DecelerateInterpolator();
        }
        if (type == 4) {
            return new BounceInterpolator();
        }
        if (type != 5) {
            return null;
        }
        return new OvershootInterpolator();
    }

    /* renamed from: A */
    public void m1852A(View v) {
        bpj bpjVar = this.f3757g;
        bpjVar.f65993g = 0.0f;
        bpjVar.f65994h = 0.0f;
        bpjVar.m53313s(v.getX(), v.getY(), v.getWidth(), v.getHeight());
        this.f3759i.m58751o(v);
    }

    /* renamed from: B */
    public void m1853B(Rect cw, ConstraintSet constraintSet, int parentWidth, int parentHeight) {
        int i = constraintSet.mRotate;
        if (i != 0) {
            m1876x(cw, this.f3751a, i, parentWidth, parentHeight);
        }
        bpj bpjVar = this.f3757g;
        bpjVar.f65993g = 0.0f;
        bpjVar.f65994h = 0.0f;
        m1875w(bpjVar);
        this.f3757g.m53313s(cw.left, cw.top, cw.width(), cw.height());
        ConstraintSet.Constraint parameters = constraintSet.getParameters(this.f3753c);
        this.f3757g.m53295a(parameters);
        this.f3763m = parameters.motion.mMotionStagger;
        this.f3759i.m58750n(cw, constraintSet, i, this.f3753c);
        this.f3744G = parameters.transform.transformPivotTarget;
        ConstraintSet.Motion motion = parameters.motion;
        this.f3746I = motion.mQuantizeMotionSteps;
        this.f3747J = motion.mQuantizeMotionPhase;
        Context context = this.f3752b.getContext();
        ConstraintSet.Motion motion2 = parameters.motion;
        this.f3748K = m1851l(context, motion2.mQuantizeInterpolatorType, motion2.mQuantizeInterpolatorString, motion2.mQuantizeInterpolatorID);
    }

    /* renamed from: a */
    public void m1854a(ArrayList<Key> list) {
        this.f3738A.addAll(list);
    }

    public void addKey(Key key) {
        this.f3738A.add(key);
    }

    /* renamed from: b */
    public void m1855b(float[] bounds, int pointCount) {
        float f = 1.0f / (pointCount - 1);
        HashMap<String, ViewSpline> hashMap = this.f3740C;
        if (hashMap != null) {
            hashMap.get("translationX");
        }
        HashMap<String, ViewSpline> hashMap2 = this.f3740C;
        if (hashMap2 != null) {
            hashMap2.get("translationY");
        }
        HashMap<String, ViewOscillator> hashMap3 = this.f3741D;
        if (hashMap3 != null) {
            hashMap3.get("translationX");
        }
        HashMap<String, ViewOscillator> hashMap4 = this.f3741D;
        if (hashMap4 != null) {
            hashMap4.get("translationY");
        }
        for (int i = 0; i < pointCount; i++) {
            float f2 = i * f;
            float f3 = this.f3765o;
            float f4 = 0.0f;
            if (f3 != 1.0f) {
                float f5 = this.f3764n;
                if (f2 < f5) {
                    f2 = 0.0f;
                }
                if (f2 > f5 && f2 < 1.0d) {
                    f2 = Math.min((f2 - f5) * f3, 1.0f);
                }
            }
            double d = f2;
            Easing easing = this.f3757g.f65991e;
            Iterator<bpj> it2 = this.f3775y.iterator();
            float f6 = Float.NaN;
            while (it2.hasNext()) {
                bpj next = it2.next();
                Easing easing2 = next.f65991e;
                if (easing2 != null) {
                    float f7 = next.f65993g;
                    if (f7 < f2) {
                        easing = easing2;
                        f4 = f7;
                    } else if (Float.isNaN(f6)) {
                        f6 = next.f65993g;
                    }
                }
            }
            if (easing != null) {
                if (Float.isNaN(f6)) {
                    f6 = 1.0f;
                }
                d = (((float) easing.get((f2 - f4) / r12)) * (f6 - f4)) + f4;
            }
            this.f3761k[0].getPos(d, this.f3769s);
            CurveFit curveFit = this.f3762l;
            if (curveFit != null) {
                double[] dArr = this.f3769s;
                if (dArr.length > 0) {
                    curveFit.getPos(d, dArr);
                }
            }
            this.f3757g.m53301g(this.f3768r, this.f3769s, bounds, i * 2);
        }
    }

    /* renamed from: c */
    public int m1856c(float[] keyBounds, int[] mode) {
        if (keyBounds == null) {
            return 0;
        }
        double[] timePoints = this.f3761k[0].getTimePoints();
        if (mode != null) {
            Iterator<bpj> it2 = this.f3775y.iterator();
            int i = 0;
            while (it2.hasNext()) {
                mode[i] = it2.next().f66006t;
                i++;
            }
        }
        int i2 = 0;
        for (double d : timePoints) {
            this.f3761k[0].getPos(d, this.f3769s);
            this.f3757g.m53301g(this.f3768r, this.f3769s, keyBounds, i2);
            i2 += 2;
        }
        return i2 / 2;
    }

    /* renamed from: d */
    public int m1857d(float[] keyFrames, int[] mode) {
        if (keyFrames == null) {
            return 0;
        }
        double[] timePoints = this.f3761k[0].getTimePoints();
        if (mode != null) {
            Iterator<bpj> it2 = this.f3775y.iterator();
            int i = 0;
            while (it2.hasNext()) {
                mode[i] = it2.next().f66006t;
                i++;
            }
        }
        int i2 = 0;
        for (int i3 = 0; i3 < timePoints.length; i3++) {
            this.f3761k[0].getPos(timePoints[i3], this.f3769s);
            this.f3757g.m53302h(timePoints[i3], this.f3768r, this.f3769s, keyFrames, i2);
            i2 += 2;
        }
        return i2 / 2;
    }

    /* renamed from: e */
    public void m1858e(float[] points, int pointCount) {
        double d;
        float f = 1.0f;
        float f2 = 1.0f / (pointCount - 1);
        HashMap<String, ViewSpline> hashMap = this.f3740C;
        ViewSpline viewSpline = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, ViewSpline> hashMap2 = this.f3740C;
        ViewSpline viewSpline2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, ViewOscillator> hashMap3 = this.f3741D;
        ViewOscillator viewOscillator = hashMap3 == null ? null : hashMap3.get("translationX");
        HashMap<String, ViewOscillator> hashMap4 = this.f3741D;
        ViewOscillator viewOscillator2 = hashMap4 != null ? hashMap4.get("translationY") : null;
        int i = 0;
        while (i < pointCount) {
            float f3 = i * f2;
            float f4 = this.f3765o;
            float f5 = 0.0f;
            if (f4 != f) {
                float f6 = this.f3764n;
                if (f3 < f6) {
                    f3 = 0.0f;
                }
                if (f3 > f6 && f3 < 1.0d) {
                    f3 = Math.min((f3 - f6) * f4, f);
                }
            }
            float f7 = f3;
            double d2 = f7;
            Easing easing = this.f3757g.f65991e;
            Iterator<bpj> it2 = this.f3775y.iterator();
            float f8 = Float.NaN;
            while (it2.hasNext()) {
                bpj next = it2.next();
                Easing easing2 = next.f65991e;
                double d3 = d2;
                if (easing2 != null) {
                    float f9 = next.f65993g;
                    if (f9 < f7) {
                        f5 = f9;
                        easing = easing2;
                    } else if (Float.isNaN(f8)) {
                        f8 = next.f65993g;
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
            this.f3761k[0].getPos(d, this.f3769s);
            CurveFit curveFit = this.f3762l;
            if (curveFit != null) {
                double[] dArr = this.f3769s;
                if (dArr.length > 0) {
                    curveFit.getPos(d, dArr);
                }
            }
            int i2 = i * 2;
            int i3 = i;
            this.f3757g.m53302h(d, this.f3768r, this.f3769s, points, i2);
            if (viewOscillator != null) {
                points[i2] = points[i2] + viewOscillator.get(f7);
            } else if (viewSpline != null) {
                points[i2] = points[i2] + viewSpline.get(f7);
            }
            if (viewOscillator2 != null) {
                int i4 = i2 + 1;
                points[i4] = points[i4] + viewOscillator2.get(f7);
            } else if (viewSpline2 != null) {
                int i5 = i2 + 1;
                points[i5] = points[i5] + viewSpline2.get(f7);
            }
            i = i3 + 1;
            f = 1.0f;
        }
    }

    /* renamed from: f */
    public void m1859f(float p, float[] path, int offset) {
        this.f3761k[0].getPos(m1862i(p, null), this.f3769s);
        this.f3757g.m53307m(this.f3768r, this.f3769s, path, offset);
    }

    /* renamed from: g */
    public void m1860g(float[] path, int pointCount) {
        float f = 1.0f / (pointCount - 1);
        for (int i = 0; i < pointCount; i++) {
            this.f3761k[0].getPos(m1862i(i * f, null), this.f3769s);
            this.f3757g.m53307m(this.f3768r, this.f3769s, path, i * 8);
        }
    }

    public int getAnimateRelativeTo() {
        return this.f3757g.f66002p;
    }

    public void getCenter(double p, float[] pos, float[] vel) {
        double[] dArr = new double[4];
        double[] dArr2 = new double[4];
        this.f3761k[0].getPos(p, dArr);
        this.f3761k[0].getSlope(p, dArr2);
        Arrays.fill(vel, 0.0f);
        this.f3757g.m53303i(p, this.f3768r, dArr, pos, dArr2, vel);
    }

    public float getCenterX() {
        return this.f3766p;
    }

    public float getCenterY() {
        return this.f3767q;
    }

    public int getDrawPath() {
        int i = this.f3757g.f65992f;
        Iterator<bpj> it2 = this.f3775y.iterator();
        while (it2.hasNext()) {
            i = Math.max(i, it2.next().f65992f);
        }
        return Math.max(i, this.f3758h.f65992f);
    }

    public float getFinalHeight() {
        return this.f3758h.f65998l;
    }

    public float getFinalWidth() {
        return this.f3758h.f65997k;
    }

    public float getFinalX() {
        return this.f3758h.f65995i;
    }

    public float getFinalY() {
        return this.f3758h.f65996j;
    }

    public int getKeyFrameInfo(int type, int[] info) {
        float[] fArr = new float[2];
        Iterator<Key> it2 = this.f3738A.iterator();
        int i = 0;
        int i2 = 0;
        while (it2.hasNext()) {
            Key next = it2.next();
            int i3 = next.mType;
            if (i3 == type || type != -1) {
                info[i2] = 0;
                int i4 = i2 + 1;
                info[i4] = i3;
                int i5 = i4 + 1;
                int i6 = next.f3529a;
                info[i5] = i6;
                double d = i6 / 100.0f;
                this.f3761k[0].getPos(d, this.f3769s);
                this.f3757g.m53302h(d, this.f3768r, this.f3769s, fArr, 0);
                int i7 = i5 + 1;
                info[i7] = Float.floatToIntBits(fArr[0]);
                int i8 = i7 + 1;
                info[i8] = Float.floatToIntBits(fArr[1]);
                if (next instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) next;
                    int i9 = i8 + 1;
                    info[i9] = keyPosition.f3633o;
                    int i10 = i9 + 1;
                    info[i10] = Float.floatToIntBits(keyPosition.f3629k);
                    i8 = i10 + 1;
                    info[i8] = Float.floatToIntBits(keyPosition.f3630l);
                }
                int i11 = i8 + 1;
                info[i2] = i11 - i2;
                i++;
                i2 = i11;
            }
        }
        return i;
    }

    public int getKeyFramePositions(int[] type, float[] pos) {
        Iterator<Key> it2 = this.f3738A.iterator();
        int i = 0;
        int i2 = 0;
        while (it2.hasNext()) {
            Key next = it2.next();
            int i3 = next.f3529a;
            type[i] = (next.mType * 1000) + i3;
            double d = i3 / 100.0f;
            this.f3761k[0].getPos(d, this.f3769s);
            this.f3757g.m53302h(d, this.f3768r, this.f3769s, pos, i2);
            i2 += 2;
            i++;
        }
        return i;
    }

    public float getStartHeight() {
        return this.f3757g.f65998l;
    }

    public float getStartWidth() {
        return this.f3757g.f65997k;
    }

    public float getStartX() {
        return this.f3757g.f65995i;
    }

    public float getStartY() {
        return this.f3757g.f65996j;
    }

    public int getTransformPivotTarget() {
        return this.f3744G;
    }

    public View getView() {
        return this.f3752b;
    }

    /* renamed from: h */
    public void m1861h(boolean start) {
        if (!"button".equals(Debug.getName(this.f3752b)) || this.f3742E == null) {
            return;
        }
        int i = 0;
        while (true) {
            KeyTrigger[] keyTriggerArr = this.f3742E;
            if (i >= keyTriggerArr.length) {
                return;
            }
            keyTriggerArr[i].conditionallyFire(start ? -100.0f : 100.0f, this.f3752b);
            i++;
        }
    }

    /* renamed from: i */
    public final float m1862i(float position, float[] velocity) {
        float f = 0.0f;
        if (velocity != null) {
            velocity[0] = 1.0f;
        } else {
            float f2 = this.f3765o;
            if (f2 != 1.0d) {
                float f3 = this.f3764n;
                if (position < f3) {
                    position = 0.0f;
                }
                if (position > f3 && position < 1.0d) {
                    position = Math.min((position - f3) * f2, 1.0f);
                }
            }
        }
        Easing easing = this.f3757g.f65991e;
        Iterator<bpj> it2 = this.f3775y.iterator();
        float f4 = Float.NaN;
        while (it2.hasNext()) {
            bpj next = it2.next();
            Easing easing2 = next.f65991e;
            if (easing2 != null) {
                float f5 = next.f65993g;
                if (f5 < position) {
                    easing = easing2;
                    f = f5;
                } else if (Float.isNaN(f4)) {
                    f4 = next.f65993g;
                }
            }
        }
        if (easing == null) {
            return position;
        }
        float f6 = (Float.isNaN(f4) ? 1.0f : f4) - f;
        double d = (position - f) / f6;
        float f7 = f + (((float) easing.get(d)) * f6);
        if (velocity != null) {
            velocity[0] = (float) easing.getDiff(d);
        }
        return f7;
    }

    /* renamed from: j */
    public int m1863j(String attributeType, float[] points, int pointCount) {
        ViewSpline viewSpline = this.f3740C.get(attributeType);
        if (viewSpline == null) {
            return -1;
        }
        for (int i = 0; i < points.length; i++) {
            points[i] = viewSpline.get(i / (points.length - 1));
        }
        return points.length;
    }

    /* renamed from: k */
    public void m1864k(float position, float locationX, float locationY, float[] mAnchorDpDt) {
        double[] dArr;
        float m1862i = m1862i(position, this.f3776z);
        CurveFit[] curveFitArr = this.f3761k;
        int i = 0;
        if (curveFitArr == null) {
            bpj bpjVar = this.f3758h;
            float f = bpjVar.f65995i;
            bpj bpjVar2 = this.f3757g;
            float f2 = f - bpjVar2.f65995i;
            float f3 = bpjVar.f65996j - bpjVar2.f65996j;
            float f4 = (bpjVar.f65997k - bpjVar2.f65997k) + f2;
            float f5 = (bpjVar.f65998l - bpjVar2.f65998l) + f3;
            mAnchorDpDt[0] = (f2 * (1.0f - locationX)) + (f4 * locationX);
            mAnchorDpDt[1] = (f3 * (1.0f - locationY)) + (f5 * locationY);
            return;
        }
        double d = m1862i;
        curveFitArr[0].getSlope(d, this.f3770t);
        this.f3761k[0].getPos(d, this.f3769s);
        float f6 = this.f3776z[0];
        while (true) {
            dArr = this.f3770t;
            if (i >= dArr.length) {
                break;
            }
            dArr[i] = dArr[i] * f6;
            i++;
        }
        CurveFit curveFit = this.f3762l;
        if (curveFit == null) {
            this.f3757g.m53314t(locationX, locationY, mAnchorDpDt, this.f3768r, dArr, this.f3769s);
            return;
        }
        double[] dArr2 = this.f3769s;
        if (dArr2.length > 0) {
            curveFit.getPos(d, dArr2);
            this.f3762l.getSlope(d, this.f3770t);
            this.f3757g.m53314t(locationX, locationY, mAnchorDpDt, this.f3768r, this.f3770t, this.f3769s);
        }
    }

    /* renamed from: m */
    public bpj m1865m(int i) {
        return this.f3775y.get(i);
    }

    /* renamed from: n */
    public float m1866n(int type, float x, float y) {
        bpj bpjVar = this.f3758h;
        float f = bpjVar.f65995i;
        bpj bpjVar2 = this.f3757g;
        float f2 = bpjVar2.f65995i;
        float f3 = f - f2;
        float f4 = bpjVar.f65996j;
        float f5 = bpjVar2.f65996j;
        float f6 = f4 - f5;
        float f7 = f2 + (bpjVar2.f65997k / 2.0f);
        float f8 = f5 + (bpjVar2.f65998l / 2.0f);
        float hypot = (float) Math.hypot(f3, f6);
        if (hypot < 1.0E-7d) {
            return Float.NaN;
        }
        float f9 = x - f7;
        float f10 = y - f8;
        if (((float) Math.hypot(f9, f10)) == 0.0f) {
            return 0.0f;
        }
        float f11 = (f9 * f3) + (f10 * f6);
        if (type == 0) {
            return f11 / hypot;
        }
        if (type == 1) {
            return (float) Math.sqrt((hypot * hypot) - (f11 * f11));
        }
        if (type == 2) {
            return f9 / f3;
        }
        if (type == 3) {
            return f10 / f3;
        }
        if (type == 4) {
            return f9 / f6;
        }
        if (type != 5) {
            return 0.0f;
        }
        return f10 / f6;
    }

    /* renamed from: o */
    public double[] m1867o(double position) {
        this.f3761k[0].getPos(position, this.f3769s);
        CurveFit curveFit = this.f3762l;
        if (curveFit != null) {
            double[] dArr = this.f3769s;
            if (dArr.length > 0) {
                curveFit.getPos(position, dArr);
            }
        }
        return this.f3769s;
    }

    /* renamed from: p */
    public bui m1868p(int layoutWidth, int layoutHeight, float x, float y) {
        RectF rectF = new RectF();
        bpj bpjVar = this.f3757g;
        float f = bpjVar.f65995i;
        rectF.left = f;
        float f2 = bpjVar.f65996j;
        rectF.top = f2;
        rectF.right = f + bpjVar.f65997k;
        rectF.bottom = f2 + bpjVar.f65998l;
        RectF rectF2 = new RectF();
        bpj bpjVar2 = this.f3758h;
        float f3 = bpjVar2.f65995i;
        rectF2.left = f3;
        float f4 = bpjVar2.f65996j;
        rectF2.top = f4;
        rectF2.right = f3 + bpjVar2.f65997k;
        rectF2.bottom = f4 + bpjVar2.f65998l;
        Iterator<Key> it2 = this.f3738A.iterator();
        while (it2.hasNext()) {
            Key next = it2.next();
            if (next instanceof bui) {
                bui buiVar = (bui) next;
                if (buiVar.intersects(layoutWidth, layoutHeight, rectF, rectF2, x, y)) {
                    return buiVar;
                }
            }
        }
        return null;
    }

    /* renamed from: q */
    public void m1869q(float position, int width, int height, float locationX, float locationY, float[] mAnchorDpDt) {
        float m1862i = m1862i(position, this.f3776z);
        HashMap<String, ViewSpline> hashMap = this.f3740C;
        ViewSpline viewSpline = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, ViewSpline> hashMap2 = this.f3740C;
        ViewSpline viewSpline2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, ViewSpline> hashMap3 = this.f3740C;
        ViewSpline viewSpline3 = hashMap3 == null ? null : hashMap3.get("rotation");
        HashMap<String, ViewSpline> hashMap4 = this.f3740C;
        ViewSpline viewSpline4 = hashMap4 == null ? null : hashMap4.get("scaleX");
        HashMap<String, ViewSpline> hashMap5 = this.f3740C;
        ViewSpline viewSpline5 = hashMap5 == null ? null : hashMap5.get("scaleY");
        HashMap<String, ViewOscillator> hashMap6 = this.f3741D;
        ViewOscillator viewOscillator = hashMap6 == null ? null : hashMap6.get("translationX");
        HashMap<String, ViewOscillator> hashMap7 = this.f3741D;
        ViewOscillator viewOscillator2 = hashMap7 == null ? null : hashMap7.get("translationY");
        HashMap<String, ViewOscillator> hashMap8 = this.f3741D;
        ViewOscillator viewOscillator3 = hashMap8 == null ? null : hashMap8.get("rotation");
        HashMap<String, ViewOscillator> hashMap9 = this.f3741D;
        ViewOscillator viewOscillator4 = hashMap9 == null ? null : hashMap9.get("scaleX");
        HashMap<String, ViewOscillator> hashMap10 = this.f3741D;
        ViewOscillator viewOscillator5 = hashMap10 != null ? hashMap10.get("scaleY") : null;
        VelocityMatrix velocityMatrix = new VelocityMatrix();
        velocityMatrix.clear();
        velocityMatrix.setRotationVelocity(viewSpline3, m1862i);
        velocityMatrix.setTranslationVelocity(viewSpline, viewSpline2, m1862i);
        velocityMatrix.setScaleVelocity(viewSpline4, viewSpline5, m1862i);
        velocityMatrix.setRotationVelocity(viewOscillator3, m1862i);
        velocityMatrix.setTranslationVelocity(viewOscillator, viewOscillator2, m1862i);
        velocityMatrix.setScaleVelocity(viewOscillator4, viewOscillator5, m1862i);
        CurveFit curveFit = this.f3762l;
        if (curveFit != null) {
            double[] dArr = this.f3769s;
            if (dArr.length > 0) {
                double d = m1862i;
                curveFit.getPos(d, dArr);
                this.f3762l.getSlope(d, this.f3770t);
                this.f3757g.m53314t(locationX, locationY, mAnchorDpDt, this.f3768r, this.f3770t, this.f3769s);
            }
            velocityMatrix.applyTransform(locationX, locationY, width, height, mAnchorDpDt);
            return;
        }
        int i = 0;
        if (this.f3761k == null) {
            bpj bpjVar = this.f3758h;
            float f = bpjVar.f65995i;
            bpj bpjVar2 = this.f3757g;
            float f2 = f - bpjVar2.f65995i;
            ViewOscillator viewOscillator6 = viewOscillator5;
            float f3 = bpjVar.f65996j - bpjVar2.f65996j;
            ViewOscillator viewOscillator7 = viewOscillator4;
            float f4 = (bpjVar.f65997k - bpjVar2.f65997k) + f2;
            float f5 = (bpjVar.f65998l - bpjVar2.f65998l) + f3;
            mAnchorDpDt[0] = (f2 * (1.0f - locationX)) + (f4 * locationX);
            mAnchorDpDt[1] = (f3 * (1.0f - locationY)) + (f5 * locationY);
            velocityMatrix.clear();
            velocityMatrix.setRotationVelocity(viewSpline3, m1862i);
            velocityMatrix.setTranslationVelocity(viewSpline, viewSpline2, m1862i);
            velocityMatrix.setScaleVelocity(viewSpline4, viewSpline5, m1862i);
            velocityMatrix.setRotationVelocity(viewOscillator3, m1862i);
            velocityMatrix.setTranslationVelocity(viewOscillator, viewOscillator2, m1862i);
            velocityMatrix.setScaleVelocity(viewOscillator7, viewOscillator6, m1862i);
            velocityMatrix.applyTransform(locationX, locationY, width, height, mAnchorDpDt);
            return;
        }
        double m1862i2 = m1862i(m1862i, this.f3776z);
        this.f3761k[0].getSlope(m1862i2, this.f3770t);
        this.f3761k[0].getPos(m1862i2, this.f3769s);
        float f6 = this.f3776z[0];
        while (true) {
            double[] dArr2 = this.f3770t;
            if (i >= dArr2.length) {
                this.f3757g.m53314t(locationX, locationY, mAnchorDpDt, this.f3768r, dArr2, this.f3769s);
                velocityMatrix.applyTransform(locationX, locationY, width, height, mAnchorDpDt);
                return;
            } else {
                dArr2[i] = dArr2[i] * f6;
                i++;
            }
        }
    }

    /* renamed from: r */
    public final float m1870r() {
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
            Easing easing = this.f3757g.f65991e;
            Iterator<bpj> it2 = this.f3775y.iterator();
            float f5 = Float.NaN;
            float f6 = 0.0f;
            while (it2.hasNext()) {
                bpj next = it2.next();
                Easing easing2 = next.f65991e;
                if (easing2 != null) {
                    float f7 = next.f65993g;
                    if (f7 < f4) {
                        easing = easing2;
                        f6 = f7;
                    } else if (Float.isNaN(f5)) {
                        f5 = next.f65993g;
                    }
                }
            }
            if (easing != null) {
                if (Float.isNaN(f5)) {
                    f5 = 1.0f;
                }
                d3 = (((float) easing.get((f4 - f6) / r17)) * (f5 - f6)) + f6;
            }
            this.f3761k[0].getPos(d3, this.f3769s);
            float f8 = f3;
            int i2 = i;
            this.f3757g.m53302h(d3, this.f3768r, this.f3769s, fArr, 0);
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

    public void remeasure() {
        this.f3754d = true;
    }

    /* renamed from: s */
    public final void m1871s(bpj point) {
        if (Collections.binarySearch(this.f3775y, point) == 0) {
            Log.e("MotionController", " KeyPath position \"" + point.f65994h + "\" outside of range");
        }
        this.f3775y.add((-r0) - 1, point);
    }

    public void setDrawPath(int debugMode) {
        this.f3757g.f65992f = debugMode;
    }

    public void setPathMotionArc(int arc) {
        this.f3743F = arc;
    }

    public void setStartState(ViewState rect, View v, int rotation, int preWidth, int preHeight) {
        bpj bpjVar = this.f3757g;
        bpjVar.f65993g = 0.0f;
        bpjVar.f65994h = 0.0f;
        Rect rect2 = new Rect();
        if (rotation == 1) {
            int i = rect.left + rect.right;
            rect2.left = ((rect.top + rect.bottom) - rect.width()) / 2;
            rect2.top = preWidth - ((i + rect.height()) / 2);
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
        } else if (rotation == 2) {
            int i2 = rect.left + rect.right;
            rect2.left = preHeight - (((rect.top + rect.bottom) + rect.width()) / 2);
            rect2.top = (i2 - rect.height()) / 2;
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
        }
        this.f3757g.m53313s(rect2.left, rect2.top, rect2.width(), rect2.height());
        this.f3759i.m58749m(rect2, v, rotation, rect.rotation);
    }

    public void setTransformPivotTarget(int transformPivotTarget) {
        this.f3744G = transformPivotTarget;
        this.f3745H = null;
    }

    public void setView(View view) {
        this.f3752b = view;
        this.f3753c = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            this.f3755e = ((ConstraintLayout.LayoutParams) layoutParams).getConstraintTag();
        }
    }

    public void setup(int parentWidth, int parentHeight, float transitionDuration, long currentTime) {
        ArrayList arrayList;
        String[] strArr;
        ConstraintAttribute constraintAttribute;
        ViewTimeCycle makeSpline;
        ConstraintAttribute constraintAttribute2;
        Integer num;
        ViewSpline makeSpline2;
        ConstraintAttribute constraintAttribute3;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> hashMap = new HashMap<>();
        int i = this.f3743F;
        if (i != Key.UNSET) {
            this.f3757g.f66001o = i;
        }
        this.f3759i.m58742f(this.f3760j, hashSet2);
        ArrayList<Key> arrayList2 = this.f3738A;
        if (arrayList2 != null) {
            Iterator<Key> it2 = arrayList2.iterator();
            arrayList = null;
            while (it2.hasNext()) {
                Key next = it2.next();
                if (next instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) next;
                    m1871s(new bpj(parentWidth, parentHeight, keyPosition, this.f3757g, this.f3758h));
                    int i2 = keyPosition.f66147e;
                    if (i2 != Key.UNSET) {
                        this.f3756f = i2;
                    }
                } else if (next instanceof KeyCycle) {
                    next.getAttributeNames(hashSet3);
                } else if (next instanceof KeyTimeCycle) {
                    next.getAttributeNames(hashSet);
                } else if (next instanceof KeyTrigger) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((KeyTrigger) next);
                } else {
                    next.setInterpolation(hashMap);
                    next.getAttributeNames(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        int i3 = 0;
        if (arrayList != null) {
            this.f3742E = (KeyTrigger[]) arrayList.toArray(new KeyTrigger[0]);
        }
        if (!hashSet2.isEmpty()) {
            this.f3740C = new HashMap<>();
            Iterator<String> it3 = hashSet2.iterator();
            while (it3.hasNext()) {
                String next2 = it3.next();
                if (next2.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str = next2.split(",")[1];
                    Iterator<Key> it4 = this.f3738A.iterator();
                    while (it4.hasNext()) {
                        Key next3 = it4.next();
                        HashMap<String, ConstraintAttribute> hashMap2 = next3.f3532d;
                        if (hashMap2 != null && (constraintAttribute3 = hashMap2.get(str)) != null) {
                            sparseArray.append(next3.f3529a, constraintAttribute3);
                        }
                    }
                    makeSpline2 = ViewSpline.makeCustomSpline(next2, (SparseArray<ConstraintAttribute>) sparseArray);
                } else {
                    makeSpline2 = ViewSpline.makeSpline(next2);
                }
                if (makeSpline2 != null) {
                    makeSpline2.setType(next2);
                    this.f3740C.put(next2, makeSpline2);
                }
            }
            ArrayList<Key> arrayList3 = this.f3738A;
            if (arrayList3 != null) {
                Iterator<Key> it5 = arrayList3.iterator();
                while (it5.hasNext()) {
                    Key next4 = it5.next();
                    if (next4 instanceof KeyAttributes) {
                        next4.addValues(this.f3740C);
                    }
                }
            }
            this.f3759i.m58737a(this.f3740C, 0);
            this.f3760j.m58737a(this.f3740C, 100);
            for (String str2 : this.f3740C.keySet()) {
                int intValue = (!hashMap.containsKey(str2) || (num = hashMap.get(str2)) == null) ? 0 : num.intValue();
                ViewSpline viewSpline = this.f3740C.get(str2);
                if (viewSpline != null) {
                    viewSpline.setup(intValue);
                }
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.f3739B == null) {
                this.f3739B = new HashMap<>();
            }
            Iterator<String> it6 = hashSet.iterator();
            while (it6.hasNext()) {
                String next5 = it6.next();
                if (!this.f3739B.containsKey(next5)) {
                    if (next5.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str3 = next5.split(",")[1];
                        Iterator<Key> it7 = this.f3738A.iterator();
                        while (it7.hasNext()) {
                            Key next6 = it7.next();
                            HashMap<String, ConstraintAttribute> hashMap3 = next6.f3532d;
                            if (hashMap3 != null && (constraintAttribute2 = hashMap3.get(str3)) != null) {
                                sparseArray2.append(next6.f3529a, constraintAttribute2);
                            }
                        }
                        makeSpline = ViewTimeCycle.makeCustomSpline(next5, sparseArray2);
                    } else {
                        makeSpline = ViewTimeCycle.makeSpline(next5, currentTime);
                    }
                    if (makeSpline != null) {
                        makeSpline.setType(next5);
                        this.f3739B.put(next5, makeSpline);
                    }
                }
            }
            ArrayList<Key> arrayList4 = this.f3738A;
            if (arrayList4 != null) {
                Iterator<Key> it8 = arrayList4.iterator();
                while (it8.hasNext()) {
                    Key next7 = it8.next();
                    if (next7 instanceof KeyTimeCycle) {
                        ((KeyTimeCycle) next7).addTimeValues(this.f3739B);
                    }
                }
            }
            for (String str4 : this.f3739B.keySet()) {
                this.f3739B.get(str4).setup(hashMap.containsKey(str4) ? hashMap.get(str4).intValue() : 0);
            }
        }
        int size = this.f3775y.size() + 2;
        bpj[] bpjVarArr = new bpj[size];
        bpjVarArr[0] = this.f3757g;
        bpjVarArr[size - 1] = this.f3758h;
        if (this.f3775y.size() > 0 && this.f3756f == -1) {
            this.f3756f = 0;
        }
        Iterator<bpj> it9 = this.f3775y.iterator();
        int i4 = 1;
        while (it9.hasNext()) {
            bpjVarArr[i4] = it9.next();
            i4++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str5 : this.f3758h.f66005s.keySet()) {
            if (this.f3757g.f66005s.containsKey(str5)) {
                if (!hashSet2.contains("CUSTOM," + str5)) {
                    hashSet4.add(str5);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.f3771u = strArr2;
        this.f3772v = new int[strArr2.length];
        int i5 = 0;
        while (true) {
            strArr = this.f3771u;
            if (i5 >= strArr.length) {
                break;
            }
            String str6 = strArr[i5];
            this.f3772v[i5] = 0;
            int i6 = 0;
            while (true) {
                if (i6 >= size) {
                    break;
                }
                if (bpjVarArr[i6].f66005s.containsKey(str6) && (constraintAttribute = bpjVarArr[i6].f66005s.get(str6)) != null) {
                    int[] iArr = this.f3772v;
                    iArr[i5] = iArr[i5] + constraintAttribute.numberOfInterpolatedValues();
                    break;
                }
                i6++;
            }
            i5++;
        }
        boolean z = bpjVarArr[0].f66001o != Key.UNSET;
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i7 = 1; i7 < size; i7++) {
            bpjVarArr[i7].m53299e(bpjVarArr[i7 - 1], zArr, this.f3771u, z);
        }
        int i8 = 0;
        for (int i9 = 1; i9 < length; i9++) {
            if (zArr[i9]) {
                i8++;
            }
        }
        this.f3768r = new int[i8];
        int max = Math.max(2, i8);
        this.f3769s = new double[max];
        this.f3770t = new double[max];
        int i10 = 0;
        for (int i11 = 1; i11 < length; i11++) {
            if (zArr[i11]) {
                this.f3768r[i10] = i11;
                i10++;
            }
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, this.f3768r.length);
        double[] dArr2 = new double[size];
        for (int i12 = 0; i12 < size; i12++) {
            bpjVarArr[i12].m53300f(dArr[i12], this.f3768r);
            dArr2[i12] = bpjVarArr[i12].f65993g;
        }
        int i13 = 0;
        while (true) {
            int[] iArr2 = this.f3768r;
            if (i13 >= iArr2.length) {
                break;
            }
            if (iArr2[i13] < bpj.f65987w0.length) {
                String str7 = bpj.f65987w0[this.f3768r[i13]] + " [";
                for (int i14 = 0; i14 < size; i14++) {
                    str7 = str7 + dArr[i14][i13];
                }
            }
            i13++;
        }
        this.f3761k = new CurveFit[this.f3771u.length + 1];
        int i15 = 0;
        while (true) {
            String[] strArr3 = this.f3771u;
            if (i15 >= strArr3.length) {
                break;
            }
            String str8 = strArr3[i15];
            int i16 = i3;
            int i17 = i16;
            double[] dArr3 = null;
            double[][] dArr4 = null;
            while (i16 < size) {
                if (bpjVarArr[i16].m53308n(str8)) {
                    if (dArr4 == null) {
                        dArr3 = new double[size];
                        dArr4 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, bpjVarArr[i16].m53306l(str8));
                    }
                    bpj bpjVar = bpjVarArr[i16];
                    dArr3[i17] = bpjVar.f65993g;
                    bpjVar.m53305k(str8, dArr4[i17], 0);
                    i17++;
                }
                i16++;
            }
            i15++;
            this.f3761k[i15] = CurveFit.get(this.f3756f, Arrays.copyOf(dArr3, i17), (double[][]) Arrays.copyOf(dArr4, i17));
            i3 = 0;
        }
        this.f3761k[0] = CurveFit.get(this.f3756f, dArr2, dArr);
        if (bpjVarArr[0].f66001o != Key.UNSET) {
            int[] iArr3 = new int[size];
            double[] dArr5 = new double[size];
            double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, 2);
            for (int i18 = 0; i18 < size; i18++) {
                iArr3[i18] = bpjVarArr[i18].f66001o;
                dArr5[i18] = r8.f65993g;
                double[] dArr7 = dArr6[i18];
                dArr7[0] = r8.f65995i;
                dArr7[1] = r8.f65996j;
            }
            this.f3762l = CurveFit.getArc(iArr3, dArr5, dArr6);
        }
        this.f3741D = new HashMap<>();
        if (this.f3738A != null) {
            Iterator<String> it10 = hashSet3.iterator();
            float f = Float.NaN;
            while (it10.hasNext()) {
                String next8 = it10.next();
                ViewOscillator makeSpline3 = ViewOscillator.makeSpline(next8);
                if (makeSpline3 != null) {
                    if (makeSpline3.variesByPath() && Float.isNaN(f)) {
                        f = m1870r();
                    }
                    makeSpline3.setType(next8);
                    this.f3741D.put(next8, makeSpline3);
                }
            }
            Iterator<Key> it11 = this.f3738A.iterator();
            while (it11.hasNext()) {
                Key next9 = it11.next();
                if (next9 instanceof KeyCycle) {
                    ((KeyCycle) next9).addCycleValues(this.f3741D);
                }
            }
            Iterator<ViewOscillator> it12 = this.f3741D.values().iterator();
            while (it12.hasNext()) {
                it12.next().setup(f);
            }
        }
    }

    public void setupRelative(MotionController motionController) {
        this.f3757g.m53316v(motionController, motionController.f3757g);
        this.f3758h.m53316v(motionController, motionController.f3758h);
    }

    /* renamed from: t */
    public boolean m1872t(View child, float global_position, long time, KeyCache keyCache) {
        ViewTimeCycle.PathRotate pathRotate;
        boolean z;
        int i;
        double d;
        float m1862i = m1862i(global_position, null);
        int i2 = this.f3746I;
        if (i2 != Key.UNSET) {
            float f = 1.0f / i2;
            float floor = ((float) Math.floor(m1862i / f)) * f;
            float f2 = (m1862i % f) / f;
            if (!Float.isNaN(this.f3747J)) {
                f2 = (f2 + this.f3747J) % 1.0f;
            }
            Interpolator interpolator = this.f3748K;
            m1862i = ((interpolator != null ? interpolator.getInterpolation(f2) : ((double) f2) > 0.5d ? 1.0f : 0.0f) * f) + floor;
        }
        float f3 = m1862i;
        HashMap<String, ViewSpline> hashMap = this.f3740C;
        if (hashMap != null) {
            Iterator<ViewSpline> it2 = hashMap.values().iterator();
            while (it2.hasNext()) {
                it2.next().setProperty(child, f3);
            }
        }
        HashMap<String, ViewTimeCycle> hashMap2 = this.f3739B;
        if (hashMap2 != null) {
            ViewTimeCycle.PathRotate pathRotate2 = null;
            boolean z2 = false;
            for (ViewTimeCycle viewTimeCycle : hashMap2.values()) {
                if (viewTimeCycle instanceof ViewTimeCycle.PathRotate) {
                    pathRotate2 = (ViewTimeCycle.PathRotate) viewTimeCycle;
                } else {
                    z2 |= viewTimeCycle.setProperty(child, f3, time, keyCache);
                }
            }
            z = z2;
            pathRotate = pathRotate2;
        } else {
            pathRotate = null;
            z = false;
        }
        CurveFit[] curveFitArr = this.f3761k;
        if (curveFitArr != null) {
            double d2 = f3;
            curveFitArr[0].getPos(d2, this.f3769s);
            this.f3761k[0].getSlope(d2, this.f3770t);
            CurveFit curveFit = this.f3762l;
            if (curveFit != null) {
                double[] dArr = this.f3769s;
                if (dArr.length > 0) {
                    curveFit.getPos(d2, dArr);
                    this.f3762l.getSlope(d2, this.f3770t);
                }
            }
            if (this.f3749L) {
                d = d2;
            } else {
                d = d2;
                this.f3757g.m53315u(f3, child, this.f3768r, this.f3769s, this.f3770t, null, this.f3754d);
                this.f3754d = false;
            }
            if (this.f3744G != Key.UNSET) {
                if (this.f3745H == null) {
                    this.f3745H = ((View) child.getParent()).findViewById(this.f3744G);
                }
                if (this.f3745H != null) {
                    float top = (r1.getTop() + this.f3745H.getBottom()) / 2.0f;
                    float left = (this.f3745H.getLeft() + this.f3745H.getRight()) / 2.0f;
                    if (child.getRight() - child.getLeft() > 0 && child.getBottom() - child.getTop() > 0) {
                        child.setPivotX(left - child.getLeft());
                        child.setPivotY(top - child.getTop());
                    }
                }
            }
            HashMap<String, ViewSpline> hashMap3 = this.f3740C;
            if (hashMap3 != null) {
                for (ViewSpline viewSpline : hashMap3.values()) {
                    if (viewSpline instanceof ViewSpline.PathRotate) {
                        double[] dArr2 = this.f3770t;
                        if (dArr2.length > 1) {
                            ((ViewSpline.PathRotate) viewSpline).setPathRotate(child, f3, dArr2[0], dArr2[1]);
                        }
                    }
                }
            }
            if (pathRotate != null) {
                double[] dArr3 = this.f3770t;
                i = 1;
                z |= pathRotate.setPathRotate(child, keyCache, f3, time, dArr3[0], dArr3[1]);
            } else {
                i = 1;
            }
            int i3 = i;
            while (true) {
                CurveFit[] curveFitArr2 = this.f3761k;
                if (i3 >= curveFitArr2.length) {
                    break;
                }
                curveFitArr2[i3].getPos(d, this.f3774x);
                CustomSupport.setInterpolatedValue(this.f3757g.f66005s.get(this.f3771u[i3 - 1]), child, this.f3774x);
                i3++;
            }
            zoj zojVar = this.f3759i;
            if (zojVar.f92023f == 0) {
                if (f3 <= 0.0f) {
                    child.setVisibility(zojVar.f92024g);
                } else if (f3 >= 1.0f) {
                    child.setVisibility(this.f3760j.f92024g);
                } else if (this.f3760j.f92024g != zojVar.f92024g) {
                    child.setVisibility(0);
                }
            }
            if (this.f3742E != null) {
                int i4 = 0;
                while (true) {
                    KeyTrigger[] keyTriggerArr = this.f3742E;
                    if (i4 >= keyTriggerArr.length) {
                        break;
                    }
                    keyTriggerArr[i4].conditionallyFire(f3, child);
                    i4++;
                }
            }
        } else {
            i = 1;
            bpj bpjVar = this.f3757g;
            float f4 = bpjVar.f65995i;
            bpj bpjVar2 = this.f3758h;
            float f5 = f4 + ((bpjVar2.f65995i - f4) * f3);
            float f6 = bpjVar.f65996j;
            float f7 = f6 + ((bpjVar2.f65996j - f6) * f3);
            float f8 = bpjVar.f65997k;
            float f9 = bpjVar2.f65997k;
            float f10 = bpjVar.f65998l;
            float f11 = bpjVar2.f65998l;
            float f12 = f5 + 0.5f;
            int i5 = (int) f12;
            float f13 = f7 + 0.5f;
            int i6 = (int) f13;
            int i7 = (int) (f12 + ((f9 - f8) * f3) + f8);
            int i8 = (int) (f13 + ((f11 - f10) * f3) + f10);
            int i9 = i7 - i5;
            int i10 = i8 - i6;
            if (f9 != f8 || f11 != f10 || this.f3754d) {
                child.measure(View.MeasureSpec.makeMeasureSpec(i9, 1073741824), View.MeasureSpec.makeMeasureSpec(i10, 1073741824));
                this.f3754d = false;
            }
            child.layout(i5, i6, i7, i8);
        }
        HashMap<String, ViewOscillator> hashMap4 = this.f3741D;
        if (hashMap4 != null) {
            for (ViewOscillator viewOscillator : hashMap4.values()) {
                if (viewOscillator instanceof ViewOscillator.PathRotateSet) {
                    double[] dArr4 = this.f3770t;
                    ((ViewOscillator.PathRotateSet) viewOscillator).setPathRotate(child, f3, dArr4[0], dArr4[i]);
                } else {
                    viewOscillator.setProperty(child, f3);
                }
            }
        }
        return z;
    }

    public String toString() {
        return " start: x: " + this.f3757g.f65995i + " y: " + this.f3757g.f65996j + " end: x: " + this.f3758h.f65995i + " y: " + this.f3758h.f65996j;
    }

    /* renamed from: u */
    public String m1873u() {
        return this.f3752b.getContext().getResources().getResourceEntryName(this.f3752b.getId());
    }

    /* renamed from: v */
    public void m1874v(View view, bui key, float x, float y, String[] attribute, float[] value) {
        RectF rectF = new RectF();
        bpj bpjVar = this.f3757g;
        float f = bpjVar.f65995i;
        rectF.left = f;
        float f2 = bpjVar.f65996j;
        rectF.top = f2;
        rectF.right = f + bpjVar.f65997k;
        rectF.bottom = f2 + bpjVar.f65998l;
        RectF rectF2 = new RectF();
        bpj bpjVar2 = this.f3758h;
        float f3 = bpjVar2.f65995i;
        rectF2.left = f3;
        float f4 = bpjVar2.f65996j;
        rectF2.top = f4;
        rectF2.right = f3 + bpjVar2.f65997k;
        rectF2.bottom = f4 + bpjVar2.f65998l;
        key.positionAttributes(view, rectF, rectF2, x, y, attribute, value);
    }

    /* renamed from: w */
    public final void m1875w(bpj motionPaths) {
        motionPaths.m53313s((int) this.f3752b.getX(), (int) this.f3752b.getY(), this.f3752b.getWidth(), this.f3752b.getHeight());
    }

    /* renamed from: x */
    public void m1876x(Rect rect, Rect out, int rotation, int preHeight, int preWidth) {
        if (rotation == 1) {
            int i = rect.left + rect.right;
            out.left = ((rect.top + rect.bottom) - rect.width()) / 2;
            out.top = preWidth - ((i + rect.height()) / 2);
            out.right = out.left + rect.width();
            out.bottom = out.top + rect.height();
            return;
        }
        if (rotation == 2) {
            int i2 = rect.left + rect.right;
            out.left = preHeight - (((rect.top + rect.bottom) + rect.width()) / 2);
            out.top = (i2 - rect.height()) / 2;
            out.right = out.left + rect.width();
            out.bottom = out.top + rect.height();
            return;
        }
        if (rotation == 3) {
            int i3 = rect.left + rect.right;
            out.left = ((rect.height() / 2) + rect.top) - (i3 / 2);
            out.top = preWidth - ((i3 + rect.height()) / 2);
            out.right = out.left + rect.width();
            out.bottom = out.top + rect.height();
            return;
        }
        if (rotation != 4) {
            return;
        }
        int i4 = rect.left + rect.right;
        out.left = preHeight - (((rect.bottom + rect.top) + rect.width()) / 2);
        out.top = (i4 - rect.height()) / 2;
        out.right = out.left + rect.width();
        out.bottom = out.top + rect.height();
    }

    /* renamed from: y */
    public void m1877y(View v) {
        bpj bpjVar = this.f3757g;
        bpjVar.f65993g = 0.0f;
        bpjVar.f65994h = 0.0f;
        this.f3749L = true;
        bpjVar.m53313s(v.getX(), v.getY(), v.getWidth(), v.getHeight());
        this.f3758h.m53313s(v.getX(), v.getY(), v.getWidth(), v.getHeight());
        this.f3759i.m58751o(v);
        this.f3760j.m58751o(v);
    }

    /* renamed from: z */
    public void m1878z(Rect cw, ConstraintSet constraintSet, int parentWidth, int parentHeight) {
        int i = constraintSet.mRotate;
        if (i != 0) {
            m1876x(cw, this.f3751a, i, parentWidth, parentHeight);
            cw = this.f3751a;
        }
        bpj bpjVar = this.f3758h;
        bpjVar.f65993g = 1.0f;
        bpjVar.f65994h = 1.0f;
        m1875w(bpjVar);
        this.f3758h.m53313s(cw.left, cw.top, cw.width(), cw.height());
        this.f3758h.m53295a(constraintSet.getParameters(this.f3753c));
        this.f3760j.m58750n(cw, constraintSet, i, this.f3753c);
    }
}
