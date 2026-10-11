package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.AbstractReplicatorConfiguration;
import com.couchbase.lite.Collection;
import com.couchbase.lite.CollectionConfiguration;
import com.couchbase.lite.ConflictResolver;
import com.couchbase.lite.Defaults;
import com.couchbase.lite.ReplicationFilter;
import com.couchbase.lite.internal.BaseReplicatorConfiguration;
import com.couchbase.lite.internal.ImmutableReplicatorConfiguration;
import com.couchbase.lite.internal.core.C4Replicator;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import com.google.android.material.motion.MotionUtils;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.Util;

/* loaded from: classes4.dex */
public abstract class AbstractReplicatorConfiguration extends BaseReplicatorConfiguration {
    public static final int DISABLE_HEARTBEAT = 2147483;
    private boolean acceptParentCookies;

    @Nullable
    private Authenticator authenticator;
    private boolean continuous;

    @Nullable
    private Database database;
    private boolean enableAutoPurge;

    @Nullable
    private Map<String, String> headers;
    private int heartbeat;
    private int maxAttemptWaitTime;
    private int maxAttempts;

    @Nullable
    private X509Certificate pinnedServerCertificate;

    @Nullable
    private ProxyAuthenticator proxyAuthenticator;

    @NonNull
    private final Endpoint target;

    @NonNull
    private com.couchbase.lite.ReplicatorType type;

