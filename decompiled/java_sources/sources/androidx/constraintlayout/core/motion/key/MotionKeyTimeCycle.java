package androidx.constraintlayout.core.motion.key;

import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class MotionKeyTimeCycle extends MotionKey {
    public static final int KEY_TYPE = 3;

    /* renamed from: u */
    public static final String f2831u = "KeyTimeCycle";

    /* renamed from: v */
    public static final String f2832v = "KeyTimeCycle";

    /* renamed from: c */
    public String f2833c;

    /* renamed from: d */
    public int f2834d = -1;

    /* renamed from: e */
    public float f2835e = Float.NaN;

    /* renamed from: f */
    public float f2836f = Float.NaN;

    /* renamed from: g */
    public float f2837g = Float.NaN;

    /* renamed from: h */
    public float f2838h = Float.NaN;

    /* renamed from: i */
    public float f2839i = Float.NaN;

    /* renamed from: j */
    public float f2840j = Float.NaN;

    /* renamed from: k */
    public float f2841k = Float.NaN;

    /* renamed from: l */
    public float f2842l = Float.NaN;

    /* renamed from: m */
    public float f2843m = Float.NaN;

    /* renamed from: n */
    public float f2844n = Float.NaN;

    /* renamed from: o */
    public float f2845o = Float.NaN;

    /* renamed from: p */
    public float f2846p = Float.NaN;

    /* renamed from: q */
    public int f2847q = 0;

    /* renamed from: r */
    public String f2848r = null;

    /* renamed from: s */
    public float f2849s = Float.NaN;

    /* renamed from: t */
    public float f2850t = 0.0f;

    public MotionKeyTimeCycle() {
        this.mType = 3;
        this.mCustom = new HashMap<>();
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x0089, code lost:
    
        if (r1.equals("scaleX") == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addTimeValues(java.util.HashMap<java.lang.String, androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet> r11) {
        /*
            Method dump skipped, instructions count: 604
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.key.MotionKeyTimeCycle.addTimeValues(java.util.HashMap):void");
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void addValues(HashMap<String, SplineSet> hashMap) {
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void getAttributeNames(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f2835e)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f2836f)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f2837g)) {
            hashSet.add("rotationZ");
        }
        if (!Float.isNaN(this.f2838h)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f2839i)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f2841k)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f2842l)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f2840j)) {
            hashSet.add("pathRotate");
        }
        if (!Float.isNaN(this.f2843m)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f2844n)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f2845o)) {
            hashSet.add("translationZ");
        }
        if (this.mCustom.size() > 0) {
            Iterator<String> it2 = this.mCustom.keySet().iterator();
            while (it2.hasNext()) {
                hashSet.add("CUSTOM," + it2.next());
            }
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        return TypedValues.CycleType.getId(str);
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, int i2) {
        if (i == 100) {
            this.mFramePosition = i2;
            return true;
        }
        if (i != 421) {
            return super.setValue(i, i2);
        }
        this.f2847q = i2;
        return true;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    /* renamed from: clone */
    public MotionKey mo72117clone() {
        return new MotionKeyTimeCycle().copy((MotionKey) this);
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public MotionKeyTimeCycle copy(MotionKey motionKey) {
        super.copy(motionKey);
        MotionKeyTimeCycle motionKeyTimeCycle = (MotionKeyTimeCycle) motionKey;
        this.f2833c = motionKeyTimeCycle.f2833c;
        this.f2834d = motionKeyTimeCycle.f2834d;
        this.f2847q = motionKeyTimeCycle.f2847q;
        this.f2849s = motionKeyTimeCycle.f2849s;
        this.f2850t = motionKeyTimeCycle.f2850t;
        this.f2846p = motionKeyTimeCycle.f2846p;
        this.f2835e = motionKeyTimeCycle.f2835e;
        this.f2836f = motionKeyTimeCycle.f2836f;
        this.f2837g = motionKeyTimeCycle.f2837g;
        this.f2840j = motionKeyTimeCycle.f2840j;
        this.f2838h = motionKeyTimeCycle.f2838h;
        this.f2839i = motionKeyTimeCycle.f2839i;
        this.f2841k = motionKeyTimeCycle.f2841k;
        this.f2842l = motionKeyTimeCycle.f2842l;
        this.f2843m = motionKeyTimeCycle.f2843m;
        this.f2844n = motionKeyTimeCycle.f2844n;
        this.f2845o = motionKeyTimeCycle.f2845o;
        return this;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, float f) {
        if (i == 315) {
            this.f2846p = m1460c(Float.valueOf(f));
            return true;
        }
        if (i == 401) {
            this.f2834d = m1461d(Float.valueOf(f));
            return true;
        }
        if (i == 403) {
            this.f2835e = f;
            return true;
        }
        if (i == 416) {
            this.f2840j = m1460c(Float.valueOf(f));
            return true;
        }
        if (i == 423) {
            this.f2849s = m1460c(Float.valueOf(f));
            return true;
        }
        if (i != 424) {
            switch (i) {
                case 304:
                    this.f2843m = m1460c(Float.valueOf(f));
                    return true;
                case 305:
                    this.f2844n = m1460c(Float.valueOf(f));
                    return true;
                case 306:
                    this.f2845o = m1460c(Float.valueOf(f));
                    return true;
                case 307:
                    this.f2836f = m1460c(Float.valueOf(f));
                    return true;
                case 308:
                    this.f2838h = m1460c(Float.valueOf(f));
                    return true;
                case 309:
                    this.f2839i = m1460c(Float.valueOf(f));
                    return true;
                case 310:
                    this.f2837g = m1460c(Float.valueOf(f));
                    return true;
                case 311:
                    this.f2841k = m1460c(Float.valueOf(f));
                    return true;
                case 312:
                    this.f2842l = m1460c(Float.valueOf(f));
                    return true;
                default:
                    return super.setValue(i, f);
            }
        }
        this.f2850t = m1460c(Float.valueOf(f));
        return true;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, String str) {
        if (i == 420) {
            this.f2833c = str;
            return true;
        }
        if (i != 421) {
            return super.setValue(i, str);
        }
        this.f2847q = 7;
        this.f2848r = str;
        return true;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, boolean z) {
        return super.setValue(i, z);
    }
}
