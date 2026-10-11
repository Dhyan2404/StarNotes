package com.sunia.HTREnginev2;

import com.google.zxing.pdf417.PDF417Common;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.sunia.HTREnginev2.wm */
/* loaded from: classes4.dex */
public final class C14609wm {

    /* renamed from: a */
    public final Map<Integer, Integer> f88754a = new HashMap();

    /* renamed from: a */
    public Integer m58091a(int i) {
        return this.f88754a.get(Integer.valueOf(i));
    }

    /* renamed from: b */
    public int[] m58092b() {
        ArrayList arrayList = new ArrayList();
        int i = -1;
        for (Map.Entry<Integer, Integer> entry : this.f88754a.entrySet()) {
            if (entry.getValue().intValue() > i) {
                i = entry.getValue().intValue();
                arrayList.clear();
                arrayList.add(entry.getKey());
            } else if (entry.getValue().intValue() == i) {
                arrayList.add(entry.getKey());
            }
        }
        return PDF417Common.toIntArray(arrayList);
    }

    /* renamed from: c */
    public void m58093c(int i) {
        Integer num = this.f88754a.get(Integer.valueOf(i));
        if (num == null) {
            num = 0;
        }
        this.f88754a.put(Integer.valueOf(i), Integer.valueOf(num.intValue() + 1));
    }
}
