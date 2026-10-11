package com.sunia.HTREnginev2;

import com.bumptech.glide.util.Util;
import com.sunia.HTREnginev2.e5l;
import java.util.Queue;

/* renamed from: com.sunia.HTREnginev2.qn */
/* loaded from: classes3.dex */
public abstract class AbstractC14312qn<T extends e5l> {

    /* renamed from: b */
    public static final int f82231b = 20;

    /* renamed from: a */
    public final Queue<T> f82232a = Util.createQueue(20);

    /* renamed from: a */
    public abstract T mo8768a();

    /* renamed from: b */
    public T m56728b() {
        T poll = this.f82232a.poll();
        return poll == null ? mo8768a() : poll;
    }

    /* renamed from: c */
    public void m56729c(T t) {
        if (this.f82232a.size() < 20) {
            this.f82232a.offer(t);
        }
    }
}
