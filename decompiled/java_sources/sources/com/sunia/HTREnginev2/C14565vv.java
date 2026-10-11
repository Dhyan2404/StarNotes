package com.sunia.HTREnginev2;

import com.google.zxing.datamatrix.encoder.HighLevelEncoder;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;

/* renamed from: com.sunia.HTREnginev2.vv */
/* loaded from: classes4.dex */
public class C14565vv implements fpf {
    /* renamed from: e */
    public static String m57889e(CharSequence charSequence, int i) {
        int charAt = (charSequence.charAt(i) * 1600) + (charSequence.charAt(i + 1) * '(') + charSequence.charAt(i + 2) + 1;
        return new String(new char[]{(char) (charAt / 256), (char) (charAt % 256)});
    }

    /* renamed from: g */
    public static void m57890g(hpf hpfVar, StringBuilder sb) {
        hpfVar.m54610t(m57889e(sb, 0));
        sb.delete(0, 3);
    }

    @Override // com.sunia.HTREnginev2.fpf
    /* renamed from: a */
    public int mo53428a() {
        return 1;
    }

    @Override // com.sunia.HTREnginev2.fpf
    /* renamed from: b */
    public void mo53629b(hpf hpfVar) {
        int m30593l;
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!hpfVar.m54600j()) {
                break;
            }
            char m54594d = hpfVar.m54594d();
            hpfVar.f72448f++;
            int mo53429d = mo53429d(m54594d, sb);
            int m54591a = hpfVar.m54591a() + ((sb.length() / 3) << 1);
            hpfVar.m54608r(m54591a);
            int dataCapacity = hpfVar.m54598h().getDataCapacity() - m54591a;
            if (!hpfVar.m54600j()) {
                StringBuilder sb2 = new StringBuilder();
                if (sb.length() % 3 == 2 && (dataCapacity < 2 || dataCapacity > 2)) {
                    mo53429d = m57891c(hpfVar, sb, sb2, mo53429d);
                }
                while (sb.length() % 3 == 1 && ((mo53429d <= 3 && dataCapacity != 1) || mo53429d > 3)) {
                    mo53429d = m57891c(hpfVar, sb, sb2, mo53429d);
                }
            } else if (sb.length() % 3 == 0 && (m30593l = HighLevelEncoder.m30593l(hpfVar.m54595e(), hpfVar.f72448f, mo53428a())) != mo53428a()) {
                hpfVar.m54606p(m30593l);
                break;
            }
        }
        mo53630f(hpfVar, sb);
    }

    /* renamed from: c */
    public final int m57891c(hpf hpfVar, StringBuilder sb, StringBuilder sb2, int i) {
        int length = sb.length();
        sb.delete(length - i, length);
        hpfVar.f72448f--;
        int mo53429d = mo53429d(hpfVar.m54594d(), sb2);
        hpfVar.m54602l();
        return mo53429d;
    }

    /* renamed from: d */
    public int mo53429d(char c, StringBuilder sb) {
        if (c == ' ') {
            sb.append((char) 3);
            return 1;
        }
        if (c >= '0' && c <= '9') {
            sb.append((char) ((c - '0') + 4));
            return 1;
        }
        if (c >= 'A' && c <= 'Z') {
            sb.append((char) ((c - 'A') + 14));
            return 1;
        }
        if (c >= 0 && c <= 31) {
            sb.append((char) 0);
            sb.append(c);
            return 2;
        }
        if (c >= '!' && c <= '/') {
            sb.append((char) 1);
            sb.append((char) (c - PublicSuffixDatabase.f103895g));
            return 2;
        }
        if (c >= ':' && c <= '@') {
            sb.append((char) 1);
            sb.append((char) ((c - ':') + 15));
            return 2;
        }
        if (c >= '[' && c <= '_') {
            sb.append((char) 1);
            sb.append((char) ((c - '[') + 22));
            return 2;
        }
        if (c >= '`' && c <= 127) {
            sb.append((char) 2);
            sb.append((char) (c - '`'));
            return 2;
        }
        if (c >= 128) {
            sb.append("\u0001\u001e");
            return mo53429d((char) (c - 128), sb) + 2;
        }
        throw new IllegalArgumentException("Illegal character: " + c);
    }

    /* renamed from: f */
    public void mo53630f(hpf hpfVar, StringBuilder sb) {
        int length = (sb.length() / 3) << 1;
        int length2 = sb.length() % 3;
        int m54591a = hpfVar.m54591a() + length;
        hpfVar.m54608r(m54591a);
        int dataCapacity = hpfVar.m54598h().getDataCapacity() - m54591a;
        if (length2 == 2) {
            sb.append((char) 0);
            while (sb.length() >= 3) {
                m57890g(hpfVar, sb);
            }
            if (hpfVar.m54600j()) {
                hpfVar.m54609s((char) 254);
            }
        } else if (dataCapacity == 1 && length2 == 1) {
            while (sb.length() >= 3) {
                m57890g(hpfVar, sb);
            }
            if (hpfVar.m54600j()) {
                hpfVar.m54609s((char) 254);
            }
            hpfVar.f72448f--;
        } else {
            if (length2 != 0) {
                throw new IllegalStateException("Unexpected case. Please report!");
            }
            while (sb.length() >= 3) {
                m57890g(hpfVar, sb);
            }
            if (dataCapacity > 0 || hpfVar.m54600j()) {
                hpfVar.m54609s((char) 254);
            }
        }
        hpfVar.m54606p(0);
    }
}
