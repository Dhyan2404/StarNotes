package com.miui.penengine.p016f;

import android.graphics.Path;
import com.miui.penengine.p014d.C6989c;
import java.util.List;

/* renamed from: com.miui.penengine.f.g */
/* loaded from: classes7.dex */
public class C7008g {
    /* renamed from: a */
    public static float m31408a(float f, float f2, float f3, float f4, float f5, float f6) {
        float f7 = f - f3;
        float f8 = f2 - f4;
        float f9 = f5 - f3;
        float f10 = f6 - f4;
        float f11 = f5 - f;
        float f12 = f6 - f2;
        float f13 = (f7 * f10) - (f9 * f8);
        float sqrt = (float) Math.sqrt((f8 * f8) + (f7 * f7));
        float sqrt2 = (float) Math.sqrt((f10 * f10) + (f9 * f9));
        return (float) ((f13 * 2.0f) / (((sqrt * sqrt2) * ((float) Math.sqrt((f12 * f12) + (f11 * f11)))) + 1.0E-9d));
    }

    /* renamed from: b */
    public static C6989c[] m31414b(C6989c[] c6989cArr, int i) {
        if (c6989cArr == null || c6989cArr.length < i) {
            return null;
        }
        C6989c[] c6989cArr2 = new C6989c[i];
        int i2 = i - 1;
        for (int length = c6989cArr.length - 1; length >= 0; length--) {
            if (!c6989cArr[length].m31308h()) {
                c6989cArr2[i2] = c6989cArr[length];
                i2--;
            }
            if (i2 < 0) {
                break;
            }
        }
        if (i2 >= 0) {
            return null;
        }
        return c6989cArr2;
    }

    /* renamed from: c */
    public static C6989c[] m31415c(C6989c[] c6989cArr, int i) {
        if (c6989cArr == null || c6989cArr.length < i) {
            return null;
        }
        if (c6989cArr.length == i) {
            return c6989cArr;
        }
        C6989c[] c6989cArr2 = new C6989c[i];
        System.arraycopy(c6989cArr, c6989cArr.length - i, c6989cArr2, 0, i);
        return c6989cArr2;
    }

    /* renamed from: a */
    public static float m31409a(C6989c c6989c, C6989c c6989c2, C6989c c6989c3) {
        if (c6989c == null || c6989c2 == null || c6989c3 == null) {
            return 0.0f;
        }
        float m31306f = c6989c.m31306f() - c6989c2.m31306f();
        float m31307g = c6989c.m31307g() - c6989c2.m31307g();
        float m31306f2 = c6989c3.m31306f() - c6989c2.m31306f();
        float m31307g2 = c6989c3.m31307g() - c6989c2.m31307g();
        float m31306f3 = c6989c3.m31306f() - c6989c.m31306f();
        float m31307g3 = c6989c3.m31307g() - c6989c.m31307g();
        float f = m31307g3 * m31307g3;
        return (float) ((((m31306f * m31307g2) - (m31306f2 * m31307g)) * 2.0f) / (((((float) Math.sqrt((m31307g * m31307g) + (m31306f * m31306f))) * ((float) Math.sqrt((m31307g2 * m31307g2) + (m31306f2 * m31306f2)))) * ((float) Math.sqrt(f + (m31306f3 * m31306f3)))) + 1.0E-9d));
    }

    /* renamed from: a */
    public static double m31406a(double d, double d2, double d3, double d4) {
        double d5 = d - d3;
        double d6 = d2 - d4;
        return Math.sqrt((d6 * d6) + (d5 * d5));
    }

    /* renamed from: a */
    public static double m31407a(C6989c c6989c, C6989c c6989c2) {
        return Math.sqrt(((c6989c.m31307g() - c6989c2.m31307g()) * (c6989c.m31307g() - c6989c2.m31307g())) + ((c6989c.m31306f() - c6989c2.m31306f()) * (c6989c.m31306f() - c6989c2.m31306f())));
    }

