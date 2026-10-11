package com.couchbase.lite.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.Collection;
import com.couchbase.lite.Database;
import com.couchbase.lite.ListenerAuthenticator;
import com.couchbase.lite.TLSIdentity;
import com.couchbase.lite.URLEndpointListenerConfiguration;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes4.dex */
public class ImmutableURLEndpointListenerConfiguration {

    @Nullable
    private final ListenerAuthenticator authenticator;

    @NonNull
    private final Set<Collection> collections;

    /* renamed from: db */
    @NonNull
    private final Database f16294db;
    private final boolean disableTls;
    private final boolean enableDeltaSync;

    @Nullable
    private final TLSIdentity identity;

    @Nullable
    private final String networkInterface;
    private final int port;
    private final boolean readOnly;

    public ImmutableURLEndpointListenerConfiguration(@NonNull URLEndpointListenerConfiguration uRLEndpointListenerConfiguration) {
        HashSet hashSet = new HashSet(uRLEndpointListenerConfiguration.getCollections());
        this.collections = hashSet;
        this.f16294db = ((Collection) hashSet.iterator().next()).f16292db;
        this.networkInterface = uRLEndpointListenerConfiguration.getNetworkInterface();
        this.port = uRLEndpointListenerConfiguration.getPort();
        this.disableTls = uRLEndpointListenerConfiguration.isTlsDisabled();
        this.identity = uRLEndpointListenerConfiguration.getTlsIdentity();
        this.authenticator = uRLEndpointListenerConfiguration.getAuthenticator();
        this.readOnly = uRLEndpointListenerConfiguration.isReadOnly();
        this.enableDeltaSync = uRLEndpointListenerConfiguration.isDeltaSyncEnabled();
    }

    @Nullable
    public ListenerAuthenticator getAuthenticator() {
        return this.authenticator;
    }

    @NonNull
    public Set<Collection> getCollections() {
        return new HashSet(this.collections);
    }

    @NonNull
    public Database getDatabase() {
        return this.f16294db;
    }

    @Nullable
    public String getNetworkInterface() {
        return this.networkInterface;
    }

    public int getPort() {
        return this.port;
    }

    @Nullable
    public TLSIdentity getTlsIdentity() {
        return this.identity;
    }

    public boolean isDeltaSyncEnabled() {
        return this.enableDeltaSync;
    }

    public boolean isReadOnly() {
        return this.readOnly;
    }

    public boolean isTlsDisabled() {
        return this.disableTls;
    }
}