    /* renamed from: com.couchbase.lite.AbstractReplicatorConfiguration$1 */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C21471 {

        /* renamed from: $SwitchMap$com$couchbase$lite$AbstractReplicatorConfiguration$ReplicatorType */
        static final /* synthetic */ int[] f16263xf5e78a76;
        static final /* synthetic */ int[] $SwitchMap$com$couchbase$lite$ReplicatorType;

        static {
            int[] iArr = new int[com.couchbase.lite.ReplicatorType.values().length];
            $SwitchMap$com$couchbase$lite$ReplicatorType = iArr;
            try {
                iArr[com.couchbase.lite.ReplicatorType.PUSH_AND_PULL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$couchbase$lite$ReplicatorType[com.couchbase.lite.ReplicatorType.PUSH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$couchbase$lite$ReplicatorType[com.couchbase.lite.ReplicatorType.PULL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[ReplicatorType.values().length];
            f16263xf5e78a76 = iArr2;
            try {
                iArr2[ReplicatorType.PUSH_AND_PULL.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f16263xf5e78a76[ReplicatorType.PUSH.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f16263xf5e78a76[ReplicatorType.PULL.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    @Deprecated
    /* loaded from: classes4.dex */
    public enum ReplicatorType {
        PUSH_AND_PULL,
        PUSH,
        PULL
    }

    public AbstractReplicatorConfiguration(@Nullable Database database, @Nullable Map<Collection, CollectionConfiguration> map, @NonNull Endpoint endpoint) {
        this(map, endpoint, Defaults.Replicator.TYPE, false, null, null, null, false, null, 10, 300, 300, true, database);
    }

    @SuppressFBWarnings({"NP_NULL_ON_SOME_PATH", "NP_LOAD_OF_KNOWN_NULL_VALUE", "RCN_REDUNDANT_NULLCHECK_OF_NULL_VALUE"})
    private void addCollectionConfig(@NonNull Collection collection, @NonNull CollectionConfiguration collectionConfiguration) {
        Database database = ((Collection) Preconditions.assertNotNull(collection, "collection")).getDatabase();
        Database database2 = this.database;
        if (database2 == null) {
            this.database = database;
        } else if (!database2.equals(database)) {
            throw new IllegalArgumentException(com.couchbase.lite.internal.logging.Log.formatStandardMessage("AddCollectionFromAnotherDB", collection.toString(), this.database.getName()));
        }
        if (!this.database.isOpen()) {
            throw new IllegalArgumentException(com.couchbase.lite.internal.logging.Log.formatStandardMessage("AddCollectionFromClosedDB", collection.toString(), this.database.getName()));
        }
        try {
            Collection collection2 = this.database.getCollection(collection.getName(), collection.getScope().getName());
            if (collection2 == null) {
                try {
                    throw new IllegalArgumentException(com.couchbase.lite.internal.logging.Log.formatStandardMessage("AddDeletedCollection", collection.toString()));
                } finally {
                }
            } else {
                collection2.close();
                addCollectionInternal(collection, collectionConfiguration);
            }
        } catch (CouchbaseLiteException e) {
            throw new IllegalArgumentException("Failed getting collection " + collection, e);
        }
    }

    @Nullable
    public static Map<Collection, CollectionConfiguration> configureDefaultCollection(@Nullable Database database) {
        if (database == null) {
            return null;
        }
        try {
            Collection defaultCollection = database.getDefaultCollection();
            HashMap hashMap = new HashMap();
            hashMap.put(defaultCollection, new CollectionConfiguration());
            return hashMap;
        } catch (CouchbaseLiteException e) {
            throw new CouchbaseLiteError(com.couchbase.lite.internal.logging.Log.lookupStandardMessage("NoDefaultCollectionInConfig"), e);
        }
    }

    @Nullable
    private static Map<Collection, CollectionConfiguration> copyConfigs(@Nullable Map<Collection, CollectionConfiguration> map) {
        if (map == null) {
            return null;
        }
        return new HashMap(map);
    }

    @NonNull
    private CollectionConfiguration getAndUpdateDefaultConfig(@Nullable InterfaceC2217Fn.Consumer<CollectionConfiguration> consumer) {
        Collection collection = (Collection) InterfaceC2217Fn.firstOrNull(this.collectionConfigurations.keySet(), new InterfaceC2217Fn.Predicate() { // from class: com.sunia.HTREnginev2.n4
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Predicate
            public final boolean test(Object obj) {
                return ((Collection) obj).isDefault();
            }
        });
        if (collection == null) {
            throw new IllegalArgumentException("Cannot use legacy parameters when there is no default collection");
        }
        CollectionConfiguration collectionConfiguration = this.collectionConfigurations.get(collection);
        if (collectionConfiguration == null) {
            throw new IllegalArgumentException("Cannot use legacy parameters when the default collection has no configuration");
        }
        if (consumer == null) {
            return collectionConfiguration;
        }
        CollectionConfiguration collectionConfiguration2 = new CollectionConfiguration(collectionConfiguration);
        consumer.accept(collectionConfiguration2);
        addCollectionInternal(collection, collectionConfiguration2);
        return collectionConfiguration2;
    }

    @NonNull
    private CollectionConfiguration getValidDefaultConfigOrThrow() {
        return getAndUpdateDefaultConfig(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setChannels$1(List list, CollectionConfiguration collectionConfiguration) {
        collectionConfiguration.setChannels(list == null ? null : new ArrayList(list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$setDocumentIDs$0(List list, CollectionConfiguration collectionConfiguration) {
        collectionConfiguration.setDocumentIDs(list == null ? null : new ArrayList(list));
    }

    private void updateValidDefaultConfigOrThrow(@NonNull InterfaceC2217Fn.Consumer<CollectionConfiguration> consumer) {
        getAndUpdateDefaultConfig(consumer);
    }

    private static int verifyHeartbeat(int i) {
        try {
            Util.checkDuration(C4Replicator.REPLICATOR_HEARTBEAT_INTERVAL, i, TimeUnit.SECONDS);
            return i;
        } catch (IllegalStateException e) {
            throw new IllegalArgumentException(e.getMessage());
        }
    }

    @NonNull
    public final ReplicatorConfiguration addCollection(@NonNull Collection collection, @Nullable CollectionConfiguration collectionConfiguration) {
        addCollectionConfig(collection, collectionConfiguration == null ? new CollectionConfiguration() : new CollectionConfiguration(collectionConfiguration));
        return getReplicatorConfiguration();
    }

    @NonNull
    public final ReplicatorConfiguration addCollections(@NonNull java.util.Collection<Collection> collection, @Nullable CollectionConfiguration collectionConfiguration) {
        if (collectionConfiguration == null) {
            collectionConfiguration = new CollectionConfiguration();
        }
        Iterator<Collection> it2 = collection.iterator();
        while (it2.hasNext()) {
            addCollectionConfig(it2.next(), collectionConfiguration);
        }
        return getReplicatorConfiguration();
    }

    @Nullable
    public final Authenticator getAuthenticator() {
        return this.authenticator;
    }

    @Nullable
    @Deprecated
    public final List<String> getChannels() {
        List<String> channels = getValidDefaultConfigOrThrow().getChannels();
        if (channels == null) {
            return null;
        }
        return new ArrayList(channels);
    }

    @Nullable
    public final CollectionConfiguration getCollectionConfiguration(@NonNull Collection collection) {
        CollectionConfiguration collectionConfiguration = this.collectionConfigurations.get(collection);
        if (collectionConfiguration == null) {
            return null;
        }
        return new CollectionConfiguration(collectionConfiguration);
    }

    @NonNull
    public final Set<Collection> getCollections() {
        return new HashSet(this.collectionConfigurations.keySet());
    }

    @Nullable
    @Deprecated
    public final ConflictResolver getConflictResolver() {
        return getValidDefaultConfigOrThrow().getConflictResolver();
    }

    @NonNull
    @Deprecated
    public final Database getDatabase() {
        Database database = this.database;
        if (database != null) {
            return database;
        }
        throw new CouchbaseLiteError("No database or collections provided for replication configuration");
    }

    @Nullable
    @Deprecated
    public final List<String> getDocumentIDs() {
        List<String> documentIDs = getValidDefaultConfigOrThrow().getDocumentIDs();
        if (documentIDs == null) {
            return null;
        }
        return new ArrayList(documentIDs);
    }

    @Nullable
    public final Map<String, String> getHeaders() {
        if (this.headers == null) {
            return null;
        }
        return new HashMap(this.headers);
    }

    public final int getHeartbeat() {
        return this.heartbeat;
    }

    public final int getMaxAttemptWaitTime() {
        return this.maxAttemptWaitTime;
    }

    public final int getMaxAttempts() {
        return this.maxAttempts;
    }

    @Nullable
    @Deprecated
    public final byte[] getPinnedServerCertificate() {
        try {
            X509Certificate x509Certificate = this.pinnedServerCertificate;
            if (x509Certificate == null) {
                return null;
            }
            return x509Certificate.getEncoded();
        } catch (CertificateEncodingException e) {
            throw new CouchbaseLiteError("Unrecognized certificate encoding", e);
        }
    }

    @Nullable
    public final X509Certificate getPinnedServerX509Certificate() {
        return this.pinnedServerCertificate;
    }

    @Nullable
    public ProxyAuthenticator getProxyAuthenticator() {
        return this.proxyAuthenticator;
    }

    @Nullable
    @Deprecated
    public final ReplicationFilter getPullFilter() {
        return getValidDefaultConfigOrThrow().getPullFilter();
    }

    @Nullable
    @Deprecated
    public final ReplicationFilter getPushFilter() {
        return getValidDefaultConfigOrThrow().getPushFilter();
    }

    @NonNull
    public abstract ReplicatorConfiguration getReplicatorConfiguration();

    @NonNull
    @Deprecated
    public final ReplicatorType getReplicatorType() {
        int i = C21471.$SwitchMap$com$couchbase$lite$ReplicatorType[this.type.ordinal()];
        if (i == 1) {
            return ReplicatorType.PUSH_AND_PULL;
        }
        if (i == 2) {
            return ReplicatorType.PUSH;
        }
        if (i == 3) {
            return ReplicatorType.PULL;
        }
        throw new CouchbaseLiteError("Unrecognized replicator type: " + this.type);
    }

    @NonNull
    public final Endpoint getTarget() {
        return this.target;
    }

    @NonNull
    public final com.couchbase.lite.ReplicatorType getType() {
        return this.type;
    }

    public final boolean isAcceptParentDomainCookies() {
        return this.acceptParentCookies;
    }

    public final boolean isAutoPurgeEnabled() {
        return this.enableAutoPurge;
    }

    public final boolean isContinuous() {
        return this.continuous;
    }

    @NonNull
    public final ReplicatorConfiguration removeCollection(@NonNull Collection collection) {
        removeCollectionInternal(collection);
        return getReplicatorConfiguration();
    }

    @NonNull
    public final ReplicatorConfiguration setAcceptParentDomainCookies(boolean z) {
        this.acceptParentCookies = z;
        return getReplicatorConfiguration();
    }

    @NonNull
    public final ReplicatorConfiguration setAuthenticator(@Nullable Authenticator authenticator) {
        this.authenticator = authenticator;
        return getReplicatorConfiguration();
    }

    @NonNull
    public final ReplicatorConfiguration setAutoPurgeEnabled(boolean z) {
        this.enableAutoPurge = z;
        return getReplicatorConfiguration();
    }

    @NonNull
    @Deprecated
    public final ReplicatorConfiguration setChannels(@Nullable final List<String> list) {
        updateValidDefaultConfigOrThrow(new InterfaceC2217Fn.Consumer() { // from class: com.sunia.HTREnginev2.s4
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Consumer
            public final void accept(Object obj) {
                AbstractReplicatorConfiguration.lambda$setChannels$1(list, (CollectionConfiguration) obj);
            }
        });
        return getReplicatorConfiguration();
    }

    @NonNull
    @Deprecated
    public final ReplicatorConfiguration setConflictResolver(@Nullable final ConflictResolver conflictResolver) {
        updateValidDefaultConfigOrThrow(new InterfaceC2217Fn.Consumer() { // from class: com.sunia.HTREnginev2.p4
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Consumer
            public final void accept(Object obj) {
                ((CollectionConfiguration) obj).setConflictResolver(ConflictResolver.this);
            }
        });
        return getReplicatorConfiguration();
    }

    @NonNull
    public final ReplicatorConfiguration setContinuous(boolean z) {
        this.continuous = z;
        return getReplicatorConfiguration();
    }

    @NonNull
    @Deprecated
    public final ReplicatorConfiguration setDocumentIDs(@Nullable final List<String> list) {
        updateValidDefaultConfigOrThrow(new InterfaceC2217Fn.Consumer() { // from class: com.sunia.HTREnginev2.o4
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Consumer
            public final void accept(Object obj) {
                AbstractReplicatorConfiguration.lambda$setDocumentIDs$0(list, (CollectionConfiguration) obj);
            }
        });
        return getReplicatorConfiguration();
    }

    @NonNull
    public final ReplicatorConfiguration setHeaders(@Nullable Map<String, String> map) {
        this.headers = map == null ? null : new HashMap(map);
        return getReplicatorConfiguration();
    }

    @NonNull
    public final ReplicatorConfiguration setHeartbeat(int i) {
        this.heartbeat = verifyHeartbeat(i);
        return getReplicatorConfiguration();
    }

    @NonNull
    public final ReplicatorConfiguration setMaxAttemptWaitTime(int i) {
        this.maxAttemptWaitTime = Preconditions.assertNotNegative(i, "max attempt wait time");
        return getReplicatorConfiguration();
    }

    @NonNull
    public final ReplicatorConfiguration setMaxAttempts(int i) {
        this.maxAttempts = Preconditions.assertNotNegative(i, "max attempts");
        return getReplicatorConfiguration();
    }

    @NonNull
    @Deprecated
    public final ReplicatorConfiguration setPinnedServerCertificate(@Nullable byte[] bArr) {
        if (bArr == null) {
            this.pinnedServerCertificate = null;
        } else {
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                try {
                    this.pinnedServerCertificate = (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(byteArrayInputStream);
                    byteArrayInputStream.close();
                } catch (Throwable th) {
                    try {
                        byteArrayInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException | CertificateException e) {
                throw new IllegalArgumentException("Argument could not be parsed as an X509 Certificate", e);
            }
        }
        return getReplicatorConfiguration();
    }

    @NonNull
    public final ReplicatorConfiguration setPinnedServerX509Certificate(@Nullable X509Certificate x509Certificate) {
        this.pinnedServerCertificate = x509Certificate;
        return getReplicatorConfiguration();
    }

    @NonNull
    public ReplicatorConfiguration setProxyAuthenticator(@Nullable ProxyAuthenticator proxyAuthenticator) {
        this.proxyAuthenticator = proxyAuthenticator;
        return getReplicatorConfiguration();
    }

    @NonNull
    @Deprecated
    public final ReplicatorConfiguration setPullFilter(@Nullable final ReplicationFilter replicationFilter) {
        updateValidDefaultConfigOrThrow(new InterfaceC2217Fn.Consumer() { // from class: com.sunia.HTREnginev2.r4
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Consumer
            public final void accept(Object obj) {
                ((CollectionConfiguration) obj).setPullFilter(ReplicationFilter.this);
            }
        });
        return getReplicatorConfiguration();
    }

    @NonNull
    @Deprecated
    public final ReplicatorConfiguration setPushFilter(@Nullable final ReplicationFilter replicationFilter) {
        updateValidDefaultConfigOrThrow(new InterfaceC2217Fn.Consumer() { // from class: com.sunia.HTREnginev2.q4
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Consumer
            public final void accept(Object obj) {
                ((CollectionConfiguration) obj).setPushFilter(ReplicationFilter.this);
            }
        });
        return getReplicatorConfiguration();
    }

    @NonNull
    @Deprecated
    public final ReplicatorConfiguration setReplicatorType(@NonNull ReplicatorType replicatorType) {
        com.couchbase.lite.ReplicatorType replicatorType2;
        int i = C21471.f16263xf5e78a76[((ReplicatorType) Preconditions.assertNotNull(replicatorType, "replicator type")).ordinal()];
        if (i == 1) {
            replicatorType2 = com.couchbase.lite.ReplicatorType.PUSH_AND_PULL;
        } else if (i == 2) {
            replicatorType2 = com.couchbase.lite.ReplicatorType.PUSH;
        } else {
            if (i != 3) {
                throw new CouchbaseLiteError("Unrecognized replicator type: " + replicatorType);
            }
            replicatorType2 = com.couchbase.lite.ReplicatorType.PULL;
        }
        return setType(replicatorType2);
    }

    @NonNull
    public final ReplicatorConfiguration setType(@NonNull com.couchbase.lite.ReplicatorType replicatorType) {
        this.type = (com.couchbase.lite.ReplicatorType) Preconditions.assertNotNull(replicatorType, "replicator type");
        return getReplicatorConfiguration();
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder(MotionUtils.f31761c);
        for (Collection collection : this.collectionConfigurations.keySet()) {
            if (sb.length() > 1) {
                sb.append(", ");
            }
            sb.append(collection.getScope().getName());
            sb.append('.');
            sb.append(collection.getName());
        }
        sb.append(") ");
        com.couchbase.lite.ReplicatorType replicatorType = this.type;
        if (replicatorType == com.couchbase.lite.ReplicatorType.PULL || replicatorType == com.couchbase.lite.ReplicatorType.PUSH_AND_PULL) {
            sb.append('<');
        }
        sb.append(this.continuous ? '*' : 'o');
        com.couchbase.lite.ReplicatorType replicatorType2 = this.type;
        if (replicatorType2 == com.couchbase.lite.ReplicatorType.PUSH || replicatorType2 == com.couchbase.lite.ReplicatorType.PUSH_AND_PULL) {
            sb.append('>');
        }
        if (this.authenticator != null) {
            sb.append('@');
        }
        if (this.pinnedServerCertificate != null) {
            sb.append('^');
        }
        sb.append(' ');
        return "ReplicatorConfig{" + ((Object) sb) + this.target + '}';
    }

    public AbstractReplicatorConfiguration(@NonNull AbstractReplicatorConfiguration abstractReplicatorConfiguration) {
        this(abstractReplicatorConfiguration.collectionConfigurations, abstractReplicatorConfiguration.target, abstractReplicatorConfiguration.type, abstractReplicatorConfiguration.continuous, abstractReplicatorConfiguration.authenticator, abstractReplicatorConfiguration.proxyAuthenticator, abstractReplicatorConfiguration.headers, abstractReplicatorConfiguration.acceptParentCookies, abstractReplicatorConfiguration.pinnedServerCertificate, abstractReplicatorConfiguration.maxAttempts, abstractReplicatorConfiguration.maxAttemptWaitTime, abstractReplicatorConfiguration.heartbeat, abstractReplicatorConfiguration.enableAutoPurge, abstractReplicatorConfiguration.database);
    }

    public AbstractReplicatorConfiguration(@NonNull ImmutableReplicatorConfiguration immutableReplicatorConfiguration) {
        this(immutableReplicatorConfiguration.getCollectionConfigs(), immutableReplicatorConfiguration.getTarget(), immutableReplicatorConfiguration.getType(), immutableReplicatorConfiguration.isContinuous(), immutableReplicatorConfiguration.getAuthenticator(), immutableReplicatorConfiguration.getProxyAuthenticator(), immutableReplicatorConfiguration.getHeaders(), immutableReplicatorConfiguration.isAcceptParentCookies(), immutableReplicatorConfiguration.getPinnedServerCertificate(), immutableReplicatorConfiguration.getMaxRetryAttempts(), immutableReplicatorConfiguration.getMaxRetryAttemptWaitTime(), immutableReplicatorConfiguration.getHeartbeat(), immutableReplicatorConfiguration.isAutoPurgeEnabled(), immutableReplicatorConfiguration.getDatabase());
    }

    private AbstractReplicatorConfiguration(@Nullable Map<Collection, CollectionConfiguration> map, @NonNull Endpoint endpoint, @NonNull com.couchbase.lite.ReplicatorType replicatorType, boolean z, @Nullable Authenticator authenticator, @Nullable ProxyAuthenticator proxyAuthenticator, @Nullable Map<String, String> map2, boolean z2, @Nullable X509Certificate x509Certificate, int i, int i2, int i3, boolean z3, @Nullable Database database) {
        super(copyConfigs(map));
        this.target = endpoint;
        this.type = replicatorType;
        this.continuous = z;
        this.authenticator = authenticator;
        this.proxyAuthenticator = proxyAuthenticator;
        this.headers = map2;
        this.acceptParentCookies = z2;
        this.pinnedServerCertificate = x509Certificate;
        this.maxAttempts = i;
        this.maxAttemptWaitTime = i2;
        this.heartbeat = i3;
        this.enableAutoPurge = z3;
        this.database = database;
    }
}
