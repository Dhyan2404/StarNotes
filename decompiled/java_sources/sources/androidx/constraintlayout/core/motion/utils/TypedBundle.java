package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* loaded from: classes3.dex */
public class TypedBundle {

    /* renamed from: m */
    public static final int f3054m = 4;

    /* renamed from: n */
    public static final int f3055n = 10;

    /* renamed from: o */
    public static final int f3056o = 10;

    /* renamed from: p */
    public static final int f3057p = 5;

    /* renamed from: a */
    public int[] f3058a = new int[10];

    /* renamed from: b */
    public int[] f3059b = new int[10];

    /* renamed from: c */
    public int f3060c = 0;

    /* renamed from: d */
    public int[] f3061d = new int[10];

    /* renamed from: e */
    public float[] f3062e = new float[10];

    /* renamed from: f */
    public int f3063f = 0;

    /* renamed from: g */
    public int[] f3064g = new int[5];

    /* renamed from: h */
    public String[] f3065h = new String[5];

    /* renamed from: i */
    public int f3066i = 0;

    /* renamed from: j */
    public int[] f3067j = new int[4];

    /* renamed from: k */
    public boolean[] f3068k = new boolean[4];

    /* renamed from: l */
    public int f3069l = 0;

    public void add(int i, int i2) {
        int i3 = this.f3060c;
        int[] iArr = this.f3058a;
        if (i3 >= iArr.length) {
            this.f3058a = Arrays.copyOf(iArr, iArr.length * 2);
            int[] iArr2 = this.f3059b;
            this.f3059b = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.f3058a;
        int i4 = this.f3060c;
        iArr3[i4] = i;
        int[] iArr4 = this.f3059b;
        this.f3060c = i4 + 1;
        iArr4[i4] = i2;
    }

    public void addIfNotNull(int i, String str) {
        if (str != null) {
            add(i, str);
        }
    }

    public void applyDelta(TypedValues typedValues) {
        for (int i = 0; i < this.f3060c; i++) {
            typedValues.setValue(this.f3058a[i], this.f3059b[i]);
        }
        for (int i2 = 0; i2 < this.f3063f; i2++) {
            typedValues.setValue(this.f3061d[i2], this.f3062e[i2]);
        }
        for (int i3 = 0; i3 < this.f3066i; i3++) {
            typedValues.setValue(this.f3064g[i3], this.f3065h[i3]);
        }
        for (int i4 = 0; i4 < this.f3069l; i4++) {
            typedValues.setValue(this.f3067j[i4], this.f3068k[i4]);
        }
    }

    public void clear() {
        this.f3069l = 0;
        this.f3066i = 0;
        this.f3063f = 0;
        this.f3060c = 0;
    }

    public int getInteger(int i) {
        for (int i2 = 0; i2 < this.f3060c; i2++) {
            if (this.f3058a[i2] == i) {
                return this.f3059b[i2];
            }
        }
        return -1;
    }

    public void add(int i, float f) {
        int i2 = this.f3063f;
        int[] iArr = this.f3061d;
        if (i2 >= iArr.length) {
            this.f3061d = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f3062e;
            this.f3062e = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.f3061d;
        int i3 = this.f3063f;
        iArr2[i3] = i;
        float[] fArr2 = this.f3062e;
        this.f3063f = i3 + 1;
        fArr2[i3] = f;
    }

    public void applyDelta(TypedBundle typedBundle) {
        for (int i = 0; i < this.f3060c; i++) {
            typedBundle.add(this.f3058a[i], this.f3059b[i]);
        }
        for (int i2 = 0; i2 < this.f3063f; i2++) {
            typedBundle.add(this.f3061d[i2], this.f3062e[i2]);
        }
        for (int i3 = 0; i3 < this.f3066i; i3++) {
            typedBundle.add(this.f3064g[i3], this.f3065h[i3]);
        }
        for (int i4 = 0; i4 < this.f3069l; i4++) {
            typedBundle.add(this.f3067j[i4], this.f3068k[i4]);
        }
    }

    public void add(int i, String str) {
        int i2 = this.f3066i;
        int[] iArr = this.f3064g;
        if (i2 >= iArr.length) {
            this.f3064g = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.f3065h;
            this.f3065h = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
        }
        int[] iArr2 = this.f3064g;
        int i3 = this.f3066i;
        iArr2[i3] = i;
        String[] strArr2 = this.f3065h;
        this.f3066i = i3 + 1;
        strArr2[i3] = str;
    }

    public void add(int i, boolean z) {
        int i2 = this.f3069l;
        int[] iArr = this.f3067j;
        if (i2 >= iArr.length) {
            this.f3067j = Arrays.copyOf(iArr, iArr.length * 2);
            boolean[] zArr = this.f3068k;
            this.f3068k = Arrays.copyOf(zArr, zArr.length * 2);
        }
        int[] iArr2 = this.f3067j;
        int i3 = this.f3069l;
        iArr2[i3] = i;
        boolean[] zArr2 = this.f3068k;
        this.f3069l = i3 + 1;
        zArr2[i3] = z;
    }
}
