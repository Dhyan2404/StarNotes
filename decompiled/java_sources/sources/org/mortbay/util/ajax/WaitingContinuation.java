package org.mortbay.util.ajax;

import org.mortbay.log.Log;

/* loaded from: classes13.dex */
public class WaitingContinuation implements Continuation {

    /* renamed from: e */
    public Object f115430e;

    /* renamed from: f */
    public Object f115431f;

    /* renamed from: g */
    public boolean f115432g;

    /* renamed from: h */
    public boolean f115433h;

    /* renamed from: i */
    public boolean f115434i;

    public WaitingContinuation() {
        this.f115432g = true;
        this.f115433h = false;
        this.f115434i = false;
        this.f115430e = this;
    }

    public Object getMutex() {
        return this.f115430e;
    }

    @Override // org.mortbay.util.ajax.Continuation
    public Object getObject() {
        return this.f115431f;
    }

    @Override // org.mortbay.util.ajax.Continuation
    public boolean isNew() {
        return this.f115432g;
    }

    @Override // org.mortbay.util.ajax.Continuation
    public boolean isPending() {
        boolean z;
        synchronized (this.f115430e) {
            z = this.f115434i;
        }
        return z;
    }

    @Override // org.mortbay.util.ajax.Continuation
    public boolean isResumed() {
        boolean z;
        synchronized (this.f115430e) {
            z = this.f115433h;
        }
        return z;
    }

    @Override // org.mortbay.util.ajax.Continuation
    public void reset() {
        synchronized (this.f115430e) {
            this.f115433h = false;
            this.f115434i = false;
            this.f115430e.notify();
        }
    }

    @Override // org.mortbay.util.ajax.Continuation
    public void resume() {
        synchronized (this.f115430e) {
            this.f115433h = true;
            this.f115430e.notify();
        }
    }

    public void setMutex(Object obj) {
        if (this.f115434i && obj != this.f115430e) {
            throw new IllegalStateException();
        }
        if (obj == null) {
            obj = this;
        }
        this.f115430e = obj;
    }

    @Override // org.mortbay.util.ajax.Continuation
    public void setObject(Object obj) {
        this.f115431f = obj;
    }

    @Override // org.mortbay.util.ajax.Continuation
    public boolean suspend(long j) {
        boolean z;
        synchronized (this.f115430e) {
            this.f115432g = false;
            this.f115434i = true;
            try {
                try {
                    if (!this.f115433h && j >= 0) {
                        if (j == 0) {
                            this.f115430e.wait();
                        } else if (j > 0) {
                            this.f115430e.wait(j);
                        }
                    }
                    z = this.f115433h;
                    this.f115433h = false;
                } catch (InterruptedException e) {
                    Log.ignore(e);
                    z = this.f115433h;
                    this.f115433h = false;
                }
                this.f115434i = false;
            } catch (Throwable th) {
                this.f115433h = false;
                this.f115434i = false;
                throw th;
            }
        }
        return z;
    }

    public String toString() {
        String stringBuffer;
        synchronized (this) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("WaitingContinuation@");
            stringBuffer2.append(hashCode());
            stringBuffer2.append(this.f115432g ? ",new" : "");
            stringBuffer2.append(this.f115434i ? ",pending" : "");
            stringBuffer2.append(this.f115433h ? ",resumed" : "");
            stringBuffer = stringBuffer2.toString();
        }
        return stringBuffer;
    }

    public WaitingContinuation(Object obj) {
        this.f115432g = true;
        this.f115433h = false;
        this.f115434i = false;
        this.f115430e = obj == null ? this : obj;
    }
}
