package com.sunia.HTREnginev2;

import com.google.zxing.datamatrix.encoder.HighLevelEncoder;

/* renamed from: com.sunia.HTREnginev2.g2 */
/* loaded from: classes4.dex */
public final class C13753g2 implements fpf {
    /* renamed from: c */
    public static char m54221c(char c, char c2) {
        if (HighLevelEncoder.m30585d(c) && HighLevelEncoder.m30585d(c2)) {
            return (char) (((c - '0') * 10) + (c2 - '0') + 130);
        }
        throw new IllegalArgumentException("not digits: " + c + c2);
    }

    @Override // com.sunia.HTREnginev2.fpf
    /* renamed from: a */
    public int mo53428a() {
        return 0;
    }

    @Override // com.sunia.HTREnginev2.fpf
    /* renamed from: b */
    public void mo53629b(hpf hpfVar) {
        if (HighLevelEncoder.determineConsecutiveDigitCount(hpfVar.m54595e(), hpfVar.f72448f) >= 2) {
            hpfVar.m54609s(m54221c(hpfVar.m54595e().charAt(hpfVar.f72448f), hpfVar.m54595e().charAt(hpfVar.f72448f + 1)));
            hpfVar.f72448f += 2;
            return;
        }
        char m54594d = hpfVar.m54594d();
        int m30593l = HighLevelEncoder.m30593l(hpfVar.m54595e(), hpfVar.f72448f, mo53428a());
        if (m30593l == mo53428a()) {
            if (!HighLevelEncoder.m30586e(m54594d)) {
                hpfVar.m54609s((char) (m54594d + 1));
                hpfVar.f72448f++;
                return;
            } else {
                hpfVar.m54609s(HighLevelEncoder.f38479d);
                hpfVar.m54609s((char) ((m54594d - 128) + 1));
                hpfVar.f72448f++;
                return;
            }
        }
        if (m30593l == 1) {
            hpfVar.m54609s(HighLevelEncoder.f38477b);
            hpfVar.m54606p(1);
            return;
        }
        if (m30593l == 2) {
            hpfVar.m54609s(HighLevelEncoder.f38483h);
            hpfVar.m54606p(2);
            return;
        }
        if (m30593l == 3) {
            hpfVar.m54609s(HighLevelEncoder.f38482g);
            hpfVar.m54606p(3);
        } else if (m30593l == 4) {
            hpfVar.m54609s(HighLevelEncoder.f38484i);
            hpfVar.m54606p(4);
        } else if (m30593l == 5) {
            hpfVar.m54609s(HighLevelEncoder.f38478c);
            hpfVar.m54606p(5);
        } else {
            throw new IllegalStateException("Illegal mode: " + m30593l);
        }
    }
}
