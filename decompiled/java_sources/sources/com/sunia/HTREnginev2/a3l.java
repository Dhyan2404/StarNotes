package com.sunia.HTREnginev2;

/* loaded from: classes13.dex */
public final class a3l {

    /* renamed from: a */
    public z2l f64291a;

    /* renamed from: b */
    public z2l f64292b;

    /* renamed from: a */
    public synchronized void m52953a(z2l z2lVar) {
        try {
            if (z2lVar == null) {
                throw new NullPointerException("null cannot be enqueued");
            }
            z2l z2lVar2 = this.f64292b;
            if (z2lVar2 != null) {
                z2lVar2.f91361c = z2lVar;
                this.f64292b = z2lVar;
            } else {
                if (this.f64291a != null) {
                    throw new IllegalStateException("Head present, but no tail");
                }
                this.f64292b = z2lVar;
                this.f64291a = z2lVar;
            }
            notifyAll();
        } catch (Throwable th) {
            throw th;
        }
    }

    /* renamed from: b */
    public synchronized z2l m52954b() {
        z2l z2lVar;
        z2lVar = this.f64291a;
        if (z2lVar != null) {
            z2l z2lVar2 = z2lVar.f91361c;
            this.f64291a = z2lVar2;
            if (z2lVar2 == null) {
                this.f64292b = null;
            }
        }
        return z2lVar;
    }

    /* renamed from: c */
    public synchronized z2l m52955c(int i) throws InterruptedException {
        if (this.f64291a == null) {
            wait(i);
        }
        return m52954b();
    }
}
