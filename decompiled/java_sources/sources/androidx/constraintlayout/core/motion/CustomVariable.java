package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* loaded from: classes3.dex */
public class CustomVariable {

    /* renamed from: g */
    public static final String f2681g = "TransitionLayout";

    /* renamed from: a */
    public String f2682a;

    /* renamed from: b */
    public int f2683b;

    /* renamed from: c */
    public int f2684c;

    /* renamed from: d */
    public float f2685d;

    /* renamed from: e */
    public String f2686e;

    /* renamed from: f */
    public boolean f2687f;

    public CustomVariable(CustomVariable customVariable) {
        this.f2684c = Integer.MIN_VALUE;
        this.f2685d = Float.NaN;
        this.f2686e = null;
        this.f2682a = customVariable.f2682a;
        this.f2683b = customVariable.f2683b;
        this.f2684c = customVariable.f2684c;
        this.f2685d = customVariable.f2685d;
        this.f2686e = customVariable.f2686e;
        this.f2687f = customVariable.f2687f;
    }

    /* renamed from: a */
    public static int m1417a(int i) {
        int i2 = (i & (~(i >> 31))) - 255;
        return (i2 & (i2 >> 31)) + 255;
    }

    public static String colorString(int i) {
        return "#" + ("00000000" + Integer.toHexString(i)).substring(r2.length() - 8);
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

    public static int rgbaTocColor(float f, float f2, float f3, float f4) {
        int m1417a = m1417a((int) (f * 255.0f));
        int m1417a2 = m1417a((int) (f2 * 255.0f));
        return (m1417a << 16) | (m1417a((int) (f4 * 255.0f)) << 24) | (m1417a2 << 8) | m1417a((int) (f3 * 255.0f));
    }

    public void applyToWidget(MotionWidget motionWidget) {
        int i = this.f2683b;
        switch (i) {
            case 900:
            case 902:
            case TypedValues.Custom.TYPE_REFERENCE /* 906 */:
                motionWidget.setCustomAttribute(this.f2682a, i, this.f2684c);
                return;
            case 901:
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                motionWidget.setCustomAttribute(this.f2682a, i, this.f2685d);
                return;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                motionWidget.setCustomAttribute(this.f2682a, i, this.f2686e);
                return;
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                motionWidget.setCustomAttribute(this.f2682a, i, this.f2687f);
                return;
            default:
                return;
        }
    }

    public CustomVariable copy() {
        return new CustomVariable(this);
    }

    public boolean diff(CustomVariable customVariable) {
        int i;
        if (customVariable == null || (i = this.f2683b) != customVariable.f2683b) {
            return false;
        }
        switch (i) {
            case 900:
            case TypedValues.Custom.TYPE_REFERENCE /* 906 */:
                return this.f2684c == customVariable.f2684c;
            case 901:
                return this.f2685d == customVariable.f2685d;
            case 902:
                return this.f2684c == customVariable.f2684c;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                return this.f2684c == customVariable.f2684c;
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                return this.f2687f == customVariable.f2687f;
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                return this.f2685d == customVariable.f2685d;
            default:
                return false;
        }
    }

    public boolean getBooleanValue() {
        return this.f2687f;
    }

    public int getColorValue() {
        return this.f2684c;
    }

    public float getFloatValue() {
        return this.f2685d;
    }

    public int getIntegerValue() {
        return this.f2684c;
    }

    public int getInterpolatedColor(float[] fArr) {
        return (m1417a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (m1417a((int) (fArr[3] * 255.0f)) << 24) | (m1417a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | m1417a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
    }

    public String getName() {
        return this.f2682a;
    }

    public String getStringValue() {
        return this.f2686e;
    }

    public int getType() {
        return this.f2683b;
    }

    public float getValueToInterpolate() {
        switch (this.f2683b) {
            case 900:
                return this.f2684c;
            case 901:
                return this.f2685d;
            case 902:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                throw new RuntimeException("Cannot interpolate String");
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                return this.f2687f ? 1.0f : 0.0f;
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                return this.f2685d;
            default:
                return Float.NaN;
        }
    }

    public void getValuesToInterpolate(float[] fArr) {
        switch (this.f2683b) {
            case 900:
                fArr[0] = this.f2684c;
                return;
            case 901:
                fArr[0] = this.f2685d;
                return;
            case 902:
                int i = (this.f2684c >> 24) & 255;
                float pow = (float) Math.pow(((r9 >> 16) & 255) / 255.0f, 2.2d);
                float pow2 = (float) Math.pow(((r9 >> 8) & 255) / 255.0f, 2.2d);
                float pow3 = (float) Math.pow((r9 & 255) / 255.0f, 2.2d);
                fArr[0] = pow;
                fArr[1] = pow2;
                fArr[2] = pow3;
                fArr[3] = i / 255.0f;
                return;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                throw new RuntimeException("Cannot interpolate String");
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                fArr[0] = this.f2687f ? 1.0f : 0.0f;
                return;
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                fArr[0] = this.f2685d;
                return;
            default:
                return;
        }
    }

    public boolean isContinuous() {
        int i = this.f2683b;
        return (i == 903 || i == 904 || i == 906) ? false : true;
    }

    public int numberOfInterpolatedValues() {
        return this.f2683b != 902 ? 1 : 4;
    }

    public void setBooleanValue(boolean z) {
        this.f2687f = z;
    }

    public void setFloatValue(float f) {
        this.f2685d = f;
    }

    public void setIntValue(int i) {
        this.f2684c = i;
    }

    public void setInterpolatedValue(MotionWidget motionWidget, float[] fArr) {
        int i = this.f2683b;
        switch (i) {
            case 900:
                motionWidget.setCustomAttribute(this.f2682a, i, (int) fArr[0]);
                return;
            case 901:
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                motionWidget.setCustomAttribute(this.f2682a, i, fArr[0]);
                return;
            case 902:
                motionWidget.setCustomAttribute(this.f2682a, this.f2683b, (m1417a((int) (fArr[3] * 255.0f)) << 24) | (m1417a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (m1417a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | m1417a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f)));
                return;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
            case TypedValues.Custom.TYPE_REFERENCE /* 906 */:
                throw new RuntimeException("unable to interpolate " + this.f2682a);
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                motionWidget.setCustomAttribute(this.f2682a, i, fArr[0] > 0.5f);
                return;
            default:
                return;
        }
    }

    public void setStringValue(String str) {
        this.f2686e = str;
    }

    public void setValue(float[] fArr) {
        switch (this.f2683b) {
            case 900:
            case TypedValues.Custom.TYPE_REFERENCE /* 906 */:
                this.f2684c = (int) fArr[0];
                return;
            case 901:
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                this.f2685d = fArr[0];
                return;
            case 902:
                this.f2684c = ((Math.round(fArr[3] * 255.0f) & 255) << 24) | ((Math.round(((float) Math.pow(fArr[0], 0.5d)) * 255.0f) & 255) << 16) | ((Math.round(((float) Math.pow(fArr[1], 0.5d)) * 255.0f) & 255) << 8) | (Math.round(((float) Math.pow(fArr[2], 0.5d)) * 255.0f) & 255);
                return;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                throw new RuntimeException("Cannot interpolate String");
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                this.f2687f = ((double) fArr[0]) > 0.5d;
                return;
            default:
                return;
        }
    }

    public String toString() {
        String str = this.f2682a + ':';
        switch (this.f2683b) {
            case 900:
                return str + this.f2684c;
            case 901:
                return str + this.f2685d;
            case 902:
                return str + colorString(this.f2684c);
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                return str + this.f2686e;
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                return str + Boolean.valueOf(this.f2687f);
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                return str + this.f2685d;
            default:
                return str + "????";
        }
    }

    public CustomVariable(String str, int i, String str2) {
        this.f2684c = Integer.MIN_VALUE;
        this.f2685d = Float.NaN;
        this.f2682a = str;
        this.f2683b = i;
        this.f2686e = str2;
    }

    public void setValue(Object obj) {
        switch (this.f2683b) {
            case 900:
            case TypedValues.Custom.TYPE_REFERENCE /* 906 */:
                this.f2684c = ((Integer) obj).intValue();
                return;
            case 901:
                this.f2685d = ((Float) obj).floatValue();
                return;
            case 902:
                this.f2684c = ((Integer) obj).intValue();
                return;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                this.f2686e = (String) obj;
                return;
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                this.f2687f = ((Boolean) obj).booleanValue();
                return;
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                this.f2685d = ((Float) obj).floatValue();
                return;
            default:
                return;
        }
    }

    public CustomVariable(String str, int i, int i2) {
        this.f2684c = Integer.MIN_VALUE;
        this.f2685d = Float.NaN;
        this.f2686e = null;
        this.f2682a = str;
        this.f2683b = i;
        if (i == 901) {
            this.f2685d = i2;
        } else {
            this.f2684c = i2;
        }
    }

    public CustomVariable(String str, int i, float f) {
        this.f2684c = Integer.MIN_VALUE;
        this.f2686e = null;
        this.f2682a = str;
        this.f2683b = i;
        this.f2685d = f;
    }

    public CustomVariable(String str, int i, boolean z) {
        this.f2684c = Integer.MIN_VALUE;
        this.f2685d = Float.NaN;
        this.f2686e = null;
        this.f2682a = str;
        this.f2683b = i;
        this.f2687f = z;
    }

    public CustomVariable(String str, int i) {
        this.f2684c = Integer.MIN_VALUE;
        this.f2685d = Float.NaN;
        this.f2686e = null;
        this.f2682a = str;
        this.f2683b = i;
    }

    public CustomVariable(String str, int i, Object obj) {
        this.f2684c = Integer.MIN_VALUE;
        this.f2685d = Float.NaN;
        this.f2686e = null;
        this.f2682a = str;
        this.f2683b = i;
        setValue(obj);
    }

    public CustomVariable(CustomVariable customVariable, Object obj) {
        this.f2684c = Integer.MIN_VALUE;
        this.f2685d = Float.NaN;
        this.f2686e = null;
        this.f2682a = customVariable.f2682a;
        this.f2683b = customVariable.f2683b;
        setValue(obj);
    }
}
