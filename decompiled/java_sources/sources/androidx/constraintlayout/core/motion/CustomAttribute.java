package androidx.constraintlayout.core.motion;

/* loaded from: classes3.dex */
public class CustomAttribute {

    /* renamed from: i */
    public static final String f2671i = "TransitionLayout";

    /* renamed from: a */
    public boolean f2672a;

    /* renamed from: b */
    public String f2673b;

    /* renamed from: c */
    public AttributeType f2674c;

    /* renamed from: d */
    public int f2675d;

    /* renamed from: e */
    public float f2676e;

    /* renamed from: f */
    public String f2677f;

    /* renamed from: g */
    public boolean f2678g;

    /* renamed from: h */
    public int f2679h;

    /* loaded from: classes3.dex */
    public enum AttributeType {
        INT_TYPE,
        FLOAT_TYPE,
        COLOR_TYPE,
        COLOR_DRAWABLE_TYPE,
        STRING_TYPE,
        BOOLEAN_TYPE,
        DIMENSION_TYPE,
        REFERENCE_TYPE
    }

    /* renamed from: androidx.constraintlayout.core.motion.CustomAttribute$a */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C0390a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f2680a;

        static {
            int[] iArr = new int[AttributeType.values().length];
            f2680a = iArr;
            try {
                iArr[AttributeType.REFERENCE_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2680a[AttributeType.BOOLEAN_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2680a[AttributeType.STRING_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2680a[AttributeType.COLOR_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2680a[AttributeType.COLOR_DRAWABLE_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2680a[AttributeType.INT_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2680a[AttributeType.FLOAT_TYPE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2680a[AttributeType.DIMENSION_TYPE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public CustomAttribute(String str, AttributeType attributeType) {
        this.f2672a = false;
        this.f2673b = str;
        this.f2674c = attributeType;
    }

    /* renamed from: a */
    public static int m1416a(int i) {
        int i2 = (i & (~(i >> 31))) - 255;
        return (i2 & (i2 >> 31)) + 255;
    }

    public static int hsvToRgb(float f, float f2, float f3) {
        float f4 = f * 6.0f;
        int i = (int) f4;
        float f5 = f4 - i;
        float f6 = f3 * 255.0f;
        int i2 = (int) (((1.0f - f2) * f6) + 0.5f);
        int i3 = (int) (((1.0f - (f5 * f2)) * f6) + 0.5f);
        int i4 = (int) (((1.0f - ((1.0f - f5) * f2)) * f6) + 0.5f);
        int i5 = (int) (f6 + 0.5f);
        if (i == 0) {
            return ((i5 << 16) + (i4 << 8) + i2) | (-16777216);
        }
        if (i == 1) {
            return ((i3 << 16) + (i5 << 8) + i2) | (-16777216);
        }
        if (i == 2) {
            return ((i2 << 16) + (i5 << 8) + i4) | (-16777216);
        }
        if (i == 3) {
            return ((i2 << 16) + (i3 << 8) + i5) | (-16777216);
        }
        if (i == 4) {
            return ((i4 << 16) + (i2 << 8) + i5) | (-16777216);
        }
        if (i != 5) {
            return 0;
        }
        return ((i5 << 16) + (i2 << 8) + i3) | (-16777216);
    }

    public boolean diff(CustomAttribute customAttribute) {
        AttributeType attributeType;
        if (customAttribute == null || (attributeType = this.f2674c) != customAttribute.f2674c) {
            return false;
        }
        switch (C0390a.f2680a[attributeType.ordinal()]) {
            case 1:
            case 6:
                return this.f2675d == customAttribute.f2675d;
            case 2:
                return this.f2678g == customAttribute.f2678g;
            case 3:
                return this.f2675d == customAttribute.f2675d;
            case 4:
            case 5:
                return this.f2679h == customAttribute.f2679h;
            case 7:
                return this.f2676e == customAttribute.f2676e;
            case 8:
                return this.f2676e == customAttribute.f2676e;
            default:
                return false;
        }
    }

    public AttributeType getType() {
        return this.f2674c;
    }

    public float getValueToInterpolate() {
        switch (C0390a.f2680a[this.f2674c.ordinal()]) {
            case 2:
                return this.f2678g ? 1.0f : 0.0f;
            case 3:
                throw new RuntimeException("Cannot interpolate String");
            case 4:
            case 5:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 6:
                return this.f2675d;
            case 7:
                return this.f2676e;
            case 8:
                return this.f2676e;
            default:
                return Float.NaN;
        }
    }

    public void getValuesToInterpolate(float[] fArr) {
        switch (C0390a.f2680a[this.f2674c.ordinal()]) {
            case 2:
                fArr[0] = this.f2678g ? 1.0f : 0.0f;
                return;
            case 3:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 4:
            case 5:
                int i = (this.f2679h >> 24) & 255;
                float pow = (float) Math.pow(((r9 >> 16) & 255) / 255.0f, 2.2d);
                float pow2 = (float) Math.pow(((r9 >> 8) & 255) / 255.0f, 2.2d);
                float pow3 = (float) Math.pow((r9 & 255) / 255.0f, 2.2d);
                fArr[0] = pow;
                fArr[1] = pow2;
                fArr[2] = pow3;
                fArr[3] = i / 255.0f;
                return;
            case 6:
                fArr[0] = this.f2675d;
                return;
            case 7:
                fArr[0] = this.f2676e;
                return;
            case 8:
                fArr[0] = this.f2676e;
                return;
            default:
                return;
        }
    }

    public boolean isContinuous() {
        int i = C0390a.f2680a[this.f2674c.ordinal()];
        return (i == 1 || i == 2 || i == 3) ? false : true;
    }

    public int numberOfInterpolatedValues() {
        int i = C0390a.f2680a[this.f2674c.ordinal()];
        return (i == 4 || i == 5) ? 4 : 1;
    }

    public void setColorValue(int i) {
        this.f2679h = i;
    }

    public void setFloatValue(float f) {
        this.f2676e = f;
    }

    public void setIntValue(int i) {
        this.f2675d = i;
    }

    public void setStringValue(String str) {
        this.f2677f = str;
    }

    public void setValue(float[] fArr) {
        switch (C0390a.f2680a[this.f2674c.ordinal()]) {
            case 1:
            case 6:
                this.f2675d = (int) fArr[0];
                return;
            case 2:
                this.f2678g = ((double) fArr[0]) > 0.5d;
                return;
            case 3:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 4:
            case 5:
                int hsvToRgb = hsvToRgb(fArr[0], fArr[1], fArr[2]);
                this.f2679h = hsvToRgb;
                this.f2679h = (m1416a((int) (fArr[3] * 255.0f)) << 24) | (hsvToRgb & 16777215);
                return;
            case 7:
                this.f2676e = fArr[0];
                return;
            case 8:
                this.f2676e = fArr[0];
                return;
            default:
                return;
        }
    }

    public CustomAttribute(String str, AttributeType attributeType, Object obj, boolean z) {
        this.f2673b = str;
        this.f2674c = attributeType;
        this.f2672a = z;
        setValue(obj);
    }

    public void setValue(Object obj) {
        switch (C0390a.f2680a[this.f2674c.ordinal()]) {
            case 1:
            case 6:
                this.f2675d = ((Integer) obj).intValue();
                return;
            case 2:
                this.f2678g = ((Boolean) obj).booleanValue();
                return;
            case 3:
                this.f2677f = (String) obj;
                return;
            case 4:
            case 5:
                this.f2679h = ((Integer) obj).intValue();
                return;
            case 7:
                this.f2676e = ((Float) obj).floatValue();
                return;
            case 8:
                this.f2676e = ((Float) obj).floatValue();
                return;
            default:
                return;
        }
    }

    public CustomAttribute(CustomAttribute customAttribute, Object obj) {
        this.f2672a = false;
        this.f2673b = customAttribute.f2673b;
        this.f2674c = customAttribute.f2674c;
        setValue(obj);
    }
}
