package androidx.core.content.res;

import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.Size;
import androidx.core.graphics.ColorUtils;
import com.sunia.HTREnginev2.and;
import com.sunia.HTREnginev2.d5o;
import kotlin.jvm.internal.DoubleCompanionObject;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public class CamColor {

    /* renamed from: j */
    public static final float f5333j = 0.2f;

    /* renamed from: k */
    public static final float f5334k = 1.0f;

    /* renamed from: l */
    public static final float f5335l = 0.4f;

    /* renamed from: m */
    public static final float f5336m = 0.01f;

    /* renamed from: a */
    public final float f5337a;

    /* renamed from: b */
    public final float f5338b;

    /* renamed from: c */
    public final float f5339c;

    /* renamed from: d */
    public final float f5340d;

    /* renamed from: e */
    public final float f5341e;

    /* renamed from: f */
    public final float f5342f;

    /* renamed from: g */
    public final float f5343g;

    /* renamed from: h */
    public final float f5344h;

    /* renamed from: i */
    public final float f5345i;

    public CamColor(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        this.f5337a = f;
        this.f5338b = f2;
        this.f5339c = f3;
        this.f5340d = f4;
        this.f5341e = f5;
        this.f5342f = f6;
        this.f5343g = f7;
        this.f5344h = f8;
        this.f5345i = f9;
    }

    @Nullable
    /* renamed from: b */
    public static CamColor m2837b(@FloatRange(from = 0.0d, m280to = 360.0d) float f, @FloatRange(from = 0.0d, m280to = Double.POSITIVE_INFINITY, toInclusive = false) float f2, @FloatRange(from = 0.0d, m280to = 100.0d) float f3) {
        float f4 = 100.0f;
        float f5 = 1000.0f;
        float f6 = 0.0f;
        CamColor camColor = null;
        float f7 = 1000.0f;
        while (Math.abs(f6 - f4) > 0.01f) {
            float f8 = ((f4 - f6) / 2.0f) + f6;
            int m2854r = m2840e(f8, f2, f).m2854r();
            float m53044b = and.m53044b(m2854r);
            float abs = Math.abs(f3 - m53044b);
            if (abs < 0.2f) {
                CamColor m2838c = m2838c(m2854r);
                float m2843a = m2838c.m2843a(m2840e(m2838c.m2848k(), m2838c.m2846i(), f));
                if (m2843a <= 1.0f) {
                    camColor = m2838c;
                    f5 = abs;
                    f7 = m2843a;
                }
            }
            if (f5 == 0.0f && f7 == 0.0f) {
                break;
            }
            if (m53044b < f3) {
                f6 = f8;
            } else {
                f4 = f8;
            }
        }
        return camColor;
    }

    @NonNull
    /* renamed from: c */
    public static CamColor m2838c(@ColorInt int i) {
        float[] fArr = new float[7];
        float[] fArr2 = new float[3];
        m2839d(i, d5o.f67513k, fArr, fArr2);
        return new CamColor(fArr2[0], fArr2[1], fArr[0], fArr[1], fArr[2], fArr[3], fArr[4], fArr[5], fArr[6]);
    }

    /* renamed from: d */
    public static void m2839d(@ColorInt int i, @NonNull d5o d5oVar, @Nullable @Size(7) float[] fArr, @NonNull @Size(3) float[] fArr2) {
        and.m53048f(i, fArr2);
        float[][] fArr3 = and.f64877a;
        float f = fArr2[0];
        float[] fArr4 = fArr3[0];
        float f2 = fArr4[0] * f;
        float f3 = fArr2[1];
        float f4 = f2 + (fArr4[1] * f3);
        float f5 = fArr2[2];
        float f6 = f4 + (fArr4[2] * f5);
        float[] fArr5 = fArr3[1];
        float f7 = (fArr5[0] * f) + (fArr5[1] * f3) + (fArr5[2] * f5);
        float[] fArr6 = fArr3[2];
        float f8 = (f * fArr6[0]) + (f3 * fArr6[1]) + (f5 * fArr6[2]);
        float f9 = d5oVar.m53588i()[0] * f6;
        float f10 = d5oVar.m53588i()[1] * f7;
        float f11 = d5oVar.m53588i()[2] * f8;
        float pow = (float) Math.pow((d5oVar.m53582c() * Math.abs(f9)) / 100.0d, 0.42d);
        float pow2 = (float) Math.pow((d5oVar.m53582c() * Math.abs(f10)) / 100.0d, 0.42d);
        float pow3 = (float) Math.pow((d5oVar.m53582c() * Math.abs(f11)) / 100.0d, 0.42d);
        float signum = ((Math.signum(f9) * 400.0f) * pow) / (pow + 27.13f);
        float signum2 = ((Math.signum(f10) * 400.0f) * pow2) / (pow2 + 27.13f);
        float signum3 = ((Math.signum(f11) * 400.0f) * pow3) / (pow3 + 27.13f);
        double d = signum3;
        float f12 = ((float) (((signum * 11.0d) + (signum2 * (-12.0d))) + d)) / 11.0f;
        float f13 = ((float) ((signum + signum2) - (d * 2.0d))) / 9.0f;
        float f14 = signum2 * 20.0f;
        float f15 = (((signum * 20.0f) + f14) + (21.0f * signum3)) / 20.0f;
        float f16 = (((signum * 40.0f) + f14) + signum3) / 20.0f;
        float atan2 = (((float) Math.atan2(f13, f12)) * 180.0f) / 3.1415927f;
        if (atan2 < 0.0f) {
            atan2 += 360.0f;
        } else if (atan2 >= 360.0f) {
            atan2 -= 360.0f;
        }
        float f17 = (3.1415927f * atan2) / 180.0f;
        float pow4 = ((float) Math.pow((f16 * d5oVar.m53585f()) / d5oVar.m53580a(), d5oVar.m53581b() * d5oVar.m53589j())) * 100.0f;
        float m53581b = (4.0f / d5oVar.m53581b()) * ((float) Math.sqrt(pow4 / 100.0f)) * (d5oVar.m53580a() + 4.0f) * d5oVar.m53583d();
        float sqrt = ((float) Math.sqrt(pow4 / 100.0d)) * ((float) Math.pow(1.64d - Math.pow(0.29d, d5oVar.m53584e()), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos((((((double) atan2) < 20.14d ? 360.0f + atan2 : atan2) * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * d5oVar.m53586g()) * d5oVar.m53587h()) * ((float) Math.sqrt((f12 * f12) + (f13 * f13)))) / (f15 + 0.305f), 0.9d));
        float m53583d = d5oVar.m53583d() * sqrt;
        float sqrt2 = ((float) Math.sqrt((r7 * d5oVar.m53581b()) / (d5oVar.m53580a() + 4.0f))) * 50.0f;
        float f18 = (1.7f * pow4) / ((0.007f * pow4) + 1.0f);
        float log = ((float) Math.log((0.0228f * m53583d) + 1.0f)) * 43.85965f;
        double d2 = f17;
        float cos = ((float) Math.cos(d2)) * log;
        float sin = log * ((float) Math.sin(d2));
        fArr2[0] = atan2;
        fArr2[1] = sqrt;
        if (fArr != null) {
            fArr[0] = pow4;
            fArr[1] = m53581b;
            fArr[2] = m53583d;
            fArr[3] = sqrt2;
            fArr[4] = f18;
            fArr[5] = cos;
            fArr[6] = sin;
        }
    }

    @NonNull
    /* renamed from: e */
    public static CamColor m2840e(@FloatRange(from = 0.0d, m280to = 100.0d) float f, @FloatRange(from = 0.0d, m280to = Double.POSITIVE_INFINITY, toInclusive = false) float f2, @FloatRange(from = 0.0d, m280to = 360.0d) float f3) {
        return m2841f(f, f2, f3, d5o.f67513k);
    }

    @NonNull
    /* renamed from: f */
    public static CamColor m2841f(@FloatRange(from = 0.0d, m280to = 100.0d) float f, @FloatRange(from = 0.0d, m280to = Double.POSITIVE_INFINITY, toInclusive = false) float f2, @FloatRange(from = 0.0d, m280to = 360.0d) float f3, d5o d5oVar) {
        float m53581b = (4.0f / d5oVar.m53581b()) * ((float) Math.sqrt(f / 100.0d)) * (d5oVar.m53580a() + 4.0f) * d5oVar.m53583d();
        float m53583d = f2 * d5oVar.m53583d();
        float sqrt = ((float) Math.sqrt(((f2 / ((float) Math.sqrt(r4))) * d5oVar.m53581b()) / (d5oVar.m53580a() + 4.0f))) * 50.0f;
        float f4 = (1.7f * f) / ((0.007f * f) + 1.0f);
        float log = ((float) Math.log((m53583d * 0.0228d) + 1.0d)) * 43.85965f;
        double d = (3.1415927f * f3) / 180.0f;
        return new CamColor(f3, f2, f, m53581b, m53583d, sqrt, f4, log * ((float) Math.cos(d)), log * ((float) Math.sin(d)));
    }

    public static void getM3HCTfromColor(@ColorInt int i, @NonNull @Size(3) float[] fArr) {
        m2839d(i, d5o.f67513k, null, fArr);
        fArr[2] = and.m53044b(i);
    }

    @ColorInt
    /* renamed from: p */
    public static int m2842p(@FloatRange(from = 0.0d, m280to = 360.0d) float f, @FloatRange(from = 0.0d, m280to = Double.POSITIVE_INFINITY, toInclusive = false) float f2, @FloatRange(from = 0.0d, m280to = 100.0d) float f3, @NonNull d5o d5oVar) {
        if (f2 < 1.0d || Math.round(f3) <= 0.0d || Math.round(f3) >= 100.0d) {
            return and.m53043a(f3);
        }
        float min = f < 0.0f ? 0.0f : Math.min(360.0f, f);
        CamColor camColor = null;
        boolean z = true;
        float f4 = 0.0f;
        float f5 = f2;
        while (Math.abs(f4 - f2) >= 0.4f) {
            CamColor m2837b = m2837b(min, f5, f3);
            if (!z) {
                if (m2837b == null) {
                    f2 = f5;
                } else {
                    f4 = f5;
                    camColor = m2837b;
                }
                f5 = ((f2 - f4) / 2.0f) + f4;
            } else {
                if (m2837b != null) {
                    return m2837b.m2853q(d5oVar);
                }
                f5 = ((f2 - f4) / 2.0f) + f4;
                z = false;
            }
        }
        return camColor == null ? and.m53043a(f3) : camColor.m2853q(d5oVar);
    }

    public static int toColor(@FloatRange(from = 0.0d, m280to = 360.0d) float f, @FloatRange(from = 0.0d, m280to = Double.POSITIVE_INFINITY, toInclusive = false) float f2, @FloatRange(from = 0.0d, m280to = 100.0d) float f3) {
        return m2842p(f, f2, f3, d5o.f67513k);
    }

    /* renamed from: a */
    public float m2843a(@NonNull CamColor camColor) {
        float m2849l = m2849l() - camColor.m2849l();
        float m2844g = m2844g() - camColor.m2844g();
        float m2845h = m2845h() - camColor.m2845h();
        return (float) (Math.pow(Math.sqrt((m2849l * m2849l) + (m2844g * m2844g) + (m2845h * m2845h)), 0.63d) * 1.41d);
    }

    @FloatRange(from = Double.NEGATIVE_INFINITY, fromInclusive = false, m280to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    /* renamed from: g */
    public float m2844g() {
        return this.f5344h;
    }

    @FloatRange(from = Double.NEGATIVE_INFINITY, fromInclusive = false, m280to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    /* renamed from: h */
    public float m2845h() {
        return this.f5345i;
    }

    @FloatRange(from = 0.0d, m280to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    /* renamed from: i */
    public float m2846i() {
        return this.f5338b;
    }

    @FloatRange(from = 0.0d, m280to = 360.0d, toInclusive = false)
    /* renamed from: j */
    public float m2847j() {
        return this.f5337a;
    }

    @FloatRange(from = 0.0d, m280to = ColorUtils.f5379b)
    /* renamed from: k */
    public float m2848k() {
        return this.f5339c;
    }

    @FloatRange(from = 0.0d, m280to = ColorUtils.f5379b)
    /* renamed from: l */
    public float m2849l() {
        return this.f5343g;
    }

    @FloatRange(from = 0.0d, m280to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    /* renamed from: m */
    public float m2850m() {
        return this.f5341e;
    }

    @FloatRange(from = 0.0d, m280to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    /* renamed from: n */
    public float m2851n() {
        return this.f5340d;
    }

    @FloatRange(from = 0.0d, m280to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    /* renamed from: o */
    public float m2852o() {
        return this.f5342f;
    }

    @ColorInt
    /* renamed from: q */
    public int m2853q(@NonNull d5o d5oVar) {
        float pow = (float) Math.pow(((((double) m2846i()) == 0.0d || ((double) m2848k()) == 0.0d) ? 0.0f : m2846i() / ((float) Math.sqrt(m2848k() / 100.0d))) / Math.pow(1.64d - Math.pow(0.29d, d5oVar.m53584e()), 0.73d), 1.1111111111111112d);
        double m2847j = (m2847j() * 3.1415927f) / 180.0f;
        float cos = ((float) (Math.cos(2.0d + m2847j) + 3.8d)) * 0.25f;
        float m53580a = d5oVar.m53580a() * ((float) Math.pow(m2848k() / 100.0d, (1.0d / d5oVar.m53581b()) / d5oVar.m53589j()));
        float m53586g = cos * 3846.1538f * d5oVar.m53586g() * d5oVar.m53587h();
        float m53585f = m53580a / d5oVar.m53585f();
        float sin = (float) Math.sin(m2847j);
        float cos2 = (float) Math.cos(m2847j);
        float f = (((0.305f + m53585f) * 23.0f) * pow) / (((m53586g * 23.0f) + ((11.0f * pow) * cos2)) + ((pow * 108.0f) * sin));
        float f2 = cos2 * f;
        float f3 = f * sin;
        float f4 = m53585f * 460.0f;
        float f5 = (((451.0f * f2) + f4) + (288.0f * f3)) / 1403.0f;
        float f6 = ((f4 - (891.0f * f2)) - (261.0f * f3)) / 1403.0f;
        float signum = Math.signum(f5) * (100.0f / d5oVar.m53582c()) * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f5) * 27.13d) / (400.0d - Math.abs(f5))), 2.380952380952381d));
        float signum2 = Math.signum(f6) * (100.0f / d5oVar.m53582c()) * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f6) * 27.13d) / (400.0d - Math.abs(f6))), 2.380952380952381d));
        float signum3 = Math.signum(((f4 - (f2 * 220.0f)) - (f3 * 6300.0f)) / 1403.0f) * (100.0f / d5oVar.m53582c()) * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(r8) * 27.13d) / (400.0d - Math.abs(r8))), 2.380952380952381d));
        float f7 = signum / d5oVar.m53588i()[0];
        float f8 = signum2 / d5oVar.m53588i()[1];
        float f9 = signum3 / d5oVar.m53588i()[2];
        float[][] fArr = and.f64878b;
        float[] fArr2 = fArr[0];
        float f10 = (fArr2[0] * f7) + (fArr2[1] * f8) + (fArr2[2] * f9);
        float[] fArr3 = fArr[1];
        float f11 = (fArr3[0] * f7) + (fArr3[1] * f8) + (fArr3[2] * f9);
        float[] fArr4 = fArr[2];
        return ColorUtils.XYZToColor(f10, f11, (f7 * fArr4[0]) + (f8 * fArr4[1]) + (f9 * fArr4[2]));
    }

    @ColorInt
    /* renamed from: r */
    public int m2854r() {
        return m2853q(d5o.f67513k);
    }
}
