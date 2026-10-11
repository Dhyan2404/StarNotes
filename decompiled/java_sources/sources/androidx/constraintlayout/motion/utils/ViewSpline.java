package androidx.constraintlayout.motion.utils;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.motion.widget.Key;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public abstract class ViewSpline extends SplineSet {

    /* renamed from: d */
    public static final String f3507d = "ViewSpline";

    /* loaded from: classes3.dex */
    public static class CustomSet extends ViewSpline {

        /* renamed from: e */
        public String f3508e;

        /* renamed from: f */
        public SparseArray<ConstraintAttribute> f3509f;

        /* renamed from: g */
        public float[] f3510g;

        public CustomSet(String attribute, SparseArray<ConstraintAttribute> attrList) {
            this.f3508e = attribute.split(",")[1];
            this.f3509f = attrList;
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setPoint(int position, float value) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t) {
            this.mCurveFit.getPos(t, this.f3510g);
            CustomSupport.setInterpolatedValue(this.f3509f.valueAt(0), view, this.f3510g);
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setup(int curveType) {
            int size = this.f3509f.size();
            int numberOfInterpolatedValues = this.f3509f.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            this.f3510g = new float[numberOfInterpolatedValues];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) Double.TYPE, size, numberOfInterpolatedValues);
            for (int i = 0; i < size; i++) {
                int keyAt = this.f3509f.keyAt(i);
                ConstraintAttribute valueAt = this.f3509f.valueAt(i);
                dArr[i] = keyAt * 0.01d;
                valueAt.getValuesToInterpolate(this.f3510g);
                int i2 = 0;
                while (true) {
                    if (i2 < this.f3510g.length) {
                        dArr2[i][i2] = r6[i2];
                        i2++;
                    }
                }
            }
            this.mCurveFit = CurveFit.get(curveType, dArr, dArr2);
        }

        public void setPoint(int position, ConstraintAttribute value) {
            this.f3509f.append(position, value);
        }
    }

    /* loaded from: classes3.dex */
    public static class PathRotate extends ViewSpline {
        public void setPathRotate(View view, float t, double dx, double dy) {
            view.setRotation(get(t) + ((float) Math.toDegrees(Math.atan2(dy, dx))));
        }

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t) {
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewSpline$a */
    /* loaded from: classes3.dex */
    public static class C0440a extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t) {
            view.setAlpha(get(t));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewSpline$b */
    /* loaded from: classes3.dex */
    public static class C0441b extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t) {
            view.setElevation(get(t));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewSpline$c */
    /* loaded from: classes3.dex */
    public static class C0442c extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t) {
            view.setPivotX(get(t));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewSpline$d */
    /* loaded from: classes3.dex */
    public static class C0443d extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t) {
            view.setPivotY(get(t));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewSpline$e */
    /* loaded from: classes3.dex */
    public static class C0444e extends ViewSpline {

        /* renamed from: e */
        public boolean f3511e = false;

        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t) {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(get(t));
                return;
            }
            if (this.f3511e) {
                return;
            }
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.f3511e = true;
                method = null;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(get(t)));
                } catch (IllegalAccessException e) {
                    Log.e(ViewSpline.f3507d, "unable to setProgress", e);
                } catch (InvocationTargetException e2) {
                    Log.e(ViewSpline.f3507d, "unable to setProgress", e2);
                }
            }
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewSpline$f */
    /* loaded from: classes3.dex */
    public static class C0445f extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t) {
            view.setRotation(get(t));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewSpline$g */
    /* loaded from: classes3.dex */
    public static class C0446g extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t) {
            view.setRotationX(get(t));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewSpline$h */
    /* loaded from: classes3.dex */
    public static class C0447h extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t) {
            view.setRotationY(get(t));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewSpline$i */
    /* loaded from: classes3.dex */
    public static class C0448i extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t) {
            view.setScaleX(get(t));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewSpline$j */
    /* loaded from: classes3.dex */
    public static class C0449j extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t) {
            view.setScaleY(get(t));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewSpline$k */
    /* loaded from: classes3.dex */
    public static class C0450k extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t) {
            view.setTranslationX(get(t));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewSpline$l */
    /* loaded from: classes3.dex */
    public static class C0451l extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t) {
            view.setTranslationY(get(t));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewSpline$m */
    /* loaded from: classes3.dex */
    public static class C0452m extends ViewSpline {
        @Override // androidx.constraintlayout.motion.utils.ViewSpline
        public void setProperty(View view, float t) {
            view.setTranslationZ(get(t));
        }
    }

    public static ViewSpline makeCustomSpline(String str, SparseArray<ConstraintAttribute> attrList) {
        return new CustomSet(str, attrList);
    }

    public static ViewSpline makeSpline(String str) {
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
            case -797520672:
                if (str.equals(Key.WAVE_VARIES_BY)) {
                    c = '\b';
                    break;
                }
                break;
            case -760884510:
                if (str.equals(Key.PIVOT_X)) {
                    c = '\t';
                    break;
                }
                break;
            case -760884509:
                if (str.equals(Key.PIVOT_Y)) {
                    c = '\n';
                    break;
                }
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    c = 11;
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c = '\f';
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c = '\r';
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c = 14;
                    break;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    c = 15;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return new C0446g();
            case 1:
                return new C0447h();
            case 2:
                return new C0450k();
            case 3:
                return new C0451l();
            case 4:
                return new C0452m();
            case 5:
                return new C0444e();
            case 6:
                return new C0448i();
            case 7:
                return new C0449j();
            case '\b':
                return new C0440a();
            case '\t':
                return new C0442c();
            case '\n':
                return new C0443d();
            case 11:
                return new C0445f();
            case '\f':
                return new C0441b();
            case '\r':
                return new PathRotate();
            case 14:
                return new C0440a();
            case 15:
                return new C0440a();
            default:
                return null;
        }
    }

    public abstract void setProperty(View view, float t);
}
