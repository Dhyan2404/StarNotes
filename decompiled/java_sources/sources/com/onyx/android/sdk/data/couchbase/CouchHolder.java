package com.onyx.android.sdk.data.couchbase;

import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.Authenticator;
import com.couchbase.lite.BasicAuthenticator;
import com.couchbase.lite.Collection;
import com.couchbase.lite.CollectionConfiguration;
import com.couchbase.lite.ConfigurationFactoriesKt;
import com.couchbase.lite.ConflictResolver;
import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.DataSource;
import com.couchbase.lite.Database;
import com.couchbase.lite.DatabaseConfiguration;
import com.couchbase.lite.Document;
import com.couchbase.lite.DocumentReplication;
import com.couchbase.lite.DocumentReplicationListener;
import com.couchbase.lite.From;
import com.couchbase.lite.ListenerToken;
import com.couchbase.lite.Meta;
import com.couchbase.lite.MutableDocument;
import com.couchbase.lite.QueryBuilder;
import com.couchbase.lite.ReplicatedDocument;
import com.couchbase.lite.ReplicationFilter;
import com.couchbase.lite.Replicator;
import com.couchbase.lite.ReplicatorActivityLevel;
import com.couchbase.lite.ReplicatorChange;
import com.couchbase.lite.ReplicatorChangeListener;
import com.couchbase.lite.ReplicatorStatus;
import com.couchbase.lite.ReplicatorType;
import com.couchbase.lite.Result;
import com.couchbase.lite.SelectResult;
import com.couchbase.lite.SessionAuthenticator;
import com.couchbase.lite.URLEndpoint;
import com.couchbase.lite.UnitOfWork;
import com.couchbase.lite.internal.core.C4Database;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.LogFileUtils;
import com.onyx.android.sdk.base.utils.ThreadUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.bean.ReplicatorError;
import com.onyx.android.sdk.data.couchbase.bean.StartReplicatorBean;
import com.onyx.android.sdk.data.couchbase.bean.StartReplicatorBeanKt;
import com.onyx.android.sdk.data.couchbase.bean.SyncGateway;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000Î\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0017\u0018\u0000 }2\u00020\u0001:\u0002}~B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\u0010\u0010,\u001a\u0004\u0018\u00010\u00192\u0006\u0010-\u001a\u00020.J\u0010\u0010/\u001a\u0004\u0018\u00010\u00192\u0006\u0010-\u001a\u000200J\u0012\u00101\u001a\u0004\u0018\u00010 2\u0006\u0010(\u001a\u00020)H\u0002J\u0006\u00102\u001a\u000203J\b\u00104\u001a\u000203H\u0002J\u0010\u00105\u001a\u0002062\b\b\u0002\u00107\u001a\u00020\u0003J\u0006\u00108\u001a\u000206J\u0006\u00109\u001a\u00020\u0010J\u0012\u0010:\u001a\u0004\u0018\u00010;2\u0006\u0010(\u001a\u00020)H\u0002J\b\u0010<\u001a\u00020=H\u0002J\u0006\u0010>\u001a\u00020+J\u0006\u0010?\u001a\u00020\u0003J\u0006\u0010@\u001a\u00020\u0003J\b\u0010A\u001a\u00020=H\u0007J\n\u0010B\u001a\u0004\u0018\u00010 H\u0002J\u0006\u0010C\u001a\u00020=J\u000e\u0010D\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030&J\u0006\u0010E\u001a\u00020\u0003J\u0006\u0010F\u001a\u00020\u0013J\u0006\u0010G\u001a\u00020\u0013J\u0006\u0010H\u001a\u00020\u0013J\u0006\u0010I\u001a\u00020\u0013J\u0010\u0010J\u001a\u00020\u00132\b\u0010K\u001a\u0004\u0018\u00010\u0003J\u0006\u0010L\u001a\u00020\u0013J\u000e\u0010M\u001a\u00020\u00132\u0006\u0010N\u001a\u00020\u000eJ\b\u0010O\u001a\u00020\u0013H\u0002J\u0006\u0010P\u001a\u00020\u0013J\u000e\u0010P\u001a\u00020\u00132\u0006\u0010N\u001a\u00020\u000eJ\u0006\u0010Q\u001a\u00020\u0013J\u000e\u0010Q\u001a\u00020\u00132\u0006\u0010N\u001a\u00020\u000eJ\u0006\u0010R\u001a\u00020\u0013J\u0010\u0010R\u001a\u00020\u00132\u0006\u0010N\u001a\u00020\u000eH\u0002J\u0006\u0010S\u001a\u00020\u0013J\u000e\u0010S\u001a\u00020\u00132\u0006\u0010N\u001a\u00020\u000eJ\u0010\u0010T\u001a\u00020\u00132\u0006\u0010U\u001a\u00020VH\u0002J\u0006\u0010W\u001a\u00020\u0013J\u0010\u0010W\u001a\u00020\u00132\u0006\u0010N\u001a\u00020\u000eH\u0002J\u0014\u0010X\u001a\u00020\u00132\n\u0010Y\u001a\u00060Zj\u0002`[H\u0002J\u0018\u0010\\\u001a\u00020\u00002\u0006\u0010]\u001a\u00020\u00032\u0006\u00107\u001a\u00020\u0003H\u0002J\u0018\u0010^\u001a\u00020\u00002\u0006\u0010]\u001a\u00020\u00032\u0006\u00107\u001a\u00020\u0003H\u0002J\u000e\u0010_\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010`J\u000e\u0010a\u001a\u0002032\u0006\u0010U\u001a\u00020VJ\u000e\u0010b\u001a\u0002032\u0006\u0010c\u001a\u00020dJ\u0006\u0010e\u001a\u000203J\u0010\u0010e\u001a\u00020\u00002\b\u0010f\u001a\u0004\u0018\u00010\u0019J\b\u0010g\u001a\u0004\u0018\u00010hJ\u0010\u0010i\u001a\u0002032\u0006\u0010N\u001a\u00020=H\u0002J\u0010\u0010j\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\nJ\u000e\u0010k\u001a\u00020\u00002\u0006\u0010l\u001a\u00020\u0013J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010m\u001a\u00020\u0013J\u0010\u0010n\u001a\u00020\u00002\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cJ\u0010\u0010o\u001a\u00020\u00002\b\u0010p\u001a\u0004\u0018\u00010\u001cJ\u000e\u0010q\u001a\u00020\u00002\u0006\u0010r\u001a\u00020\u0013J\u000e\u0010s\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\"J\u0016\u0010t\u001a\u00020\u00002\u000e\u0010u\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030&J\u000e\u0010v\u001a\u00020\u00002\u0006\u0010w\u001a\u00020\u0013J\u0010\u0010x\u001a\u00020\u00002\b\u0010(\u001a\u0004\u0018\u00010)J\u0010\u0010y\u001a\u00020\u00132\b\u0010z\u001a\u0004\u0018\u00010$J\u0006\u0010{\u001a\u00020\u0000J\b\u0010|\u001a\u000203H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030&X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u007f"}, m61528d2 = {"Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "", "dbDirPath", "", Constant.TAG_USER_ID, EditorConstants.ARGS_DOC_ID, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "cbStatus", "Ljava/util/concurrent/atomic/AtomicInteger;", "conflictResolver", "Lcom/couchbase/lite/ConflictResolver;", "continuous", "Ljava/util/concurrent/atomic/AtomicBoolean;", "curStatus", "Lcom/couchbase/lite/ReplicatorStatus;", "database", "Lcom/couchbase/lite/Database;", "dbName", "isEnableLog", "", Constants.BOOLEAN_VALUE_SIG, "setEnableLog", "(Z)V", "listenerTokenList", "", "Lcom/couchbase/lite/ListenerToken;", "openCloseReferenceCount", "pullFilter", "Lcom/couchbase/lite/ReplicationFilter;", "pushFilter", "recreateIfWrongFormat", "replicator", "Lcom/couchbase/lite/Replicator;", "replicatorType", "Lcom/couchbase/lite/ReplicatorType;", "startReplicatorBean", "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;", "syncChannels", "", "syncEnabled", "syncGateway", "Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;", "syncTimeAt", "", "addChangeListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/couchbase/lite/ReplicatorChangeListener;", "addDocumentReplicationListener", "Lcom/couchbase/lite/DocumentReplicationListener;", "buildReplicator", "close", "", "closeDB", "ensureCollection", "Lcom/couchbase/lite/Collection;", "name", "ensureCollectionRequireNonNull", "ensureDB", "getAuthenticator", "Lcom/couchbase/lite/Authenticator;", "getCbStatus", "", "getCount", "getDbName", "getDbPath", "getOpenCloseReferenceCount", "getReplicator", "getReplicatorStatus", "getSyncChannels", "getUserId", "hasReplicationListener", "hasReplicator", "isClosed", "isContinuous", "isEnabledSyncDocId", "documentId", "isReplicatorStart", "isSyncComplete", "status", "isSyncEnabled", "isSyncError", "isSyncFinished", "isSyncIdle", "isSyncOffline", "isSyncStart", "change", "Lcom/couchbase/lite/ReplicatorChange;", "isSyncStop", "needRecreateDB", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "open", "dirPath", "openImpl", "pendingDocumentIds", "", "printChangeLog", "printDocumentReplicationLog", "replication", "Lcom/couchbase/lite/DocumentReplication;", "removeChangeListener", "listenerToken", "replicatorError", "Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;", "setCbStatus", "setConflictResolver", "setContinuous", "c", "enableLog", "setPullFilter", "setPushFilter", "filter", "setRecreateIfWrongFormat", "recreate", "setReplicatorType", "setSyncChannels", "channels", "setSyncEnabled", "enabled", "setSyncGateway", "startReplicator", "replicatorBean", "stopReplicator", "waitReplicatorStopped", "Companion", "CouchDataProvider", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nCouchHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CouchHolder.kt\ncom/onyx/android/sdk/data/couchbase/CouchHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,641:1\n1#2:642\n*E\n"})
/* loaded from: classes7.dex */
public final class CouchHolder {

