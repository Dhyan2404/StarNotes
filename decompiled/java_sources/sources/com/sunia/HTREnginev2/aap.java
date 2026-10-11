package com.sunia.HTREnginev2;

import com.google.android.gms.common.api.internal.zabf;
import com.google.android.gms.common.api.internal.zabi;
import java.util.concurrent.locks.Lock;

/* loaded from: classes5.dex */
public abstract class aap {

    /* renamed from: a */
    public final zabf f64506a;

    public aap(zabf zabfVar) {
        this.f64506a = zabfVar;
    }

    /* renamed from: a */
    public abstract void mo22026a();

    /* renamed from: b */
    public final void m52987b(zabi zabiVar) {
        Lock lock;
        Lock lock2;
        zabf zabfVar;
        lock = zabiVar.f29231a;
        lock.lock();
        try {
            zabfVar = zabiVar.f29241k;
            if (zabfVar == this.f64506a) {
                mo22026a();
            }
        } finally {
            lock2 = zabiVar.f29231a;
            lock2.unlock();
        }
    }
}
