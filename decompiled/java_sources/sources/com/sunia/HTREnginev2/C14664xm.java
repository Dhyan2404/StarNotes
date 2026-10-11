package com.sunia.HTREnginev2;

import com.google.zxing.datamatrix.encoder.HighLevelEncoder;

/* renamed from: com.sunia.HTREnginev2.xm */
/* loaded from: classes4.dex */
public final class C14664xm implements fpf {
    /* renamed from: c */
    public static char m58285c(char c, int i) {
        int i2 = c + ((i * 149) % 255) + 1;
        return i2 <= 255 ? (char) i2 : (char) (i2 - 256);
    }

    @Override // com.sunia.HTREnginev2.fpf
    /* renamed from: a */
    public int mo53428a() {
        return 5;
    }

    @Override // com.sunia.HTREnginev2.fpf
    /* renamed from: b */
    public void mo53629b(hpf hpfVar) {
        StringBuilder sb = new StringBuilder();
        sb.append((char) 0);
        while (true) {
            if (!hpfVar.m54600j()) {
                break;
            }
            sb.append(hpfVar.m54594d());
            hpfVar.f72448f++;
            int m30593l = HighLevelEncoder.m30593l(hpfVar.m54595e(), hpfVar.f72448f, mo53428a());
            if (m30593l != mo53428a()) {
                hpfVar.m54606p(m30593l);
                break;
            }
        }
        int length = sb.length() - 1;
        int m54591a = hpfVar.m54591a() + length + 1;
        hpfVar.m54608r(m54591a);
        boolean z = hpfVar.m54598h().getDataCapacity() - m54591a > 0;
        if (hpfVar.m54600j() || z) {
            if (length <= 249) {
                sb.setCharAt(0, (char) length);
            } else {
                if (length > 1555) {
                    throw new IllegalStateException("Message length not in valid ranges: " + length);
                }
                sb.setCharAt(0, (char) ((length / 250) + 249));
                sb.insert(1, (char) (length % 250));
            }
        }
        int length2 = sb.length();
        for (int i = 0; i < length2; i++) {
            hpfVar.m54609s(m58285c(sb.charAt(i), hpfVar.m54591a() + 1));
        }
    }
}
