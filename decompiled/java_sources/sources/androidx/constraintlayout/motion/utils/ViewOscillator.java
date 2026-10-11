package androidx.constraintlayout.motion.utils;

import android.util.Log;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.KeyCycleOscillator;
import androidx.constraintlayout.motion.widget.Key;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public abstract class ViewOscillator extends KeyCycleOscillator {

    /* renamed from: h */
    public static final String f3503h = "ViewOscillator";

    /* loaded from: classes3.dex */
    public static class PathRotateSet extends ViewOscillator {
        public void setPathRotate(View view, float t, double dx, double dy) {
            view.setRotation(get(t) + ((float) Math.toDegrees(Math.atan2(dy, dx))));
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t) {
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewOscillator$a */
    /* loaded from: classes3.dex */
    public static class C0428a extends ViewOscillator {
        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t) {
            view.setAlpha(get(t));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewOscillator$b */
    /* loaded from: classes3.dex */
    public static class C0429b extends ViewOscillator {

        /* renamed from: i */
        public float[] f3504i = new float[1];

        /* renamed from: j */
        public ConstraintAttribute f3505j;

        @Override // androidx.constraintlayout.core.motion.utils.KeyCycleOscillator
        public void setCustom(Object custom) {
            this.f3505j = (ConstraintAttribute) custom;
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t) {
            this.f3504i[0] = get(t);
            CustomSupport.setInterpolatedValue(this.f3505j, view, this.f3504i);
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewOscillator$c */
    /* loaded from: classes3.dex */
    public static class C0430c extends ViewOscillator {
        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t) {
            view.setElevation(get(t));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewOscillator$d */
    /* loaded from: classes3.dex */
    public static class C0431d extends ViewOscillator {

        /* renamed from: i */
        public boolean f3506i = false;

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t) {
            Method method;
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(get(t));
                return;
            }
            if (this.f3506i) {
                return;
            }
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.f3506i = true;
                method = null;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(get(t)));
                } catch (IllegalAccessException e) {
                    Log.e(ViewOscillator.f3503h, "unable to setProgress", e);
                } catch (InvocationTargetException e2) {
                    Log.e(ViewOscillator.f3503h, "unable to setProgress", e2);
                }
            }
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewOscillator$e */
    /* loaded from: classes3.dex */
    public static class C0432e extends ViewOscillator {
        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t) {
            view.setRotation(get(t));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewOscillator$f */
    /* loaded from: classes3.dex */
    public static class C0433f extends ViewOscillator {
        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t) {
            view.setRotationX(get(t));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewOscillator$g */
    /* loaded from: classes3.dex */
    public static class C0434g extends ViewOscillator {
        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t) {
            view.setRotationY(get(t));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewOscillator$h */
    /* loaded from: classes3.dex */
    public static class C0435h extends ViewOscillator {
        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t) {
            view.setScaleX(get(t));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewOscillator$i */
    /* loaded from: classes3.dex */
    public static class C0436i extends ViewOscillator {
        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t) {
            view.setScaleY(get(t));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewOscillator$j */
    /* loaded from: classes3.dex */
    public static class C0437j extends ViewOscillator {
        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t) {
            view.setTranslationX(get(t));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewOscillator$k */
    /* loaded from: classes3.dex */
    public static class C0438k extends ViewOscillator {
        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t) {
            view.setTranslationY(get(t));
        }
    }

    /* renamed from: androidx.constraintlayout.motion.utils.ViewOscillator$l */
    /* loaded from: classes3.dex */
    public static class C0439l extends ViewOscillator {
        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float t) {
            view.setTranslationZ(get(t));
        }
    }

    public static ViewOscillator makeSpline(String str) {
        if (str.startsWith("CUSTOM")) {
            return new C0429b();
        }
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
            case -40300674:
                if (str.equals("rotation")) {
                    c = '\t';
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c = '\n';
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c = 11;
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c = '\f';
                    break;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    c = '\r';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return new C0433f();
            case 1:
                return new C0434g();
            case 2:
                return new C0437j();
            case 3:
                return new C0438k();
            case 4:
                return new C0439l();
            case 5:
                return new C0431d();
            case 6:
                return new C0435h();
            case 7:
                return new C0436i();
            case '\b':
                return new C0428a();
            case '\t':
                return new C0432e();
            case '\n':
                return new C0430c();
            case 11:
                return new PathRotateSet();
            case '\f':
                return new C0428a();
            case '\r':
                return new C0428a();
            default:
                return null;
        }
    }

    public abstract void setProperty(View view, float t);
}
