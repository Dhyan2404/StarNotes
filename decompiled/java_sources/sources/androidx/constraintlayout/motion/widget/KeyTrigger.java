package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.C0503R;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;

/* loaded from: classes3.dex */
public class KeyTrigger extends Key {

    /* renamed from: A */
    public static final String f3689A = "KeyTrigger";
    public static final String CROSS = "CROSS";
    public static final int KEY_TYPE = 5;
    public static final String NEGATIVE_CROSS = "negativeCross";
    public static final String POSITIVE_CROSS = "positiveCross";
    public static final String POST_LAYOUT = "postLayout";
    public static final String TRIGGER_COLLISION_ID = "triggerCollisionId";
    public static final String TRIGGER_COLLISION_VIEW = "triggerCollisionView";
    public static final String TRIGGER_ID = "triggerID";
    public static final String TRIGGER_RECEIVER = "triggerReceiver";
    public static final String TRIGGER_SLACK = "triggerSlack";
    public static final String VIEW_TRANSITION_ON_CROSS = "viewTransitionOnCross";
    public static final String VIEW_TRANSITION_ON_NEGATIVE_CROSS = "viewTransitionOnNegativeCross";
    public static final String VIEW_TRANSITION_ON_POSITIVE_CROSS = "viewTransitionOnPositiveCross";

    /* renamed from: z */
    public static final String f3690z = "KeyTrigger";

    /* renamed from: e */
    public int f3691e = -1;

    /* renamed from: f */
    public String f3692f = null;

    /* renamed from: g */
    public int f3693g;

    /* renamed from: h */
    public String f3694h;

    /* renamed from: i */
    public String f3695i;

    /* renamed from: j */
    public int f3696j;

    /* renamed from: k */
    public int f3697k;

    /* renamed from: l */
    public View f3698l;

    /* renamed from: m */
    public float f3699m;

    /* renamed from: n */
    public boolean f3700n;

    /* renamed from: o */
    public boolean f3701o;

    /* renamed from: p */
    public boolean f3702p;

    /* renamed from: q */
    public float f3703q;

    /* renamed from: r */
    public float f3704r;

    /* renamed from: s */
    public boolean f3705s;

    /* renamed from: t */
    public int f3706t;

    /* renamed from: u */
    public int f3707u;

    /* renamed from: v */
    public int f3708v;

    /* renamed from: w */
    public RectF f3709w;

    /* renamed from: x */
    public RectF f3710x;

    /* renamed from: y */
    public HashMap<String, Method> f3711y;

    /* renamed from: androidx.constraintlayout.motion.widget.KeyTrigger$a */
    /* loaded from: classes3.dex */
    public static class C0468a {

        /* renamed from: a */
        public static final int f3712a = 1;

        /* renamed from: b */
        public static final int f3713b = 2;

        /* renamed from: c */
        public static final int f3714c = 4;

        /* renamed from: d */
        public static final int f3715d = 5;

        /* renamed from: e */
        public static final int f3716e = 6;

        /* renamed from: f */
        public static final int f3717f = 7;

        /* renamed from: g */
        public static final int f3718g = 8;

        /* renamed from: h */
        public static final int f3719h = 9;

        /* renamed from: i */
        public static final int f3720i = 10;

        /* renamed from: j */
        public static final int f3721j = 11;

        /* renamed from: k */
        public static final int f3722k = 12;

        /* renamed from: l */
        public static final int f3723l = 13;

        /* renamed from: m */
        public static final int f3724m = 14;

        /* renamed from: n */
        public static SparseIntArray f3725n;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f3725n = sparseIntArray;
            sparseIntArray.append(C0503R.styleable.KeyTrigger_framePosition, 8);
            f3725n.append(C0503R.styleable.KeyTrigger_onCross, 4);
            f3725n.append(C0503R.styleable.KeyTrigger_onNegativeCross, 1);
            f3725n.append(C0503R.styleable.KeyTrigger_onPositiveCross, 2);
            f3725n.append(C0503R.styleable.KeyTrigger_motionTarget, 7);
            f3725n.append(C0503R.styleable.KeyTrigger_triggerId, 6);
            f3725n.append(C0503R.styleable.KeyTrigger_triggerSlack, 5);
            f3725n.append(C0503R.styleable.KeyTrigger_motion_triggerOnCollision, 9);
            f3725n.append(C0503R.styleable.KeyTrigger_motion_postLayoutCollision, 10);
            f3725n.append(C0503R.styleable.KeyTrigger_triggerReceiver, 11);
            f3725n.append(C0503R.styleable.KeyTrigger_viewTransitionOnCross, 12);
            f3725n.append(C0503R.styleable.KeyTrigger_viewTransitionOnNegativeCross, 13);
            f3725n.append(C0503R.styleable.KeyTrigger_viewTransitionOnPositiveCross, 14);
        }

