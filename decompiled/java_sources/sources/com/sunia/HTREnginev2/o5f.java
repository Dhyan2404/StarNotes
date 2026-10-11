package com.sunia.HTREnginev2;

import com.bumptech.glide.util.Preconditions;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes3.dex */
public final class o5f {

    /* renamed from: a */
    public final Map<String, C14169a> f79346a = new HashMap();

    /* renamed from: b */
    public final C14170b f79347b = new C14170b();

    /* renamed from: com.sunia.HTREnginev2.o5f$a */
    /* loaded from: classes3.dex */
    public static class C14169a {

        /* renamed from: a */
        public final Lock f79348a = new ReentrantLock();

        /* renamed from: b */
        public int f79349b;
    }

    /* renamed from: com.sunia.HTREnginev2.o5f$b */
    /* loaded from: classes3.dex */
    public static class C14170b {

        /* renamed from: b */
        public static final int f79350b = 10;

        /* renamed from: a */
        public final Queue<C14169a> f79351a = new ArrayDeque();

        /* renamed from: a */
        public C14169a m55904a() {
            C14169a poll;
            synchronized (this.f79351a) {
                poll = this.f79351a.poll();
            }
            return poll == null ? new C14169a() : poll;
        }

        /* renamed from: b */
        public void m55905b(C14169a c14169a) {
            synchronized (this.f79351a) {
                if (this.f79351a.size() < 10) {
                    this.f79351a.offer(c14169a);
                }
            }
        }
    }

    /* renamed from: a */
    public void m55902a(String str) {
        C14169a c14169a;
        synchronized (this) {
            c14169a = this.f79346a.get(str);
            if (c14169a == null) {
                c14169a = this.f79347b.m55904a();
                this.f79346a.put(str, c14169a);
            }
            c14169a.f79349b++;
        }
        c14169a.f79348a.lock();
    }

    /* renamed from: b */
    public void m55903b(String str) {
        C14169a c14169a;
        synchronized (this) {
            c14169a = (C14169a) Preconditions.checkNotNull(this.f79346a.get(str));
            int i = c14169a.f79349b;
            if (i < 1) {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + c14169a.f79349b);
            }
            int i2 = i - 1;
            c14169a.f79349b = i2;
            if (i2 == 0) {
                C14169a remove = this.f79346a.remove(str);
                if (!remove.equals(c14169a)) {
                    throw new IllegalStateException("Removed the wrong lock, expected to remove: " + c14169a + ", but actually removed: " + remove + ", safeKey: " + str);
                }
                this.f79347b.m55905b(remove);
            }
        }
        c14169a.f79348a.unlock();
    }
}
