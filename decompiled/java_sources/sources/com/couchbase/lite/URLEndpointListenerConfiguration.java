package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.ImmutableURLEndpointListenerConfiguration;
import com.couchbase.lite.internal.utils.Preconditions;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;

/* loaded from: classes4.dex */
public class URLEndpointListenerConfiguration {
    public static final int MAX_PORT = 65535;
    public static final int MIN_PORT = 0;

    @Nullable
    ListenerAuthenticator authenticator;

    @NonNull
    private final Set<Collection> collections;

    /* renamed from: db */
    @NonNull
    private final Database f16274db;
    private boolean disableTls;
    private boolean enableDeltaSync;

    @Nullable
    private TLSIdentity identity;

    @Nullable
    private String networkInterface;
    private int port;
    private boolean readOnly;

    @Deprecated
    public URLEndpointListenerConfiguration(@NonNull Database database) {
        this((Database) Preconditions.assertNotNull(database, "database"), database.getDefaultCollectionAsSet(), null, 0, false, null, null, false, false);
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
    @Deprecated
    public Database getDatabase() {
        return this.f16274db;
    }

    @NonNull
    public Database getDb() {
        return this.f16274db;
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

    public void setAuthenticator(@Nullable ListenerAuthenticator listenerAuthenticator) {
        this.authenticator = listenerAuthenticator;
    }

    public void setDisableTls(boolean z) {
        this.disableTls = z;
    }

    public void setEnableDeltaSync(boolean z) {
        this.enableDeltaSync = z;
    }

    public void setNetworkInterface(@Nullable String str) {
        this.networkInterface = str;
    }

    public void setPort(int i) {
        if (i >= 0 && i <= 65535) {
            this.port = i;
            return;
        }
        throw new IllegalArgumentException("port " + i + "is not between 0" + CloudStorageConstants.OPERATION_AND + "65535 inclusive");
    }

    public void setReadOnly(boolean z) {
        this.readOnly = z;
    }

    public void setTlsIdentity(@Nullable TLSIdentity tLSIdentity) {
        this.identity = tLSIdentity;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder("URLEndpointListenerConfig{@");
        sb.append(this.networkInterface);
        sb.append(':');
        sb.append(this.port);
        if (this.authenticator != null) {
            sb.append(PublicSuffixDatabase.f103895g);
        }
        if (this.disableTls) {
            sb.append('-');
        }
        if (this.enableDeltaSync) {
            sb.append(PhoneNumberUtil.f36455s);
        }
        if (this.readOnly) {
            sb.append('*');
        }
        sb.append(' ');
        sb.append(this.f16274db);
        sb.append('[');
        Iterator<Collection> it2 = this.collections.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (z) {
                sb.append(", ");
            } else {
                z = true;
            }
        }
        sb.append("]}");
        return sb.toString();
    }

    public URLEndpointListenerConfiguration(@NonNull Set<Collection> set) {
        this(set, null, 0, false, null, null, false, false);
    }

    @SuppressFBWarnings({"NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"})
    public URLEndpointListenerConfiguration(@NonNull Set<Collection> set, @Nullable String str, int i, boolean z, @Nullable TLSIdentity tLSIdentity, @Nullable ListenerAuthenticator listenerAuthenticator, boolean z2, boolean z3) {
        this(AbstractDatabase.getDbForCollections(set), new HashSet(Preconditions.assertNotEmpty(set, "collections")), str, i, z, tLSIdentity, listenerAuthenticator, z2, z3);
    }

    public URLEndpointListenerConfiguration(@NonNull URLEndpointListenerConfiguration uRLEndpointListenerConfiguration) {
        this(uRLEndpointListenerConfiguration.getDb(), new HashSet(uRLEndpointListenerConfiguration.getCollections()), uRLEndpointListenerConfiguration.getNetworkInterface(), uRLEndpointListenerConfiguration.getPort(), uRLEndpointListenerConfiguration.isTlsDisabled(), uRLEndpointListenerConfiguration.getTlsIdentity(), uRLEndpointListenerConfiguration.getAuthenticator(), uRLEndpointListenerConfiguration.isReadOnly(), uRLEndpointListenerConfiguration.isDeltaSyncEnabled());
    }

    public URLEndpointListenerConfiguration(@NonNull ImmutableURLEndpointListenerConfiguration immutableURLEndpointListenerConfiguration) {
        this(immutableURLEndpointListenerConfiguration.getDatabase(), immutableURLEndpointListenerConfiguration.getCollections(), immutableURLEndpointListenerConfiguration.getNetworkInterface(), immutableURLEndpointListenerConfiguration.getPort(), immutableURLEndpointListenerConfiguration.isTlsDisabled(), immutableURLEndpointListenerConfiguration.getTlsIdentity(), immutableURLEndpointListenerConfiguration.getAuthenticator(), immutableURLEndpointListenerConfiguration.isReadOnly(), immutableURLEndpointListenerConfiguration.isDeltaSyncEnabled());
    }

    private URLEndpointListenerConfiguration(@NonNull Database database, @NonNull Set<Collection> set, @Nullable String str, int i, boolean z, @Nullable TLSIdentity tLSIdentity, @Nullable ListenerAuthenticator listenerAuthenticator, boolean z2, boolean z3) {
        this.f16274db = database;
        this.collections = set;
        this.networkInterface = str;
        this.identity = tLSIdentity;
        this.authenticator = listenerAuthenticator;
        this.port = i;
        this.disableTls = z;
        this.enableDeltaSync = z3;
        this.readOnly = z2;
    }
}
