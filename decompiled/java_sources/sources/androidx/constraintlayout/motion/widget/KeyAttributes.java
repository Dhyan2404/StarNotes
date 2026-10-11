package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.C0503R;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class KeyAttributes extends Key {
    public static final int KEY_TYPE = 1;

    /* renamed from: v */
    public static final String f3533v = "KeyAttribute";

    /* renamed from: w */
    public static final String f3534w = "KeyAttributes";

    /* renamed from: x */
    public static final boolean f3535x = false;

    /* renamed from: e */
    public String f3536e;

    /* renamed from: f */
    public int f3537f = -1;

    /* renamed from: g */
    public boolean f3538g = false;

    /* renamed from: h */
    public float f3539h = Float.NaN;

    /* renamed from: i */
    public float f3540i = Float.NaN;

    /* renamed from: j */
    public float f3541j = Float.NaN;

    /* renamed from: k */
    public float f3542k = Float.NaN;

    /* renamed from: l */
    public float f3543l = Float.NaN;

    /* renamed from: m */
    public float f3544m = Float.NaN;

    /* renamed from: n */
    public float f3545n = Float.NaN;

    /* renamed from: o */
    public float f3546o = Float.NaN;

    /* renamed from: p */
    public float f3547p = Float.NaN;

    /* renamed from: q */
    public float f3548q = Float.NaN;

    /* renamed from: r */
    public float f3549r = Float.NaN;

    /* renamed from: s */
    public float f3550s = Float.NaN;

    /* renamed from: t */
    public float f3551t = Float.NaN;

    /* renamed from: u */
    public float f3552u = Float.NaN;

    /* renamed from: androidx.constraintlayout.motion.widget.KeyAttributes$a */
    /* loaded from: classes3.dex */
    public static class C0464a {

        /* renamed from: a */
        public static final int f3553a = 1;

        /* renamed from: b */
        public static final int f3554b = 2;

        /* renamed from: c */
        public static final int f3555c = 4;

        /* renamed from: d */
        public static final int f3556d = 5;

        /* renamed from: e */
        public static final int f3557e = 6;

        /* renamed from: f */
        public static final int f3558f = 8;

        /* renamed from: g */
        public static final int f3559g = 7;

        /* renamed from: h */
        public static final int f3560h = 9;

        /* renamed from: i */
        public static final int f3561i = 10;

        /* renamed from: j */
        public static final int f3562j = 12;

        /* renamed from: k */
        public static final int f3563k = 13;

        /* renamed from: l */
        public static final int f3564l = 14;

        /* renamed from: m */
        public static final int f3565m = 15;

        /* renamed from: n */
        public static final int f3566n = 16;

        /* renamed from: o */
        public static final int f3567o = 17;

        /* renamed from: p */
        public static final int f3568p = 18;

        /* renamed from: q */
        public static final int f3569q = 19;

        /* renamed from: r */
        public static final int f3570r = 20;

        /* renamed from: s */
        public static SparseIntArray f3571s;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f3571s = sparseIntArray;
            sparseIntArray.append(C0503R.styleable.KeyAttribute_android_alpha, 1);
            f3571s.append(C0503R.styleable.KeyAttribute_android_elevation, 2);
            f3571s.append(C0503R.styleable.KeyAttribute_android_rotation, 4);
            f3571s.append(C0503R.styleable.KeyAttribute_android_rotationX, 5);
            f3571s.append(C0503R.styleable.KeyAttribute_android_rotationY, 6);
            f3571s.append(C0503R.styleable.KeyAttribute_android_transformPivotX, 19);
            f3571s.append(C0503R.styleable.KeyAttribute_android_transformPivotY, 20);
            f3571s.append(C0503R.styleable.KeyAttribute_android_scaleX, 7);
            f3571s.append(C0503R.styleable.KeyAttribute_transitionPathRotate, 8);
            f3571s.append(C0503R.styleable.KeyAttribute_transitionEasing, 9);
            f3571s.append(C0503R.styleable.KeyAttribute_motionTarget, 10);
            f3571s.append(C0503R.styleable.KeyAttribute_framePosition, 12);
            f3571s.append(C0503R.styleable.KeyAttribute_curveFit, 13);
            f3571s.append(C0503R.styleable.KeyAttribute_android_scaleY, 14);
            f3571s.append(C0503R.styleable.KeyAttribute_android_translationX, 15);
            f3571s.append(C0503R.styleable.KeyAttribute_android_translationY, 16);
            f3571s.append(C0503R.styleable.KeyAttribute_android_translationZ, 17);
            f3571s.append(C0503R.styleable.KeyAttribute_motionProgress, 18);
        }

        /* renamed from: a */
        public static void m1746a(KeyAttributes c, TypedArray a) {
            int indexCount = a.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = a.getIndex(i);
                switch (f3571s.get(index)) {
                    case 1:
                        c.f3539h = a.getFloat(index, c.f3539h);
                        break;
                    case 2:
                        c.f3540i = a.getDimension(index, c.f3540i);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyAttribute", "unused attribute 0x" + Integer.toHexString(index) + "   " + f3571s.get(index));
                        break;
                    case 4:
                        c.f3541j = a.getFloat(index, c.f3541j);
                        break;
                    case 5:
                        c.f3542k = a.getFloat(index, c.f3542k);
                        break;
                    case 6:
                        c.f3543l = a.getFloat(index, c.f3543l);
                        break;
                    case 7:
                        c.f3547p = a.getFloat(index, c.f3547p);
                        break;
                    case 8:
                        c.f3546o = a.getFloat(index, c.f3546o);
                        break;
                    case 9:
                        c.f3536e = a.getString(index);
                        break;
                    case 10:
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
                    case 12:
                        c.f3529a = a.getInt(index, c.f3529a);
                        break;
                    case 13:
                        c.f3537f = a.getInteger(index, c.f3537f);
                        break;
                    case 14:
                        c.f3548q = a.getFloat(index, c.f3548q);
                        break;
                    case 15:
                        c.f3549r = a.getDimension(index, c.f3549r);
                        break;
                    case 16:
                        c.f3550s = a.getDimension(index, c.f3550s);
                        break;
                    case 17:
                        c.f3551t = a.getDimension(index, c.f3551t);
                        break;
                    case 18:
                        c.f3552u = a.getFloat(index, c.f3552u);
                        break;
                    case 19:
                        c.f3544m = a.getDimension(index, c.f3544m);
                        break;
                    case 20:
                        c.f3545n = a.getDimension(index, c.f3545n);
                        break;
                }
            }
        }
    }

    public KeyAttributes() {
        this.mType = 1;
        this.f3532d = new HashMap<>();
    }

    /* renamed from: J */
    public int m1745J() {
        return this.f3537f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:133:0x009a, code lost:
    
        if (r1.equals("scaleY") == false) goto L15;
     */
    @Override // androidx.constraintlayout.motion.widget.Key
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addValues(java.util.HashMap<java.lang.String, androidx.constraintlayout.motion.utils.ViewSpline> r7) {
        /*
            Method dump skipped, instructions count: 572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.KeyAttributes.addValues(java.util.HashMap):void");
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public Key copy(Key src) {
        super.copy(src);
        KeyAttributes keyAttributes = (KeyAttributes) src;
        this.f3537f = keyAttributes.f3537f;
        this.f3538g = keyAttributes.f3538g;
        this.f3539h = keyAttributes.f3539h;
        this.f3540i = keyAttributes.f3540i;
        this.f3541j = keyAttributes.f3541j;
        this.f3542k = keyAttributes.f3542k;
        this.f3543l = keyAttributes.f3543l;
        this.f3544m = keyAttributes.f3544m;
        this.f3545n = keyAttributes.f3545n;
        this.f3546o = keyAttributes.f3546o;
        this.f3547p = keyAttributes.f3547p;
        this.f3548q = keyAttributes.f3548q;
        this.f3549r = keyAttributes.f3549r;
        this.f3550s = keyAttributes.f3550s;
        this.f3551t = keyAttributes.f3551t;
        this.f3552u = keyAttributes.f3552u;
        return this;
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void getAttributeNames(HashSet<String> attributes) {
        if (!Float.isNaN(this.f3539h)) {
            attributes.add("alpha");
        }
        if (!Float.isNaN(this.f3540i)) {
            attributes.add("elevation");
        }
        if (!Float.isNaN(this.f3541j)) {
            attributes.add("rotation");
        }
        if (!Float.isNaN(this.f3542k)) {
            attributes.add("rotationX");
        }
        if (!Float.isNaN(this.f3543l)) {
            attributes.add("rotationY");
        }
        if (!Float.isNaN(this.f3544m)) {
            attributes.add(Key.PIVOT_X);
        }
        if (!Float.isNaN(this.f3545n)) {
            attributes.add(Key.PIVOT_Y);
        }
        if (!Float.isNaN(this.f3549r)) {
            attributes.add("translationX");
        }
        if (!Float.isNaN(this.f3550s)) {
            attributes.add("translationY");
        }
        if (!Float.isNaN(this.f3551t)) {
            attributes.add("translationZ");
        }
        if (!Float.isNaN(this.f3546o)) {
            attributes.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f3547p)) {
            attributes.add("scaleX");
        }
        if (!Float.isNaN(this.f3548q)) {
            attributes.add("scaleY");
        }
        if (!Float.isNaN(this.f3552u)) {
            attributes.add("progress");
        }
        if (this.f3532d.size() > 0) {
            Iterator<String> it2 = this.f3532d.keySet().iterator();
            while (it2.hasNext()) {
                attributes.add("CUSTOM," + it2.next());
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void load(Context context, AttributeSet attrs) {
        C0464a.m1746a(this, context.obtainStyledAttributes(attrs, C0503R.styleable.KeyAttribute));
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setInterpolation(HashMap<String, Integer> interpolation) {
        if (this.f3537f == -1) {
            return;
        }
        if (!Float.isNaN(this.f3539h)) {
            interpolation.put("alpha", Integer.valueOf(this.f3537f));
        }
        if (!Float.isNaN(this.f3540i)) {
            interpolation.put("elevation", Integer.valueOf(this.f3537f));
        }
        if (!Float.isNaN(this.f3541j)) {
            interpolation.put("rotation", Integer.valueOf(this.f3537f));
        }
        if (!Float.isNaN(this.f3542k)) {
            interpolation.put("rotationX", Integer.valueOf(this.f3537f));
        }
        if (!Float.isNaN(this.f3543l)) {
            interpolation.put("rotationY", Integer.valueOf(this.f3537f));
        }
        if (!Float.isNaN(this.f3544m)) {
            interpolation.put(Key.PIVOT_X, Integer.valueOf(this.f3537f));
        }
        if (!Float.isNaN(this.f3545n)) {
            interpolation.put(Key.PIVOT_Y, Integer.valueOf(this.f3537f));
        }
        if (!Float.isNaN(this.f3549r)) {
            interpolation.put("translationX", Integer.valueOf(this.f3537f));
        }
        if (!Float.isNaN(this.f3550s)) {
            interpolation.put("translationY", Integer.valueOf(this.f3537f));
        }
        if (!Float.isNaN(this.f3551t)) {
            interpolation.put("translationZ", Integer.valueOf(this.f3537f));
        }
        if (!Float.isNaN(this.f3546o)) {
            interpolation.put("transitionPathRotate", Integer.valueOf(this.f3537f));
        }
        if (!Float.isNaN(this.f3547p)) {
            interpolation.put("scaleX", Integer.valueOf(this.f3537f));
        }
        if (!Float.isNaN(this.f3548q)) {
            interpolation.put("scaleY", Integer.valueOf(this.f3537f));
        }
        if (!Float.isNaN(this.f3552u)) {
            interpolation.put("progress", Integer.valueOf(this.f3537f));
        }
        if (this.f3532d.size() > 0) {
            Iterator<String> it2 = this.f3532d.keySet().iterator();
            while (it2.hasNext()) {
                interpolation.put("CUSTOM," + it2.next(), Integer.valueOf(this.f3537f));
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    public void setValue(String tag, Object value) {
        tag.hashCode();
        char c = 65535;
        switch (tag.hashCode()) {
            case -1913008125:
                if (tag.equals(Key.MOTIONPROGRESS)) {
                    c = 0;
                    break;
                }
                break;
            case -1812823328:
                if (tag.equals("transitionEasing")) {
                    c = 1;
                    break;
                }
                break;
            case -1249320806:
                if (tag.equals("rotationX")) {
                    c = 2;
                    break;
                }
                break;
            case -1249320805:
                if (tag.equals("rotationY")) {
                    c = 3;
                    break;
                }
                break;
            case -1225497657:
                if (tag.equals("translationX")) {
                    c = 4;
                    break;
                }
                break;
            case -1225497656:
                if (tag.equals("translationY")) {
                    c = 5;
                    break;
                }
                break;
            case -1225497655:
                if (tag.equals("translationZ")) {
                    c = 6;
                    break;
                }
                break;
            case -908189618:
                if (tag.equals("scaleX")) {
                    c = 7;
                    break;
                }
                break;
            case -908189617:
                if (tag.equals("scaleY")) {
                    c = '\b';
                    break;
                }
                break;
            case -760884510:
                if (tag.equals(Key.PIVOT_X)) {
                    c = '\t';
                    break;
                }
                break;
            case -760884509:
                if (tag.equals(Key.PIVOT_Y)) {
                    c = '\n';
                    break;
                }
                break;
            case -40300674:
                if (tag.equals("rotation")) {
                    c = 11;
                    break;
                }
                break;
            case -4379043:
                if (tag.equals("elevation")) {
                    c = '\f';
                    break;
                }
                break;
            case 37232917:
                if (tag.equals("transitionPathRotate")) {
                    c = '\r';
                    break;
                }
                break;
            case 92909918:
                if (tag.equals("alpha")) {
                    c = 14;
                    break;
                }
                break;
            case 579057826:
                if (tag.equals("curveFit")) {
                    c = 15;
                    break;
                }
                break;
            case 1941332754:
                if (tag.equals("visibility")) {
                    c = 16;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.f3552u = m1712c(value);
                return;
            case 1:
                this.f3536e = value.toString();
                return;
            case 2:
                this.f3542k = m1712c(value);
                return;
            case 3:
                this.f3543l = m1712c(value);
                return;
            case 4:
                this.f3549r = m1712c(value);
                return;
            case 5:
                this.f3550s = m1712c(value);
                return;
            case 6:
                this.f3551t = m1712c(value);
                return;
            case 7:
                this.f3547p = m1712c(value);
                return;
            case '\b':
                this.f3548q = m1712c(value);
                return;
            case '\t':
                this.f3544m = m1712c(value);
                return;
            case '\n':
                this.f3545n = m1712c(value);
                return;
            case 11:
                this.f3541j = m1712c(value);
                return;
            case '\f':
                this.f3540i = m1712c(value);
                return;
            case '\r':
                this.f3546o = m1712c(value);
                return;
            case 14:
                this.f3539h = m1712c(value);
                return;
            case 15:
                this.f3537f = m1713d(value);
                return;
            case 16:
                this.f3538g = m1711b(value);
                return;
            default:
                return;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: clone */
    public Key mo72118clone() {
        return new KeyAttributes().copy(this);
    }
}
