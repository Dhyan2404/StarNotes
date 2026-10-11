package com.sunia.HTREnginev2;

import java.io.Closeable;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.commons.logging.Log;
import org.apache.http.HttpClientConnection;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.concurrent.Cancellable;
import org.apache.http.conn.ConnectionReleaseTrigger;
import org.apache.http.conn.HttpClientConnectionManager;

@Contract(threading = ThreadingBehavior.SAFE)
/* loaded from: classes12.dex */
public class n9e implements ConnectionReleaseTrigger, Cancellable, Closeable {

    /* renamed from: e */
    public final Log f78422e;

    /* renamed from: f */
    public final HttpClientConnectionManager f78423f;

    /* renamed from: g */
    public final HttpClientConnection f78424g;

    /* renamed from: h */
    public final AtomicBoolean f78425h = new AtomicBoolean(false);

    /* renamed from: i */
    public volatile boolean f78426i;

    /* renamed from: j */
    public volatile Object f78427j;

    /* renamed from: k */
    public volatile long f78428k;

    /* renamed from: l */
    public volatile TimeUnit f78429l;

    public n9e(Log log, HttpClientConnectionManager httpClientConnectionManager, HttpClientConnection httpClientConnection) {
        this.f78422e = log;
        this.f78423f = httpClientConnectionManager;
        this.f78424g = httpClientConnection;
    }

    /* renamed from: H */
    public final void m55720H(boolean z) {
        if (this.f78425h.compareAndSet(false, true)) {
            synchronized (this.f78424g) {
                if (z) {
                    this.f78423f.releaseConnection(this.f78424g, this.f78427j, this.f78428k, this.f78429l);
                } else {
                    try {
                        this.f78424g.close();
                        this.f78422e.debug("Connection discarded");
                    } catch (IOException e) {
                        if (this.f78422e.isDebugEnabled()) {
                            this.f78422e.debug(e.getMessage(), e);
                        }
                    } finally {
                        this.f78423f.releaseConnection(this.f78424g, null, 0L, TimeUnit.MILLISECONDS);
                    }
                }
            }
        }
    }

    /* renamed from: I */
    public void m55721I(long j, TimeUnit timeUnit) {
        synchronized (this.f78424g) {
            this.f78428k = j;
            this.f78429l = timeUnit;
        }
    }

    @Override // org.apache.http.conn.ConnectionReleaseTrigger
    public void abortConnection() {
        if (this.f78425h.compareAndSet(false, true)) {
            synchronized (this.f78424g) {
                try {
                    try {
                        this.f78424g.shutdown();
                        this.f78422e.debug("Connection discarded");
                        this.f78423f.releaseConnection(this.f78424g, null, 0L, TimeUnit.MILLISECONDS);
                    } catch (IOException e) {
                        if (this.f78422e.isDebugEnabled()) {
                            this.f78422e.debug(e.getMessage(), e);
                        }
                    }
                } finally {
                    this.f78423f.releaseConnection(this.f78424g, null, 0L, TimeUnit.MILLISECONDS);
                }
            }
        }
    }

    @Override // org.apache.http.concurrent.Cancellable
    public boolean cancel() {
        boolean z = this.f78425h.get();
        this.f78422e.debug("Cancelling request execution");
        abortConnection();
        return !z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        m55720H(false);
    }

    /* renamed from: f */
    public boolean m55722f() {
        return this.f78425h.get();
    }

    /* renamed from: j */
    public boolean m55723j() {
        return this.f78426i;
    }

    public void markReusable() {
        this.f78426i = true;
    }

    @Override // org.apache.http.conn.ConnectionReleaseTrigger
    public void releaseConnection() {
        m55720H(this.f78426i);
    }

    public void setState(Object obj) {
        this.f78427j = obj;
    }

    /* renamed from: w */
    public void m55724w() {
        this.f78426i = false;
    }
}
