package com.google.zxing.datamatrix.encoder;

import com.google.zxing.Dimension;
import com.sunia.HTREnginev2.C13753g2;
import com.sunia.HTREnginev2.C14565vv;
import com.sunia.HTREnginev2.C14664xm;
import com.sunia.HTREnginev2.ccn;
import com.sunia.HTREnginev2.dbo;
import com.sunia.HTREnginev2.fpf;
import com.sunia.HTREnginev2.hpf;
import com.sunia.HTREnginev2.vkf;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class HighLevelEncoder {

    /* renamed from: a */
    public static final char f38476a = 129;

    /* renamed from: b */
    public static final char f38477b = 230;

    /* renamed from: c */
    public static final char f38478c = 231;

    /* renamed from: d */
    public static final char f38479d = 235;

    /* renamed from: e */
    public static final char f38480e = 236;

    /* renamed from: f */
    public static final char f38481f = 237;

    /* renamed from: g */
    public static final char f38482g = 238;

    /* renamed from: h */
    public static final char f38483h = 239;

    /* renamed from: i */
    public static final char f38484i = 240;

    /* renamed from: j */
    public static final char f38485j = 254;

    /* renamed from: k */
    public static final char f38486k = 254;

    /* renamed from: l */
    public static final String f38487l = "[)>\u001e05\u001d";

    /* renamed from: m */
    public static final String f38488m = "[)>\u001e06\u001d";

    /* renamed from: n */
    public static final String f38489n = "\u001e\u0004";

    /* renamed from: o */
    public static final int f38490o = 0;

    /* renamed from: p */
    public static final int f38491p = 1;

    /* renamed from: q */
    public static final int f38492q = 2;

    /* renamed from: r */
    public static final int f38493r = 3;

    /* renamed from: s */
    public static final int f38494s = 4;

    /* renamed from: t */
    public static final int f38495t = 5;

    /* renamed from: a */
    public static int m30582a(float[] fArr, int[] iArr, int i, byte[] bArr) {
        Arrays.fill(bArr, (byte) 0);
        for (int i2 = 0; i2 < 6; i2++) {
            int ceil = (int) Math.ceil(fArr[i2]);
            iArr[i2] = ceil;
            if (i > ceil) {
                Arrays.fill(bArr, (byte) 0);
                i = ceil;
            }
            if (i == ceil) {
                bArr[i2] = (byte) (bArr[i2] + 1);
            }
        }
        return i;
    }

    /* renamed from: b */
    public static int m30583b(byte[] bArr) {
        int i = 0;
        for (int i2 = 0; i2 < 6; i2++) {
            i += bArr[i2];
        }
        return i;
    }

    /* renamed from: c */
    public static void m30584c(char c) {
        String hexString = Integer.toHexString(c);
        throw new IllegalArgumentException("Illegal character: " + c + " (0x" + ("0000".substring(0, 4 - hexString.length()) + hexString) + ')');
    }

    /* renamed from: d */
    public static boolean m30585d(char c) {
        return c >= '0' && c <= '9';
    }

    public static int determineConsecutiveDigitCount(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = 0;
        if (i < length) {
            char charAt = charSequence.charAt(i);
            while (m30585d(charAt) && i < length) {
                i2++;
                i++;
                if (i < length) {
                    charAt = charSequence.charAt(i);
                }
            }
        }
        return i2;
    }

    /* renamed from: e */
    public static boolean m30586e(char c) {
        return c >= 128 && c <= 255;
    }

    public static String encodeHighLevel(String str) {
        return encodeHighLevel(str, SymbolShapeHint.FORCE_NONE, null, null);
    }

    /* renamed from: f */
    public static boolean m30587f(char c) {
        if (c == ' ') {
            return true;
        }
        if (c < '0' || c > '9') {
            return c >= 'A' && c <= 'Z';
        }
        return true;
    }

    /* renamed from: g */
    public static boolean m30588g(char c) {
        return c >= ' ' && c <= '^';
    }

    /* renamed from: h */
    public static boolean m30589h(char c) {
        if (c == ' ') {
            return true;
        }
        if (c < '0' || c > '9') {
            return c >= 'a' && c <= 'z';
        }
        return true;
    }

    /* renamed from: i */
    public static boolean m30590i(char c) {
        if (m30592k(c) || c == ' ') {
            return true;
        }
        if (c < '0' || c > '9') {
            return c >= 'A' && c <= 'Z';
        }
        return true;
    }

    /* renamed from: j */
    public static boolean m30591j(char c) {
        return false;
    }

    /* renamed from: k */
    public static boolean m30592k(char c) {
        return c == '\r' || c == '*' || c == '>';
    }

    /* renamed from: l */
    public static int m30593l(CharSequence charSequence, int i, int i2) {
        float[] fArr;
        char c;
        if (i >= charSequence.length()) {
            return i2;
        }
        int i3 = 6;
        if (i2 == 0) {
            fArr = new float[]{0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.25f};
        } else {
            fArr = new float[]{1.0f, 2.0f, 2.0f, 2.0f, 2.0f, 2.25f};
            fArr[i2] = 0.0f;
        }
        int i4 = 0;
        while (true) {
            int i5 = i + i4;
            if (i5 == charSequence.length()) {
                byte[] bArr = new byte[i3];
                int[] iArr = new int[i3];
                int m30582a = m30582a(fArr, iArr, Integer.MAX_VALUE, bArr);
                int m30583b = m30583b(bArr);
                if (iArr[0] == m30582a) {
                    return 0;
                }
                if (m30583b == 1 && bArr[5] > 0) {
                    return 5;
                }
                if (m30583b == 1 && bArr[4] > 0) {
                    return 4;
                }
                if (m30583b != 1 || bArr[2] <= 0) {
                    return (m30583b != 1 || bArr[3] <= 0) ? 1 : 3;
                }
                return 2;
            }
            char charAt = charSequence.charAt(i5);
            i4++;
            if (m30585d(charAt)) {
                fArr[0] = fArr[0] + 0.5f;
            } else if (m30586e(charAt)) {
                float ceil = (float) Math.ceil(fArr[0]);
                fArr[0] = ceil;
                fArr[0] = ceil + 2.0f;
            } else {
                float ceil2 = (float) Math.ceil(fArr[0]);
                fArr[0] = ceil2;
                fArr[0] = ceil2 + 1.0f;
            }
            if (m30587f(charAt)) {
                fArr[1] = fArr[1] + 0.6666667f;
            } else if (m30586e(charAt)) {
                fArr[1] = fArr[1] + 2.6666667f;
            } else {
                fArr[1] = fArr[1] + 1.3333334f;
            }
            if (m30589h(charAt)) {
                fArr[2] = fArr[2] + 0.6666667f;
            } else if (m30586e(charAt)) {
                fArr[2] = fArr[2] + 2.6666667f;
            } else {
                fArr[2] = fArr[2] + 1.3333334f;
            }
            if (m30590i(charAt)) {
                fArr[3] = fArr[3] + 0.6666667f;
            } else if (m30586e(charAt)) {
                fArr[3] = fArr[3] + 4.3333335f;
            } else {
                fArr[3] = fArr[3] + 3.3333333f;
            }
            if (m30588g(charAt)) {
                fArr[4] = fArr[4] + 0.75f;
            } else if (m30586e(charAt)) {
                fArr[4] = fArr[4] + 4.25f;
            } else {
                fArr[4] = fArr[4] + 3.25f;
            }
            if (m30591j(charAt)) {
                c = 5;
                fArr[5] = fArr[5] + 4.0f;
            } else {
                c = 5;
                fArr[5] = fArr[5] + 1.0f;
            }
            if (i4 >= 4) {
                int[] iArr2 = new int[i3];
                byte[] bArr2 = new byte[i3];
                m30582a(fArr, iArr2, Integer.MAX_VALUE, bArr2);
                int m30583b2 = m30583b(bArr2);
                int i6 = iArr2[0];
                int i7 = iArr2[c];
                if (i6 < i7 && i6 < iArr2[1] && i6 < iArr2[2] && i6 < iArr2[3] && i6 < iArr2[4]) {
                    return 0;
                }
                if (i7 < i6) {
                    return 5;
                }
                byte b = bArr2[1];
                byte b2 = bArr2[2];
                byte b3 = bArr2[3];
                byte b4 = bArr2[4];
                if (b + b2 + b3 + b4 == 0) {
                    return 5;
                }
                if (m30583b2 == 1 && b4 > 0) {
                    return 4;
                }
                if (m30583b2 == 1 && b2 > 0) {
                    return 2;
                }
                if (m30583b2 == 1 && b3 > 0) {
                    return 3;
                }
                int i8 = iArr2[1];
                if (i8 + 1 < i6 && i8 + 1 < i7 && i8 + 1 < iArr2[4] && i8 + 1 < iArr2[2]) {
                    int i9 = iArr2[3];
                    if (i8 < i9) {
                        return 1;
                    }
                    if (i8 == i9) {
                        for (int i10 = i + i4 + 1; i10 < charSequence.length(); i10++) {
                            char charAt2 = charSequence.charAt(i10);
                            if (m30592k(charAt2)) {
                                return 3;
                            }
                            if (!m30590i(charAt2)) {
                                break;
                            }
                        }
                        return 1;
                    }
                }
            }
            i3 = 6;
        }
    }

    /* renamed from: m */
    public static char m30594m(char c, int i) {
        int i2 = c + ((i * 149) % 253) + 1;
        if (i2 > 254) {
            i2 -= 254;
        }
        return (char) i2;
    }

    public static String encodeHighLevel(String str, SymbolShapeHint symbolShapeHint, Dimension dimension, Dimension dimension2) {
        int i = 0;
        fpf[] fpfVarArr = {new C13753g2(), new C14565vv(), new ccn(), new dbo(), new vkf(), new C14664xm()};
        hpf hpfVar = new hpf(str);
        hpfVar.m54605o(symbolShapeHint);
        hpfVar.m54603m(dimension, dimension2);
        if (str.startsWith(f38487l) && str.endsWith(f38489n)) {
            hpfVar.m54609s(f38480e);
            hpfVar.m54604n(2);
            hpfVar.f72448f += 7;
        } else if (str.startsWith(f38488m) && str.endsWith(f38489n)) {
            hpfVar.m54609s(f38481f);
            hpfVar.m54604n(2);
            hpfVar.f72448f += 7;
        }
        while (hpfVar.m54600j()) {
            fpfVarArr[i].mo53629b(hpfVar);
            if (hpfVar.m54596f() >= 0) {
                i = hpfVar.m54596f();
                hpfVar.m54601k();
            }
        }
        int m54591a = hpfVar.m54591a();
        hpfVar.m54607q();
        int dataCapacity = hpfVar.m54598h().getDataCapacity();
        if (m54591a < dataCapacity && i != 0 && i != 5) {
            hpfVar.m54609s((char) 254);
        }
        StringBuilder m54592b = hpfVar.m54592b();
        if (m54592b.length() < dataCapacity) {
            m54592b.append(f38476a);
        }
        while (m54592b.length() < dataCapacity) {
            m54592b.append(m30594m(f38476a, m54592b.length() + 1));
        }
        return hpfVar.m54592b().toString();
    }
}
