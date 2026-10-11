package org.greenrobot.eventbus;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.sunia.HTREnginev2.a3l;
import com.sunia.HTREnginev2.k5n;
import com.sunia.HTREnginev2.z2l;

/* loaded from: classes13.dex */
public class HandlerPoster extends Handler implements Poster {

    /* renamed from: e */
    public final a3l f113916e;

    /* renamed from: f */
    public final int f113917f;

    /* renamed from: g */
    public final EventBus f113918g;

    /* renamed from: h */
    public boolean f113919h;

    public HandlerPoster(EventBus eventBus, Looper looper, int i) {
        super(looper);
        this.f113918g = eventBus;
        this.f113917f = i;
        this.f113916e = new a3l();
    }

    @Override // org.greenrobot.eventbus.Poster
    public void enqueue(k5n k5nVar, Object obj) {
        z2l m58607a = z2l.m58607a(k5nVar, obj);
        synchronized (this) {
            this.f113916e.m52953a(m58607a);
            if (!this.f113919h) {
                this.f113919h = true;
                if (!sendMessage(obtainMessage())) {
                    throw new EventBusException("Could not send handler message");
                }
            }
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            long uptimeMillis = SystemClock.uptimeMillis();
            do {
                z2l m52954b = this.f113916e.m52954b();
                if (m52954b == null) {
                    synchronized (this) {
                        m52954b = this.f113916e.m52954b();
                        if (m52954b == null) {
                            return;
                        }
                    }
                }
                this.f113918g.m71026e(m52954b);
            } while (SystemClock.uptimeMillis() - uptimeMillis < this.f113917f);
            if (!sendMessage(obtainMessage())) {
                throw new EventBusException("Could not send handler message");
            }
            this.f113919h = true;
        } finally {
            this.f113919h = false;
        }
    }
}