        /* renamed from: a */
        public static void m1850a(KeyTrigger c, TypedArray a, Context context) {
            int indexCount = a.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = a.getIndex(i);
                switch (f3725n.get(index)) {
                    case 1:
                        c.f3694h = a.getString(index);
                        break;
                    case 2:
                        c.f3695i = a.getString(index);
                        break;
                    case 3:
                    default:
                        Log.e("KeyTrigger", "unused attribute 0x" + Integer.toHexString(index) + "   " + f3725n.get(index));
                        break;
                    case 4:
                        c.f3692f = a.getString(index);
                        break;
                    case 5:
                        c.f3699m = a.getFloat(index, c.f3699m);
                        break;
                    case 6:
                        c.f3696j = a.getResourceId(index, c.f3696j);
                        break;
                    case 7:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = a.getResourceId(index, c.f3530b);
                            c.f3530b = resourceId;
                            if (resourceId == -1) {
                                c.f3531c = a.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (a.peekValue(index).type == 3) {
                            c.f3531c = a.getString(index);
                            break;
                        } else {
                            c.f3530b = a.getResourceId(index, c.f3530b);
                            break;
                        }
                    case 8:
                        int integer = a.getInteger(index, c.f3529a);
                        c.f3529a = integer;
                        c.f3703q = (integer + 0.5f) / 100.0f;
                        break;
                    case 9:
                        c.f3697k = a.getResourceId(index, c.f3697k);
                        break;
                    case 10:
                        c.f3705s = a.getBoolean(index, c.f3705s);
                        break;
                    case 11:
                        c.f3693g = a.getResourceId(index, c.f3693g);
                        break;
                    case 12:
                        c.f3708v = a.getResourceId(index, c.f3708v);
                        break;
                    case 13:
                        c.f3706t = a.getResourceId(index, c.f3706t);
                        break;
                    case 14:
                        c.f3707u = a.getResourceId(index, c.f3707u);
                        break;
                }
            }
        }
    }

    public KeyTrigger() {
        int i = Key.UNSET;
        this.f3693g = i;
        this.f3694h = null;
        this.f3695i = null;
        this.f3696j = i;
        this.f3697k = i;
        this.f3698l = null;
        this.f3699m = 0.1f;
        this.f3700n = true;
        this.f3701o = true;
        this.f3702p = true;
        this.f3703q = Float.NaN;
        this.f3705s = false;
        this.f3706t = i;
        this.f3707u = i;
        this.f3708v = i;
        this.f3709w = new RectF();
        this.f3710x = new RectF();
        this.f3711y = new HashMap<>();
        this.mType = 5;
        this.f3532d = new HashMap<>();
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void addValues(HashMap<String, ViewSpline> splines) {
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void conditionallyFire(float r10, android.view.View r11) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyTrigger.conditionallyFire(float, android.view.View):void");
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key src) {
        super.copy(src);
        KeyTrigger keyTrigger = (KeyTrigger) src;
        this.f3691e = keyTrigger.f3691e;
        this.f3692f = keyTrigger.f3692f;
        this.f3693g = keyTrigger.f3693g;
        this.f3694h = keyTrigger.f3694h;
        this.f3695i = keyTrigger.f3695i;
        this.f3696j = keyTrigger.f3696j;
        this.f3697k = keyTrigger.f3697k;
        this.f3698l = keyTrigger.f3698l;
        this.f3699m = keyTrigger.f3699m;
        this.f3700n = keyTrigger.f3700n;
        this.f3701o = keyTrigger.f3701o;
        this.f3702p = keyTrigger.f3702p;
        this.f3703q = keyTrigger.f3703q;
        this.f3704r = keyTrigger.f3704r;
        this.f3705s = keyTrigger.f3705s;
        this.f3709w = keyTrigger.f3709w;
        this.f3710x = keyTrigger.f3710x;
        this.f3711y = keyTrigger.f3711y;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> attributes) {
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attrs) {
        C0468a.m1850a(this, context.obtainStyledAttributes(attrs, C0503R.styleable.KeyTrigger), context);
    }

    /* renamed from: q */
    public final void m1846q(String str, View call) {
        Method method;
        if (str == null) {
            return;
        }
        if (str.startsWith(".")) {
            m1847r(str, call);
            return;
        }
        if (this.f3711y.containsKey(str)) {
            method = this.f3711y.get(str);
            if (method == null) {
                return;
            }
        } else {
            method = null;
        }
        if (method == null) {
            try {
                method = call.getClass().getMethod(str, new Class[0]);
                this.f3711y.put(str, method);
            } catch (NoSuchMethodException unused) {
                this.f3711y.put(str, null);
                Log.e("KeyTrigger", "Could not find method \"" + str + "\"on class " + call.getClass().getSimpleName() + " " + Debug.getName(call));
                return;
            }
        }
        try {
            method.invoke(call, new Object[0]);
        } catch (Exception unused2) {
            Log.e("KeyTrigger", "Exception in call \"" + this.f3692f + "\"on class " + call.getClass().getSimpleName() + " " + Debug.getName(call));
        }
    }

    /* renamed from: r */
    public final void m1847r(String str, View view) {
        boolean z = str.length() == 1;
        if (!z) {
            str = str.substring(1).toLowerCase(Locale.ROOT);
        }
        for (String str2 : this.f3532d.keySet()) {
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            if (z || lowerCase.matches(str)) {
                ConstraintAttribute constraintAttribute = this.f3532d.get(str2);
                if (constraintAttribute != null) {
                    constraintAttribute.applyCustom(view);
                }
            }
        }
    }

    /* renamed from: s */
    public int m1848s() {
        return this.f3691e;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setValue(String tag, Object value) {
        tag.hashCode();
        char c = 65535;
        switch (tag.hashCode()) {
            case -1594793529:
                if (tag.equals("positiveCross")) {
                    c = 0;
                    break;
                }
                break;
            case -966421266:
                if (tag.equals("viewTransitionOnPositiveCross")) {
                    c = 1;
                    break;
                }
                break;
            case -786670827:
                if (tag.equals("triggerCollisionId")) {
                    c = 2;
                    break;
                }
                break;
            case -648752941:
                if (tag.equals("triggerID")) {
                    c = 3;
                    break;
                }
                break;
            case -638126837:
                if (tag.equals("negativeCross")) {
                    c = 4;
                    break;
                }
                break;
            case -76025313:
                if (tag.equals("triggerCollisionView")) {
                    c = 5;
                    break;
                }
                break;
            case -9754574:
                if (tag.equals("viewTransitionOnNegativeCross")) {
                    c = 6;
                    break;
                }
                break;
            case 64397344:
                if (tag.equals("CROSS")) {
                    c = 7;
                    break;
                }
                break;
            case 364489912:
                if (tag.equals("triggerSlack")) {
                    c = '\b';
                    break;
                }
                break;
            case 1301930599:
                if (tag.equals("viewTransitionOnCross")) {
                    c = '\t';
                    break;
                }
                break;
            case 1401391082:
                if (tag.equals("postLayout")) {
                    c = '\n';
                    break;
                }
                break;
            case 1535404999:
                if (tag.equals("triggerReceiver")) {
                    c = 11;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.f3695i = value.toString();
                return;
            case 1:
                this.f3707u = m1713d(value);
                return;
            case 2:
                this.f3697k = m1713d(value);
                return;
            case 3:
                this.f3696j = m1713d(value);
                return;
            case 4:
                this.f3694h = value.toString();
                return;
            case 5:
                this.f3698l = (View) value;
                return;
            case 6:
                this.f3706t = m1713d(value);
                return;
            case 7:
                this.f3692f = value.toString();
                return;
            case '\b':
                this.f3699m = m1712c(value);
                return;
            case '\t':
                this.f3708v = m1713d(value);
                return;
            case '\n':
                this.f3705s = m1711b(value);
                return;
            case 11:
                this.f3693g = m1713d(value);
                return;
            default:
                return;
        }
    }

    /* renamed from: t */
    public final void m1849t(RectF rect, View child, boolean postLayout) {
        rect.top = child.getTop();
        rect.bottom = child.getBottom();
        rect.left = child.getLeft();
        rect.right = child.getRight();
        if (postLayout) {
            child.getMatrix().mapRect(rect);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: clone */
    public Key mo72118clone() {
        return new KeyTrigger().copy(this);
    }
}
