package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.motion.Motion;
import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.key.MotionKeyAttributes;
import androidx.constraintlayout.core.motion.key.MotionKeyCycle;
import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.TypedBundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.state.Transition;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class Transition implements TypedValues {
    public static final int END = 1;
    public static final int INTERPOLATED = 2;
    public static final int START = 0;

    /* renamed from: j */
    public static final int f3154j = 0;

    /* renamed from: k */
    public static final int f3155k = 1;

    /* renamed from: l */
    public static final int f3156l = 2;

    /* renamed from: m */
    public static final int f3157m = 3;

    /* renamed from: n */
    public static final int f3158n = 4;

    /* renamed from: o */
    public static final int f3159o = 5;

    /* renamed from: p */
    public static final int f3160p = 6;

    /* renamed from: q */
    public static final int f3161q = -1;

    /* renamed from: r */
    public static final int f3162r = -2;

    /* renamed from: a */
    public HashMap<Integer, HashMap<String, C0411a>> f3163a = new HashMap<>();

    /* renamed from: b */
    public HashMap<String, C0412b> f3164b = new HashMap<>();

    /* renamed from: c */
    public TypedBundle f3165c = new TypedBundle();

    /* renamed from: d */
    public int f3166d = 0;

    /* renamed from: e */
    public String f3167e = null;

    /* renamed from: f */
    public Easing f3168f = null;

    /* renamed from: g */
    public int f3169g = 0;

    /* renamed from: h */
    public int f3170h = 400;

    /* renamed from: i */
    public float f3171i = 0.0f;

    /* renamed from: androidx.constraintlayout.core.state.Transition$a */
    /* loaded from: classes3.dex */
    public static class C0411a {

        /* renamed from: a */
        public int f3172a;

        /* renamed from: b */
        public String f3173b;

        /* renamed from: c */
        public int f3174c;

        /* renamed from: d */
        public float f3175d;

        /* renamed from: e */
        public float f3176e;

        public C0411a(String str, int i, int i2, float f, float f2) {
            this.f3173b = str;
            this.f3172a = i;
            this.f3174c = i2;
            this.f3175d = f;
            this.f3176e = f2;
        }
    }

    /* renamed from: androidx.constraintlayout.core.state.Transition$b */
    /* loaded from: classes3.dex */
    public static class C0412b {

        /* renamed from: d */
        public Motion f3180d;

        /* renamed from: h */
        public KeyCache f3184h = new KeyCache();

        /* renamed from: i */
        public int f3185i = -1;

        /* renamed from: j */
        public int f3186j = -1;

        /* renamed from: a */
        public WidgetFrame f3177a = new WidgetFrame();

        /* renamed from: b */
        public WidgetFrame f3178b = new WidgetFrame();

        /* renamed from: c */
        public WidgetFrame f3179c = new WidgetFrame();

        /* renamed from: e */
        public MotionWidget f3181e = new MotionWidget(this.f3177a);

        /* renamed from: f */
        public MotionWidget f3182f = new MotionWidget(this.f3178b);

        /* renamed from: g */
        public MotionWidget f3183g = new MotionWidget(this.f3179c);

        public C0412b() {
            Motion motion = new Motion(this.f3181e);
            this.f3180d = motion;
            motion.setStart(this.f3181e);
            this.f3180d.setEnd(this.f3182f);
        }

        /* renamed from: a */
        public WidgetFrame m1559a(int i) {
            return i == 0 ? this.f3177a : i == 1 ? this.f3178b : this.f3179c;
        }

        /* renamed from: b */
        public void m1560b(int i, int i2, float f, Transition transition) {
            this.f3185i = i2;
            this.f3186j = i;
            this.f3180d.setup(i, i2, 1.0f, System.nanoTime());
            WidgetFrame.interpolate(i, i2, this.f3179c, this.f3177a, this.f3178b, transition, f);
            this.f3179c.interpolatedPos = f;
            this.f3180d.interpolate(this.f3183g, f, System.nanoTime(), this.f3184h);
        }

        /* renamed from: c */
        public void m1561c(TypedBundle typedBundle) {
            MotionKeyAttributes motionKeyAttributes = new MotionKeyAttributes();
            typedBundle.applyDelta(motionKeyAttributes);
            this.f3180d.addKey(motionKeyAttributes);
        }

        /* renamed from: d */
        public void m1562d(TypedBundle typedBundle) {
            MotionKeyCycle motionKeyCycle = new MotionKeyCycle();
            typedBundle.applyDelta(motionKeyCycle);
            this.f3180d.addKey(motionKeyCycle);
        }

        /* renamed from: e */
        public void m1563e(TypedBundle typedBundle) {
            MotionKeyPosition motionKeyPosition = new MotionKeyPosition();
            typedBundle.applyDelta(motionKeyPosition);
            this.f3180d.addKey(motionKeyPosition);
        }

        /* renamed from: f */
        public void m1564f(ConstraintWidget constraintWidget, int i) {
            if (i == 0) {
                this.f3177a.update(constraintWidget);
                this.f3180d.setStart(this.f3181e);
            } else if (i == 1) {
                this.f3178b.update(constraintWidget);
                this.f3180d.setEnd(this.f3182f);
            }
            this.f3186j = -1;
        }
    }

    public static Interpolator getInterpolator(int i, final String str) {
        switch (i) {
            case -1:
                return new Interpolator() { // from class: com.sunia.HTREnginev2.qmn
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f) {
                        float m1549k;
                        m1549k = Transition.m1549k(str, f);
                        return m1549k;
                    }
                };
            case 0:
                return new Interpolator() { // from class: com.sunia.HTREnginev2.rmn
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f) {
                        float m1550l;
                        m1550l = Transition.m1550l(f);
                        return m1550l;
                    }
                };
            case 1:
                return new Interpolator() { // from class: com.sunia.HTREnginev2.smn
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f) {
                        float m1551m;
                        m1551m = Transition.m1551m(f);
                        return m1551m;
                    }
                };
            case 2:
                return new Interpolator() { // from class: com.sunia.HTREnginev2.tmn
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f) {
                        float m1552n;
                        m1552n = Transition.m1552n(f);
                        return m1552n;
                    }
                };
            case 3:
                return new Interpolator() { // from class: com.sunia.HTREnginev2.umn
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f) {
                        float m1553o;
                        m1553o = Transition.m1553o(f);
                        return m1553o;
                    }
                };
            case 4:
                return new Interpolator() { // from class: com.sunia.HTREnginev2.xmn
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f) {
                        float m1556r;
                        m1556r = Transition.m1556r(f);
                        return m1556r;
                    }
                };
            case 5:
                return new Interpolator() { // from class: com.sunia.HTREnginev2.wmn
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f) {
                        float m1555q;
                        m1555q = Transition.m1555q(f);
                        return m1555q;
                    }
                };
            case 6:
                return new Interpolator() { // from class: com.sunia.HTREnginev2.vmn
                    @Override // androidx.constraintlayout.core.state.Interpolator
                    public final float getInterpolation(float f) {
                        float m1554p;
                        m1554p = Transition.m1554p(f);
                        return m1554p;
                    }
                };
            default:
                return null;
        }
    }

    /* renamed from: k */
    public static /* synthetic */ float m1549k(String str, float f) {
        return (float) Easing.getInterpolator(str).get(f);
    }

    /* renamed from: l */
    public static /* synthetic */ float m1550l(float f) {
        return (float) Easing.getInterpolator("standard").get(f);
    }

    /* renamed from: m */
    public static /* synthetic */ float m1551m(float f) {
        return (float) Easing.getInterpolator(Easing.f2908j).get(f);
    }

    /* renamed from: n */
    public static /* synthetic */ float m1552n(float f) {
        return (float) Easing.getInterpolator(Easing.f2907i).get(f);
    }

    /* renamed from: o */
    public static /* synthetic */ float m1553o(float f) {
        return (float) Easing.getInterpolator(Easing.f2910l).get(f);
    }

    /* renamed from: p */
    public static /* synthetic */ float m1554p(float f) {
        return (float) Easing.getInterpolator(Easing.f2911m).get(f);
    }

    /* renamed from: q */
    public static /* synthetic */ float m1555q(float f) {
        return (float) Easing.getInterpolator(Easing.f2912n).get(f);
    }

    /* renamed from: r */
    public static /* synthetic */ float m1556r(float f) {
        return (float) Easing.getInterpolator("spline(0.0, 0.2, 0.4, 0.6, 0.8 ,1.0, 0.8, 1.0, 0.9, 1.0)").get(f);
    }

    public void addCustomColor(int i, String str, String str2, int i2) {
        m1558j(str, null, i).m1559a(i).addCustomColor(str2, i2);
    }

    public void addCustomFloat(int i, String str, String str2, float f) {
        m1558j(str, null, i).m1559a(i).addCustomFloat(str2, f);
    }

    public void addKeyAttribute(String str, TypedBundle typedBundle) {
        m1558j(str, null, 0).m1561c(typedBundle);
    }

    public void addKeyCycle(String str, TypedBundle typedBundle) {
        m1558j(str, null, 0).m1562d(typedBundle);
    }

    public void addKeyPosition(String str, TypedBundle typedBundle) {
        m1558j(str, null, 0).m1563e(typedBundle);
    }

    public void clear() {
        this.f3164b.clear();
    }

    public boolean contains(String str) {
        return this.f3164b.containsKey(str);
    }

    public void fillKeyPositions(WidgetFrame widgetFrame, float[] fArr, float[] fArr2, float[] fArr3) {
        C0411a c0411a;
        int i = 0;
        for (int i2 = 0; i2 <= 100; i2++) {
            HashMap<String, C0411a> hashMap = this.f3163a.get(Integer.valueOf(i2));
            if (hashMap != null && (c0411a = hashMap.get(widgetFrame.widget.stringId)) != null) {
                fArr[i] = c0411a.f3175d;
                fArr2[i] = c0411a.f3176e;
                fArr3[i] = c0411a.f3172a;
                i++;
            }
        }
    }

    public C0411a findNextPosition(String str, int i) {
        C0411a c0411a;
        while (i <= 100) {
            HashMap<String, C0411a> hashMap = this.f3163a.get(Integer.valueOf(i));
            if (hashMap != null && (c0411a = hashMap.get(str)) != null) {
                return c0411a;
            }
            i++;
        }
        return null;
    }

    public C0411a findPreviousPosition(String str, int i) {
        C0411a c0411a;
        while (i >= 0) {
            HashMap<String, C0411a> hashMap = this.f3163a.get(Integer.valueOf(i));
            if (hashMap != null && (c0411a = hashMap.get(str)) != null) {
                return c0411a;
            }
            i--;
        }
        return null;
    }

    public int getAutoTransition() {
        return this.f3169g;
    }

    public WidgetFrame getEnd(String str) {
        C0412b c0412b = this.f3164b.get(str);
        if (c0412b == null) {
            return null;
        }
        return c0412b.f3178b;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        return 0;
    }

    public WidgetFrame getInterpolated(String str) {
        C0412b c0412b = this.f3164b.get(str);
        if (c0412b == null) {
            return null;
        }
        return c0412b.f3179c;
    }

    public int getKeyFrames(String str, float[] fArr, int[] iArr, int[] iArr2) {
        return this.f3164b.get(str).f3180d.buildKeyFrames(fArr, iArr, iArr2);
    }

    public Motion getMotion(String str) {
        return m1558j(str, null, 0).f3180d;
    }

    public int getNumberKeyPositions(WidgetFrame widgetFrame) {
        int i = 0;
        for (int i2 = 0; i2 <= 100; i2++) {
            HashMap<String, C0411a> hashMap = this.f3163a.get(Integer.valueOf(i2));
            if (hashMap != null && hashMap.get(widgetFrame.widget.stringId) != null) {
                i++;
            }
        }
        return i;
    }

    public float[] getPath(String str) {
        C0412b c0412b = this.f3164b.get(str);
        float[] fArr = new float[124];
        c0412b.f3180d.buildPath(fArr, 62);
        return fArr;
    }

    public WidgetFrame getStart(String str) {
        C0412b c0412b = this.f3164b.get(str);
        if (c0412b == null) {
            return null;
        }
        return c0412b.f3177a;
    }

    public boolean hasPositionKeyframes() {
        return this.f3163a.size() > 0;
    }

    /* renamed from: i */
    public final C0412b m1557i(String str) {
        return this.f3164b.get(str);
    }

    public void interpolate(int i, int i2, float f) {
        Easing easing = this.f3168f;
        if (easing != null) {
            f = (float) easing.get(f);
        }
        Iterator<String> it2 = this.f3164b.keySet().iterator();
        while (it2.hasNext()) {
            this.f3164b.get(it2.next()).m1560b(i, i2, f, this);
        }
    }

    public boolean isEmpty() {
        return this.f3164b.isEmpty();
    }

    /* renamed from: j */
    public final C0412b m1558j(String str, ConstraintWidget constraintWidget, int i) {
        C0412b c0412b = this.f3164b.get(str);
        if (c0412b == null) {
            c0412b = new C0412b();
            this.f3165c.applyDelta(c0412b.f3180d);
            this.f3164b.put(str, c0412b);
            if (constraintWidget != null) {
                c0412b.m1564f(constraintWidget, i);
            }
        }
        return c0412b;
    }

    public void setTransitionProperties(TypedBundle typedBundle) {
        typedBundle.applyDelta(this.f3165c);
        typedBundle.applyDelta(this);
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, int i2) {
        return false;
    }

    public void updateFrom(ConstraintWidgetContainer constraintWidgetContainer, int i) {
        ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
        int size = children.size();
        for (int i2 = 0; i2 < size; i2++) {
            ConstraintWidget constraintWidget = children.get(i2);
            m1558j(constraintWidget.stringId, null, i).m1564f(constraintWidget, i);
        }
    }

    public void addKeyPosition(String str, int i, int i2, float f, float f2) {
        TypedBundle typedBundle = new TypedBundle();
        typedBundle.add(510, 2);
        typedBundle.add(100, i);
        typedBundle.add(506, f);
        typedBundle.add(507, f2);
        m1558j(str, null, 0).m1563e(typedBundle);
        C0411a c0411a = new C0411a(str, i, i2, f, f2);
        HashMap<String, C0411a> hashMap = this.f3163a.get(Integer.valueOf(i));
        if (hashMap == null) {
            hashMap = new HashMap<>();
            this.f3163a.put(Integer.valueOf(i), hashMap);
        }
        hashMap.put(str, c0411a);
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, boolean z) {
        return false;
    }

    public WidgetFrame getEnd(ConstraintWidget constraintWidget) {
        return m1558j(constraintWidget.stringId, null, 1).f3178b;
    }

    public WidgetFrame getInterpolated(ConstraintWidget constraintWidget) {
        return m1558j(constraintWidget.stringId, null, 2).f3179c;
    }

    public WidgetFrame getStart(ConstraintWidget constraintWidget) {
        return m1558j(constraintWidget.stringId, null, 0).f3177a;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, float f) {
        if (i != 706) {
            return false;
        }
        this.f3171i = f;
        return false;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, String str) {
        if (i != 705) {
            return false;
        }
        this.f3167e = str;
        this.f3168f = Easing.getInterpolator(str);
        return false;
    }

    public Interpolator getInterpolator() {
        return getInterpolator(this.f3166d, this.f3167e);
    }
}
