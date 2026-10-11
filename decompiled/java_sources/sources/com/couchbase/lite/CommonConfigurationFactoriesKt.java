package com.couchbase.lite;

import com.couchbase.lite.internal.HelpersKt;
import com.couchbase.lite.internal.core.C4Replicator;
import com.couchbase.lite.logging.FileLogSink;
import com.couchbase.lite.logging.LogSinks;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¬\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\u001a \u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001dH\u0000\u001ab\u0010\u001f\u001a\u00020\u00192\b\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\"\u001a\u00020!2\b\u0010#\u001a\u0004\u0018\u00010$2\u000e\u0010%\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010&2\u000e\u0010(\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010&2\b\u0010)\u001a\u0004\u0018\u00010*2\b\u0010+\u001a\u0004\u0018\u00010*2\b\u0010,\u001a\u0004\u0018\u00010-H\u0000\u001a\u0085\u0001\u0010.\u001a\u00020\u00192\b\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\"\u001a\u00020!2\b\u0010/\u001a\u0004\u0018\u0001002\b\u00101\u001a\u0004\u0018\u0001022\b\u00103\u001a\u0004\u0018\u0001042\u0014\u00105\u001a\u0010\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020'\u0018\u0001062\b\u00107\u001a\u0004\u0018\u0001082\b\u00109\u001a\u0004\u0018\u0001082\b\u0010:\u001a\u0004\u0018\u0001082\b\u0010;\u001a\u0004\u0018\u0001022\b\u0010<\u001a\u0004\u0018\u000102H\u0000¢\u0006\u0002\u0010=\u001aA\u0010>\u001a\u00020\r*\u0004\u0018\u00010\r2\u0014\b\u0002\u0010?\u001a\n\u0012\u0006\b\u0001\u0012\u00020'0@\"\u00020'2\n\b\u0002\u0010A\u001a\u0004\u0018\u00010'2\n\b\u0002\u0010B\u001a\u0004\u0018\u000102H\u0007¢\u0006\u0002\u0010C\u001aC\u0010>\u001a\u00020\u0011*\u0004\u0018\u00010\u00112\n\b\u0002\u0010D\u001a\u0004\u0018\u00010'2\n\b\u0002\u0010E\u001a\u0004\u0018\u00010F2\n\b\u0002\u0010G\u001a\u0004\u0018\u0001082\n\b\u0002\u0010H\u001a\u0004\u0018\u000102H\u0007¢\u0006\u0002\u0010I\u001a)\u0010>\u001a\u00020\u0015*\u0004\u0018\u00010\u00152\u0014\b\u0002\u0010?\u001a\n\u0012\u0006\b\u0001\u0012\u00020'0@\"\u00020'H\u0007¢\u0006\u0002\u0010J\u001aM\u0010K\u001a\u00020\u0019*\u0004\u0018\u00010\t2\n\b\u0002\u0010D\u001a\u0004\u0018\u00010'2\n\b\u0002\u0010L\u001a\u0004\u0018\u00010M2\n\b\u0002\u0010N\u001a\u0004\u0018\u00010F2\n\b\u0002\u0010O\u001a\u0004\u0018\u0001082\n\b\u0002\u0010P\u001a\u0004\u0018\u000102¢\u0006\u0002\u0010Q\u001a3\u0010R\u001a\u00020\u0001*\u0004\u0018\u00010\u00012\b\u0010S\u001a\u0004\u0018\u00010'2\u0016\u0010?\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010'0@\"\u0004\u0018\u00010'¢\u0006\u0002\u0010T\u001aT\u0010R\u001a\u00020\u0005*\u0004\u0018\u00010\u00052\u0010\b\u0002\u0010%\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010&2\u0010\b\u0002\u0010(\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010&2\n\b\u0002\u0010+\u001a\u0004\u0018\u00010*2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010*2\n\b\u0002\u0010,\u001a\u0004\u0018\u00010-\u001a?\u0010R\u001a\u00020\r*\u0004\u0018\u00010\r2\u0014\b\u0002\u0010?\u001a\n\u0012\u0006\b\u0001\u0012\u00020'0@\"\u00020'2\n\b\u0002\u0010A\u001a\u0004\u0018\u00010'2\n\b\u0002\u0010B\u001a\u0004\u0018\u000102¢\u0006\u0002\u0010C\u001aA\u0010R\u001a\u00020\u0011*\u0004\u0018\u00010\u00112\n\b\u0002\u0010D\u001a\u0004\u0018\u00010'2\n\b\u0002\u0010E\u001a\u0004\u0018\u00010F2\n\b\u0002\u0010G\u001a\u0004\u0018\u0001082\n\b\u0002\u0010H\u001a\u0004\u0018\u000102¢\u0006\u0002\u0010I\u001a'\u0010R\u001a\u00020\u0015*\u0004\u0018\u00010\u00152\u0014\b\u0002\u0010?\u001a\n\u0012\u0006\b\u0001\u0012\u00020'0@\"\u00020'¢\u0006\u0002\u0010J\"\u0013\u0010\u0000\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\"\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0015¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006U"}, m61528d2 = {"ArrayIndexConfigurationFactory", "Lcom/couchbase/lite/ArrayIndexConfiguration;", "getArrayIndexConfigurationFactory", "()Lcom/couchbase/lite/ArrayIndexConfiguration;", "CollectionConfigurationFactory", "Lcom/couchbase/lite/CollectionConfiguration;", "getCollectionConfigurationFactory", "()Lcom/couchbase/lite/CollectionConfiguration;", "FileLogSinkFactory", "Lcom/couchbase/lite/logging/FileLogSink;", "getFileLogSinkFactory", "()Lcom/couchbase/lite/logging/FileLogSink;", "FullTextIndexConfigurationFactory", "Lcom/couchbase/lite/FullTextIndexConfiguration;", "getFullTextIndexConfigurationFactory", "()Lcom/couchbase/lite/FullTextIndexConfiguration;", "LogFileConfigurationFactory", "Lcom/couchbase/lite/LogFileConfiguration;", "getLogFileConfigurationFactory", "()Lcom/couchbase/lite/LogFileConfiguration;", "ValueIndexConfigurationFactory", "Lcom/couchbase/lite/ValueIndexConfiguration;", "getValueIndexConfigurationFactory", "()Lcom/couchbase/lite/ValueIndexConfiguration;", "checkDbCollections", "", SyncConstant.LOCAL_DB_DIR_NAME, "Lcom/couchbase/lite/Database;", "collections", "", "Lcom/couchbase/lite/Collection;", "copyLegacyReplConfig", Constant.SRC_TAG, "Lcom/couchbase/lite/ReplicatorConfiguration;", "dst", "pinnedServerCertificate", "", "channels", "", "", "documentIDs", "pushFilter", "Lcom/couchbase/lite/ReplicationFilter;", "pullFilter", "conflictResolver", "Lcom/couchbase/lite/ConflictResolver;", "copyReplConfig", "type", "Lcom/couchbase/lite/ReplicatorType;", "continuous", "", "authenticator", "Lcom/couchbase/lite/Authenticator;", C4Replicator.REPLICATOR_OPTION_EXTRA_HEADERS, "", "maxAttempts", "", "maxAttemptWaitTime", C4Replicator.REPLICATOR_HEARTBEAT_INTERVAL, "enableAutoPurge", C4Replicator.REPLICATOR_OPTION_ACCEPT_PARENT_COOKIES, "(Lcom/couchbase/lite/ReplicatorConfiguration;Lcom/couchbase/lite/ReplicatorConfiguration;Lcom/couchbase/lite/ReplicatorType;Ljava/lang/Boolean;Lcom/couchbase/lite/Authenticator;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V", BaiduYunConstant.CREATE, "expressions", "", "language", "ignoreAccents", "(Lcom/couchbase/lite/FullTextIndexConfiguration;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/couchbase/lite/FullTextIndexConfiguration;", "directory", "maxSize", "", "maxRotateCount", "usePlainText", "(Lcom/couchbase/lite/LogFileConfiguration;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/couchbase/lite/LogFileConfiguration;", "(Lcom/couchbase/lite/ValueIndexConfiguration;[Ljava/lang/String;)Lcom/couchbase/lite/ValueIndexConfiguration;", "install", "level", "Lcom/couchbase/lite/LogLevel;", "maxFileSize", "maxKeptFiles", "isPlainText", "(Lcom/couchbase/lite/logging/FileLogSink;Ljava/lang/String;Lcom/couchbase/lite/LogLevel;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Boolean;)V", "newConfig", "path", "(Lcom/couchbase/lite/ArrayIndexConfiguration;Ljava/lang/String;[Ljava/lang/String;)Lcom/couchbase/lite/ArrayIndexConfiguration;", "couchbase-lite-android-ee-ktx-3.2.2-21_release"}, m61529k = 2, m61530mv = {1, 8, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nCommonConfigurationFactories.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonConfigurationFactories.kt\ncom/couchbase/lite/CommonConfigurationFactoriesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,322:1\n1#2:323\n26#3:324\n26#3:325\n26#3:326\n26#3:327\n*S KotlinDebug\n*F\n+ 1 CommonConfigurationFactories.kt\ncom/couchbase/lite/CommonConfigurationFactoriesKt\n*L\n71#1:324\n102#1:325\n224#1:326\n242#1:327\n*E\n"})
/* loaded from: classes4.dex */
public final class CommonConfigurationFactoriesKt {

    @Nullable
    private static final ArrayIndexConfiguration ArrayIndexConfigurationFactory = null;

    @Nullable
    private static final CollectionConfiguration CollectionConfigurationFactory = null;

    @Nullable
    private static final FileLogSink FileLogSinkFactory = null;

    @Nullable
    private static final FullTextIndexConfiguration FullTextIndexConfigurationFactory = null;

    @Nullable
    private static final LogFileConfiguration LogFileConfigurationFactory = null;

    @Nullable
    private static final ValueIndexConfiguration ValueIndexConfigurationFactory = null;

    public static final void checkDbCollections(@NotNull Database db, @Nullable Set<Collection> set) {
        Intrinsics.checkNotNullParameter(db, "db");
        if (set == null) {
            set = SetsKt__SetsKt.emptySet();
        }
        if (set.size() == 1 && set.contains(db.getDefaultCollection())) {
            return;
        }
        com.couchbase.lite.internal.logging.Log.m9896d(LogDomain.LISTENER, "Copy to deprecated config loses collection information");
    }

    public static final void copyLegacyReplConfig(@Nullable ReplicatorConfiguration replicatorConfiguration, @NotNull ReplicatorConfiguration dst, @Nullable byte[] bArr, @Nullable List<String> list, @Nullable List<String> list2, @Nullable ReplicationFilter replicationFilter, @Nullable ReplicationFilter replicationFilter2, @Nullable ConflictResolver conflictResolver) {
        Database database;
        Collection defaultCollection;
        Map<Collection, CollectionConfiguration> collectionConfigs;
        Intrinsics.checkNotNullParameter(dst, "dst");
        if (bArr == null) {
            bArr = replicatorConfiguration != null ? replicatorConfiguration.getPinnedServerCertificate() : null;
        }
        if (bArr != null) {
            dst.setPinnedServerCertificate(bArr);
        }
        CollectionConfiguration collectionConfiguration = (replicatorConfiguration == null || (database = replicatorConfiguration.getDatabase()) == null || (defaultCollection = database.getDefaultCollection()) == null || (collectionConfigs = HelpersKt.getCollectionConfigs(replicatorConfiguration)) == null) ? null : collectionConfigs.get(defaultCollection);
        if (list == null) {
            list = collectionConfiguration != null ? collectionConfiguration.getChannels() : null;
        }
        if (list != null) {
            dst.setChannels(list);
        }
        if (list2 == null) {
            list2 = collectionConfiguration != null ? collectionConfiguration.getDocumentIDs() : null;
        }
        if (list2 != null) {
            dst.setDocumentIDs(list2);
        }
        if (replicationFilter == null) {
            replicationFilter = collectionConfiguration != null ? collectionConfiguration.getPushFilter() : null;
        }
        if (replicationFilter != null) {
            dst.setPushFilter(replicationFilter);
        }
        if (replicationFilter2 == null) {
            replicationFilter2 = collectionConfiguration != null ? collectionConfiguration.getPullFilter() : null;
        }
        if (replicationFilter2 != null) {
            dst.setPullFilter(replicationFilter2);
        }
        if (conflictResolver == null) {
            conflictResolver = collectionConfiguration != null ? collectionConfiguration.getConflictResolver() : null;
        }
        if (conflictResolver != null) {
            dst.setConflictResolver(conflictResolver);
        }
    }

    public static final void copyReplConfig(@Nullable ReplicatorConfiguration replicatorConfiguration, @NotNull ReplicatorConfiguration dst, @Nullable ReplicatorType replicatorType, @Nullable Boolean bool, @Nullable Authenticator authenticator, @Nullable Map<String, String> map, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3, @Nullable Boolean bool2, @Nullable Boolean bool3) {
        Intrinsics.checkNotNullParameter(dst, "dst");
        if (replicatorType == null) {
            replicatorType = replicatorConfiguration != null ? replicatorConfiguration.getType() : null;
        }
        if (replicatorType != null) {
            dst.setType(replicatorType);
        }
        if (bool == null) {
            bool = replicatorConfiguration != null ? Boolean.valueOf(replicatorConfiguration.isContinuous()) : null;
        }
        if (bool != null) {
            dst.setContinuous(bool.booleanValue());
        }
        if (authenticator == null) {
            authenticator = replicatorConfiguration != null ? replicatorConfiguration.getAuthenticator() : null;
        }
        if (authenticator != null) {
            dst.setAuthenticator(authenticator);
        }
        if (map == null) {
            map = replicatorConfiguration != null ? replicatorConfiguration.getHeaders() : null;
        }
        if (map != null) {
            dst.setHeaders(map);
        }
        if (num == null) {
            num = replicatorConfiguration != null ? Integer.valueOf(replicatorConfiguration.getMaxAttempts()) : null;
        }
        if (num != null) {
            dst.setMaxAttempts(num.intValue());
        }
        if (num2 == null) {
            num2 = replicatorConfiguration != null ? Integer.valueOf(replicatorConfiguration.getMaxAttemptWaitTime()) : null;
        }
        if (num2 != null) {
            dst.setMaxAttemptWaitTime(num2.intValue());
        }
        if (num3 == null) {
            num3 = replicatorConfiguration != null ? Integer.valueOf(replicatorConfiguration.getHeartbeat()) : null;
        }
        if (num3 != null) {
            dst.setHeartbeat(num3.intValue());
        }
        if (bool2 == null) {
            bool2 = replicatorConfiguration != null ? Boolean.valueOf(replicatorConfiguration.isAutoPurgeEnabled()) : null;
        }
        if (bool2 != null) {
            dst.setAutoPurgeEnabled(bool2.booleanValue());
        }
        if (bool3 == null) {
            bool3 = replicatorConfiguration != null ? Boolean.valueOf(replicatorConfiguration.isAcceptParentDomainCookies()) : null;
        }
        if (bool3 != null) {
            dst.setAcceptParentDomainCookies(bool3.booleanValue());
        }
    }

    @Deprecated(message = "Use FullTextIndexConfiguration?.newConfig(vararg expressions: String, language: String?, ignoreAccents: Boolean?)", replaceWith = @ReplaceWith(expression = "FullTextIndexConfiguration?.newConfig(vararg expressions: String, language: String?, ignoreAccents: Boolean?)", imports = {}))
    @NotNull
    public static final FullTextIndexConfiguration create(@Nullable FullTextIndexConfiguration fullTextIndexConfiguration, @NotNull String[] expressions, @Nullable String str, @Nullable Boolean bool) {
        Intrinsics.checkNotNullParameter(expressions, "expressions");
        return newConfig(fullTextIndexConfiguration, (String[]) Arrays.copyOf(expressions, expressions.length), str, bool);
    }

    public static /* synthetic */ FullTextIndexConfiguration create$default(FullTextIndexConfiguration fullTextIndexConfiguration, String[] strArr, String str, Boolean bool, int i, Object obj) {
        if ((i & 1) != 0) {
            strArr = new String[0];
        }
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            bool = null;
        }
        return create(fullTextIndexConfiguration, strArr, str, bool);
    }

    @Nullable
    public static final ArrayIndexConfiguration getArrayIndexConfigurationFactory() {
        return ArrayIndexConfigurationFactory;
    }

    @Nullable
    public static final CollectionConfiguration getCollectionConfigurationFactory() {
        return CollectionConfigurationFactory;
    }

    @Nullable
    public static final FileLogSink getFileLogSinkFactory() {
        return FileLogSinkFactory;
    }

    @Nullable
    public static final FullTextIndexConfiguration getFullTextIndexConfigurationFactory() {
        return FullTextIndexConfigurationFactory;
    }

    @Nullable
    public static final LogFileConfiguration getLogFileConfigurationFactory() {
        return LogFileConfigurationFactory;
    }

    @Nullable
    public static final ValueIndexConfiguration getValueIndexConfigurationFactory() {
        return ValueIndexConfigurationFactory;
    }

    public static final void install(@Nullable FileLogSink fileLogSink, @Nullable String str, @Nullable LogLevel logLevel, @Nullable Long l, @Nullable Integer num, @Nullable Boolean bool) {
        FileLogSink.Builder builder = new FileLogSink.Builder();
        if (str == null) {
            str = fileLogSink != null ? fileLogSink.getDirectory() : null;
        }
        if (str == null || builder.setDirectory(str) == null) {
            throw new IllegalArgumentException("A LogFileSink must have a directory");
        }
        if (logLevel == null) {
            logLevel = fileLogSink != null ? fileLogSink.getLevel() : null;
        }
        if (logLevel != null) {
            builder.setLevel(logLevel);
        }
        if (l == null) {
            l = fileLogSink != null ? Long.valueOf(fileLogSink.getMaxFileSize()) : null;
        }
        if (l != null) {
            builder.setMaxFileSize(l.longValue());
        }
        if (num == null) {
            num = fileLogSink != null ? Integer.valueOf(fileLogSink.getMaxKeptFiles()) : null;
        }
        if (num != null) {
            builder.setMaxKeptFiles(num.intValue());
        }
        if (bool == null) {
            bool = fileLogSink != null ? Boolean.valueOf(fileLogSink.isPlainText()) : null;
        }
        if (bool != null) {
            builder.setPlainText(bool.booleanValue());
        }
        LogSinks.get().setFile(builder.build());
    }

    public static /* synthetic */ void install$default(FileLogSink fileLogSink, String str, LogLevel logLevel, Long l, Integer num, Boolean bool, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            logLevel = null;
        }
        if ((i & 4) != 0) {
            l = null;
        }
        if ((i & 8) != 0) {
            num = null;
        }
        if ((i & 16) != 0) {
            bool = null;
        }
        install(fileLogSink, str, logLevel, l, num, bool);
    }

    @NotNull
    public static final CollectionConfiguration newConfig(@Nullable CollectionConfiguration collectionConfiguration, @Nullable List<String> list, @Nullable List<String> list2, @Nullable ReplicationFilter replicationFilter, @Nullable ReplicationFilter replicationFilter2, @Nullable ConflictResolver conflictResolver) {
        CollectionConfiguration collectionConfiguration2 = new CollectionConfiguration();
        if (list == null) {
            list = collectionConfiguration != null ? collectionConfiguration.getChannels() : null;
        }
        if (list != null) {
            collectionConfiguration2.setChannels(list);
        }
        if (list2 == null) {
            list2 = collectionConfiguration != null ? collectionConfiguration.getDocumentIDs() : null;
        }
        if (list2 != null) {
            collectionConfiguration2.setDocumentIDs(list2);
        }
        if (replicationFilter2 == null) {
            replicationFilter2 = collectionConfiguration != null ? collectionConfiguration.getPushFilter() : null;
        }
        if (replicationFilter2 != null) {
            collectionConfiguration2.setPushFilter(replicationFilter2);
        }
        if (replicationFilter == null) {
            replicationFilter = collectionConfiguration != null ? collectionConfiguration.getPullFilter() : null;
        }
        if (replicationFilter != null) {
            collectionConfiguration2.setPullFilter(replicationFilter);
        }
        if (conflictResolver == null) {
            conflictResolver = collectionConfiguration != null ? collectionConfiguration.getConflictResolver() : null;
        }
        if (conflictResolver != null) {
            collectionConfiguration2.setConflictResolver(conflictResolver);
        }
        return collectionConfiguration2;
    }

    public static /* synthetic */ CollectionConfiguration newConfig$default(CollectionConfiguration collectionConfiguration, List list, List list2, ReplicationFilter replicationFilter, ReplicationFilter replicationFilter2, ConflictResolver conflictResolver, int i, Object obj) {
        if ((i & 1) != 0) {
            list = null;
        }
        if ((i & 2) != 0) {
            list2 = null;
        }
        if ((i & 4) != 0) {
            replicationFilter = null;
        }
        if ((i & 8) != 0) {
            replicationFilter2 = null;
        }
        if ((i & 16) != 0) {
            conflictResolver = null;
        }
        return newConfig(collectionConfiguration, list, list2, replicationFilter, replicationFilter2, conflictResolver);
    }

    @Deprecated(message = "Use ValueIndexConfiguration?.newConfig(vararg expressions: String)", replaceWith = @ReplaceWith(expression = "ValueIndexConfiguration?.newConfig(vararg expressions: String)", imports = {}))
    @NotNull
    public static final ValueIndexConfiguration create(@Nullable ValueIndexConfiguration valueIndexConfiguration, @NotNull String... expressions) {
        Intrinsics.checkNotNullParameter(expressions, "expressions");
        return newConfig(valueIndexConfiguration, (String[]) Arrays.copyOf(expressions, expressions.length));
    }

    public static /* synthetic */ ValueIndexConfiguration create$default(ValueIndexConfiguration valueIndexConfiguration, String[] strArr, int i, Object obj) {
        if ((i & 1) != 0) {
            strArr = new String[0];
        }
        return create(valueIndexConfiguration, strArr);
    }

    public static /* synthetic */ FullTextIndexConfiguration newConfig$default(FullTextIndexConfiguration fullTextIndexConfiguration, String[] strArr, String str, Boolean bool, int i, Object obj) {
        if ((i & 1) != 0) {
            strArr = new String[0];
        }
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            bool = null;
        }
        return newConfig(fullTextIndexConfiguration, strArr, str, bool);
    }

    @Deprecated(message = "Use LogFileConfiguration?.newConfig(String?, Long?, Int?, Boolean?)", replaceWith = @ReplaceWith(expression = "LogFileConfiguration?.newConfig(String?, Long?, Int?, Boolean?)", imports = {}))
    @NotNull
    public static final LogFileConfiguration create(@Nullable LogFileConfiguration logFileConfiguration, @Nullable String str, @Nullable Long l, @Nullable Integer num, @Nullable Boolean bool) {
        return newConfig(logFileConfiguration, str, l, num, bool);
    }

    public static /* synthetic */ LogFileConfiguration create$default(LogFileConfiguration logFileConfiguration, String str, Long l, Integer num, Boolean bool, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            l = null;
        }
        if ((i & 4) != 0) {
            num = null;
        }
        if ((i & 8) != 0) {
            bool = null;
        }
        return create(logFileConfiguration, str, l, num, bool);
    }

    public static /* synthetic */ ValueIndexConfiguration newConfig$default(ValueIndexConfiguration valueIndexConfiguration, String[] strArr, int i, Object obj) {
        if ((i & 1) != 0) {
            strArr = new String[0];
        }
        return newConfig(valueIndexConfiguration, strArr);
    }

    public static /* synthetic */ LogFileConfiguration newConfig$default(LogFileConfiguration logFileConfiguration, String str, Long l, Integer num, Boolean bool, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            l = null;
        }
        if ((i & 4) != 0) {
            num = null;
        }
        if ((i & 8) != 0) {
            bool = null;
        }
        return newConfig(logFileConfiguration, str, l, num, bool);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
    
        r4 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r4);
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.couchbase.lite.FullTextIndexConfiguration newConfig(@org.jetbrains.annotations.Nullable com.couchbase.lite.FullTextIndexConfiguration r3, @org.jetbrains.annotations.NotNull java.lang.String[] r4, @org.jetbrains.annotations.Nullable java.lang.String r5, @org.jetbrains.annotations.Nullable java.lang.Boolean r6) {
        /*
            java.lang.String r0 = "expressions"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            com.couchbase.lite.FullTextIndexConfiguration r0 = new com.couchbase.lite.FullTextIndexConfiguration
            int r1 = r4.length
            r2 = 1
            if (r1 != 0) goto Ld
            r1 = r2
            goto Le
        Ld:
            r1 = 0
        Le:
            r1 = r1 ^ r2
            r2 = 0
            if (r1 == 0) goto L17
            java.util.List r4 = kotlin.collections.ArraysKt.asList(r4)
            goto L1f
        L17:
            if (r3 == 0) goto L1e
            java.util.List r4 = r3.getExpressions()
            goto L1f
        L1e:
            r4 = r2
        L1f:
            if (r4 == 0) goto L55
            java.util.Collection r4 = (java.util.Collection) r4
            java.util.List r4 = kotlin.collections.CollectionsKt.toMutableList(r4)
            if (r4 == 0) goto L55
            r0.<init>(r4)
            if (r5 != 0) goto L37
            if (r3 == 0) goto L35
            java.lang.String r4 = r3.getLanguage()
            goto L38
        L35:
            r4 = r2
            goto L38
        L37:
            r4 = r5
        L38:
            if (r4 == 0) goto L3d
            r0.setLanguage(r5)
        L3d:
            if (r6 != 0) goto L4b
            if (r3 == 0) goto L4a
            boolean r3 = r3.isIgnoringAccents()
            java.lang.Boolean r6 = java.lang.Boolean.valueOf(r3)
            goto L4b
        L4a:
            r6 = r2
        L4b:
            if (r6 == 0) goto L54
            boolean r3 = r6.booleanValue()
            r0.ignoreAccents(r3)
        L54:
            return r0
        L55:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.String r4 = "A FullTextIndexConfiguration must specify expressions"
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.couchbase.lite.CommonConfigurationFactoriesKt.newConfig(com.couchbase.lite.FullTextIndexConfiguration, java.lang.String[], java.lang.String, java.lang.Boolean):com.couchbase.lite.FullTextIndexConfiguration");
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0020, code lost:
    
        r3 = kotlin.collections.CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) r3);
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.couchbase.lite.ValueIndexConfiguration newConfig(@org.jetbrains.annotations.Nullable com.couchbase.lite.ValueIndexConfiguration r3, @org.jetbrains.annotations.NotNull java.lang.String... r4) {
        /*
            java.lang.String r0 = "expressions"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            com.couchbase.lite.ValueIndexConfiguration r0 = new com.couchbase.lite.ValueIndexConfiguration
            int r1 = r4.length
            r2 = 1
            if (r1 != 0) goto Ld
            r1 = r2
            goto Le
        Ld:
            r1 = 0
        Le:
            r1 = r1 ^ r2
            if (r1 == 0) goto L16
            java.util.List r3 = kotlin.collections.ArraysKt.asList(r4)
            goto L1e
        L16:
            if (r3 == 0) goto L1d
            java.util.List r3 = r3.getExpressions()
            goto L1e
        L1d:
            r3 = 0
        L1e:
            if (r3 == 0) goto L2c
            java.util.Collection r3 = (java.util.Collection) r3
            java.util.List r3 = kotlin.collections.CollectionsKt.toMutableList(r3)
            if (r3 == 0) goto L2c
            r0.<init>(r3)
            return r0
        L2c:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.String r4 = "A ValueIndexConfiguration must specify expressions"
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.couchbase.lite.CommonConfigurationFactoriesKt.newConfig(com.couchbase.lite.ValueIndexConfiguration, java.lang.String[]):com.couchbase.lite.ValueIndexConfiguration");
    }

    @NotNull
    public static final ArrayIndexConfiguration newConfig(@Nullable ArrayIndexConfiguration arrayIndexConfiguration, @Nullable String str, @NotNull String... expressions) {
        List mutableList;
        Intrinsics.checkNotNullParameter(expressions, "expressions");
        mutableList = ArraysKt___ArraysKt.toMutableList(expressions);
        if (str == null) {
            str = arrayIndexConfiguration != null ? arrayIndexConfiguration.getPath() : null;
            if (str == null) {
                throw new IllegalArgumentException("An ArrayIndexConfiguration must specify a path");
            }
        }
        List list = mutableList;
        if (list.isEmpty()) {
            list = arrayIndexConfiguration != null ? arrayIndexConfiguration.getExpressions() : null;
        }
        return new ArrayIndexConfiguration(str, list);
    }

    @NotNull
    public static final LogFileConfiguration newConfig(@Nullable LogFileConfiguration logFileConfiguration, @Nullable String str, @Nullable Long l, @Nullable Integer num, @Nullable Boolean bool) {
        if (str == null) {
            str = logFileConfiguration != null ? logFileConfiguration.getDirectory() : null;
            if (str == null) {
                throw new IllegalArgumentException("A LogFileConfiguration must specify a directory");
            }
        }
        LogFileConfiguration logFileConfiguration2 = new LogFileConfiguration(str);
        if (l == null) {
            l = logFileConfiguration != null ? Long.valueOf(logFileConfiguration.getMaxSize()) : null;
        }
        if (l != null) {
            logFileConfiguration2.setMaxSize(l.longValue());
        }
        if (num == null) {
            num = logFileConfiguration != null ? Integer.valueOf(logFileConfiguration.getMaxRotateCount()) : null;
        }
        if (num != null) {
            logFileConfiguration2.setMaxRotateCount(num.intValue());
        }
        if (bool == null) {
            bool = logFileConfiguration != null ? Boolean.valueOf(logFileConfiguration.usesPlaintext()) : null;
        }
        if (bool != null) {
            logFileConfiguration2.setUsePlaintext(bool.booleanValue());
        }
        return logFileConfiguration2;
    }
}
