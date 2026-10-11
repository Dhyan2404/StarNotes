package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import com.sunia.HTREnginev2.ial;
import java.util.LinkedHashMap;
import java.util.Map;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public final class QuantizerMap implements ial {

    /* renamed from: a */
    public Map<Integer, Integer> f30951a;

    public Map<Integer, Integer> getColorToCount() {
        return this.f30951a;
    }

    @Override // com.sunia.HTREnginev2.ial
    public QuantizerResult quantize(int[] iArr, int i) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (int i2 : iArr) {
            Integer num = (Integer) linkedHashMap.get(Integer.valueOf(i2));
            int i3 = 1;
            if (num != null) {
                i3 = 1 + num.intValue();
            }
            linkedHashMap.put(Integer.valueOf(i2), Integer.valueOf(i3));
        }
        this.f30951a = linkedHashMap;
        return new QuantizerResult(linkedHashMap);
    }
}
