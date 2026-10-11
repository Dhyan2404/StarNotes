package com.sunia.HTREnginev2;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.logging.Log;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.pool.AbstractConnPool;
import org.apache.http.pool.ConnFactory;

@Deprecated
/* loaded from: classes12.dex */
public class a0i extends AbstractConnPool<HttpRoute, OperatedClientConnection, j0i> {

    /* renamed from: t */
    public static final AtomicLong f64175t = new AtomicLong();

    /* renamed from: q */
    public final Log f64176q;

    /* renamed from: r */
    public final long f64177r;

    /* renamed from: s */
    public final TimeUnit f64178s;

    /* renamed from: com.sunia.HTREnginev2.a0i$a */
    /* loaded from: classes12.dex */
    public static class C13465a implements ConnFactory<HttpRoute, OperatedClientConnection> {

        /* renamed from: a */
        public final ClientConnectionOperator f64179a;

        public C13465a(ClientConnectionOperator clientConnectionOperator) {
            this.f64179a = clientConnectionOperator;
        }

        @Override // org.apache.http.pool.ConnFactory
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public OperatedClientConnection create(HttpRoute httpRoute) throws IOException {
            return this.f64179a.createConnection();
        }
    }

    public a0i(Log log, ClientConnectionOperator clientConnectionOperator, int i, int i2, long j, TimeUnit timeUnit) {
        super(new C13465a(clientConnectionOperator), i, i2);
        this.f64176q = log;
        this.f64177r = j;
        this.f64178s = timeUnit;
    }

    @Override // org.apache.http.pool.AbstractConnPool
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public j0i createEntry(HttpRoute httpRoute, OperatedClientConnection operatedClientConnection) {
        return new j0i(this.f64176q, Long.toString(f64175t.getAndIncrement()), httpRoute, operatedClientConnection, this.f64177r, this.f64178s);
    }
}
