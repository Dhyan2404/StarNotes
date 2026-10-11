package com.sunia.HTREnginev2;

import com.google.zxing.common.BitArray;
import java.util.List;

/* renamed from: com.sunia.HTREnginev2.zr */
/* loaded from: classes4.dex */
public final class C14778zr {
    /* renamed from: a */
    public static BitArray m58752a(List<r1g> list) {
        int size = (list.size() << 1) - 1;
        if (list.get(list.size() - 1).m56882d() == null) {
            size--;
        }
        BitArray bitArray = new BitArray(size * 12);
        int i = 0;
        int value = list.get(0).m56882d().getValue();
        for (int i2 = 11; i2 >= 0; i2--) {
            if (((1 << i2) & value) != 0) {
                bitArray.set(i);
            }
            i++;
        }
        for (int i3 = 1; i3 < list.size(); i3++) {
            r1g r1gVar = list.get(i3);
            int value2 = r1gVar.m56881c().getValue();
            for (int i4 = 11; i4 >= 0; i4--) {
                if (((1 << i4) & value2) != 0) {
                    bitArray.set(i);
                }
                i++;
            }
            if (r1gVar.m56882d() != null) {
                int value3 = r1gVar.m56882d().getValue();
                for (int i5 = 11; i5 >= 0; i5--) {
                    if (((1 << i5) & value3) != 0) {
                        bitArray.set(i);
                    }
                    i++;
                }
            }
        }
        return bitArray;
    }
}
