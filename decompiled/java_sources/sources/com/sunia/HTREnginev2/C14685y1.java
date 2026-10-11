package com.sunia.HTREnginev2;

import com.google.zxing.common.BitArray;

/* renamed from: com.sunia.HTREnginev2.y1 */
/* loaded from: classes4.dex */
public final class C14685y1 extends AbstractC13548c2 {
    public C14685y1(BitArray bitArray) {
        super(bitArray);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13701f2
    /* renamed from: d */
    public void mo53155d(StringBuilder sb, int i) {
        if (i < 10000) {
            sb.append("(3202)");
        } else {
            sb.append("(3203)");
        }
    }

    @Override // com.sunia.HTREnginev2.AbstractC13701f2
    /* renamed from: e */
    public int mo53156e(int i) {
        return i < 10000 ? i : i - 10000;
    }
}
