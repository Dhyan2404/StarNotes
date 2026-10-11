package com.couchbase.lite;

import com.couchbase.lite.VectorIndexConfiguration;
import com.couchbase.lite.internal.HelpersKt;
import com.couchbase.lite.internal.core.C4Replicator;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cloud.Constant;
import java.security.cert.X509Certificate;
import java.util.Map;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.http.cookie.ClientCookie;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000È\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u001ak\u0010\u0014\u001a\u00020\u0015*\u0004\u0018\u00010\r2\b\u0010\u0016\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0017\u001a\u00020\r2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010 \u001a\u0004\u0018\u00010!2\b\u0010\"\u001a\u0004\u0018\u00010\u001d2\b\u0010#\u001a\u0004\u0018\u00010\u001dH\u0002¢\u0006\u0002\u0010$\u001a&\u0010%\u001a\u00020\u0001*\u0004\u0018\u00010\u00012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(H\u0007\u001a&\u0010%\u001a\u00020\u0005*\u0004\u0018\u00010\u00052\n\b\u0002\u0010)\u001a\u0004\u0018\u00010*2\n\b\u0002\u0010+\u001a\u0004\u0018\u00010,H\u0007\u001a\u0083\u0002\u0010%\u001a\u00020\t*\u0004\u0018\u00010\t2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010*2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010.2\n\b\u0002\u0010/\u001a\u0004\u0018\u0001002\n\b\u0002\u00101\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010 \u001a\u0004\u0018\u0001022\u0016\b\u0002\u00103\u001a\u0010\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u0019\u0018\u0001042\n\b\u0002\u00105\u001a\u0004\u0018\u0001062\u0010\b\u0002\u00107\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u0001082\u0010\b\u0002\u00109\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u0001082\n\b\u0002\u0010:\u001a\u0004\u0018\u00010;2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010;2\n\b\u0002\u0010=\u001a\u0004\u0018\u00010>2\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010B\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010C\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010D\u001a\u0004\u0018\u00010\u001dH\u0007¢\u0006\u0002\u0010E\u001as\u0010%\u001a\u00020\r*\u0004\u0018\u00010\r2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010*2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u001dH\u0007¢\u0006\u0002\u0010F\u001a5\u0010G\u001a\u00020\u0001*\u0004\u0018\u00010\u00012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(2\n\b\u0002\u0010H\u001a\u0004\u0018\u00010\u001d¢\u0006\u0002\u0010I\u001a*\u0010G\u001a\u00020\u0005*\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010J\u001a\n\u0012\u0004\u0012\u00020L\u0018\u00010K2\n\b\u0002\u0010+\u001a\u0004\u0018\u00010,\u001aÏ\u0001\u0010G\u001a\u00020\t*\u0004\u0018\u00010\t2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010.2 \b\u0002\u0010J\u001a\u001a\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00020L0M\u0012\u0006\u0012\u0004\u0018\u00010N\u0018\u0001042\n\b\u0002\u0010/\u001a\u0004\u0018\u0001002\n\b\u0002\u00101\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010 \u001a\u0004\u0018\u0001022\u0016\b\u0002\u00103\u001a\u0010\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u0019\u0018\u0001042\n\b\u0002\u00105\u001a\u0004\u0018\u00010O2\n\b\u0002\u0010?\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010@\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010A\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010B\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010C\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010D\u001a\u0004\u0018\u00010\u001d¢\u0006\u0002\u0010P\u001aw\u0010G\u001a\u00020\r*\u0004\u0018\u00010\r2\u0010\b\u0002\u0010J\u001a\n\u0012\u0004\u0012\u00020L\u0018\u00010K2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\n\b\u0002\u0010 \u001a\u0004\u0018\u00010!2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u001d2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u001d¢\u0006\u0002\u0010Q\u001a}\u0010G\u001a\u00020\u0011*\u0004\u0018\u00010\u00112\n\b\u0002\u0010R\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010S\u001a\u0004\u0018\u00010T2\n\b\u0002\u0010U\u001a\u0004\u0018\u00010T2\n\b\u0002\u0010V\u001a\u0004\u0018\u00010W2\n\b\u0002\u0010X\u001a\u0004\u0018\u00010Y2\n\b\u0002\u0010Z\u001a\u0004\u0018\u00010T2\n\b\u0002\u0010[\u001a\u0004\u0018\u00010T2\n\b\u0002\u0010\\\u001a\u0004\u0018\u00010T2\n\b\u0002\u0010]\u001a\u0004\u0018\u00010\u001d¢\u0006\u0002\u0010^\"\u0013\u0010\u0000\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006_"}, m61528d2 = {"DatabaseConfigurationFactory", "Lcom/couchbase/lite/DatabaseConfiguration;", "getDatabaseConfigurationFactory", "()Lcom/couchbase/lite/DatabaseConfiguration;", "MessageEndpointListenerConfigurationFactory", "Lcom/couchbase/lite/MessageEndpointListenerConfiguration;", "getMessageEndpointListenerConfigurationFactory", "()Lcom/couchbase/lite/MessageEndpointListenerConfiguration;", "ReplicatorConfigurationFactory", "Lcom/couchbase/lite/ReplicatorConfiguration;", "getReplicatorConfigurationFactory", "()Lcom/couchbase/lite/ReplicatorConfiguration;", "URLEndpointListenerConfigurationFactory", "Lcom/couchbase/lite/URLEndpointListenerConfiguration;", "getURLEndpointListenerConfigurationFactory", "()Lcom/couchbase/lite/URLEndpointListenerConfiguration;", "VectorIndexConfigurationFactory", "Lcom/couchbase/lite/VectorIndexConfiguration;", "getVectorIndexConfigurationFactory", "()Lcom/couchbase/lite/VectorIndexConfiguration;", "copyUrlEndpointListenerConfig", "", Constant.SRC_TAG, "dst", C4Replicator.SOCKET_OPTIONS_NETWORK_INTERFACE, "", ClientCookie.PORT_ATTR, "", "disableTls", "", "identity", "Lcom/couchbase/lite/TLSIdentity;", "authenticator", "Lcom/couchbase/lite/ListenerAuthenticator;", "readOnly", "enableDeltaSync", "(Lcom/couchbase/lite/URLEndpointListenerConfiguration;Lcom/couchbase/lite/URLEndpointListenerConfiguration;Lcom/couchbase/lite/URLEndpointListenerConfiguration;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/couchbase/lite/TLSIdentity;Lcom/couchbase/lite/ListenerAuthenticator;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", BaiduYunConstant.CREATE, "databasePath", "encryptionKey", "Lcom/couchbase/lite/EncryptionKey;", "database", "Lcom/couchbase/lite/Database;", "protocolType", "Lcom/couchbase/lite/ProtocolType;", "target", "Lcom/couchbase/lite/Endpoint;", "type", "Lcom/couchbase/lite/ReplicatorType;", "continuous", "Lcom/couchbase/lite/Authenticator;", C4Replicator.REPLICATOR_OPTION_EXTRA_HEADERS, "", "pinnedServerCertificate", "", "channels", "", "documentIDs", "pushFilter", "Lcom/couchbase/lite/ReplicationFilter;", "pullFilter", "conflictResolver", "Lcom/couchbase/lite/ConflictResolver;", "maxAttempts", "maxAttemptWaitTime", C4Replicator.REPLICATOR_HEARTBEAT_INTERVAL, "enableAutoPurge", "acceptOnlySelfSignedServerCertificate", C4Replicator.REPLICATOR_OPTION_ACCEPT_PARENT_COOKIES, "(Lcom/couchbase/lite/ReplicatorConfiguration;Lcom/couchbase/lite/Database;Lcom/couchbase/lite/Endpoint;Lcom/couchbase/lite/ReplicatorType;Ljava/lang/Boolean;Lcom/couchbase/lite/Authenticator;Ljava/util/Map;[BLjava/util/List;Ljava/util/List;Lcom/couchbase/lite/ReplicationFilter;Lcom/couchbase/lite/ReplicationFilter;Lcom/couchbase/lite/ConflictResolver;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/couchbase/lite/ReplicatorConfiguration;", "(Lcom/couchbase/lite/URLEndpointListenerConfiguration;Lcom/couchbase/lite/Database;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/couchbase/lite/TLSIdentity;Lcom/couchbase/lite/ListenerAuthenticator;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/couchbase/lite/URLEndpointListenerConfiguration;", "newConfig", "fullSync", "(Lcom/couchbase/lite/DatabaseConfiguration;Ljava/lang/String;Lcom/couchbase/lite/EncryptionKey;Ljava/lang/Boolean;)Lcom/couchbase/lite/DatabaseConfiguration;", "collections", "", "Lcom/couchbase/lite/Collection;", "", "Lcom/couchbase/lite/CollectionConfiguration;", "Ljava/security/cert/X509Certificate;", "(Lcom/couchbase/lite/ReplicatorConfiguration;Lcom/couchbase/lite/Endpoint;Ljava/util/Map;Lcom/couchbase/lite/ReplicatorType;Ljava/lang/Boolean;Lcom/couchbase/lite/Authenticator;Ljava/util/Map;Ljava/security/cert/X509Certificate;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/couchbase/lite/ReplicatorConfiguration;", "(Lcom/couchbase/lite/URLEndpointListenerConfiguration;Ljava/util/Set;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/couchbase/lite/TLSIdentity;Lcom/couchbase/lite/ListenerAuthenticator;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/couchbase/lite/URLEndpointListenerConfiguration;", "expression", "dimensions", "", "centroids", "encoding", "Lcom/couchbase/lite/VectorEncoding;", "metric", "Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;", "minTrainingSize", "maxTrainingSize", "numProbes", "lazy", "(Lcom/couchbase/lite/VectorIndexConfiguration;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/couchbase/lite/VectorEncoding;Lcom/couchbase/lite/VectorIndexConfiguration$DistanceMetric;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/couchbase/lite/VectorIndexConfiguration;", "couchbase-lite-android-ee-ktx-3.2.2-21_release"}, m61529k = 2, m61530mv = {1, 8, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nConfigurationFactories.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigurationFactories.kt\ncom/couchbase/lite/ConfigurationFactoriesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,480:1\n1#2:481\n*E\n"})
/* loaded from: classes4.dex */
public final class ConfigurationFactoriesKt {

    @Nullable
    private static final DatabaseConfiguration DatabaseConfigurationFactory = null;

    @Nullable
    private static final MessageEndpointListenerConfiguration MessageEndpointListenerConfigurationFactory = null;

    @Nullable
    private static final ReplicatorConfiguration ReplicatorConfigurationFactory = null;

    @Nullable
    private static final URLEndpointListenerConfiguration URLEndpointListenerConfigurationFactory = null;

    @Nullable
    private static final VectorIndexConfiguration VectorIndexConfigurationFactory = null;

    private static final void copyUrlEndpointListenerConfig(URLEndpointListenerConfiguration uRLEndpointListenerConfiguration, URLEndpointListenerConfiguration uRLEndpointListenerConfiguration2, URLEndpointListenerConfiguration uRLEndpointListenerConfiguration3, String str, Integer num, Boolean bool, TLSIdentity tLSIdentity, ListenerAuthenticator listenerAuthenticator, Boolean bool2, Boolean bool3) {
        if (str == null) {
            str = uRLEndpointListenerConfiguration != null ? uRLEndpointListenerConfiguration.getNetworkInterface() : null;
        }
        if (str != null) {
            uRLEndpointListenerConfiguration3.setNetworkInterface(str);
        }
        if (num == null) {
            num = uRLEndpointListenerConfiguration2 != null ? Integer.valueOf(uRLEndpointListenerConfiguration2.getPort()) : null;
        }
        if (num != null) {
            uRLEndpointListenerConfiguration3.setPort(num.intValue());
        }
        if (bool == null) {
            bool = uRLEndpointListenerConfiguration2 != null ? Boolean.valueOf(uRLEndpointListenerConfiguration2.isTlsDisabled()) : null;
        }
        if (bool != null) {
            uRLEndpointListenerConfiguration3.setDisableTls(bool.booleanValue());
        }
        if ((tLSIdentity == null ? uRLEndpointListenerConfiguration2 != null ? uRLEndpointListenerConfiguration2.getTlsIdentity() : null : tLSIdentity) != null) {
            uRLEndpointListenerConfiguration3.setTlsIdentity(tLSIdentity);
        }
        if (listenerAuthenticator == null) {
            listenerAuthenticator = uRLEndpointListenerConfiguration2 != null ? uRLEndpointListenerConfiguration2.authenticator : null;
        }
        if (listenerAuthenticator != null) {
            uRLEndpointListenerConfiguration3.authenticator = listenerAuthenticator;
        }
        if (bool2 == null) {
            bool2 = uRLEndpointListenerConfiguration2 != null ? Boolean.valueOf(uRLEndpointListenerConfiguration2.isReadOnly()) : null;
        }
        if (bool2 != null) {
            uRLEndpointListenerConfiguration3.setReadOnly(bool2.booleanValue());
        }
        if (bool3 == null) {
            bool3 = uRLEndpointListenerConfiguration2 != null ? Boolean.valueOf(uRLEndpointListenerConfiguration2.isDeltaSyncEnabled()) : null;
        }
        if (bool3 != null) {
            uRLEndpointListenerConfiguration3.setEnableDeltaSync(bool3.booleanValue());
        }
    }

    @Deprecated(message = "Use DatabaseConfigurationFactory.newConfig(String?, EncryptionKey?)", replaceWith = @ReplaceWith(expression = "DatabaseConfigurationFactory.newConfig(String?, EncryptionKey?)", imports = {}))
    @NotNull
    public static final DatabaseConfiguration create(@Nullable DatabaseConfiguration databaseConfiguration, @Nullable String str, @Nullable EncryptionKey encryptionKey) {
        return newConfig$default(databaseConfiguration, str, encryptionKey, null, 4, null);
    }

    public static /* synthetic */ DatabaseConfiguration create$default(DatabaseConfiguration databaseConfiguration, String str, EncryptionKey encryptionKey, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            encryptionKey = null;
        }
        return create(databaseConfiguration, str, encryptionKey);
    }

    @Nullable
    public static final DatabaseConfiguration getDatabaseConfigurationFactory() {
        return DatabaseConfigurationFactory;
    }

    @Nullable
    public static final MessageEndpointListenerConfiguration getMessageEndpointListenerConfigurationFactory() {
        return MessageEndpointListenerConfigurationFactory;
    }

    @Nullable
    public static final ReplicatorConfiguration getReplicatorConfigurationFactory() {
        return ReplicatorConfigurationFactory;
    }

    @Nullable
    public static final URLEndpointListenerConfiguration getURLEndpointListenerConfigurationFactory() {
        return URLEndpointListenerConfigurationFactory;
    }

    @Nullable
    public static final VectorIndexConfiguration getVectorIndexConfigurationFactory() {
        return VectorIndexConfigurationFactory;
    }

    @NotNull
    public static final DatabaseConfiguration newConfig(@Nullable DatabaseConfiguration databaseConfiguration, @Nullable String str, @Nullable EncryptionKey encryptionKey, @Nullable Boolean bool) {
        DatabaseConfiguration databaseConfiguration2 = new DatabaseConfiguration();
        if (str == null) {
            str = databaseConfiguration != null ? databaseConfiguration.getDirectory() : null;
        }
        if (str != null) {
            databaseConfiguration2.setDirectory(str);
        }
        if (bool == null) {
            bool = databaseConfiguration != null ? Boolean.valueOf(databaseConfiguration.isFullSync()) : null;
        }
        if (bool != null) {
            databaseConfiguration2.setFullSync(bool.booleanValue());
        }
        if (encryptionKey == null) {
            encryptionKey = databaseConfiguration != null ? databaseConfiguration.getEncryptionKey() : null;
        }
        if (encryptionKey != null) {
            databaseConfiguration2.setEncryptionKey(encryptionKey);
        }
        return databaseConfiguration2;
    }

    public static /* synthetic */ DatabaseConfiguration newConfig$default(DatabaseConfiguration databaseConfiguration, String str, EncryptionKey encryptionKey, Boolean bool, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            encryptionKey = null;
        }
        if ((i & 4) != 0) {
            bool = null;
        }
        return newConfig(databaseConfiguration, str, encryptionKey, bool);
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x000e  */
    @kotlin.Deprecated(message = "Use ReplicatorConfiguration?.newConfig(Endpoint?, Map<Set<Collection>, CollectionConfiguration?>?, ...)", replaceWith = @kotlin.ReplaceWith(expression = "ReplicatorConfiguration?.newConfig(Endpoint?, Map<Set<Collection>, CollectionConfiguration?>?, ...)", imports = {}))
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.couchbase.lite.ReplicatorConfiguration create(@org.jetbrains.annotations.Nullable com.couchbase.lite.ReplicatorConfiguration r13, @org.jetbrains.annotations.Nullable com.couchbase.lite.Database r14, @org.jetbrains.annotations.Nullable com.couchbase.lite.Endpoint r15, @org.jetbrains.annotations.Nullable com.couchbase.lite.ReplicatorType r16, @org.jetbrains.annotations.Nullable java.lang.Boolean r17, @org.jetbrains.annotations.Nullable com.couchbase.lite.Authenticator r18, @org.jetbrains.annotations.Nullable java.util.Map<java.lang.String, java.lang.String> r19, @org.jetbrains.annotations.Nullable byte[] r20, @org.jetbrains.annotations.Nullable java.util.List<java.lang.String> r21, @org.jetbrains.annotations.Nullable java.util.List<java.lang.String> r22, @org.jetbrains.annotations.Nullable com.couchbase.lite.ReplicationFilter r23, @org.jetbrains.annotations.Nullable com.couchbase.lite.ReplicationFilter r24, @org.jetbrains.annotations.Nullable com.couchbase.lite.ConflictResolver r25, @org.jetbrains.annotations.Nullable java.lang.Integer r26, @org.jetbrains.annotations.Nullable java.lang.Integer r27, @org.jetbrains.annotations.Nullable java.lang.Integer r28, @org.jetbrains.annotations.Nullable java.lang.Boolean r29, @org.jetbrains.annotations.Nullable java.lang.Boolean r30, @org.jetbrains.annotations.Nullable java.lang.Boolean r31) {
        /*
            r11 = 0
            if (r14 != 0) goto L16
            if (r13 == 0) goto La
            com.couchbase.lite.Database r0 = r13.getDatabase()     // Catch: com.couchbase.lite.CouchbaseLiteError -> La
            goto Lb
        La:
            r0 = r11
        Lb:
            if (r0 == 0) goto Le
            goto L17
        Le:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "A ReplicatorConfiguration must specify a database"
            r0.<init>(r1)
            throw r0
        L16:
            r0 = r14
        L17:
            if (r13 == 0) goto L1e
            java.util.Set r1 = r13.getCollections()
            goto L1f
        L1e:
            r1 = r11
        L1f:
            com.couchbase.lite.CommonConfigurationFactoriesKt.checkDbCollections(r0, r1)
            com.couchbase.lite.ReplicatorConfiguration r12 = new com.couchbase.lite.ReplicatorConfiguration
            if (r15 != 0) goto L39
            if (r13 == 0) goto L2d
            com.couchbase.lite.Endpoint r1 = r13.getTarget()
            goto L2e
        L2d:
            r1 = r11
        L2e:
            if (r1 == 0) goto L31
            goto L3a
        L31:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "A ReplicatorConfiguration must specify an endpoint"
            r0.<init>(r1)
            throw r0
        L39:
            r1 = r15
        L3a:
            r12.<init>(r0, r1)
            r0 = r13
            r1 = r12
            r2 = r16
            r3 = r17
            r4 = r18
            r5 = r19
            r6 = r26
            r7 = r27
            r8 = r28
            r9 = r29
            r10 = r31
            com.couchbase.lite.CommonConfigurationFactoriesKt.copyReplConfig(r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
            r2 = r20
            r3 = r21
            r4 = r22
            r5 = r23
            r6 = r24
            r7 = r25
            com.couchbase.lite.CommonConfigurationFactoriesKt.copyLegacyReplConfig(r0, r1, r2, r3, r4, r5, r6, r7)
            if (r30 != 0) goto L72
            if (r13 == 0) goto L70
            boolean r0 = r13.isAcceptOnlySelfSignedServerCertificate()
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            goto L74
        L70:
            r0 = r11
            goto L74
        L72:
            r0 = r30
        L74:
            if (r0 == 0) goto L7d
            boolean r0 = r0.booleanValue()
            r12.setAcceptOnlySelfSignedServerCertificate(r0)
        L7d:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.couchbase.lite.ConfigurationFactoriesKt.create(com.couchbase.lite.ReplicatorConfiguration, com.couchbase.lite.Database, com.couchbase.lite.Endpoint, com.couchbase.lite.ReplicatorType, java.lang.Boolean, com.couchbase.lite.Authenticator, java.util.Map, byte[], java.util.List, java.util.List, com.couchbase.lite.ReplicationFilter, com.couchbase.lite.ReplicationFilter, com.couchbase.lite.ConflictResolver, java.lang.Integer, java.lang.Integer, java.lang.Integer, java.lang.Boolean, java.lang.Boolean, java.lang.Boolean):com.couchbase.lite.ReplicatorConfiguration");
    }

    public static /* synthetic */ MessageEndpointListenerConfiguration create$default(MessageEndpointListenerConfiguration messageEndpointListenerConfiguration, Database database, ProtocolType protocolType, int i, Object obj) {
        if ((i & 1) != 0) {
            database = null;
        }
        if ((i & 2) != 0) {
            protocolType = null;
        }
        return create(messageEndpointListenerConfiguration, database, protocolType);
    }

    public static /* synthetic */ MessageEndpointListenerConfiguration newConfig$default(MessageEndpointListenerConfiguration messageEndpointListenerConfiguration, Set set, ProtocolType protocolType, int i, Object obj) {
        if ((i & 1) != 0) {
            set = null;
        }
        if ((i & 2) != 0) {
            protocolType = null;
        }
        return newConfig(messageEndpointListenerConfiguration, set, protocolType);
    }

    public static /* synthetic */ URLEndpointListenerConfiguration create$default(URLEndpointListenerConfiguration uRLEndpointListenerConfiguration, Database database, String str, Integer num, Boolean bool, TLSIdentity tLSIdentity, ListenerAuthenticator listenerAuthenticator, Boolean bool2, Boolean bool3, int i, Object obj) {
        if ((i & 1) != 0) {
            database = null;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            num = null;
        }
        if ((i & 8) != 0) {
            bool = null;
        }
        if ((i & 16) != 0) {
            tLSIdentity = null;
        }
        if ((i & 32) != 0) {
            listenerAuthenticator = null;
        }
        if ((i & 64) != 0) {
            bool2 = null;
        }
        if ((i & 128) != 0) {
            bool3 = null;
        }
        return create(uRLEndpointListenerConfiguration, database, str, num, bool, tLSIdentity, listenerAuthenticator, bool2, bool3);
    }

    public static /* synthetic */ URLEndpointListenerConfiguration newConfig$default(URLEndpointListenerConfiguration uRLEndpointListenerConfiguration, Set set, String str, Integer num, Boolean bool, TLSIdentity tLSIdentity, ListenerAuthenticator listenerAuthenticator, Boolean bool2, Boolean bool3, int i, Object obj) {
        if ((i & 1) != 0) {
            set = null;
        }
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            num = null;
        }
        if ((i & 8) != 0) {
            bool = null;
        }
        if ((i & 16) != 0) {
            tLSIdentity = null;
        }
        if ((i & 32) != 0) {
            listenerAuthenticator = null;
        }
        if ((i & 64) != 0) {
            bool2 = null;
        }
        if ((i & 128) != 0) {
            bool3 = null;
        }
        return newConfig(uRLEndpointListenerConfiguration, set, str, num, bool, tLSIdentity, listenerAuthenticator, bool2, bool3);
    }

    @NotNull
    public static final ReplicatorConfiguration newConfig(@Nullable ReplicatorConfiguration replicatorConfiguration, @Nullable Endpoint endpoint, @Nullable Map<? extends java.util.Collection<Collection>, ? extends CollectionConfiguration> map, @Nullable ReplicatorType replicatorType, @Nullable Boolean bool, @Nullable Authenticator authenticator, @Nullable Map<String, String> map2, @Nullable X509Certificate x509Certificate, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Boolean bool4) {
        Endpoint endpoint2;
        ReplicatorConfiguration replicatorConfiguration2;
        X509Certificate x509Certificate2;
        Boolean bool5 = null;
        if (endpoint == null) {
            endpoint2 = replicatorConfiguration != null ? replicatorConfiguration.getTarget() : null;
            if (endpoint2 == null) {
                throw new IllegalArgumentException("A ReplicatorConfiguration must specify an endpoint");
            }
        } else {
            endpoint2 = endpoint;
        }
        if (map == null) {
            replicatorConfiguration2 = new ReplicatorConfiguration(endpoint2, HelpersKt.getCollectionConfigs(replicatorConfiguration));
        } else {
            replicatorConfiguration2 = new ReplicatorConfiguration(endpoint2);
            for (Map.Entry<? extends java.util.Collection<Collection>, ? extends CollectionConfiguration> entry : map.entrySet()) {
                replicatorConfiguration2.addCollections(entry.getKey(), entry.getValue());
            }
        }
        ReplicatorConfiguration replicatorConfiguration3 = replicatorConfiguration2;
        CommonConfigurationFactoriesKt.copyReplConfig(replicatorConfiguration, replicatorConfiguration3, replicatorType, bool, authenticator, map2, num, num2, num3, bool2, bool4);
        if (x509Certificate == null) {
            x509Certificate2 = replicatorConfiguration != null ? replicatorConfiguration.getPinnedServerX509Certificate() : null;
        } else {
            x509Certificate2 = x509Certificate;
        }
        if (x509Certificate2 != null) {
            replicatorConfiguration3.setPinnedServerX509Certificate(x509Certificate2);
        }
        if (bool3 != null) {
            bool5 = bool3;
        } else if (replicatorConfiguration != null) {
            bool5 = Boolean.valueOf(replicatorConfiguration.isAcceptOnlySelfSignedServerCertificate());
        }
        if (bool5 != null) {
            replicatorConfiguration3.setAcceptOnlySelfSignedServerCertificate(bool5.booleanValue());
        }
        return replicatorConfiguration3;
    }

    public static /* synthetic */ VectorIndexConfiguration newConfig$default(VectorIndexConfiguration vectorIndexConfiguration, String str, Long l, Long l2, VectorEncoding vectorEncoding, VectorIndexConfiguration.DistanceMetric distanceMetric, Long l3, Long l4, Long l5, Boolean bool, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            l = null;
        }
        if ((i & 4) != 0) {
            l2 = null;
        }
        if ((i & 8) != 0) {
            vectorEncoding = null;
        }
        if ((i & 16) != 0) {
            distanceMetric = null;
        }
        if ((i & 32) != 0) {
            l3 = null;
        }
        if ((i & 64) != 0) {
            l4 = null;
        }
        if ((i & 128) != 0) {
            l5 = null;
        }
        if ((i & 256) != 0) {
            bool = null;
        }
        return newConfig(vectorIndexConfiguration, str, l, l2, vectorEncoding, distanceMetric, l3, l4, l5, bool);
    }

    @Deprecated(message = "Use MessageEndpointListenerConfiguration?.newConfig(Endpoint?, Set<Collection>?)", replaceWith = @ReplaceWith(expression = "MessageEndpointListenerConfiguration?.newConfig(Endpoint?, Set<Collection>?)", imports = {}))
    @NotNull
    public static final MessageEndpointListenerConfiguration create(@Nullable MessageEndpointListenerConfiguration messageEndpointListenerConfiguration, @Nullable Database database, @Nullable ProtocolType protocolType) {
        if (database == null) {
            database = messageEndpointListenerConfiguration != null ? messageEndpointListenerConfiguration.getDatabase() : null;
            if (database == null) {
                throw new IllegalArgumentException("A MessageEndpointListenerConfiguration must specify a database");
            }
        }
        CommonConfigurationFactoriesKt.checkDbCollections(database, messageEndpointListenerConfiguration != null ? messageEndpointListenerConfiguration.getCollections() : null);
        if (protocolType == null) {
            protocolType = messageEndpointListenerConfiguration != null ? messageEndpointListenerConfiguration.getProtocolType() : null;
            if (protocolType == null) {
                throw new IllegalArgumentException("A MessageEndpointListenerConfiguration must specify a protocol type");
            }
        }
        return new MessageEndpointListenerConfiguration(database, protocolType);
    }

    @NotNull
    public static final MessageEndpointListenerConfiguration newConfig(@Nullable MessageEndpointListenerConfiguration messageEndpointListenerConfiguration, @Nullable Set<Collection> set, @Nullable ProtocolType protocolType) {
        if (set == null) {
            set = messageEndpointListenerConfiguration != null ? messageEndpointListenerConfiguration.getCollections() : null;
            if (set == null) {
                throw new IllegalArgumentException("A MessageEndpointListenerConfiguration must specify collections");
            }
        }
        if (protocolType == null) {
            protocolType = messageEndpointListenerConfiguration != null ? messageEndpointListenerConfiguration.getProtocolType() : null;
            if (protocolType == null) {
                throw new IllegalArgumentException("A MessageEndpointListenerConfiguration must specify a protocol type");
            }
        }
        return new MessageEndpointListenerConfiguration(set, protocolType);
    }

    @Deprecated(message = "Use URLEndpointListenerConfiguration?.newConfig(Set<Collection>?, ...)", replaceWith = @ReplaceWith(expression = "URLEndpointListenerConfiguration?.newConfig(Set<Collection>?, ...)", imports = {}))
    @NotNull
    public static final URLEndpointListenerConfiguration create(@Nullable URLEndpointListenerConfiguration uRLEndpointListenerConfiguration, @Nullable Database database, @Nullable String str, @Nullable Integer num, @Nullable Boolean bool, @Nullable TLSIdentity tLSIdentity, @Nullable ListenerAuthenticator listenerAuthenticator, @Nullable Boolean bool2, @Nullable Boolean bool3) {
        Database database2;
        if (database == null) {
            database2 = uRLEndpointListenerConfiguration != null ? uRLEndpointListenerConfiguration.getDatabase() : null;
            if (database2 == null) {
                throw new IllegalArgumentException("A URLEndpointListenerConfiguration must specify a database");
            }
        } else {
            database2 = database;
        }
        CommonConfigurationFactoriesKt.checkDbCollections(database2, uRLEndpointListenerConfiguration != null ? uRLEndpointListenerConfiguration.getCollections() : null);
        URLEndpointListenerConfiguration uRLEndpointListenerConfiguration2 = new URLEndpointListenerConfiguration(database2);
        copyUrlEndpointListenerConfig(uRLEndpointListenerConfiguration, uRLEndpointListenerConfiguration, uRLEndpointListenerConfiguration2, str, num, bool, tLSIdentity, listenerAuthenticator, bool2, bool3);
        return uRLEndpointListenerConfiguration2;
    }

    @NotNull
    public static final URLEndpointListenerConfiguration newConfig(@Nullable URLEndpointListenerConfiguration uRLEndpointListenerConfiguration, @Nullable Set<Collection> set, @Nullable String str, @Nullable Integer num, @Nullable Boolean bool, @Nullable TLSIdentity tLSIdentity, @Nullable ListenerAuthenticator listenerAuthenticator, @Nullable Boolean bool2, @Nullable Boolean bool3) {
        Set<Collection> set2;
        if (set == null) {
            set2 = uRLEndpointListenerConfiguration != null ? uRLEndpointListenerConfiguration.getCollections() : null;
            if (set2 == null) {
                throw new IllegalArgumentException("A URLEndpointListenerConfiguration must specify collections");
            }
        } else {
            set2 = set;
        }
        URLEndpointListenerConfiguration uRLEndpointListenerConfiguration2 = new URLEndpointListenerConfiguration(set2);
        copyUrlEndpointListenerConfig(uRLEndpointListenerConfiguration, uRLEndpointListenerConfiguration, uRLEndpointListenerConfiguration2, str, num, bool, tLSIdentity, listenerAuthenticator, bool2, bool3);
        return uRLEndpointListenerConfiguration2;
    }

    @NotNull
    public static final VectorIndexConfiguration newConfig(@Nullable VectorIndexConfiguration vectorIndexConfiguration, @Nullable String str, @Nullable Long l, @Nullable Long l2, @Nullable VectorEncoding vectorEncoding, @Nullable VectorIndexConfiguration.DistanceMetric distanceMetric, @Nullable Long l3, @Nullable Long l4, @Nullable Long l5, @Nullable Boolean bool) {
        String str2;
        long longValue;
        long longValue2;
        VectorEncoding vectorEncoding2;
        VectorIndexConfiguration.DistanceMetric distanceMetric2;
        Long l6;
        Long l7;
        Long l8;
        Boolean bool2 = null;
        if (str == null) {
            String expression = vectorIndexConfiguration != null ? vectorIndexConfiguration.getExpression() : null;
            if (expression == null) {
                throw new IllegalArgumentException("A VectorIndexConfiguration must specify an expression");
            }
            str2 = expression;
        } else {
            str2 = str;
        }
        if (l != null) {
            longValue = l.longValue();
        } else {
            Long valueOf = vectorIndexConfiguration != null ? Long.valueOf(vectorIndexConfiguration.getDimensions()) : null;
            if (valueOf == null) {
                throw new IllegalArgumentException("A VectorIndexConfiguration must specify a number of dimensions");
            }
            longValue = valueOf.longValue();
        }
        if (l2 != null) {
            longValue2 = l2.longValue();
        } else {
            Long valueOf2 = vectorIndexConfiguration != null ? Long.valueOf(vectorIndexConfiguration.getCentroids()) : null;
            if (valueOf2 == null) {
                throw new IllegalArgumentException("A VectorIndexConfiguration must specify a number of centroids");
            }
            longValue2 = valueOf2.longValue();
        }
        VectorIndexConfiguration vectorIndexConfiguration2 = new VectorIndexConfiguration(str2, longValue, longValue2);
        if (vectorEncoding == null) {
            vectorEncoding2 = vectorIndexConfiguration != null ? vectorIndexConfiguration.getEncoding() : null;
        } else {
            vectorEncoding2 = vectorEncoding;
        }
        if (vectorEncoding2 != null) {
            vectorIndexConfiguration2.setEncoding(vectorEncoding2);
        }
        if (distanceMetric == null) {
            distanceMetric2 = vectorIndexConfiguration != null ? vectorIndexConfiguration.getMetric() : null;
        } else {
            distanceMetric2 = distanceMetric;
        }
        if (distanceMetric2 != null) {
            vectorIndexConfiguration2.setMetric(distanceMetric2);
        }
        if (l3 == null) {
            l6 = vectorIndexConfiguration != null ? Long.valueOf(vectorIndexConfiguration.getMinTrainingSize()) : null;
        } else {
            l6 = l3;
        }
        if (l6 != null) {
            vectorIndexConfiguration2.setMinTrainingSize(l6.longValue());
        }
        if (l4 == null) {
            l7 = vectorIndexConfiguration != null ? Long.valueOf(vectorIndexConfiguration.getMaxTrainingSize()) : null;
        } else {
            l7 = l4;
        }
        if (l7 != null) {
            vectorIndexConfiguration2.setMaxTrainingSize(l7.longValue());
        }
        if (l5 == null) {
            l8 = vectorIndexConfiguration != null ? Long.valueOf(vectorIndexConfiguration.getNumProbes()) : null;
        } else {
            l8 = l5;
        }
        if (l8 != null) {
            vectorIndexConfiguration2.setNumProbes(l8.longValue());
        }
        if (bool != null) {
            bool2 = bool;
        } else if (vectorIndexConfiguration != null) {
            bool2 = Boolean.valueOf(vectorIndexConfiguration.isLazy());
        }
        if (bool2 != null) {
            vectorIndexConfiguration2.setLazy(bool2.booleanValue());
        }
        return vectorIndexConfiguration2;
    }
}
