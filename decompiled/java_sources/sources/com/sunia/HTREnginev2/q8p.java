package com.sunia.HTREnginev2;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.integrity.internal.AbstractRunnableC5570r;
import com.google.android.play.integrity.internal.C5545ac;
import com.google.android.play.integrity.internal.C5569q;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes6.dex */
public final class q8p extends AbstractRunnableC5570r {

    /* renamed from: g */
    public final /* synthetic */ TaskCompletionSource f81772g;

    /* renamed from: h */
    public final /* synthetic */ AbstractRunnableC5570r f81773h;

    /* renamed from: i */
    public final /* synthetic */ C5545ac f81774i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q8p(C5545ac c5545ac, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, AbstractRunnableC5570r abstractRunnableC5570r) {
        super(taskCompletionSource);
        this.f81774i = c5545ac;
        this.f81772g = taskCompletionSource2;
        this.f81773h = abstractRunnableC5570r;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC5570r
    /* renamed from: b */
    public final void mo25664b() {
        Object obj;
        AtomicInteger atomicInteger;
        C5569q c5569q;
        obj = this.f81774i.f33466f;
        synchronized (obj) {
            C5545ac.m25713o(this.f81774i, this.f81772g);
            atomicInteger = this.f81774i.f33472l;
            if (atomicInteger.getAndIncrement() > 0) {
                c5569q = this.f81774i.f33462b;
                c5569q.m25748c("Already connected to the service.", new Object[0]);
            }
            C5545ac.m25715q(this.f81774i, this.f81773h);
        }
    }
}
