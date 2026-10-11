package com.couchbase.lite.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.Authenticator;
import com.couchbase.lite.Collection;
import com.couchbase.lite.CollectionConfiguration;
import com.couchbase.lite.Database;
import com.couchbase.lite.Endpoint;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.ProxyAuthenticator;
import com.couchbase.lite.ReplicatorConfiguration;
import com.couchbase.lite.ReplicatorType;
import com.couchbase.lite.internal.core.C4Replicator;
import com.couchbase.lite.internal.core.CBLVersion;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.replicator.AbstractCBLWebSocket;
import com.couchbase.lite.internal.utils.Preconditions;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public class BaseImmutableReplicatorConfiguration {
    private final boolean acceptParentCookies;

    @Nullable
    private final Authenticator authenticator;

    @NonNull
    private final Map<Collection, CollectionConfiguration> configs;
    private final boolean continuous;

    @Nullable
    private final Database database;
    private final boolean enableAutoPurge;

    @Nullable
    private final Map<String, String> headers;
    private final int heartbeat;
    private final int maxAttemptWaitTime;
    private final int maxAttempts;
    private Map<String, Object> options;

    @Nullable
    private final X509Certificate pinnedServerCertificate;

    @Nullable
    private final ProxyAuthenticator proxyAuthenticator;

    @NonNull
    private final Endpoint target;

    @NonNull
    private final ReplicatorType type;

    public BaseImmutableReplicatorConfiguration(@NonNull ReplicatorConfiguration replicatorConfiguration) {
        Map<Collection, CollectionConfiguration> collectionConfigurations = replicatorConfiguration.getCollectionConfigurations();
        if (collectionConfigurations.isEmpty()) {
            throw new IllegalArgumentException("Attempt to configure a replicator with no source collections");
        }
        this.configs = Collections.unmodifiableMap(new HashMap(collectionConfigurations));
        this.target = (Endpoint) Preconditions.assertNotNull(replicatorConfiguration.getTarget(), "replication target");
        this.type = (ReplicatorType) Preconditions.assertNotNull(replicatorConfiguration.getType(), "replicator type");
        this.continuous = replicatorConfiguration.isContinuous();
        this.authenticator = replicatorConfiguration.getAuthenticator();
        this.proxyAuthenticator = replicatorConfiguration.getProxyAuthenticator();
        this.headers = replicatorConfiguration.getHeaders();
        this.acceptParentCookies = replicatorConfiguration.isAcceptParentDomainCookies();
        this.pinnedServerCertificate = replicatorConfiguration.getPinnedServerX509Certificate();
        this.maxAttempts = replicatorConfiguration.getMaxAttempts();
        this.maxAttemptWaitTime = replicatorConfiguration.getMaxAttemptWaitTime();
        this.heartbeat = replicatorConfiguration.getHeartbeat();
        this.enableAutoPurge = replicatorConfiguration.isAutoPurgeEnabled();
        this.database = (Database) Preconditions.assertNotNull(replicatorConfiguration.getDatabase(), "replications source database");
    }

    @Nullable
    public final Authenticator getAuthenticator() {
        return this.authenticator;
    }

    @NonNull
    public final Map<Collection, CollectionConfiguration> getCollectionConfigs() {
        return this.configs;
    }

    @NonNull
    public Map<String, Object> getConnectionOptions() {
        HashMap hashMap = new HashMap();
        Object obj = this.authenticator;
        if (obj != null) {
            ((BaseAuthenticator) obj).authenticate(hashMap);
        }
        ProxyAuthenticator proxyAuthenticator = this.proxyAuthenticator;
        if (proxyAuthenticator != null) {
            proxyAuthenticator.authenticate(hashMap);
        }
        X509Certificate x509Certificate = this.pinnedServerCertificate;
        if (x509Certificate != null) {
            try {
                hashMap.put(C4Replicator.REPLICATOR_OPTION_PINNED_SERVER_CERT, x509Certificate.getEncoded());
            } catch (CertificateEncodingException e) {
                Log.m9909w(LogDomain.NETWORK, "Unable to encode pinned certificate.  Ignoring", e);
            }
        }
        int i = this.heartbeat;
        if (i <= 0) {
            i = 300;
        }
        hashMap.put(C4Replicator.REPLICATOR_HEARTBEAT_INTERVAL, Integer.valueOf(i));
        int i2 = this.maxAttemptWaitTime;
        hashMap.put(C4Replicator.REPLICATOR_OPTION_MAX_RETRY_INTERVAL, Integer.valueOf(i2 > 0 ? i2 : 300));
        int i3 = this.maxAttempts;
        if (i3 <= 0) {
            i3 = this.continuous ? Integer.MAX_VALUE : 10;
        }
        hashMap.put(C4Replicator.REPLICATOR_OPTION_MAX_RETRIES, Integer.valueOf(i3 - 1));
        hashMap.put(C4Replicator.REPLICATOR_OPTION_ACCEPT_PARENT_COOKIES, Boolean.valueOf(this.acceptParentCookies));
        hashMap.put(C4Replicator.REPLICATOR_OPTION_ENABLE_AUTO_PURGE, Boolean.valueOf(this.enableAutoPurge));
        HashMap hashMap2 = new HashMap();
        Map<String, String> map = this.headers;
        if (map != null) {
            String remove = map.remove(AbstractCBLWebSocket.HEADER_COOKIES);
            if (remove != null) {
                Object obj2 = hashMap.get(C4Replicator.REPLICATOR_OPTION_COOKIES);
                if (obj2 instanceof String) {
                    remove = remove + "; " + obj2;
                }
                hashMap.put(C4Replicator.REPLICATOR_OPTION_COOKIES, remove);
            }
            hashMap2.putAll(this.headers);
        }
        hashMap2.put("User-Agent", CBLVersion.getUserAgent());
        hashMap.put(C4Replicator.REPLICATOR_OPTION_EXTRA_HEADERS, hashMap2);
        this.options = hashMap;
        return hashMap;
    }

    @Nullable
    public final Database getDatabase() {
        return this.database;
    }

    @Nullable
    public final Map<String, String> getHeaders() {
        return this.headers;
    }

    public final int getHeartbeat() {
        return this.heartbeat;
    }

    public final int getMaxRetryAttemptWaitTime() {
        return this.maxAttemptWaitTime;
    }

    public final int getMaxRetryAttempts() {
        return this.maxAttempts;
    }

    @Nullable
    public final X509Certificate getPinnedServerCertificate() {
        return this.pinnedServerCertificate;
    }

    @Nullable
    public final ProxyAuthenticator getProxyAuthenticator() {
        return this.proxyAuthenticator;
    }

    @NonNull
    public final Endpoint getTarget() {
        return this.target;
    }

    @NonNull
    public final ReplicatorType getType() {
        return this.type;
    }

    public boolean isAcceptParentCookies() {
        return this.acceptParentCookies;
    }

    public final boolean isAutoPurgeEnabled() {
        return this.enableAutoPurge;
    }

    public final boolean isContinuous() {
        return this.continuous;
    }

    public final boolean isPull() {
        ReplicatorType replicatorType = this.type;
        return replicatorType == ReplicatorType.PUSH_AND_PULL || replicatorType == ReplicatorType.PULL;
    }

    public final boolean isPush() {
        ReplicatorType replicatorType = this.type;
        return replicatorType == ReplicatorType.PUSH_AND_PULL || replicatorType == ReplicatorType.PUSH;
    }
}
