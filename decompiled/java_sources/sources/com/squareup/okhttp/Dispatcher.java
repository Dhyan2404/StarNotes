package com.squareup.okhttp;

import com.squareup.okhttp.Call;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.HttpEngine;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes9.dex */
public final class Dispatcher {

    /* renamed from: c */
    public ExecutorService f63516c;

    /* renamed from: a */
    public int f63514a = 64;

    /* renamed from: b */
    public int f63515b = 5;

    /* renamed from: d */
    public final Deque<Call.C13149c> f63517d = new ArrayDeque();

    /* renamed from: e */
    public final Deque<Call.C13149c> f63518e = new ArrayDeque();

    /* renamed from: f */
    public final Deque<Call> f63519f = new ArrayDeque();

    public Dispatcher(ExecutorService executorService) {
        this.f63516c = executorService;
    }

    /* renamed from: a */
    public synchronized void m52510a(Call.C13149c c13149c) {
        if (this.f63518e.size() >= this.f63514a || m52515f(c13149c) >= this.f63515b) {
            this.f63517d.add(c13149c);
        } else {
            this.f63518e.add(c13149c);
            getExecutorService().execute(c13149c);
        }
    }

    /* renamed from: b */
    public synchronized void m52511b(Call call) {
        this.f63519f.add(call);
    }

    /* renamed from: c */
    public synchronized void m52512c(Call.C13149c c13149c) {
        if (!this.f63518e.remove(c13149c)) {
            throw new AssertionError("AsyncCall wasn't running!");
        }
        m52514e();
    }

    public synchronized void cancel(Object obj) {
        for (Call.C13149c c13149c : this.f63517d) {
            if (Util.equal(obj, c13149c.m52468e())) {
                c13149c.m52464a();
            }
        }
        for (Call.C13149c c13149c2 : this.f63518e) {
            if (Util.equal(obj, c13149c2.m52468e())) {
                c13149c2.m52465b().f63472c = true;
                HttpEngine httpEngine = c13149c2.m52465b().f63474e;
                if (httpEngine != null) {
                    httpEngine.disconnect();
                }
            }
        }
        for (Call call : this.f63519f) {
            if (Util.equal(obj, call.m52462g())) {
                call.cancel();
            }
        }
    }

    /* renamed from: d */
    public synchronized void m52513d(Call call) {
        if (!this.f63519f.remove(call)) {
            throw new AssertionError("Call wasn't in-flight!");
        }
    }

    /* renamed from: e */
    public final void m52514e() {
        if (this.f63518e.size() < this.f63514a && !this.f63517d.isEmpty()) {
            Iterator<Call.C13149c> it2 = this.f63517d.iterator();
            while (it2.hasNext()) {
                Call.C13149c next = it2.next();
                if (m52515f(next) < this.f63515b) {
                    it2.remove();
                    this.f63518e.add(next);
                    getExecutorService().execute(next);
                }
                if (this.f63518e.size() >= this.f63514a) {
                    return;
                }
            }
        }
    }

    /* renamed from: f */
    public final int m52515f(Call.C13149c c13149c) {
        Iterator<Call.C13149c> it2 = this.f63518e.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if (it2.next().m52466c().equals(c13149c.m52466c())) {
                i++;
            }
        }
        return i;
    }

    public synchronized ExecutorService getExecutorService() {
        if (this.f63516c == null) {
            this.f63516c = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkHttp Dispatcher", false));
        }
        return this.f63516c;
    }

    public synchronized int getMaxRequests() {
        return this.f63514a;
    }

    public synchronized int getMaxRequestsPerHost() {
        return this.f63515b;
    }

    public synchronized int getQueuedCallCount() {
        return this.f63517d.size();
    }

    public synchronized int getRunningCallCount() {
        return this.f63518e.size();
    }

    public synchronized void setMaxRequests(int i) {
        if (i < 1) {
            throw new IllegalArgumentException("max < 1: " + i);
        }
        this.f63514a = i;
        m52514e();
    }

    public synchronized void setMaxRequestsPerHost(int i) {
        if (i < 1) {
            throw new IllegalArgumentException("max < 1: " + i);
        }
        this.f63515b = i;
        m52514e();
    }

    public Dispatcher() {
    }
}
