package org.apache.http.impl.conn;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpConnection;

@Deprecated
/* loaded from: classes12.dex */
public class IdleConnectionHandler {

    /* renamed from: a */
    public final Log f110756a = LogFactory.getLog(getClass());

    /* renamed from: b */
    public final Map<HttpConnection, C19367a> f110757b = new HashMap();

    /* renamed from: org.apache.http.impl.conn.IdleConnectionHandler$a */
    /* loaded from: classes12.dex */
    public static class C19367a {

        /* renamed from: a */
        public final long f110758a;

        /* renamed from: b */
        public final long f110759b;

        public C19367a(long j, long j2, TimeUnit timeUnit) {
            this.f110758a = j;
            if (j2 > 0) {
                this.f110759b = j + timeUnit.toMillis(j2);
            } else {
                this.f110759b = Long.MAX_VALUE;
            }
        }
    }

    public void add(HttpConnection httpConnection, long j, TimeUnit timeUnit) {
        long currentTimeMillis = System.currentTimeMillis();
        if (this.f110756a.isDebugEnabled()) {
            this.f110756a.debug("Adding connection at: " + currentTimeMillis);
        }
        this.f110757b.put(httpConnection, new C19367a(currentTimeMillis, j, timeUnit));
    }

    public void closeExpiredConnections() {
        long currentTimeMillis = System.currentTimeMillis();
        if (this.f110756a.isDebugEnabled()) {
            this.f110756a.debug("Checking for expired connections, now: " + currentTimeMillis);
        }
        for (Map.Entry<HttpConnection, C19367a> entry : this.f110757b.entrySet()) {
            HttpConnection key = entry.getKey();
            C19367a value = entry.getValue();
            if (value.f110759b <= currentTimeMillis) {
                if (this.f110756a.isDebugEnabled()) {
                    this.f110756a.debug("Closing connection, expired @: " + value.f110759b);
                }
                try {
                    key.close();
                } catch (IOException e) {
                    this.f110756a.debug("I/O error closing connection", e);
                }
            }
        }
    }

    public void closeIdleConnections(long j) {
        long currentTimeMillis = System.currentTimeMillis() - j;
        if (this.f110756a.isDebugEnabled()) {
            this.f110756a.debug("Checking for connections, idle timeout: " + currentTimeMillis);
        }
        for (Map.Entry<HttpConnection, C19367a> entry : this.f110757b.entrySet()) {
            HttpConnection key = entry.getKey();
            long j2 = entry.getValue().f110758a;
            if (j2 <= currentTimeMillis) {
                if (this.f110756a.isDebugEnabled()) {
                    this.f110756a.debug("Closing idle connection, connection time: " + j2);
                }
                try {
                    key.close();
                } catch (IOException e) {
                    this.f110756a.debug("I/O error closing connection", e);
                }
            }
        }
    }

    public boolean remove(HttpConnection httpConnection) {
        C19367a remove = this.f110757b.remove(httpConnection);
        if (remove != null) {
            return System.currentTimeMillis() <= remove.f110759b;
        }
        this.f110756a.warn("Removing a connection that never existed!");
        return true;
    }

    public void removeAll() {
        this.f110757b.clear();
    }
}
