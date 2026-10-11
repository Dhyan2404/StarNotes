package com.sunia.HTREnginev2;

import com.google.common.xml.XmlEscapers;
import com.google.zxing.datamatrix.encoder.HighLevelEncoder;

/* loaded from: classes4.dex */
public final class vkf implements fpf {
    /* renamed from: c */
    public static void m57823c(char c, StringBuilder sb) {
        if (c >= ' ' && c <= '?') {
            sb.append(c);
        } else if (c < '@' || c > '^') {
            HighLevelEncoder.m30584c(c);
        } else {
            sb.append((char) (c - '@'));
        }
    }

    /* renamed from: d */
    public static String m57824d(CharSequence charSequence, int i) {
        int length = charSequence.length() - i;
        if (length == 0) {
            throw new IllegalStateException("StringBuilder must not be empty");
        }
        int charAt = (charSequence.charAt(i) << 18) + ((length >= 2 ? charSequence.charAt(i + 1) : (char) 0) << '\f') + ((length >= 3 ? charSequence.charAt(i + 2) : (char) 0) << 6) + (length >= 4 ? charSequence.charAt(i + 3) : (char) 0);
        char c = (char) ((charAt >> 16) & 255);
        char c2 = (char) ((charAt >> 8) & 255);
        char c3 = (char) (charAt & 255);
        StringBuilder sb = new StringBuilder(3);
        sb.append(c);
        if (length >= 2) {
            sb.append(c2);
        }
        if (length >= 3) {
            sb.append(c3);
        }
        return sb.toString();
    }

    /* renamed from: e */
    public static void m57825e(hpf hpfVar, CharSequence charSequence) {
        try {
            int length = charSequence.length();
            if (length == 0) {
                return;
            }
            boolean z = true;
            if (length == 1) {
                hpfVar.m54607q();
                int dataCapacity = hpfVar.m54598h().getDataCapacity() - hpfVar.m54591a();
                if (hpfVar.m54597g() == 0 && dataCapacity <= 2) {
                    return;
                }
            }
            if (length > 4) {
                throw new IllegalStateException("Count must not exceed 4");
            }
            int i = length - 1;
            String m57824d = m57824d(charSequence, 0);
            if (!(!hpfVar.m54600j()) || i > 2) {
                z = false;
            }
            if (i <= 2) {
                hpfVar.m54608r(hpfVar.m54591a() + i);
                if (hpfVar.m54598h().getDataCapacity() - hpfVar.m54591a() >= 3) {
                    hpfVar.m54608r(hpfVar.m54591a() + m57824d.length());
                    z = false;
                }
            }
            if (z) {
                hpfVar.m54602l();
                hpfVar.f72448f -= i;
            } else {
                hpfVar.m54610t(m57824d);
            }
        } finally {
            hpfVar.m54606p(0);
        }
    }

    @Override // com.sunia.HTREnginev2.fpf
    /* renamed from: a */
    public int mo53428a() {
        return 4;
    }

    @Override // com.sunia.HTREnginev2.fpf
    /* renamed from: b */
    public void mo53629b(hpf hpfVar) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!hpfVar.m54600j()) {
                break;
            }
            m57823c(hpfVar.m54594d(), sb);
            hpfVar.f72448f++;
            if (sb.length() >= 4) {
                hpfVar.m54610t(m57824d(sb, 0));
                sb.delete(0, 4);
                if (HighLevelEncoder.m30593l(hpfVar.m54595e(), hpfVar.f72448f, mo53428a()) != mo53428a()) {
                    hpfVar.m54606p(0);
                    break;
                }
            }
        }
        sb.append(XmlEscapers.f35498b);
        m57825e(hpfVar, sb);
    }
}
