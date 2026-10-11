package com.tencent.qmsp.oaid2;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: com.tencent.qmsp.oaid2.k */
/* loaded from: classes10.dex */
public final class ServiceConnectionC16882k implements ServiceConnection {

    /* renamed from: c */
    public static final ThreadPoolExecutor f93770c = new ThreadPoolExecutor(0, 3, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(2048), new ThreadPoolExecutor.DiscardPolicy());

    /* renamed from: b */
    public final LinkedBlockingQueue<IBinder> f93772b = new LinkedBlockingQueue<>(1);

    /* renamed from: a */
    public boolean f93771a = false;

    /* renamed from: com.tencent.qmsp.oaid2.k$a */
    /* loaded from: classes10.dex */
    public class a implements Runnable {

        /* renamed from: a */
        public final IBinder f93773a;

        public a(IBinder iBinder) {
            this.f93773a = iBinder;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                ServiceConnectionC16882k.this.f93772b.offer(this.f93773a);
            } catch (Throwable unused) {
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            f93770c.execute(new a(iBinder));
        } catch (Throwable unused) {
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
