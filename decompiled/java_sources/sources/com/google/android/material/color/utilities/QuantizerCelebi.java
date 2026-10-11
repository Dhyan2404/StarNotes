package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class QuantizerCelebi {
    public static Map<Integer, Integer> quantize(int[] iArr, int i) {
        Set<Integer> keySet = new QuantizerWu().quantize(iArr, i).colorToCount.keySet();
        int[] iArr2 = new int[keySet.size()];
        Iterator<Integer> it2 = keySet.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            iArr2[i2] = it2.next().intValue();
            i2++;
        }
        return QuantizerWsmeans.quantize(iArr, iArr2, i);
    }
}
