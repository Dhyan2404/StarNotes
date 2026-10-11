package com.sunia.HTREnginev2;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.IInterface;
import com.google.android.play.integrity.internal.AbstractRunnableC5570r;
import com.google.android.play.integrity.internal.C5545ac;
import com.google.android.play.integrity.internal.C5569q;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes6.dex */
public final class r8p extends AbstractRunnableC5570r {

    /* renamed from: g */
    public final /* synthetic */ C5545ac f82878g;

    public r8p(C5545ac c5545ac) {
        this.f82878g = c5545ac;
    }

    @Override // com.google.android.play.integrity.internal.AbstractRunnableC5570r
    /* renamed from: b */
    public final void mo25664b() {
        Object obj;
        AtomicInteger atomicInteger;
        IInterface iInterface;
        C5569q c5569q;
        Context context;
        ServiceConnection serviceConnection;
        AtomicInteger atomicInteger2;
        C5569q c5569q2;
        obj = this.f82878g.f33466f;
        synchronized (obj) {
            atomicInteger = this.f82878g.f33472l;
            if (atomicInteger.get() > 0) {
                atomicInteger2 = this.f82878g.f33472l;
                if (atomicInteger2.decrementAndGet() > 0) {
                    c5569q2 = this.f82878g.f33462b;
                    c5569q2.m25748c("Leaving the connection open for other ongoing calls.", new Object[0]);
                    return;
                }
            }
            C5545ac c5545ac = this.f82878g;
            iInterface = c5545ac.f33474n;
            if (iInterface != null) {
                c5569q = c5545ac.f33462b;
                c5569q.m25748c("Unbind from service.", new Object[0]);
                C5545ac c5545ac2 = this.f82878g;
                context = c5545ac2.f33461a;
                serviceConnection = c5545ac2.f33473m;
                context.unbindService(serviceConnection);
                this.f82878g.f33467g = false;
                this.f82878g.f33474n = null;
                this.f82878g.f33473m = null;
            }
            this.f82878g.m25724x();
        }
    }
}
