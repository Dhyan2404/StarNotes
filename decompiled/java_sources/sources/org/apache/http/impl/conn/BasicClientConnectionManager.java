package org.apache.http.impl.conn;

import com.sunia.HTREnginev2.d8j;
import com.sunia.HTREnginev2.j0i;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpClientConnection;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Contract(threading = ThreadingBehavior.SAFE)
@Deprecated
/* loaded from: classes12.dex */
public class BasicClientConnectionManager implements ClientConnectionManager {
    public static final String MISUSE_MESSAGE = "Invalid use of BasicClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one.";

    /* renamed from: k */
    public static final AtomicLong f110703k = new AtomicLong();

    /* renamed from: e */
    public final Log f110704e;

    /* renamed from: f */
    public final SchemeRegistry f110705f;

    /* renamed from: g */
    public final ClientConnectionOperator f110706g;

    /* renamed from: h */
    public j0i f110707h;

    /* renamed from: i */
    public d8j f110708i;

    /* renamed from: j */
    public volatile boolean f110709j;

    /* renamed from: org.apache.http.impl.conn.BasicClientConnectionManager$a */
    /* loaded from: classes12.dex */
    public class C19365a implements ClientConnectionRequest {

        /* renamed from: a */
        public final /* synthetic */ HttpRoute f110710a;

        /* renamed from: b */
        public final /* synthetic */ Object f110711b;

        public C19365a(HttpRoute httpRoute, Object obj) {
            this.f110710a = httpRoute;
            this.f110711b = obj;
        }

        @Override // org.apache.http.conn.ClientConnectionRequest
        public void abortRequest() {
        }

        @Override // org.apache.http.conn.ClientConnectionRequest
        public ManagedClientConnection getConnection(long j, TimeUnit timeUnit) {
            return BasicClientConnectionManager.this.m68508b(this.f110710a, this.f110711b);
        }
    }

    public BasicClientConnectionManager(SchemeRegistry schemeRegistry) {
        this.f110704e = LogFactory.getLog(getClass());
        Args.notNull(schemeRegistry, "Scheme registry");
        this.f110705f = schemeRegistry;
        this.f110706g = createConnectionOperator(schemeRegistry);
    }

    /* renamed from: a */
    public final void m68507a() {
        Asserts.check(!this.f110709j, "Connection manager has been shut down");
    }

    /* renamed from: b */
    public ManagedClientConnection m68508b(HttpRoute httpRoute, Object obj) {
        d8j d8jVar;
        Args.notNull(httpRoute, "Route");
        synchronized (this) {
            m68507a();
            if (this.f110704e.isDebugEnabled()) {
                this.f110704e.debug("Get connection for route " + httpRoute);
            }
            Asserts.check(this.f110708i == null, MISUSE_MESSAGE);
            j0i j0iVar = this.f110707h;
            if (j0iVar != null && !j0iVar.m54848b().equals(httpRoute)) {
                this.f110707h.close();
                this.f110707h = null;
            }
            if (this.f110707h == null) {
                this.f110707h = new j0i(this.f110704e, Long.toString(f110703k.getAndIncrement()), httpRoute, this.f110706g.createConnection(), 0L, TimeUnit.MILLISECONDS);
            }
            if (this.f110707h.isExpired(System.currentTimeMillis())) {
                this.f110707h.close();
                this.f110707h.m54849c().reset();
            }
            d8jVar = new d8j(this, this.f110706g, this.f110707h);
            this.f110708i = d8jVar;
        }
        return d8jVar;
    }

    /* renamed from: c */
    public final void m68509c(HttpClientConnection httpClientConnection) {
        try {
            httpClientConnection.shutdown();
        } catch (IOException e) {
            if (this.f110704e.isDebugEnabled()) {
                this.f110704e.debug("I/O exception shutting down connection", e);
            }
        }
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void closeExpiredConnections() {
        synchronized (this) {
            m68507a();
            long currentTimeMillis = System.currentTimeMillis();
            j0i j0iVar = this.f110707h;
            if (j0iVar != null && j0iVar.isExpired(currentTimeMillis)) {
                this.f110707h.close();
                this.f110707h.m54849c().reset();
            }
        }
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void closeIdleConnections(long j, TimeUnit timeUnit) {
        Args.notNull(timeUnit, "Time unit");
        synchronized (this) {
            m68507a();
            long millis = timeUnit.toMillis(j);
            if (millis < 0) {
                millis = 0;
            }
            long currentTimeMillis = System.currentTimeMillis() - millis;
            j0i j0iVar = this.f110707h;
            if (j0iVar != null && j0iVar.getUpdated() <= currentTimeMillis) {
                this.f110707h.close();
                this.f110707h.m54849c().reset();
            }
        }
    }

    public ClientConnectionOperator createConnectionOperator(SchemeRegistry schemeRegistry) {
        return new DefaultClientConnectionOperator(schemeRegistry);
    }

    public void finalize() throws Throwable {
        try {
            shutdown();
        } finally {
            super.finalize();
        }
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public SchemeRegistry getSchemeRegistry() {
        return this.f110705f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.http.conn.ClientConnectionManager
    public void releaseConnection(ManagedClientConnection managedClientConnection, long j, TimeUnit timeUnit) {
        String str;
        Args.check(managedClientConnection instanceof d8j, "Connection class mismatch, connection not obtained from this manager");
        d8j d8jVar = (d8j) managedClientConnection;
        synchronized (d8jVar) {
            if (this.f110704e.isDebugEnabled()) {
                this.f110704e.debug("Releasing connection " + managedClientConnection);
            }
            if (d8jVar.m53600e0() == null) {
                return;
            }
            Asserts.check(d8jVar.m53599M() == this, "Connection not obtained from this manager");
            synchronized (this) {
                if (this.f110709j) {
                    m68509c(d8jVar);
                    return;
                }
                try {
                    if (d8jVar.isOpen() && !d8jVar.isMarkedReusable()) {
                        m68509c(d8jVar);
                    }
                    if (d8jVar.isMarkedReusable()) {
                        this.f110707h.updateExpiry(j, timeUnit != null ? timeUnit : TimeUnit.MILLISECONDS);
                        if (this.f110704e.isDebugEnabled()) {
                            if (j > 0) {
                                str = "for " + j + " " + timeUnit;
                            } else {
                                str = "indefinitely";
                            }
                            this.f110704e.debug("Connection can be kept alive " + str);
                        }
                    }
                } finally {
                    d8jVar.m53601f();
                    this.f110708i = null;
                    if (this.f110707h.isClosed()) {
                        this.f110707h = null;
                    }
                }
            }
        }
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public final ClientConnectionRequest requestConnection(HttpRoute httpRoute, Object obj) {
        return new C19365a(httpRoute, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.http.conn.ClientConnectionManager
    public void shutdown() {
        synchronized (this) {
            this.f110709j = true;
            try {
                j0i j0iVar = this.f110707h;
                if (j0iVar != null) {
                    j0iVar.close();
                }
            } finally {
                this.f110707h = null;
                this.f110708i = null;
            }
        }
    }

    public BasicClientConnectionManager() {
        this(SchemeRegistryFactory.createDefault());
    }
}
