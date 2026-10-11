package androidx.constraintlayout.core.motion.key;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class MotionKeyAttributes extends MotionKey {
    public static final int KEY_TYPE = 1;

    /* renamed from: t */
    public static final String f2786t = "KeyAttribute";

    /* renamed from: u */
    public static final String f2787u = "KeyAttributes";

    /* renamed from: v */
    public static final boolean f2788v = false;

    /* renamed from: c */
    public String f2789c;

    /* renamed from: d */
    public int f2790d = -1;

    /* renamed from: e */
    public int f2791e = 0;

    /* renamed from: f */
    public float f2792f = Float.NaN;

    /* renamed from: g */
    public float f2793g = Float.NaN;

    /* renamed from: h */
    public float f2794h = Float.NaN;

    /* renamed from: i */
    public float f2795i = Float.NaN;

    /* renamed from: j */
    public float f2796j = Float.NaN;

    /* renamed from: k */
    public float f2797k = Float.NaN;

    /* renamed from: l */
    public float f2798l = Float.NaN;

    /* renamed from: m */
    public float f2799m = Float.NaN;

    /* renamed from: n */
    public float f2800n = Float.NaN;

    /* renamed from: o */
    public float f2801o = Float.NaN;

    /* renamed from: p */
    public float f2802p = Float.NaN;

    /* renamed from: q */
    public float f2803q = Float.NaN;

    /* renamed from: r */
    public float f2804r = Float.NaN;

    /* renamed from: s */
    public float f2805s = Float.NaN;

    public MotionKeyAttributes() {
        this.mType = 1;
        this.mCustom = new HashMap<>();
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x009a, code lost:
    
        if (r1.equals("pivotX") == false) goto L15;
     */
    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addValues(java.util.HashMap<java.lang.String, androidx.constraintlayout.core.motion.utils.SplineSet> r7) {
        /*
            Method dump skipped, instructions count: 594
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.key.MotionKeyAttributes.addValues(java.util.HashMap):void");
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    /* renamed from: clone */
    public MotionKey mo72117clone() {
        return null;
    }

    /* renamed from: e */
    public final float m1462e(int i) {
        if (i == 100) {
            return this.mFramePosition;
        }
        switch (i) {
            case 303:
                return this.f2792f;
            case 304:
                return this.f2802p;
            case 305:
                return this.f2803q;
            case 306:
                return this.f2804r;
            case 307:
                return this.f2793g;
            case 308:
                return this.f2795i;
            case 309:
                return this.f2796j;
            case 310:
                return this.f2794h;
            case 311:
                return this.f2800n;
            case 312:
                return this.f2801o;
            case 313:
                return this.f2797k;
            case 314:
                return this.f2798l;
            case 315:
                return this.f2805s;
            case 316:
                return this.f2799m;
            default:
                return Float.NaN;
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void getAttributeNames(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f2792f)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f2793g)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f2794h)) {
            hashSet.add("rotationZ");
        }
        if (!Float.isNaN(this.f2795i)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f2796j)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f2797k)) {
            hashSet.add("pivotX");
        }
        if (!Float.isNaN(this.f2798l)) {
            hashSet.add("pivotY");
        }
        if (!Float.isNaN(this.f2802p)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f2803q)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f2804r)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.f2799m)) {
            hashSet.add("pathRotate");
        }
        if (!Float.isNaN(this.f2800n)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f2801o)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f2805s)) {
            hashSet.add("progress");
        }
        if (this.mCustom.size() > 0) {
            Iterator<String> it2 = this.mCustom.keySet().iterator();
            while (it2.hasNext()) {
                hashSet.add("CUSTOM," + it2.next());
            }
        }
    }

    public int getCurveFit() {
        return this.f2790d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        return TypedValues.AttributesType.getId(str);
    }

    public void printAttributes() {
        HashSet<String> hashSet = new HashSet<>();
        getAttributeNames(hashSet);
        System.out.println(" ------------- " + this.mFramePosition + " -------------");
        String[] strArr = (String[]) hashSet.toArray(new String[0]);
        for (int i = 0; i < strArr.length; i++) {
            int id = TypedValues.AttributesType.getId(strArr[i]);
            System.out.println(strArr[i] + ":" + m1462e(id));
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void setInterpolation(HashMap<String, Integer> hashMap) {
        if (!Float.isNaN(this.f2792f)) {
            hashMap.put("alpha", Integer.valueOf(this.f2790d));
        }
        if (!Float.isNaN(this.f2793g)) {
            hashMap.put("elevation", Integer.valueOf(this.f2790d));
        }
        if (!Float.isNaN(this.f2794h)) {
            hashMap.put("rotationZ", Integer.valueOf(this.f2790d));
        }
        if (!Float.isNaN(this.f2795i)) {
            hashMap.put("rotationX", Integer.valueOf(this.f2790d));
        }
        if (!Float.isNaN(this.f2796j)) {
            hashMap.put("rotationY", Integer.valueOf(this.f2790d));
        }
        if (!Float.isNaN(this.f2797k)) {
            hashMap.put("pivotX", Integer.valueOf(this.f2790d));
        }
        if (!Float.isNaN(this.f2798l)) {
            hashMap.put("pivotY", Integer.valueOf(this.f2790d));
        }
        if (!Float.isNaN(this.f2802p)) {
            hashMap.put("translationX", Integer.valueOf(this.f2790d));
        }
        if (!Float.isNaN(this.f2803q)) {
            hashMap.put("translationY", Integer.valueOf(this.f2790d));
        }
        if (!Float.isNaN(this.f2804r)) {
            hashMap.put("translationZ", Integer.valueOf(this.f2790d));
        }
        if (!Float.isNaN(this.f2799m)) {
            hashMap.put("pathRotate", Integer.valueOf(this.f2790d));
        }
        if (!Float.isNaN(this.f2800n)) {
            hashMap.put("scaleX", Integer.valueOf(this.f2790d));
        }
        if (!Float.isNaN(this.f2801o)) {
            hashMap.put("scaleY", Integer.valueOf(this.f2790d));
        }
        if (!Float.isNaN(this.f2805s)) {
            hashMap.put("progress", Integer.valueOf(this.f2790d));
        }
        if (this.mCustom.size() > 0) {
            Iterator<String> it2 = this.mCustom.keySet().iterator();
            while (it2.hasNext()) {
                hashMap.put("CUSTOM," + it2.next(), Integer.valueOf(this.f2790d));
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, int i2) {
        if (i == 100) {
            this.mFramePosition = i2;
            return true;
        }
        if (i == 301) {
            this.f2790d = i2;
            return true;
        }
        if (i != 302) {
            if (setValue(i, i2)) {
                return true;
            }
            return super.setValue(i, i2);
        }
        this.f2791e = i2;
        return true;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, float f) {
        if (i != 100) {
            switch (i) {
                case 303:
                    this.f2792f = f;
                    return true;
                case 304:
                    this.f2802p = f;
                    return true;
                case 305:
                    this.f2803q = f;
                    return true;
                case 306:
                    this.f2804r = f;
                    return true;
                case 307:
                    this.f2793g = f;
                    return true;
                case 308:
                    this.f2795i = f;
                    return true;
                case 309:
                    this.f2796j = f;
                    return true;
                case 310:
                    this.f2794h = f;
                    return true;
                case 311:
                    this.f2800n = f;
                    return true;
                case 312:
                    this.f2801o = f;
                    return true;
                case 313:
                    this.f2797k = f;
                    return true;
                case 314:
                    this.f2798l = f;
                    return true;
                case 315:
                    this.f2805s = f;
                    return true;
                case 316:
                    this.f2799m = f;
                    return true;
                default:
                    return super.setValue(i, f);
            }
        }
        this.f2799m = f;
        return true;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, String str) {
        if (i == 101) {
            this.f2785b = str;
            return true;
        }
        if (i != 317) {
            return super.setValue(i, str);
        }
        this.f2789c = str;
        return true;
    }
}
