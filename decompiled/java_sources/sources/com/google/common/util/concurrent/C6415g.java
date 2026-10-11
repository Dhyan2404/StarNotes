package com.google.common.util.concurrent;

import androidx.core.app.C0619b;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Queues;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.sunia.HTREnginev2.pnf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

@GwtIncompatible
@pnf
/* renamed from: com.google.common.util.concurrent.g */
/* loaded from: classes6.dex */
public final class C6415g<L> {

    /* renamed from: b */
    public static final Logger f35481b = Logger.getLogger(C6415g.class.getName());

    /* renamed from: a */
    public final List<b<L>> f35482a = Collections.synchronizedList(new ArrayList());

    /* renamed from: com.google.common.util.concurrent.g$a */
    /* loaded from: classes6.dex */
    public interface a<L> {
        void call(L l);
    }

    /* renamed from: com.google.common.util.concurrent.g$b */
    /* loaded from: classes6.dex */
    public static final class b<L> implements Runnable {

        /* renamed from: e */
        public final L f35483e;

        /* renamed from: f */
        public final Executor f35484f;

        /* renamed from: g */
        @GuardedBy("this")
        public final Queue<a<L>> f35485g = Queues.newArrayDeque();

        /* renamed from: h */
        @GuardedBy("this")
        public final Queue<Object> f35486h = Queues.newArrayDeque();

        /* renamed from: i */
        @GuardedBy("this")
        public boolean f35487i;

        public b(L l, Executor executor) {
            this.f35483e = (L) Preconditions.checkNotNull(l);
            this.f35484f = (Executor) Preconditions.checkNotNull(executor);
        }

        /* renamed from: a */
        public synchronized void m27879a(a<L> aVar, Object obj) {
            this.f35485g.add(aVar);
            this.f35486h.add(obj);
        }