    @NotNull
    private static final Object classLock = new Object();

    @NotNull
    private final AtomicInteger cbStatus;

    @Nullable
    private ConflictResolver conflictResolver;

    @NotNull
    private final AtomicBoolean continuous;

    @Nullable
    private ReplicatorStatus curStatus;

    @Nullable
    private volatile Database database;

    @NotNull
    private final String dbDirPath;

    @NotNull
    private final String dbName;
    private boolean isEnableLog;

    @NotNull
    private final List<ListenerToken> listenerTokenList;

    @NotNull
    private final AtomicInteger openCloseReferenceCount;

    @Nullable
    private ReplicationFilter pullFilter;

    @Nullable
    private ReplicationFilter pushFilter;
    private boolean recreateIfWrongFormat;

    @Nullable
    private Replicator replicator;

    @NotNull
    private ReplicatorType replicatorType;

    @NotNull
    private StartReplicatorBean startReplicatorBean;

    @NotNull
    private List<String> syncChannels;

    @NotNull
    private final AtomicBoolean syncEnabled;

    @Nullable
    private SyncGateway syncGateway;
    private long syncTimeAt;

    @NotNull
    private final String userId;

    public CouchHolder(@NotNull String dbDirPath, @NotNull String userId, @NotNull String docId) {
        Intrinsics.checkNotNullParameter(dbDirPath, "dbDirPath");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(docId, "docId");
        this.dbDirPath = dbDirPath;
        this.userId = userId;
        this.cbStatus = new AtomicInteger(0);
        this.syncEnabled = new AtomicBoolean(true);
        this.continuous = new AtomicBoolean(false);
        this.startReplicatorBean = new StartReplicatorBean(0, false, false, false, null, null, false, 127, null);
        this.listenerTokenList = new ArrayList();
        this.syncChannels = new ArrayList();
        this.replicatorType = ReplicatorType.PUSH_AND_PULL;
        this.openCloseReferenceCount = new AtomicInteger(0);
        this.dbName = CouchUtils.INSTANCE.dbFullName(userId, docId);
    }

