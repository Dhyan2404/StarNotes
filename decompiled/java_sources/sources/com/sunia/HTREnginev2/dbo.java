package com.sunia.HTREnginev2;

import com.google.zxing.datamatrix.encoder.HighLevelEncoder;

/* loaded from: classes4.dex */
public final class dbo extends C14565vv {
    @Override // com.sunia.HTREnginev2.C14565vv, com.sunia.HTREnginev2.fpf
    /* renamed from: a */
    public int mo53428a() {
        return 3;
    }

    @Override // com.sunia.HTREnginev2.C14565vv, com.sunia.HTREnginev2.fpf
    /* renamed from: b */
    public void mo53629b(hpf hpfVar) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            if (!hpfVar.m54600j()) {
                break;
            }
            char m54594d = hpfVar.m54594d();
            hpfVar.f72448f++;
            mo53429d(m54594d, sb);
            if (sb.length() % 3 == 0) {
                C14565vv.m57890g(hpfVar, sb);
                int m30593l = HighLevelEncoder.m30593l(hpfVar.m54595e(), hpfVar.f72448f, mo53428a());
                if (m30593l != mo53428a()) {
                    hpfVar.m54606p(m30593l);
                    break;
                }
            }
        }
        mo53630f(hpfVar, sb);
    }

    @Override // com.sunia.HTREnginev2.C14565vv
    /* renamed from: d */
    public int mo53429d(char c, StringBuilder sb) {
        if (c == '\r') {
            sb.append((char) 0);
        } else if (c == '*') {
            sb.append((char) 1);
        } else if (c == '>') {
            sb.append((char) 2);
        } else if (c == ' ') {
            sb.append((char) 3);
        } else if (c >= '0' && c <= '9') {
            sb.append((char) ((c - '0') + 4));
        } else if (c < 'A' || c > 'Z') {
            HighLevelEncoder.m30584c(c);
        } else {
            sb.append((char) ((c - 'A') + 14));
        }
        return 1;
    }

    @Override // com.sunia.HTREnginev2.C14565vv
    /* renamed from: f */
    public void mo53630f(hpf hpfVar, StringBuilder sb) {
        hpfVar.m54607q();
        int dataCapacity = hpfVar.m54598h().getDataCapacity() - hpfVar.m54591a();
        hpfVar.f72448f -= sb.length();
        if (hpfVar.m54597g() > 1 || dataCapacity > 1 || hpfVar.m54597g() != dataCapacity) {
            hpfVar.m54609s((char) 254);
        }
        if (hpfVar.m54596f() < 0) {
            hpfVar.m54606p(0);
        }
    }
}
