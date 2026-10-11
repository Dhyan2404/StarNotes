package com.sunia.HTREnginev2;

import com.bumptech.glide.load.engine.prefill.PreFillType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class m5l {

    /* renamed from: a */
    public final Map<PreFillType, Integer> f77209a;

    /* renamed from: b */
    public final List<PreFillType> f77210b;

    /* renamed from: c */
    public int f77211c;

    /* renamed from: d */
    public int f77212d;

    public m5l(Map<PreFillType, Integer> map) {
        this.f77209a = map;
        this.f77210b = new ArrayList(map.keySet());
        Iterator<Integer> it2 = map.values().iterator();
        while (it2.hasNext()) {
            this.f77211c += it2.next().intValue();
        }
    }

    /* renamed from: a */
    public int m55546a() {
        return this.f77211c;
    }

    /* renamed from: b */
    public boolean m55547b() {
        return this.f77211c == 0;
    }

    /* renamed from: c */
    public PreFillType m55548c() {
        PreFillType preFillType = this.f77210b.get(this.f77212d);
        Integer num = this.f77209a.get(preFillType);
        if (num.intValue() == 1) {
            this.f77209a.remove(preFillType);
            this.f77210b.remove(this.f77212d);
        } else {
            this.f77209a.put(preFillType, Integer.valueOf(num.intValue() - 1));
        }
        this.f77211c--;
        this.f77212d = this.f77210b.isEmpty() ? 0 : (this.f77212d + 1) % this.f77210b.size();
        return preFillType;
    }
}
