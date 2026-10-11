package com.couchbase.lite;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.Collection;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.couchbase.lite.internal.ImmutableURLEndpointListenerConfiguration;
import com.couchbase.lite.internal.core.C4Database;
import com.couchbase.lite.internal.core.C4Listener;
import com.couchbase.lite.internal.core.C4Replicator;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import java.net.URI;
import java.net.URISyntaxException;
import java.security.cert.Certificate;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
public class URLEndpointListener {

    @Nullable
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private C4Listener c4Listener;

    @NonNull
    private final ImmutableURLEndpointListenerConfiguration config;

    @Nullable
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private TLSIdentity identity;

    @NonNull
    private final Object lock = new Object();
    private int port;

    public URLEndpointListener(@NonNull URLEndpointListenerConfiguration uRLEndpointListenerConfiguration) {
        if (uRLEndpointListenerConfiguration.getDb().getUuid() == null) {
            throw new IllegalArgumentException("Configured database is not open");
        }
        this.config = new ImmutableURLEndpointListenerConfiguration(uRLEndpointListenerConfiguration);
        this.identity = uRLEndpointListenerConfiguration.isTlsDisabled() ? null : uRLEndpointListenerConfiguration.getTlsIdentity();
    }

    private int getCachedPort(@NonNull C4Listener c4Listener) {
        if (this.port == 0) {
            this.port = c4Listener.getPort();
        }
        return this.port;
    }

    @NonNull
    private String getDbUuid() {
        return (String) Preconditions.assertNotNull(this.config.getDatabase().getUuid(), "uuid");
    }

    @NonNull
    private C4Listener startLocked() throws CouchbaseLiteException {
        TLSIdentity tLSIdentity;
        ListenerAuthenticator authenticator = this.config.getAuthenticator();
        com.couchbase.lite.internal.logging.Log.m9904i(LogDomain.LISTENER, "Starting with auth: " + authenticator);
        String path = this.config.getDatabase().getPath();
        if (path == null) {
            throw new CouchbaseLiteError("Listener database is not open");
        }
        if (this.config.isTlsDisabled()) {
            return C4Listener.createHttpListener(this.config.getPort(), this.config.getNetworkInterface(), path, (ListenerPasswordAuthenticator) authenticator, true, !this.config.isReadOnly(), this.config.isDeltaSyncEnabled());
        }
        synchronized (this.lock) {
            if (this.identity == null) {
                this.identity = TLSIdentity.getAnonymousIdentity(getDbUuid() + "@" + this.config.getPort());
            }
            tLSIdentity = this.identity;
        }
        Certificate cert = BaseTLSIdentity.getCert(tLSIdentity);
        if (cert != null) {
            return (authenticator == null || (authenticator instanceof ListenerPasswordAuthenticator)) ? C4Listener.createTlsListenerPasswordAuth(this.config.getPort(), this.config.getNetworkInterface(), path, (ListenerPasswordAuthenticator) authenticator, true, !this.config.isReadOnly(), this.config.isDeltaSyncEnabled(), cert, tLSIdentity.getKeyPair()) : C4Listener.createTlsListenerCertAuth(this.config.getPort(), this.config.getNetworkInterface(), path, (ListenerCertificateAuthenticator) authenticator, true, !this.config.isReadOnly(), this.config.isDeltaSyncEnabled(), cert, tLSIdentity.getKeyPair());
        }
        throw new CouchbaseLiteError("Server cert is null");
    }

    @NonNull
    public URLEndpointListenerConfiguration getConfig() {
        return new URLEndpointListenerConfiguration(this.config);
    }

    public int getPort() {
        int cachedPort;
        synchronized (this.lock) {
            C4Listener c4Listener = this.c4Listener;
            cachedPort = c4Listener == null ? -1 : getCachedPort(c4Listener);
        }
        return cachedPort;
    }

    @Nullable
    public ConnectionStatus getStatus() {
        ConnectionStatus connectionStatus;
        synchronized (this.lock) {
            C4Listener c4Listener = this.c4Listener;
            connectionStatus = c4Listener == null ? null : c4Listener.getConnectionStatus();
        }
        return connectionStatus;
    }

    @Nullable
    public TLSIdentity getTlsIdentity() {
        TLSIdentity tLSIdentity;
        synchronized (this.lock) {
            tLSIdentity = this.identity;
        }
        return tLSIdentity;
    }

    @NonNull
    public List<URI> getUrls() {
        ArrayList arrayList = new ArrayList();
        Database db = getConfig().getDb();
        synchronized (db.getDbLock()) {
            C4Database openC4DbLocked = db.getOpenC4DbLocked();
            synchronized (this.lock) {
                C4Listener c4Listener = this.c4Listener;
                if (c4Listener == null) {
                    return arrayList;
                }
                List<String> urls = c4Listener.getUrls(openC4DbLocked);
                if (urls == null) {
                    return arrayList;
                }
                for (String str : urls) {
                    try {
                        arrayList.add(new URI(str));
                    } catch (URISyntaxException unused) {
                        com.couchbase.lite.internal.logging.Log.m9908w(LogDomain.LISTENER, "Failed creating URI for: " + str);
                    }
                }
                return arrayList;
            }
        }
    }

    public boolean isRunning() {
        boolean z;
        synchronized (this.lock) {
            z = this.c4Listener != null;
        }
        return z;
    }

    public void start() throws CouchbaseLiteException {
        Database db = getConfig().getDb();
        try {
            db.registerUrlListener(this);
            synchronized (this.lock) {
                if (this.c4Listener != null) {
                    return;
                }
                C4Listener startLocked = startLocked();
                this.c4Listener = startLocked;
                synchronized (db.getDbLock()) {
                    startLocked.shareDbCollections(db.getName(), db.getOpenC4DbLocked(), InterfaceC2217Fn.mapToSet(this.config.getCollections(), new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.opn
                        @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
                        public final Object apply(Object obj) {
                            return ((Collection) obj).getOpenC4Collection();
                        }
                    }));
                }
            }
        } catch (CouchbaseLiteException | RuntimeException e) {
            db.unregisterUrlListener(this);
            throw e;
        }
    }

    public void stop() {
        C4Listener c4Listener;
        synchronized (this.lock) {
            c4Listener = this.c4Listener;
            this.c4Listener = null;
        }
        com.couchbase.lite.internal.logging.Log.m9907i(LogDomain.LISTENER, "%s: URLEndpointListener is stopping (%s)", this, c4Listener);
        if (c4Listener == null) {
            return;
        }
        c4Listener.close();
        getConfig().getDb().unregisterUrlListener(this);
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("URLListener{");
        sb.append(this.config.isTlsDisabled() ? C4Replicator.WEBSOCKET_SCHEME : C4Replicator.WEBSOCKET_SECURE_CONNECTION_SCHEME);
        sb.append("://localhost:");
        sb.append(this.port);
        sb.append('/');
        sb.append(this.config.getDatabase().getName());
        sb.append("}");
        return sb.toString();
    }
}
