package androidx.constraintlayout.motion.utils;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public abstract class ViewTimeCycle extends TimeCycleSplineSet {

    /* renamed from: b */
    public static final String f3512b = "ViewTimeCycle";

    /* loaded from: classes3.dex */
    public static class CustomSet extends ViewTimeCycle {

        /* renamed from: c */
        public String f3513c;

        /* renamed from: d */
        public SparseArray<ConstraintAttribute> f3514d;

        /* renamed from: e */
        public SparseArray<float[]> f3515e = new SparseArray<>();

        /* renamed from: f */
        public float[] f3516f;

        /* renamed from: g */
        public float[] f3517g;

        public CustomSet(String attribute, SparseArray<ConstraintAttribute> attrList) {
            this.f3513c = attribute.split(",")[1];
            this.f3514d = attrList;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setPoint(int position, float value, float period, int shape, float offset) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t, long time, KeyCache cache) {
            this.mCurveFit.getPos(t, this.f3516f);
            float[] fArr = this.f3516f;
            float f = fArr[fArr.length - 2];
            float f2 = fArr[fArr.length - 1];
            long j = time - this.last_time;
            if (Float.isNaN(this.last_cycle)) {
                float floatValue = cache.getFloatValue(view, this.f3513c, 0);
                this.last_cycle = floatValue;
                if (Float.isNaN(floatValue)) {
                    this.last_cycle = 0.0f;
                }
            }
            float f3 = (float) ((this.last_cycle + ((j * 1.0E-9d) * f)) % 1.0d);
            this.last_cycle = f3;
            this.last_time = time;
            float calcWave = calcWave(f3);
            this.mContinue = false;
            int i = 0;
            while (true) {
                float[] fArr2 = this.f3517g;
                if (i >= fArr2.length) {
                    break;
                }
                boolean z = this.mContinue;
                float f4 = this.f3516f[i];
                this.mContinue = z | (((double) f4) != 0.0d);
                fArr2[i] = (f4 * calcWave) + f2;
                i++;
            }
            CustomSupport.setInterpolatedValue(this.f3514d.valueAt(0), view, this.f3517g);
            if (f != 0.0f) {
                this.mContinue = true;
            }
            return this.mContinue;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setup(int curveType) {
            int size = this.f3514d.size();
            int numberOfInterpolatedValues = this.f3514d.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            int i = numberOfInterpolatedValues + 2;
            this.f3516f = new float[i];
            this.f3517g = new float[numberOfInterpolatedValues];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, i);
            for (int i2 = 0; i2 < size; i2++) {
                int keyAt = this.f3514d.keyAt(i2);
                ConstraintAttribute valueAt = this.f3514d.valueAt(i2);
                float[] valueAt2 = this.f3515e.valueAt(i2);
                dArr[i2] = keyAt * 0.01d;
                valueAt.getValuesToInterpolate(this.f3516f);
                int i3 = 0;
                while (true) {
                    if (i3 < this.f3516f.length) {
                        dArr2[i2][i3] = r7[i3];
                        i3++;
                    }
                }
                double[] dArr3 = dArr2[i2];
                dArr3[numberOfInterpolatedValues] = valueAt2[0];
                dArr3[numberOfInterpolatedValues + 1] = valueAt2[1];
            }
            this.mCurveFit = CurveFit.get(curveType, dArr, dArr2);
        }

        public void setPoint(int position, ConstraintAttribute value, float period, int shape, float offset) {
            this.f3514d.append(position, value);
            this.f3515e.append(position, new float[]{period, offset});
            this.mWaveShape = Math.max(this.mWaveShape, shape);
        }
    }

    /* loaded from: classes3.dex */
    public static class PathRotate extends ViewTimeCycle {
        public boolean setPathRotate(View view, KeyCache cache, float t, long time, double dx, double dy) {
            view.setRotation(get(t, time, view, cache) + ((float) Math.toDegrees(Math.atan2(dy, dx))));
            return this.mContinue;
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t, long time, KeyCache cache) {
            return this.mContinue;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewTimeCycle$a */
    /* loaded from: classes3.dex */
    public static class C0453a extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t, long time, KeyCache cache) {
            view.setAlpha(get(t, time, view, cache));
            return this.mContinue;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewTimeCycle$b */
    /* loaded from: classes3.dex */
    public static class C0454b extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t, long time, KeyCache cache) {
            view.setElevation(get(t, time, view, cache));
            return this.mContinue;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewTimeCycle$c */
    /* loaded from: classes3.dex */
    public static class C0455c extends ViewTimeCycle {

        /* renamed from: c */
        public boolean f3518c = false;

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t, long time, KeyCache cache) {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(get(t, time, view, cache));
            } else {
                if (this.f3518c) {
                    return false;
                }
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException unused) {
                    this.f3518c = true;
                    method = null;
                }
                Method method2 = method;
                if (method2 != null) {
                    try {
                        method2.invoke(view, Float.valueOf(get(t, time, view, cache)));
                    } catch (IllegalAccessException e) {
                        Log.e(ViewTimeCycle.f3512b, "unable to setProgress", e);
                    } catch (InvocationTargetException e2) {
                        Log.e(ViewTimeCycle.f3512b, "unable to setProgress", e2);
                    }
                }
            }
            return this.mContinue;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewTimeCycle$d */
    /* loaded from: classes3.dex */
    public static class C0456d extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t, long time, KeyCache cache) {
            view.setRotation(get(t, time, view, cache));
            return this.mContinue;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewTimeCycle$e */
    /* loaded from: classes3.dex */
    public static class C0457e extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t, long time, KeyCache cache) {
            view.setRotationX(get(t, time, view, cache));
            return this.mContinue;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewTimeCycle$f */
    /* loaded from: classes3.dex */
    public static class C0458f extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t, long time, KeyCache cache) {
            view.setRotationY(get(t, time, view, cache));
            return this.mContinue;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewTimeCycle$g */
    /* loaded from: classes3.dex */
    public static class C0459g extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t, long time, KeyCache cache) {
            view.setScaleX(get(t, time, view, cache));
            return this.mContinue;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewTimeCycle$h */
    /* loaded from: classes3.dex */
    public static class C0460h extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t, long time, KeyCache cache) {
            view.setScaleY(get(t, time, view, cache));
            return this.mContinue;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewTimeCycle$i */
    /* loaded from: classes3.dex */
    public static class C0461i extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t, long time, KeyCache cache) {
            view.setTranslationX(get(t, time, view, cache));
            return this.mContinue;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewTimeCycle$j */
    /* loaded from: classes3.dex */
    public static class C0462j extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t, long time, KeyCache cache) {
            view.setTranslationY(get(t, time, view, cache));
            return this.mContinue;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewTimeCycle$k */
    /* loaded from: classes3.dex */
    public static class C0463k extends ViewTimeCycle {
        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t, long time, KeyCache cache) {
            view.setTranslationZ(get(t, time, view, cache));
            return this.mContinue;
        }
    }

    public static ViewTimeCycle makeCustomSpline(String str, SparseArray<ConstraintAttribute> attrList) {
        return new CustomSet(str, attrList);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:39:0x009c. Please report as an issue. */
    public static ViewTimeCycle makeSpline(String str, long currentTime) {
        ViewTimeCycle c0457e;
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    c = 0;
                    break;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c = 1;
                    break;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c = 2;
                    break;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c = 3;
                    break;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c = 4;
                    break;
                }
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    c = 5;
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c = 6;
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c = 7;
                    break;
                }
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    c = '\b';
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c = '\t';
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c = '\n';
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c = 11;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                c0457e = new C0457e();
                c0457e.setStartTime(currentTime);
                return c0457e;
            case 1:
                c0457e = new C0458f();
                c0457e.setStartTime(currentTime);
                return c0457e;
            case 2:
                c0457e = new C0461i();
                c0457e.setStartTime(currentTime);
                return c0457e;
            case 3:
                c0457e = new C0462j();
                c0457e.setStartTime(currentTime);
                return c0457e;
            case 4:
                c0457e = new C0463k();
                c0457e.setStartTime(currentTime);
                return c0457e;
            case 5:
                c0457e = new C0455c();
                c0457e.setStartTime(currentTime);
                return c0457e;
            case 6:
                c0457e = new C0459g();
                c0457e.setStartTime(currentTime);
                return c0457e;
            case 7:
                c0457e = new C0460h();
                c0457e.setStartTime(currentTime);
                return c0457e;
            case '\b':
                c0457e = new C0456d();
                c0457e.setStartTime(currentTime);
                return c0457e;
            case '\t':
                c0457e = new C0454b();
                c0457e.setStartTime(currentTime);
                return c0457e;
            case '\n':
                c0457e = new PathRotate();
                c0457e.setStartTime(currentTime);
                return c0457e;
            case 11:
                c0457e = new C0453a();
                c0457e.setStartTime(currentTime);
                return c0457e;
            default:
                return null;
        }
    }

    public float get(float pos, long time, View view, KeyCache cache) {
        this.mCurveFit.getPos(pos, this.mCache);
        float[] fArr = this.mCache;
        float f = fArr[1];
        if (f == 0.0f) {
            this.mContinue = false;
            return fArr[2];
        }
        if (Float.isNaN(this.last_cycle)) {
            float floatValue = cache.getFloatValue(view, this.mType, 0);
            this.last_cycle = floatValue;
            if (Float.isNaN(floatValue)) {
                this.last_cycle = 0.0f;
            }
        }
        float f2 = (float) ((this.last_cycle + (((time - this.last_time) * 1.0E-9d) * f)) % 1.0d);
        this.last_cycle = f2;
        cache.setFloatValue(view, this.mType, 0, f2);
        this.last_time = time;
        float f3 = this.mCache[0];
        float calcWave = (calcWave(this.last_cycle) * f3) + this.mCache[2];
        this.mContinue = (f3 == 0.0f && f == 0.0f) ? false : true;
        return calcWave;
    }

    public abstract boolean setProperty(View view, float t, long time, KeyCache cache);
}
