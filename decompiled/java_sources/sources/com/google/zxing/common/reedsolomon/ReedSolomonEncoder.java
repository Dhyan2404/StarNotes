package com.google.zxing.common.reedsolomon;

import com.sunia.HTREnginev2.yyg;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public final class ReedSolomonEncoder {

    /* renamed from: a */
    public final GenericGF f38437a;

    /* renamed from: b */
    public final List<yyg> f38438b;

    public ReedSolomonEncoder(GenericGF genericGF) {
        this.f38437a = genericGF;
        ArrayList arrayList = new ArrayList();
        this.f38438b = arrayList;
        arrayList.add(new yyg(genericGF, new int[]{1}));
    }

    /* renamed from: a */
    public final yyg m30535a(int i) {
        if (i >= this.f38438b.size()) {
            List<yyg> list = this.f38438b;
            yyg yygVar = list.get(list.size() - 1);
            for (int size = this.f38438b.size(); size <= i; size++) {
                GenericGF genericGF = this.f38437a;
                yygVar = yygVar.m58509i(new yyg(genericGF, new int[]{1, genericGF.m30526c((size - 1) + genericGF.getGeneratorBase())}));
                this.f38438b.add(yygVar);
            }
        }
        return this.f38438b.get(i);
    }

    public void encode(int[] iArr, int i) {
        if (i == 0) {
            throw new IllegalArgumentException("No error correction bytes");
        }
        int length = iArr.length - i;
        if (length <= 0) {
            throw new IllegalArgumentException("No data bytes provided");
        }
        yyg m30535a = m30535a(i);
        int[] iArr2 = new int[length];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        int[] m58505e = new yyg(this.f38437a, iArr2).m58510j(i, 1).m58502b(m30535a)[1].m58505e();
        int length2 = i - m58505e.length;
        for (int i2 = 0; i2 < length2; i2++) {
            iArr[length + i2] = 0;
        }
        System.arraycopy(m58505e, 0, iArr, length + length2, m58505e.length);
    }
}
