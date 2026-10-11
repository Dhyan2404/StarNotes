package com.sunia.HTREnginev2;

import com.google.zxing.common.BitArray;

/* renamed from: com.sunia.HTREnginev2.f2 */
/* loaded from: classes4.dex */
public abstract class AbstractC13701f2 extends AbstractC13654e2 {
    public AbstractC13701f2(BitArray bitArray) {
        super(bitArray);
    }

    /* renamed from: d */
    public abstract void mo53155d(StringBuilder sb, int i);

    /* renamed from: e */
    public abstract int mo53156e(int i);

    /* renamed from: f */
    public final void m54063f(StringBuilder sb, int i, int i2) {
        int m57713f = getGeneralDecoder().m57713f(i, i2);
        mo53155d(sb, m57713f);
        int mo53156e = mo53156e(m57713f);
        int i3 = 100000;
        for (int i4 = 0; i4 < 5; i4++) {
            if (mo53156e / i3 == 0) {
                sb.append('0');
            }
            i3 /= 10;
        }
        sb.append(mo53156e);
    }
}