        /* renamed from: b */
        public void m27880b() {
            boolean z;
            synchronized (this) {
                if (this.f35487i) {
                    z = false;
                } else {
                    z = true;
                    this.f35487i = true;
                }
            }
            if (z) {
                try {
                    this.f35484f.execute(this);
                } catch (RuntimeException e) {
                    synchronized (this) {
                        this.f35487i = false;
                        Logger logger = C6415g.f35481b;
                        Level level = Level.SEVERE;
                        String valueOf = String.valueOf(this.f35483e);
                        String valueOf2 = String.valueOf(this.f35484f);
                        StringBuilder sb = new StringBuilder(valueOf.length() + 42 + valueOf2.length());
                        sb.append("Exception while running callbacks for ");
                        sb.append(valueOf);
                        sb.append(" on ");
                        sb.append(valueOf2);
                        logger.log(level, sb.toString(), (Throwable) e);
                        throw e;
                    }
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0020, code lost:
        
            r2.call(r10.f35483e);
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0026, code lost:
        
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0027, code lost:
        
            r4 = com.google.common.util.concurrent.C6415g.f35481b;
            r5 = java.util.logging.Level.SEVERE;
            r6 = java.lang.String.valueOf(r10.f35483e);
            r3 = java.lang.String.valueOf(r3);
            r8 = new java.lang.StringBuilder((r6.length() + 37) + r3.length());
            r8.append("Exception while executing callback: ");
            r8.append(r6);
            r8.append(" ");
            r8.append(r3);
            r4.log(r5, r8.toString(), (java.lang.Throwable) r2);
         */
        /* JADX WARN: Removed duplicated region for block: B:35:0x006f  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r10 = this;
            L0:
                r0 = 0
                r1 = 1
                monitor-enter(r10)     // Catch: java.lang.Throwable -> L6c
                boolean r2 = r10.f35487i     // Catch: java.lang.Throwable -> L5f
                com.google.common.base.Preconditions.checkState(r2)     // Catch: java.lang.Throwable -> L5f
                java.util.Queue<com.google.common.util.concurrent.g$a<L>> r2 = r10.f35485g     // Catch: java.lang.Throwable -> L5f
                java.lang.Object r2 = r2.poll()     // Catch: java.lang.Throwable -> L5f
                com.google.common.util.concurrent.g$a r2 = (com.google.common.util.concurrent.C6415g.a) r2     // Catch: java.lang.Throwable -> L5f
                java.util.Queue<java.lang.Object> r3 = r10.f35486h     // Catch: java.lang.Throwable -> L5f
                java.lang.Object r3 = r3.poll()     // Catch: java.lang.Throwable -> L5f
                if (r2 != 0) goto L1f
                r10.f35487i = r0     // Catch: java.lang.Throwable -> L5f
                monitor-exit(r10)     // Catch: java.lang.Throwable -> L1c
                return
            L1c:
                r1 = move-exception
                r2 = r0
                goto L63
            L1f:
                monitor-exit(r10)     // Catch: java.lang.Throwable -> L5f
                L r4 = r10.f35483e     // Catch: java.lang.RuntimeException -> L26 java.lang.Throwable -> L6c
                r2.call(r4)     // Catch: java.lang.RuntimeException -> L26 java.lang.Throwable -> L6c
                goto L0
            L26:
                r2 = move-exception
                java.util.logging.Logger r4 = com.google.common.util.concurrent.C6415g.m27873a()     // Catch: java.lang.Throwable -> L6c
                java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L6c
                L r6 = r10.f35483e     // Catch: java.lang.Throwable -> L6c
                java.lang.String r6 = java.lang.String.valueOf(r6)     // Catch: java.lang.Throwable -> L6c
                java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch: java.lang.Throwable -> L6c
                int r7 = r6.length()     // Catch: java.lang.Throwable -> L6c
                int r7 = r7 + 37
                int r8 = r3.length()     // Catch: java.lang.Throwable -> L6c
                int r7 = r7 + r8
                java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6c
                r8.<init>(r7)     // Catch: java.lang.Throwable -> L6c
                java.lang.String r7 = "Exception while executing callback: "
                r8.append(r7)     // Catch: java.lang.Throwable -> L6c
                r8.append(r6)     // Catch: java.lang.Throwable -> L6c
                java.lang.String r6 = " "
                r8.append(r6)     // Catch: java.lang.Throwable -> L6c
                r8.append(r3)     // Catch: java.lang.Throwable -> L6c
                java.lang.String r3 = r8.toString()     // Catch: java.lang.Throwable -> L6c
                r4.log(r5, r3, r2)     // Catch: java.lang.Throwable -> L6c
                goto L0
            L5f:
                r2 = move-exception
                r9 = r2
                r2 = r1
                r1 = r9
            L63:
                monitor-exit(r10)     // Catch: java.lang.Throwable -> L6a
                throw r1     // Catch: java.lang.Throwable -> L65
            L65:
                r1 = move-exception
                r9 = r2
                r2 = r1
                r1 = r9
                goto L6d
            L6a:
                r1 = move-exception
                goto L63
            L6c:
                r2 = move-exception
            L6d:
                if (r1 == 0) goto L77
                monitor-enter(r10)
                r10.f35487i = r0     // Catch: java.lang.Throwable -> L74
                monitor-exit(r10)     // Catch: java.lang.Throwable -> L74
                goto L77
            L74:
                r0 = move-exception
                monitor-exit(r10)     // Catch: java.lang.Throwable -> L74
                throw r0
            L77:
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.C6415g.b.run():void");
        }
    }

    /* renamed from: b */
    public void m27874b(L l, Executor executor) {
        Preconditions.checkNotNull(l, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        Preconditions.checkNotNull(executor, "executor");
        this.f35482a.add(new b<>(l, executor));
    }

    /* renamed from: c */
    public void m27875c() {
        for (int i = 0; i < this.f35482a.size(); i++) {
            this.f35482a.get(i).m27880b();
        }
    }

    /* renamed from: d */
    public void m27876d(a<L> aVar) {
        m27878f(aVar, aVar);
    }

    /* renamed from: e */
    public void m27877e(a<L> aVar, String str) {
        m27878f(aVar, str);
    }

    /* renamed from: f */
    public final void m27878f(a<L> aVar, Object obj) {
        Preconditions.checkNotNull(aVar, NotificationCompat.CATEGORY_EVENT);
        Preconditions.checkNotNull(obj, C0619b.f5199k);
        synchronized (this.f35482a) {
            Iterator<b<L>> it2 = this.f35482a.iterator();
            while (it2.hasNext()) {
                it2.next().m27879a(aVar, obj);
            }
        }
    }
}