    private final Replicator buildReplicator(SyncGateway syncGateway) {
        URI uri;
        List listOf;
        try {
            uri = new URI(syncGateway.getUrl());
        } catch (URISyntaxException e) {
            e.printStackTrace();
            uri = null;
        }
        if (uri == null) {
            Debug.INSTANCE.m32044e(CouchHolder.class, "null sync uri", new Object[0]);
            return null;
        }
        URLEndpoint uRLEndpoint = new URLEndpoint(uri);
        CollectionConfiguration collectionConfiguration = new CollectionConfiguration();
        HashMap hashMap = new HashMap();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(ensureCollection$default(this, null, 1, null));
        hashMap.put(listOf, collectionConfiguration);
        collectionConfiguration.setChannels(getSyncChannels());
        collectionConfiguration.setPushFilter(this.pushFilter);
        collectionConfiguration.setPullFilter(this.pullFilter);
        collectionConfiguration.setConflictResolver(this.conflictResolver);
        return new Replicator(ConfigurationFactoriesKt.newConfig$default(ConfigurationFactoriesKt.getReplicatorConfigurationFactory(), uRLEndpoint, hashMap, this.replicatorType, Boolean.valueOf(isContinuous()), getAuthenticator(syncGateway), null, null, null, null, null, null, null, null, 8160, null));
    }

    private final void closeDB() throws CouchbaseLiteException {
        if (this.database == null) {
            return;
        }
        Debug debug = Debug.INSTANCE;
        StringBuilder sb = new StringBuilder();
        sb.append("close couch db: ");
        sb.append(this.dbDirPath);
        sb.append(' ');
        Database database = this.database;
        sb.append(database != null ? database.getName() : null);
        sb.append(",reference count: ");
        sb.append(this.openCloseReferenceCount.get());
        debug.m32035d(CouchHolder.class, sb.toString(), new Object[0]);
        Database database2 = this.database;
        if (database2 != null) {
            database2.close();
        }
        this.database = null;
    }