    /* renamed from: a */
    public static C6989c[] m31412a(C6989c[] c6989cArr, int i) {
        if (c6989cArr == null || c6989cArr.length < i) {
            return null;
        }
        C6989c[] c6989cArr2 = new C6989c[i];
        int i2 = i - 1;
        for (int length = c6989cArr.length - 1; length >= 0; length--) {
            if (c6989cArr[length].m31308h()) {
                c6989cArr2[i2] = c6989cArr[length];
                i2--;
            }
            if (i2 < 0) {
                break;
            }
        }
        if (i2 >= 0) {
            return null;
        }
        return c6989cArr2;
    }

    /* renamed from: a */
    public static C6989c[] m31413a(C6989c[] c6989cArr, long j, long j2) {
        if (c6989cArr != null) {
            long m31305e = c6989cArr[c6989cArr.length - 1].m31305e() - j;
            int length = c6989cArr.length - 1;
            double d = 0.0d;
            while (length >= 0 && c6989cArr[length].m31305e() > m31305e) {
                if (length < c6989cArr.length - 1) {
                    d = m31407a(c6989cArr[length], c6989cArr[length + 1]) + d;
                }
                length--;
            }
            if (length != -1 && (d > j2 || length != 0)) {
                int length2 = (c6989cArr.length - length) - 1;
                C6989c[] c6989cArr2 = new C6989c[length2];
                System.arraycopy(c6989cArr, c6989cArr.length - length2, c6989cArr2, 0, length2);
                return c6989cArr2;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static Path m31410a(C6989c c6989c, C7007f[] c7007fArr) {
        if (c7007fArr == null || c7007fArr.length <= 0) {
            return null;
        }
        Path path = new Path();
        path.moveTo(c6989c.m31306f(), c6989c.m31307g());
        for (C7007f c7007f : c7007fArr) {
            path.lineTo(c7007f.m31403b(), c7007f.m31405c());
        }
        return path;
    }

    /* renamed from: a */
    public static boolean m31411a(List<C6989c> list, List<C6989c> list2, float f, int i, boolean z) {
        List<C6989c> list3 = list;
        int size = list2.size();
        int i2 = 0;
        if (i > 0) {
            int i3 = size - 1;
            float f2 = i3 * f;
            if (((float) list3.get(0).m31305e()) <= ((float) list3.get(i).m31305e()) - f2 || z) {
                boolean z2 = true;
                float m31305e = (((float) list3.get(0).m31305e()) <= ((float) list3.get(i).m31305e()) - f2 || !z) ? f : ((((float) (list3.get(i).m31305e() - list3.get(0).m31305e())) * 1.0f) / (list.size() - 1)) - 0.1f;
                double m31305e2 = list3.get(i).m31305e();
                int i4 = i - 1;
                int i5 = 0;
                while (i5 < size) {
                    double d = m31305e2 - (i5 * m31305e);
                    while (i4 >= 0 && list3.get(i4).m31305e() > d) {
                        i4--;
                    }
                    int max = Math.max(i4, i2);
                    C6989c c6989c = list3.get(max);
                    C6989c c6989c2 = list3.get(max + 1);
                    double max2 = 1.0d - Math.max(0.0d, (d - c6989c.m31305e()) / (c6989c2.m31305e() - c6989c.m31305e()));
                    list2.get(i3 - i5).m31293a((float) ((c6989c2.m31306f() * r3) + (c6989c.m31306f() * max2)), (float) ((c6989c2.m31307g() * r3) + (c6989c.m31307g() * max2)), (long) d, (float) ((c6989c2.m31302c() * r3) + (c6989c.m31302c() * max2)), (float) ((c6989c2.m31299b() * r3) + (c6989c.m31299b() * max2)), (float) ((c6989c2.m31304d() * r3) + (c6989c.m31304d() * max2)), true, c6989c.m31291a());
                    i5++;
                    list3 = list;
                    m31305e = m31305e;
                    i4 = max;
                    size = size;
                    i3 = i3;
                    m31305e2 = m31305e2;
                    i2 = 0;
                    z2 = true;
                }
                return z2;
            }
        }
        return false;
    }
}