    public static /* synthetic */ Collection ensureCollection$default(CouchHolder couchHolder, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "_default";
        }
        return couchHolder.ensureCollection(str);
    }

    private final Authenticator getAuthenticator(SyncGateway syncGateway) {
        int authType = syncGateway.getAuthType();
        if (authType == 0) {
            String sessionID = syncGateway.getSessionID();
            Intrinsics.checkNotNull(sessionID);
            return new SessionAuthenticator(sessionID, syncGateway.getCookieName());
        }
        if (authType != 1) {
            return null;
        }
        String username = syncGateway.getUsername();
        Intrinsics.checkNotNull(username);
        String password = syncGateway.getPassword();
        Intrinsics.checkNotNull(password);
        char[] charArray = password.toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "this as java.lang.String).toCharArray()");
        return new BasicAuthenticator(username, charArray);
    }

    private final int getCbStatus() {
        return this.cbStatus.get();
    }

    private final Replicator getReplicator() {
        SyncGateway syncGateway;
        if (this.replicator == null && (syncGateway = this.syncGateway) != null) {
            Intrinsics.checkNotNull(syncGateway);
            this.replicator = buildReplicator(syncGateway);
        }
        return this.replicator;
    }

    private final boolean isSyncEnabled() {
        return this.syncEnabled.get();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001a, code lost:
    
        if (r2.getActivityLevel() == com.couchbase.lite.ReplicatorActivityLevel.CONNECTING) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean isSyncStart(com.couchbase.lite.ReplicatorChange r3) {
        /*
            r2 = this;
            com.couchbase.lite.ReplicatorStatus r0 = r2.curStatus
            if (r0 == 0) goto L2a
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            com.couchbase.lite.ReplicatorActivityLevel r0 = r0.getActivityLevel()
            com.couchbase.lite.ReplicatorActivityLevel r1 = com.couchbase.lite.ReplicatorActivityLevel.IDLE
            if (r0 == r1) goto L1c
            com.couchbase.lite.ReplicatorStatus r2 = r2.curStatus
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            com.couchbase.lite.ReplicatorActivityLevel r2 = r2.getActivityLevel()
            com.couchbase.lite.ReplicatorActivityLevel r0 = com.couchbase.lite.ReplicatorActivityLevel.CONNECTING
            if (r2 != r0) goto L2a
        L1c:
            com.couchbase.lite.ReplicatorStatus r2 = r3.getStatus()
            com.couchbase.lite.ReplicatorActivityLevel r2 = r2.getActivityLevel()
            com.couchbase.lite.ReplicatorActivityLevel r3 = com.couchbase.lite.ReplicatorActivityLevel.BUSY
            if (r2 != r3) goto L2a
            r2 = 1
            goto L2b
        L2a:
            r2 = 0
        L2b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.data.couchbase.CouchHolder.isSyncStart(com.couchbase.lite.ReplicatorChange):boolean");
    }

    private final boolean needRecreateDB(Exception e) {
        return this.recreateIfWrongFormat && CouchUtils.INSTANCE.getCBExceptionCode(e) == 21;
    }

    private final CouchHolder open(String dirPath, String name) {
        synchronized (classLock) {
            try {
            } catch (Exception e) {
                if (this.needRecreateDB(e)) {
                    LogFileUtils.INSTANCE.m32103e(CouchHolder.class, "occur wrong format exception, try to recreate", e);
                    FileUtils.INSTANCE.deleteFile(this.getDbPath());
                    this = this.openImpl(dirPath, name);
                }
            }
            if (this.database != null) {
                return this;
            }
            this = openImpl(dirPath, name);
            return this;
        }
    }

    private final CouchHolder openImpl(String dirPath, String name) {
        DatabaseConfiguration databaseConfiguration = new DatabaseConfiguration();
        try {
            int incrementAndGet = this.openCloseReferenceCount.incrementAndGet();
            Debug.INSTANCE.m32035d(CouchHolder.class, "open couch db : " + dirPath + ' ' + name + ",reference count: " + incrementAndGet, new Object[0]);
            if (incrementAndGet > 1) {
                LogFileUtils.e$default(LogFileUtils.INSTANCE, CouchHolder.class, null, new Exception("open couch db maybe abnormal: " + dirPath + ' ' + name + ",reference count: " + incrementAndGet + ' '), 2, null);
            }
            databaseConfiguration.setDirectory(dirPath);
            this.database = new Database(name, databaseConfiguration);
            setCbStatus(0);
            return this;
        } catch (Exception e) {
            boolean exists = new File(getDbPath()).exists();
            LogFileUtils.INSTANCE.m32103e(CouchHolder.class, "open couch db error : " + exists + ' ' + dirPath + ' ' + name, e);
            throw e;
        }
    }

    private final void setCbStatus(int status) {
        this.cbStatus.set(status);
    }

    private final void waitReplicatorStopped() {
        if (this.replicator == null) {
            return;
        }
        int i = 30000;
        do {
            Replicator replicator = this.replicator;
            Intrinsics.checkNotNull(replicator);
            ReplicatorStatus status = replicator.getStatus();
            Intrinsics.checkNotNullExpressionValue(status, "getStatus(...)");
            if (isSyncFinished(status)) {
                break;
            }
            ThreadUtils.INSTANCE.mySleep(300);
            i -= 300;
        } while (i > 0);
        Replicator replicator2 = this.replicator;
        Intrinsics.checkNotNull(replicator2);
        replicator2.close();
        this.replicator = null;
        int i2 = 30000 - i;
        if (i2 >= 1000) {
            Debug.INSTANCE.m32044e(CouchHolder.class, "wait replicator stop timeout: " + i2 + ", dbName: " + this.dbName, new Object[0]);
        }
    }

    @Nullable
    public final ListenerToken addChangeListener(@NotNull ReplicatorChangeListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (this.syncGateway == null) {
            return null;
        }
        Replicator replicator = getReplicator();
        Intrinsics.checkNotNull(replicator);
        ListenerToken addChangeListener = replicator.addChangeListener(listener);
        Intrinsics.checkNotNullExpressionValue(addChangeListener, "addChangeListener(...)");
        this.listenerTokenList.add(addChangeListener);
        return addChangeListener;
    }

    @Nullable
    public final ListenerToken addDocumentReplicationListener(@NotNull DocumentReplicationListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (this.syncGateway == null) {
            return null;
        }
        Replicator replicator = getReplicator();
        Intrinsics.checkNotNull(replicator);
        ListenerToken addDocumentReplicationListener = replicator.addDocumentReplicationListener(listener);
        Intrinsics.checkNotNullExpressionValue(addDocumentReplicationListener, "addDocumentReplicationListener(...)");
        this.listenerTokenList.add(addDocumentReplicationListener);
        return addDocumentReplicationListener;
    }

    public final void close() {
        int decrementAndGet = this.openCloseReferenceCount.decrementAndGet();
        if (decrementAndGet < 0) {
            Debug debug = Debug.INSTANCE;
            StringBuilder sb = new StringBuilder();
            sb.append("close couch db: ");
            sb.append(this.dbDirPath);
            sb.append(' ');
            Database database = this.database;
            sb.append(database != null ? database.getName() : null);
            debug.m32043e(CouchHolder.class, sb.toString(), new Exception("reference count exception: " + decrementAndGet));
        }
        if (this.database == null) {
            return;
        }
        if (this.isEnableLog) {
            Debug.INSTANCE.m32044e(CouchHolder.class, "close: " + getDbName(), new Object[0]);
        }
        closeDB();
    }

    @NotNull
    public final Collection ensureCollection(@NotNull String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        Collection createCollection = ensureDB().createCollection(name);
        Intrinsics.checkNotNullExpressionValue(createCollection, "createCollection(...)");
        return createCollection;
    }

    @NotNull
    public final Collection ensureCollectionRequireNonNull() {
        Collection ensureCollection$default = ensureCollection$default(this, null, 1, null);
        Objects.requireNonNull(ensureCollection$default);
        Intrinsics.checkNotNullExpressionValue(ensureCollection$default, "requireNonNull(...)");
        return ensureCollection$default;
    }

    @NotNull
    public final Database ensureDB() {
        if (this.database == null) {
            open(this.dbDirPath, this.dbName);
        }
        Database database = this.database;
        Intrinsics.checkNotNull(database);
        return database;
    }

    public final long getCount() {
        return ensureCollection$default(this, null, 1, null).getCount();
    }

    @NotNull
    public final String getDbName() {
        return this.dbName;
    }

    @NotNull
    public final String getDbPath() {
        Path path = Paths.get(this.dbDirPath, (String[]) Arrays.copyOf(new String[]{this.dbName + C4Database.DB_EXTENSION}, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        return path.toAbsolutePath().toString();
    }

    @VisibleForTesting
    public final int getOpenCloseReferenceCount() {
        return this.openCloseReferenceCount.get();
    }

    public final int getReplicatorStatus() {
        Replicator replicator = this.replicator;
        if (replicator == null) {
            return 9;
        }
        Intrinsics.checkNotNull(replicator);
        ReplicatorStatus status = replicator.getStatus();
        Intrinsics.checkNotNullExpressionValue(status, "getStatus(...)");
        if (status.getError() != null || status.getActivityLevel() == ReplicatorActivityLevel.OFFLINE) {
            return 3;
        }
        return isSyncFinished(status) ? 4 : 1;
    }

    @NotNull
    public final List<String> getSyncChannels() {
        List<String> listOf = CollectionKt.isNonBlank(this.syncChannels) ? this.syncChannels : CollectionsKt__CollectionsJVMKt.listOf(getDbName());
        if (this.isEnableLog) {
            Debug.INSTANCE.m32035d(CouchHolder.class, "channels: " + JSONUtils.INSTANCE.toJson(listOf), new Object[0]);
        }
        return listOf;
    }

    @NotNull
    public final String getUserId() {
        return this.userId;
    }

    public final boolean hasReplicationListener() {
        return CollectionKt.isNonBlank(this.listenerTokenList);
    }

    public final boolean hasReplicator() {
        return this.replicator != null;
    }

    public final boolean isClosed() {
        return this.database == null;
    }

    public final boolean isContinuous() {
        return this.continuous.get();
    }

    /* renamed from: isEnableLog, reason: from getter */
    public final boolean getIsEnableLog() {
        return this.isEnableLog;
    }

    public final boolean isEnabledSyncDocId(@Nullable String documentId) {
        boolean contains;
        boolean contains2;
        if (this.startReplicatorBean.getSyncAll()) {
            return true;
        }
        contains = CollectionsKt___CollectionsKt.contains(this.startReplicatorBean.getSyncDocIdList(), documentId);
        if (contains) {
            return true;
        }
        contains2 = CollectionsKt___CollectionsKt.contains(this.startReplicatorBean.getLibraryDocIdList(), documentId);
        return contains2;
    }

    public final boolean isReplicatorStart() {
        Replicator replicator = this.replicator;
        if (replicator != null) {
            Intrinsics.checkNotNull(replicator);
            if (replicator.getStatus().getActivityLevel() != ReplicatorActivityLevel.STOPPED) {
                return true;
            }
        }
        return false;
    }

    public final boolean isSyncComplete(@NotNull ReplicatorStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        return status.getActivityLevel() == ReplicatorActivityLevel.STOPPED && status.getProgress().getTotal() == status.getProgress().getCompleted();
    }

    public final boolean isSyncError(@NotNull ReplicatorStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        return status.getActivityLevel() == ReplicatorActivityLevel.STOPPED && status.getError() != null;
    }

    public final boolean isSyncFinished(@NotNull ReplicatorStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        return (isContinuous() ? isSyncIdle(status) : isSyncStop(status)) || isSyncError(status) || isSyncOffline(status) || isSyncComplete(status);
    }

    public final boolean isSyncIdle() {
        Replicator replicator = this.replicator;
        if (replicator == null) {
            return false;
        }
        Intrinsics.checkNotNull(replicator);
        ReplicatorStatus status = replicator.getStatus();
        Intrinsics.checkNotNullExpressionValue(status, "getStatus(...)");
        return isSyncIdle(status);
    }

    public final boolean isSyncOffline(@NotNull ReplicatorStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        return status.getActivityLevel() == ReplicatorActivityLevel.OFFLINE;
    }

    public final boolean isSyncStop() {
        Replicator replicator = this.replicator;
        if (replicator == null) {
            return true;
        }
        Intrinsics.checkNotNull(replicator);
        ReplicatorStatus status = replicator.getStatus();
        Intrinsics.checkNotNullExpressionValue(status, "getStatus(...)");
        return isSyncStop(status);
    }

    @Nullable
    public final Set<String> pendingDocumentIds() {
        Replicator replicator = this.replicator;
        if (replicator == null) {
            return null;
        }
        Intrinsics.checkNotNull(replicator);
        return replicator.getPendingDocumentIds(ensureCollectionRequireNonNull());
    }

    public final void printChangeLog(@NotNull ReplicatorChange change) {
        Intrinsics.checkNotNullParameter(change, "change");
        if (change.getStatus().getError() != null) {
            Debug.INSTANCE.m32044e(CouchHolder.class, getDbName() + " sync status:" + change.getStatus(), new Object[0]);
        }
        if (change.getStatus().getActivityLevel() == ReplicatorActivityLevel.CONNECTING) {
            Debug.INSTANCE.m32035d(CouchHolder.class, getDbName() + " is connecting", new Object[0]);
        }
        if (this.isEnableLog) {
            if (isSyncStart(change)) {
                this.syncTimeAt = System.currentTimeMillis();
            }
            ReplicatorStatus status = change.getStatus();
            this.curStatus = status;
            if (this.syncTimeAt > 0) {
                Intrinsics.checkNotNull(status);
                if (status.getActivityLevel() == ReplicatorActivityLevel.IDLE) {
                    Debug.INSTANCE.m32035d(CouchHolder.class, getDbName() + " sync time:" + (System.currentTimeMillis() - this.syncTimeAt) + "ms, dbName: " + this.dbName, new Object[0]);
                }
            }
        }
    }

    public final void printDocumentReplicationLog(@NotNull DocumentReplication replication) {
        Intrinsics.checkNotNullParameter(replication, "replication");
        for (ReplicatedDocument replicatedDocument : replication.getDocuments()) {
            if (replicatedDocument.getError() != null) {
                Debug.INSTANCE.m32044e(CouchHolder.class, getDbName() + " sync data:" + replicatedDocument.getError(), new Object[0]);
            }
        }
        Debug debug = Debug.INSTANCE;
        StringBuilder sb = new StringBuilder();
        sb.append(this.dbName);
        sb.append(replication.isPush() ? " push" : " pull");
        sb.append(" sync data count:");
        sb.append(replication.getDocuments().size());
        sb.append(", dbName: ");
        sb.append(this.dbName);
        debug.m32035d(CouchHolder.class, sb.toString(), new Object[0]);
    }

    public final void removeChangeListener() {
        for (ListenerToken listenerToken : this.listenerTokenList) {
            if (this.replicator != null) {
                Intrinsics.checkNotNull(listenerToken);
                listenerToken.remove();
            }
        }
        this.listenerTokenList.clear();
    }

    @Nullable
    public final ReplicatorError replicatorError() {
        String message;
        Replicator replicator = this.replicator;
        if (replicator == null) {
            return null;
        }
        Intrinsics.checkNotNull(replicator);
        CouchbaseLiteException error = replicator.getStatus().getError();
        if (error == null || (message = error.getMessage()) == null) {
            return null;
        }
        return new ReplicatorError().setCode(error.getCode()).setMessage(message);
    }

    @NotNull
    public final CouchHolder setConflictResolver(@Nullable ConflictResolver conflictResolver) {
        this.conflictResolver = conflictResolver;
        return this;
    }

    @NotNull
    public final CouchHolder setContinuous(boolean c) {
        this.continuous.set(c);
        return this;
    }

    /* renamed from: setEnableLog, reason: collision with other method in class */
    public final void m72255setEnableLog(boolean z) {
        this.isEnableLog = z;
    }

    @NotNull
    public final CouchHolder setPullFilter(@Nullable ReplicationFilter pullFilter) {
        this.pullFilter = pullFilter;
        return this;
    }

    @NotNull
    public final CouchHolder setPushFilter(@Nullable ReplicationFilter filter) {
        this.pushFilter = filter;
        return this;
    }

    @NotNull
    public final CouchHolder setRecreateIfWrongFormat(boolean recreate) {
        this.recreateIfWrongFormat = recreate;
        return this;
    }

    @NotNull
    public final CouchHolder setReplicatorType(@NotNull ReplicatorType replicatorType) {
        Intrinsics.checkNotNullParameter(replicatorType, "replicatorType");
        this.replicatorType = replicatorType;
        return this;
    }

    @NotNull
    public final CouchHolder setSyncChannels(@NotNull List<String> channels) {
        Intrinsics.checkNotNullParameter(channels, "channels");
        this.syncChannels = channels;
        return this;
    }

    @NotNull
    public final CouchHolder setSyncEnabled(boolean enabled) {
        this.syncEnabled.set(enabled);
        return this;
    }

    @NotNull
    public final CouchHolder setSyncGateway(@Nullable SyncGateway syncGateway) {
        this.syncGateway = syncGateway;
        return this;
    }

    public final boolean startReplicator(@Nullable StartReplicatorBean replicatorBean) {
        if (!isSyncFinished() && this.startReplicatorBean.getSyncAll()) {
            Debug.INSTANCE.m32044e(CouchHolder.class, "is syncing all data", new Object[0]);
            return false;
        }
        StartReplicatorBeanKt.copyFrom(this.startReplicatorBean, replicatorBean);
        if (this.syncGateway == null) {
            Debug.INSTANCE.m32044e(CouchHolder.class, "start error for null syncGateway: " + getDbName(), new Object[0]);
            return false;
        }
        if (StringUtils.isBlank(this.userId) || StringUtils.equals(this.userId, "share_user")) {
            Debug.INSTANCE.m32044e(CouchHolder.class, "start error for userId: " + this.userId, new Object[0]);
            return false;
        }
        SyncGateway syncGateway = this.syncGateway;
        if (!Intrinsics.areEqual(syncGateway != null ? syncGateway.getUserId() : null, this.userId)) {
            Debug.INSTANCE.m32044e(CouchHolder.class, "start error for userId not equal: " + this.userId, new Object[0]);
            return false;
        }
        if (!isSyncEnabled()) {
            Debug.INSTANCE.m32044e(CouchHolder.class, "start error for disable: " + getDbName(), new Object[0]);
            return false;
        }
        if (isContinuous() && !this.startReplicatorBean.getForce() && isReplicatorStart()) {
            Debug.INSTANCE.m32035d(CouchHolder.class, "start error for has start: " + getDbName(), new Object[0]);
            return true;
        }
        if (this.isEnableLog) {
            Debug debug = Debug.INSTANCE;
            StringBuilder sb = new StringBuilder();
            Database database = this.database;
            Intrinsics.checkNotNull(database);
            sb.append(database.getName());
            sb.append(" start sync");
            debug.m32044e(CouchHolder.class, sb.toString(), new Object[0]);
        }
        setCbStatus(1);
        Debug.INSTANCE.m32052i(CouchHolder.class, "start " + this.dbName + " replicator: " + this.startReplicatorBean.getResetCheckpoint(), new Object[0]);
        Replicator replicator = getReplicator();
        Intrinsics.checkNotNull(replicator);
        replicator.start(this.startReplicatorBean.getResetCheckpoint());
        return true;
    }

    @NotNull
    public final CouchHolder stopReplicator() {
        if (this.replicator != null) {
            if (getCbStatus() == 2) {
                return this;
            }
            if (this.isEnableLog) {
                Debug debug = Debug.INSTANCE;
                StringBuilder sb = new StringBuilder();
                sb.append("stopSync:");
                sb.append(getDbName());
                sb.append(",status: ");
                Replicator replicator = this.replicator;
                Intrinsics.checkNotNull(replicator);
                sb.append(replicator.getStatus());
                debug.m32044e(CouchHolder.class, sb.toString(), new Object[0]);
            }
            removeChangeListener();
            setCbStatus(2);
            Replicator replicator2 = this.replicator;
            Intrinsics.checkNotNull(replicator2);
            replicator2.stop();
        }
        waitReplicatorStopped();
        return this;
    }

    @Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\n\u0010\u0003\u001a\u00020\u0004*\u00020\u0005J\n\u0010\u0006\u001a\u00020\u0007*\u00020\u0005J\u0012\u0010\u0006\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\b\u001a\u00020\tJ\u0018\u0010\n\u001a\u00020\u0005*\u00020\u00052\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\fJ\u0018\u0010\r\u001a\u00020\u0005*\u00020\u00052\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\fJ\u0014\u0010\u0010\u001a\u0004\u0018\u00010\t*\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u000fJ\u0014\u0010\u0012\u001a\u00020\u0005*\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0013J\u0018\u0010\u0014\u001a\u00020\u0005*\u00020\u00052\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00130\f¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;", "", "()V", Constants.CLEAR_ATTRIBUTES, "", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "delete", "", "document", "Lcom/couchbase/lite/Document;", "deleteList", "documentList", "", "deleteListById", "idList", "", "getDocument", "id", "save", "Lcom/couchbase/lite/MutableDocument;", "saveList", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class CouchDataProvider {

        @NotNull
        public static final CouchDataProvider INSTANCE = new CouchDataProvider();

        private CouchDataProvider() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void deleteList$lambda$1(List documentList, CouchHolder this_deleteList) {
            Intrinsics.checkNotNullParameter(documentList, "$documentList");
            Intrinsics.checkNotNullParameter(this_deleteList, "$this_deleteList");
            Iterator it2 = documentList.iterator();
            while (it2.hasNext()) {
                INSTANCE.delete(this_deleteList, (Document) it2.next());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void saveList$lambda$0(List documentList, CouchHolder this_saveList) {
            Intrinsics.checkNotNullParameter(documentList, "$documentList");
            Intrinsics.checkNotNullParameter(this_saveList, "$this_saveList");
            Iterator it2 = documentList.iterator();
            while (it2.hasNext()) {
                INSTANCE.save(this_saveList, (MutableDocument) it2.next());
            }
        }

        public final boolean clear(@NotNull CouchHolder couchHolder) {
            List<Result> list;
            Intrinsics.checkNotNullParameter(couchHolder, "<this>");
            From from = QueryBuilder.select(SelectResult.expression(Meta.f16269id)).from(DataSource.collection(couchHolder.ensureCollectionRequireNonNull()));
            Intrinsics.checkNotNullExpressionValue(from, "from(...)");
            try {
                list = from.execute().allResults();
            } catch (CouchbaseLiteException e) {
                e.printStackTrace();
                list = null;
            }
            List<Result> list2 = list;
            if (list2 == null || list2.isEmpty()) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<Result> it2 = list.iterator();
            while (it2.hasNext()) {
                String string = it2.next().getString("id");
                if (string != null) {
                    CollectionKt.safeAdd(arrayList, getDocument(couchHolder, string));
                }
            }
            deleteList(couchHolder, arrayList);
            return true;
        }

        @NotNull
        public final CouchHolder delete(@NotNull CouchHolder couchHolder, @NotNull Document document) throws CouchbaseLiteException {
            Intrinsics.checkNotNullParameter(couchHolder, "<this>");
            Intrinsics.checkNotNullParameter(document, "document");
            CouchHolder.ensureCollection$default(couchHolder, null, 1, null).delete(document);
            return couchHolder;
        }

        @NotNull
        public final CouchHolder deleteList(@NotNull final CouchHolder couchHolder, @NotNull final List<? extends Document> documentList) throws CouchbaseLiteException {
            Intrinsics.checkNotNullParameter(couchHolder, "<this>");
            Intrinsics.checkNotNullParameter(documentList, "documentList");
            if (documentList.isEmpty()) {
                return couchHolder;
            }
            couchHolder.ensureDB().inBatch(new UnitOfWork() { // from class: com.sunia.HTREnginev2.bde
                @Override // com.couchbase.lite.UnitOfWork
                public final void run() {
                    CouchHolder.CouchDataProvider.deleteList$lambda$1(documentList, couchHolder);
                }
            });
            return couchHolder;
        }

        @NotNull
        public final CouchHolder deleteListById(@NotNull CouchHolder couchHolder, @NotNull List<String> idList) {
            Intrinsics.checkNotNullParameter(couchHolder, "<this>");
            Intrinsics.checkNotNullParameter(idList, "idList");
            ArrayList arrayList = new ArrayList();
            Iterator<String> it2 = idList.iterator();
            while (it2.hasNext()) {
                CollectionKt.safeAdd(arrayList, getDocument(couchHolder, it2.next()));
            }
            deleteList(couchHolder, arrayList);
            return couchHolder;
        }

        @Nullable
        public final Document getDocument(@NotNull CouchHolder couchHolder, @NotNull String id) {
            Intrinsics.checkNotNullParameter(couchHolder, "<this>");
            Intrinsics.checkNotNullParameter(id, "id");
            try {
                return CouchHolder.ensureCollection$default(couchHolder, null, 1, null).getDocument(id);
            } catch (CouchbaseLiteException e) {
                e.printStackTrace();
                return null;
            }
        }

        @NotNull
        public final CouchHolder save(@NotNull CouchHolder couchHolder, @Nullable MutableDocument mutableDocument) {
            Intrinsics.checkNotNullParameter(couchHolder, "<this>");
            if (mutableDocument == null) {
                return couchHolder;
            }
            CouchHolder.ensureCollection$default(couchHolder, null, 1, null).save(mutableDocument);
            return couchHolder;
        }

        @NotNull
        public final CouchHolder saveList(@NotNull final CouchHolder couchHolder, @NotNull final List<MutableDocument> documentList) throws CouchbaseLiteException {
            Intrinsics.checkNotNullParameter(couchHolder, "<this>");
            Intrinsics.checkNotNullParameter(documentList, "documentList");
            couchHolder.ensureDB().inBatch(new UnitOfWork() { // from class: com.sunia.HTREnginev2.ade
                @Override // com.couchbase.lite.UnitOfWork
                public final void run() {
                    CouchHolder.CouchDataProvider.saveList$lambda$0(documentList, couchHolder);
                }
            });
            return couchHolder;
        }

        public final void delete(@NotNull CouchHolder couchHolder) throws CouchbaseLiteException {
            Intrinsics.checkNotNullParameter(couchHolder, "<this>");
            couchHolder.ensureDB().delete();
            couchHolder.close();
        }
    }

    public final boolean isSyncOffline() {
        Replicator replicator = this.replicator;
        if (replicator == null) {
            return false;
        }
        Intrinsics.checkNotNull(replicator);
        ReplicatorStatus status = replicator.getStatus();
        Intrinsics.checkNotNullExpressionValue(status, "getStatus(...)");
        return isSyncOffline(status);
    }

    @NotNull
    public final CouchHolder setEnableLog(boolean enableLog) {
        this.isEnableLog = enableLog;
        return this;
    }

    private final boolean isSyncIdle(ReplicatorStatus status) {
        return status.getActivityLevel() == ReplicatorActivityLevel.IDLE;
    }

    private final boolean isSyncStop(ReplicatorStatus status) {
        return status.getActivityLevel() == ReplicatorActivityLevel.STOPPED;
    }

    public final boolean isSyncError() {
        Replicator replicator = this.replicator;
        if (replicator == null) {
            return false;
        }
        Intrinsics.checkNotNull(replicator);
        ReplicatorStatus status = replicator.getStatus();
        Intrinsics.checkNotNullExpressionValue(status, "getStatus(...)");
        return isSyncError(status);
    }

    public final boolean isSyncFinished() {
        if (this.replicator == null) {
            return true;
        }
        Replicator replicator = getReplicator();
        Intrinsics.checkNotNull(replicator);
        ReplicatorStatus status = replicator.getStatus();
        Intrinsics.checkNotNullExpressionValue(status, "getStatus(...)");
        return isSyncFinished(status);
    }

    @NotNull
    public final CouchHolder removeChangeListener(@Nullable ListenerToken listenerToken) {
        if (this.replicator != null && listenerToken != null) {
            listenerToken.remove();
        }
        this.listenerTokenList.remove(listenerToken);
        return this;
    }
}
