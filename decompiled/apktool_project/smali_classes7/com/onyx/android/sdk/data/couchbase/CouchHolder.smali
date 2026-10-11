.class public final Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/couchbase/CouchHolder$Companion;,
        Lcom/onyx/android/sdk/data/couchbase/CouchHolder$CouchDataProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCouchHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CouchHolder.kt\ncom/onyx/android/sdk/data/couchbase/CouchHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,641:1\n1#2:642\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ce\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\"\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0017\u0018\u0000 }2\u00020\u0001:\u0002}~B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010,\u001a\u0004\u0018\u00010\u00192\u0006\u0010-\u001a\u00020.J\u0010\u0010/\u001a\u0004\u0018\u00010\u00192\u0006\u0010-\u001a\u000200J\u0012\u00101\u001a\u0004\u0018\u00010 2\u0006\u0010(\u001a\u00020)H\u0002J\u0006\u00102\u001a\u000203J\u0008\u00104\u001a\u000203H\u0002J\u0010\u00105\u001a\u0002062\u0008\u0008\u0002\u00107\u001a\u00020\u0003J\u0006\u00108\u001a\u000206J\u0006\u00109\u001a\u00020\u0010J\u0012\u0010:\u001a\u0004\u0018\u00010;2\u0006\u0010(\u001a\u00020)H\u0002J\u0008\u0010<\u001a\u00020=H\u0002J\u0006\u0010>\u001a\u00020+J\u0006\u0010?\u001a\u00020\u0003J\u0006\u0010@\u001a\u00020\u0003J\u0008\u0010A\u001a\u00020=H\u0007J\n\u0010B\u001a\u0004\u0018\u00010 H\u0002J\u0006\u0010C\u001a\u00020=J\u000e\u0010D\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030&J\u0006\u0010E\u001a\u00020\u0003J\u0006\u0010F\u001a\u00020\u0013J\u0006\u0010G\u001a\u00020\u0013J\u0006\u0010H\u001a\u00020\u0013J\u0006\u0010I\u001a\u00020\u0013J\u0010\u0010J\u001a\u00020\u00132\u0008\u0010K\u001a\u0004\u0018\u00010\u0003J\u0006\u0010L\u001a\u00020\u0013J\u000e\u0010M\u001a\u00020\u00132\u0006\u0010N\u001a\u00020\u000eJ\u0008\u0010O\u001a\u00020\u0013H\u0002J\u0006\u0010P\u001a\u00020\u0013J\u000e\u0010P\u001a\u00020\u00132\u0006\u0010N\u001a\u00020\u000eJ\u0006\u0010Q\u001a\u00020\u0013J\u000e\u0010Q\u001a\u00020\u00132\u0006\u0010N\u001a\u00020\u000eJ\u0006\u0010R\u001a\u00020\u0013J\u0010\u0010R\u001a\u00020\u00132\u0006\u0010N\u001a\u00020\u000eH\u0002J\u0006\u0010S\u001a\u00020\u0013J\u000e\u0010S\u001a\u00020\u00132\u0006\u0010N\u001a\u00020\u000eJ\u0010\u0010T\u001a\u00020\u00132\u0006\u0010U\u001a\u00020VH\u0002J\u0006\u0010W\u001a\u00020\u0013J\u0010\u0010W\u001a\u00020\u00132\u0006\u0010N\u001a\u00020\u000eH\u0002J\u0014\u0010X\u001a\u00020\u00132\n\u0010Y\u001a\u00060Zj\u0002`[H\u0002J\u0018\u0010\\\u001a\u00020\u00002\u0006\u0010]\u001a\u00020\u00032\u0006\u00107\u001a\u00020\u0003H\u0002J\u0018\u0010^\u001a\u00020\u00002\u0006\u0010]\u001a\u00020\u00032\u0006\u00107\u001a\u00020\u0003H\u0002J\u000e\u0010_\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010`J\u000e\u0010a\u001a\u0002032\u0006\u0010U\u001a\u00020VJ\u000e\u0010b\u001a\u0002032\u0006\u0010c\u001a\u00020dJ\u0006\u0010e\u001a\u000203J\u0010\u0010e\u001a\u00020\u00002\u0008\u0010f\u001a\u0004\u0018\u00010\u0019J\u0008\u0010g\u001a\u0004\u0018\u00010hJ\u0010\u0010i\u001a\u0002032\u0006\u0010N\u001a\u00020=H\u0002J\u0010\u0010j\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u000e\u0010k\u001a\u00020\u00002\u0006\u0010l\u001a\u00020\u0013J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010m\u001a\u00020\u0013J\u0010\u0010n\u001a\u00020\u00002\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cJ\u0010\u0010o\u001a\u00020\u00002\u0008\u0010p\u001a\u0004\u0018\u00010\u001cJ\u000e\u0010q\u001a\u00020\u00002\u0006\u0010r\u001a\u00020\u0013J\u000e\u0010s\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\"J\u0016\u0010t\u001a\u00020\u00002\u000e\u0010u\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030&J\u000e\u0010v\u001a\u00020\u00002\u0006\u0010w\u001a\u00020\u0013J\u0010\u0010x\u001a\u00020\u00002\u0008\u0010(\u001a\u0004\u0018\u00010)J\u0010\u0010y\u001a\u00020\u00132\u0008\u0010z\u001a\u0004\u0018\u00010$J\u0006\u0010{\u001a\u00020\u0000J\u0008\u0010|\u001a\u000203H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u007f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;",
        "",
        "dbDirPath",
        "",
        "userId",
        "docId",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "cbStatus",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "conflictResolver",
        "Lcom/couchbase/lite/ConflictResolver;",
        "continuous",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "curStatus",
        "Lcom/couchbase/lite/ReplicatorStatus;",
        "database",
        "Lcom/couchbase/lite/Database;",
        "dbName",
        "isEnableLog",
        "",
        "()Z",
        "setEnableLog",
        "(Z)V",
        "listenerTokenList",
        "",
        "Lcom/couchbase/lite/ListenerToken;",
        "openCloseReferenceCount",
        "pullFilter",
        "Lcom/couchbase/lite/ReplicationFilter;",
        "pushFilter",
        "recreateIfWrongFormat",
        "replicator",
        "Lcom/couchbase/lite/Replicator;",
        "replicatorType",
        "Lcom/couchbase/lite/ReplicatorType;",
        "startReplicatorBean",
        "Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;",
        "syncChannels",
        "",
        "syncEnabled",
        "syncGateway",
        "Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;",
        "syncTimeAt",
        "",
        "addChangeListener",
        "listener",
        "Lcom/couchbase/lite/ReplicatorChangeListener;",
        "addDocumentReplicationListener",
        "Lcom/couchbase/lite/DocumentReplicationListener;",
        "buildReplicator",
        "close",
        "",
        "closeDB",
        "ensureCollection",
        "Lcom/couchbase/lite/Collection;",
        "name",
        "ensureCollectionRequireNonNull",
        "ensureDB",
        "getAuthenticator",
        "Lcom/couchbase/lite/Authenticator;",
        "getCbStatus",
        "",
        "getCount",
        "getDbName",
        "getDbPath",
        "getOpenCloseReferenceCount",
        "getReplicator",
        "getReplicatorStatus",
        "getSyncChannels",
        "getUserId",
        "hasReplicationListener",
        "hasReplicator",
        "isClosed",
        "isContinuous",
        "isEnabledSyncDocId",
        "documentId",
        "isReplicatorStart",
        "isSyncComplete",
        "status",
        "isSyncEnabled",
        "isSyncError",
        "isSyncFinished",
        "isSyncIdle",
        "isSyncOffline",
        "isSyncStart",
        "change",
        "Lcom/couchbase/lite/ReplicatorChange;",
        "isSyncStop",
        "needRecreateDB",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "open",
        "dirPath",
        "openImpl",
        "pendingDocumentIds",
        "",
        "printChangeLog",
        "printDocumentReplicationLog",
        "replication",
        "Lcom/couchbase/lite/DocumentReplication;",
        "removeChangeListener",
        "listenerToken",
        "replicatorError",
        "Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;",
        "setCbStatus",
        "setConflictResolver",
        "setContinuous",
        "c",
        "enableLog",
        "setPullFilter",
        "setPushFilter",
        "filter",
        "setRecreateIfWrongFormat",
        "recreate",
        "setReplicatorType",
        "setSyncChannels",
        "channels",
        "setSyncEnabled",
        "enabled",
        "setSyncGateway",
        "startReplicator",
        "replicatorBean",
        "stopReplicator",
        "waitReplicatorStopped",
        "Companion",
        "CouchDataProvider",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCouchHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CouchHolder.kt\ncom/onyx/android/sdk/data/couchbase/CouchHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,641:1\n1#2:642\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/data/couchbase/CouchHolder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final classLock:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final cbStatus:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private conflictResolver:Lcom/couchbase/lite/ConflictResolver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final continuous:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private curStatus:Lcom/couchbase/lite/ReplicatorStatus;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile database:Lcom/couchbase/lite/Database;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final dbDirPath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dbName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isEnableLog:Z

.field private final listenerTokenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/couchbase/lite/ListenerToken;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final openCloseReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pullFilter:Lcom/couchbase/lite/ReplicationFilter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pushFilter:Lcom/couchbase/lite/ReplicationFilter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private recreateIfWrongFormat:Z

.field private replicator:Lcom/couchbase/lite/Replicator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private replicatorType:Lcom/couchbase/lite/ReplicatorType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private startReplicatorBean:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private syncChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final syncEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private syncGateway:Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private syncTimeAt:J

.field private final userId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->Companion:Lcom/onyx/android/sdk/data/couchbase/CouchHolder$Companion;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->classLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dbDirPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "docId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->dbDirPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->userId:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->cbStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->syncEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->continuous:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7f

    const/4 v10, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;-><init>(IZZZLjava/util/List;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->startReplicatorBean:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->listenerTokenList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->syncChannels:Ljava/util/List;

    sget-object p1, Lcom/couchbase/lite/ReplicatorType;->PUSH_AND_PULL:Lcom/couchbase/lite/ReplicatorType;

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicatorType:Lcom/couchbase/lite/ReplicatorType;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->openCloseReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {p1, p2, p3}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->dbFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->dbName:Ljava/lang/String;

    return-void
.end method

.method private final buildReplicator(Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;)Lcom/couchbase/lite/Replicator;
    .locals 21

    move-object/from16 v1, p0

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v2

    :goto_0
    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "null sync uri"

    invoke-virtual {v0, v1, v4, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_0
    new-instance v6, Lcom/couchbase/lite/URLEndpoint;

    invoke-direct {v6, v0}, Lcom/couchbase/lite/URLEndpoint;-><init>(Ljava/net/URI;)V

    new-instance v0, Lcom/couchbase/lite/CollectionConfiguration;

    invoke-direct {v0}, Lcom/couchbase/lite/CollectionConfiguration;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureCollection$default(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/lang/String;ILjava/lang/Object;)Lcom/couchbase/lite/Collection;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getSyncChannels()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/couchbase/lite/CollectionConfiguration;->setChannels(Ljava/util/List;)Lcom/couchbase/lite/CollectionConfiguration;

    iget-object v2, v1, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->pushFilter:Lcom/couchbase/lite/ReplicationFilter;

    invoke-virtual {v0, v2}, Lcom/couchbase/lite/CollectionConfiguration;->setPushFilter(Lcom/couchbase/lite/ReplicationFilter;)Lcom/couchbase/lite/CollectionConfiguration;

    iget-object v2, v1, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->pullFilter:Lcom/couchbase/lite/ReplicationFilter;

    invoke-virtual {v0, v2}, Lcom/couchbase/lite/CollectionConfiguration;->setPullFilter(Lcom/couchbase/lite/ReplicationFilter;)Lcom/couchbase/lite/CollectionConfiguration;

    iget-object v2, v1, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->conflictResolver:Lcom/couchbase/lite/ConflictResolver;

    invoke-virtual {v0, v2}, Lcom/couchbase/lite/CollectionConfiguration;->setConflictResolver(Lcom/couchbase/lite/ConflictResolver;)Lcom/couchbase/lite/CollectionConfiguration;

    invoke-static {}, Lcom/couchbase/lite/ConfigurationFactoriesKt;->getReplicatorConfigurationFactory()Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isContinuous()Z

    move-result v0

    iget-object v8, v1, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicatorType:Lcom/couchbase/lite/ReplicatorType;

    invoke-direct/range {p0 .. p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getAuthenticator(Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;)Lcom/couchbase/lite/Authenticator;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1fe0

    const/16 v20, 0x0

    invoke-static/range {v5 .. v20}, Lcom/couchbase/lite/ConfigurationFactoriesKt;->newConfig$default(Lcom/couchbase/lite/ReplicatorConfiguration;Lcom/couchbase/lite/Endpoint;Ljava/util/Map;Lcom/couchbase/lite/ReplicatorType;Ljava/lang/Boolean;Lcom/couchbase/lite/Authenticator;Ljava/util/Map;Ljava/security/cert/X509Certificate;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/couchbase/lite/ReplicatorConfiguration;

    move-result-object v0

    new-instance v1, Lcom/couchbase/lite/Replicator;

    invoke-direct {v1, v0}, Lcom/couchbase/lite/Replicator;-><init>(Lcom/couchbase/lite/ReplicatorConfiguration;)V

    return-object v1
.end method

.method private final closeDB()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->database:Lcom/couchbase/lite/Database;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close couch db: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->dbDirPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->database:Lcom/couchbase/lite/Database;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/couchbase/lite/Database;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",reference count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->openCloseReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->database:Lcom/couchbase/lite/Database;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/couchbase/lite/Database;->close()V

    :cond_2
    iput-object v4, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->database:Lcom/couchbase/lite/Database;

    return-void
.end method

.method public static synthetic ensureCollection$default(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/lang/String;ILjava/lang/Object;)Lcom/couchbase/lite/Collection;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "_default"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    return-object p0
.end method

.method private final getAuthenticator(Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;)Lcom/couchbase/lite/Authenticator;
    .locals 2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->getAuthType()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/BasicAuthenticator;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->getPassword()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const-string v1, "this as java.lang.String).toCharArray()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/couchbase/lite/BasicAuthenticator;-><init>(Ljava/lang/String;[C)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/couchbase/lite/SessionAuthenticator;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->getSessionID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->getCookieName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/couchbase/lite/SessionAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getCbStatus()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->cbStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method private final getReplicator()Lcom/couchbase/lite/Replicator;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicator:Lcom/couchbase/lite/Replicator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->syncGateway:Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->buildReplicator(Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;)Lcom/couchbase/lite/Replicator;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicator:Lcom/couchbase/lite/Replicator;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicator:Lcom/couchbase/lite/Replicator;

    return-object p0
.end method

.method private final isSyncEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->syncEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method private final isSyncIdle(Lcom/couchbase/lite/ReplicatorStatus;)Z
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorStatus;->getActivityLevel()Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object p0

    sget-object p1, Lcom/couchbase/lite/ReplicatorActivityLevel;->IDLE:Lcom/couchbase/lite/ReplicatorActivityLevel;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isSyncStart(Lcom/couchbase/lite/ReplicatorChange;)Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->curStatus:Lcom/couchbase/lite/ReplicatorStatus;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/couchbase/lite/ReplicatorStatus;->getActivityLevel()Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object v0

    sget-object v1, Lcom/couchbase/lite/ReplicatorActivityLevel;->IDLE:Lcom/couchbase/lite/ReplicatorActivityLevel;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->curStatus:Lcom/couchbase/lite/ReplicatorStatus;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/couchbase/lite/ReplicatorStatus;->getActivityLevel()Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object p0

    sget-object v0, Lcom/couchbase/lite/ReplicatorActivityLevel;->CONNECTING:Lcom/couchbase/lite/ReplicatorActivityLevel;

    if-ne p0, v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/replicator/ReplicationStatusChange;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/ReplicatorStatus;->getActivityLevel()Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object p0

    sget-object p1, Lcom/couchbase/lite/ReplicatorActivityLevel;->BUSY:Lcom/couchbase/lite/ReplicatorActivityLevel;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isSyncStop(Lcom/couchbase/lite/ReplicatorStatus;)Z
    .locals 0

    .line 3
    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorStatus;->getActivityLevel()Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object p0

    sget-object p1, Lcom/couchbase/lite/ReplicatorActivityLevel;->STOPPED:Lcom/couchbase/lite/ReplicatorActivityLevel;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final needRecreateDB(Ljava/lang/Exception;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->recreateIfWrongFormat:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->getCBExceptionCode(Ljava/lang/Exception;)I

    move-result p0

    const/16 p1, 0x15

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final open(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->classLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->database:Lcom/couchbase/lite/Database;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->openImpl(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->needRecreateDB(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LogFileUtils;

    const-class v3, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    const-string v4, "occur wrong format exception, try to recreate"

    invoke-virtual {v2, v3, v4, v1}, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getDbPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->openImpl(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private final openImpl(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 11

    const-string v0, ",reference count: "

    const-class v7, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    new-instance v8, Lcom/couchbase/lite/DatabaseConfiguration;

    invoke-direct {v8}, Lcom/couchbase/lite/DatabaseConfiguration;-><init>()V

    const/16 v9, 0x20

    :try_start_0
    iget-object v1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->openCloseReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open couch db : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v2, v7, v3, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v4, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open couch db maybe abnormal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LogFileUtils;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v2, v7

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->e$default(Lcom/onyx/android/sdk/base/utils/LogFileUtils;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v8, p1}, Lcom/couchbase/lite/DatabaseConfiguration;->setDirectory(Ljava/lang/String;)Lcom/couchbase/lite/DatabaseConfiguration;

    new-instance v0, Lcom/couchbase/lite/Database;

    invoke-direct {v0, p2, v8}, Lcom/couchbase/lite/Database;-><init>(Ljava/lang/String;Lcom/couchbase/lite/DatabaseConfiguration;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->database:Lcom/couchbase/lite/Database;

    invoke-direct {p0, v10}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->setCbStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getDbPath()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LogFileUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open couch db error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v7, p0, v0}, Lcom/onyx/android/sdk/base/utils/LogFileUtils;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final setCbStatus(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->cbStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private final waitReplicatorStopped()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicator:Lcom/couchbase/lite/Replicator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x7530

    move v1, v0

    :cond_1
    iget-object v2, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicator:Lcom/couchbase/lite/Replicator;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/couchbase/lite/AbstractReplicator;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object v2

    const-string v3, "getStatus(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isSyncFinished(Lcom/couchbase/lite/ReplicatorStatus;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ThreadUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ThreadUtils;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ThreadUtils;->mySleep(I)V

    add-int/lit16 v1, v1, -0x12c

    if-gtz v1, :cond_1

    :cond_2
    iget-object v2, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicator:Lcom/couchbase/lite/Replicator;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/couchbase/lite/AbstractReplicator;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicator:Lcom/couchbase/lite/Replicator;

    sub-int/2addr v0, v1

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_3

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wait replicator stop timeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", dbName: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->dbName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, p0, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final addChangeListener(Lcom/couchbase/lite/ReplicatorChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 1
    .param p1    # Lcom/couchbase/lite/ReplicatorChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->syncGateway:Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getReplicator()Lcom/couchbase/lite/Replicator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/couchbase/lite/AbstractReplicator;->addChangeListener(Lcom/couchbase/lite/ReplicatorChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p1

    const-string v0, "addChangeListener(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->listenerTokenList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final addDocumentReplicationListener(Lcom/couchbase/lite/DocumentReplicationListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 1
    .param p1    # Lcom/couchbase/lite/DocumentReplicationListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->syncGateway:Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getReplicator()Lcom/couchbase/lite/Replicator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/couchbase/lite/AbstractReplicator;->addDocumentReplicationListener(Lcom/couchbase/lite/DocumentReplicationListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p1

    const-string v0, "addDocumentReplicationListener(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->listenerTokenList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final close()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->openCloseReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    const-class v1, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    if-gez v0, :cond_1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close couch db: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->dbDirPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->database:Lcom/couchbase/lite/Database;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/couchbase/lite/Database;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reference count exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->database:Lcom/couchbase/lite/Database;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isEnableLog:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getDbName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->closeDB()V

    return-void
.end method

.method public final ensureCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureDB()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Database;->createCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    const-string p1, "createCollection(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final ensureCollectionRequireNonNull()Lcom/couchbase/lite/Collection;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureCollection$default(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/lang/String;ILjava/lang/Object;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "requireNonNull(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final ensureDB()Lcom/couchbase/lite/Database;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->database:Lcom/couchbase/lite/Database;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->dbDirPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->dbName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->open(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->database:Lcom/couchbase/lite/Database;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getCount()J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureCollection$default(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/lang/String;ILjava/lang/Object;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDbName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->dbName:Ljava/lang/String;

    return-object p0
.end method

.method public final getDbPath()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->dbDirPath:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->dbName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".cblite2"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const-string v0, "get(base, *subpaths)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOpenCloseReferenceCount()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->openCloseReferenceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public final getReplicatorStatus()I
    .locals 3

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicator:Lcom/couchbase/lite/Replicator;

    if-nez v0, :cond_0

    const/16 p0, 0x9

    return p0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/couchbase/lite/AbstractReplicator;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object v0

    const-string v1, "getStatus(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/couchbase/lite/ReplicatorStatus;->getError()Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/couchbase/lite/ReplicatorStatus;->getActivityLevel()Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object v1

    sget-object v2, Lcom/couchbase/lite/ReplicatorActivityLevel;->OFFLINE:Lcom/couchbase/lite/ReplicatorActivityLevel;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isSyncFinished(Lcom/couchbase/lite/ReplicatorStatus;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x3

    return p0
.end method

.method public final getSyncChannels()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->syncChannels:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->syncChannels:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getDbName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isEnableLog:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channels: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public final hasReplicationListener()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->listenerTokenList:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final hasReplicator()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicator:Lcom/couchbase/lite/Replicator;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isClosed()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->database:Lcom/couchbase/lite/Database;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isContinuous()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->continuous:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final isEnableLog()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isEnableLog:Z

    return p0
.end method

.method public final isEnabledSyncDocId(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->startReplicatorBean:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getSyncAll()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->startReplicatorBean:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getSyncDocIdList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->startReplicatorBean:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getLibraryDocIdList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final isReplicatorStart()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicator:Lcom/couchbase/lite/Replicator;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicator;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/ReplicatorStatus;->getActivityLevel()Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object p0

    sget-object v0, Lcom/couchbase/lite/ReplicatorActivityLevel;->STOPPED:Lcom/couchbase/lite/ReplicatorActivityLevel;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSyncComplete(Lcom/couchbase/lite/ReplicatorStatus;)Z
    .locals 2
    .param p1    # Lcom/couchbase/lite/ReplicatorStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "status"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorStatus;->getActivityLevel()Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object p0

    sget-object v0, Lcom/couchbase/lite/ReplicatorActivityLevel;->STOPPED:Lcom/couchbase/lite/ReplicatorActivityLevel;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorStatus;->getProgress()Lcom/couchbase/lite/ReplicatorProgress;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/ReplicatorProgress;->getTotal()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorStatus;->getProgress()Lcom/couchbase/lite/ReplicatorProgress;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/ReplicatorProgress;->getCompleted()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSyncError()Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicator:Lcom/couchbase/lite/Replicator;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/couchbase/lite/AbstractReplicator;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object v0

    const-string v1, "getStatus(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isSyncError(Lcom/couchbase/lite/ReplicatorStatus;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isSyncError(Lcom/couchbase/lite/ReplicatorStatus;)Z
    .locals 1
    .param p1    # Lcom/couchbase/lite/ReplicatorStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "status"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorStatus;->getActivityLevel()Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object p0

    sget-object v0, Lcom/couchbase/lite/ReplicatorActivityLevel;->STOPPED:Lcom/couchbase/lite/ReplicatorActivityLevel;

    if-ne p0, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorStatus;->getError()Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSyncFinished()Z
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicator:Lcom/couchbase/lite/Replicator;

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getReplicator()Lcom/couchbase/lite/Replicator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/couchbase/lite/AbstractReplicator;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object v0

    const-string v1, "getStatus(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isSyncFinished(Lcom/couchbase/lite/ReplicatorStatus;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isSyncFinished(Lcom/couchbase/lite/ReplicatorStatus;)Z
    .locals 1
    .param p1    # Lcom/couchbase/lite/ReplicatorStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isContinuous()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isSyncIdle(Lcom/couchbase/lite/ReplicatorStatus;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isSyncStop(Lcom/couchbase/lite/ReplicatorStatus;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isSyncError(Lcom/couchbase/lite/ReplicatorStatus;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isSyncOffline(Lcom/couchbase/lite/ReplicatorStatus;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isSyncComplete(Lcom/couchbase/lite/ReplicatorStatus;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public final isSyncIdle()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicator:Lcom/couchbase/lite/Replicator;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/couchbase/lite/AbstractReplicator;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object v0

    const-string v1, "getStatus(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isSyncIdle(Lcom/couchbase/lite/ReplicatorStatus;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isSyncOffline()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicator:Lcom/couchbase/lite/Replicator;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/couchbase/lite/AbstractReplicator;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object v0

    const-string v1, "getStatus(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isSyncOffline(Lcom/couchbase/lite/ReplicatorStatus;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final isSyncOffline(Lcom/couchbase/lite/ReplicatorStatus;)Z
    .locals 0
    .param p1    # Lcom/couchbase/lite/ReplicatorStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "status"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorStatus;->getActivityLevel()Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object p0

    sget-object p1, Lcom/couchbase/lite/ReplicatorActivityLevel;->OFFLINE:Lcom/couchbase/lite/ReplicatorActivityLevel;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSyncStop()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicator:Lcom/couchbase/lite/Replicator;

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/couchbase/lite/AbstractReplicator;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object v0

    const-string v1, "getStatus(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isSyncStop(Lcom/couchbase/lite/ReplicatorStatus;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final pendingDocumentIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicator:Lcom/couchbase/lite/Replicator;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureCollectionRequireNonNull()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/couchbase/lite/AbstractReplicator;->getPendingDocumentIds(Lcom/couchbase/lite/Collection;)Ljava/util/Set;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final printChangeLog(Lcom/couchbase/lite/ReplicatorChange;)V
    .locals 7
    .param p1    # Lcom/couchbase/lite/ReplicatorChange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "change"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/replicator/ReplicationStatusChange;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/couchbase/lite/ReplicatorStatus;->getError()Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object v0

    const/4 v1, 0x0

    const-class v2, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getDbName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " sync status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/replicator/ReplicationStatusChange;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/replicator/ReplicationStatusChange;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/couchbase/lite/ReplicatorStatus;->getActivityLevel()Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object v0

    sget-object v3, Lcom/couchbase/lite/ReplicatorActivityLevel;->CONNECTING:Lcom/couchbase/lite/ReplicatorActivityLevel;

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getDbName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is connecting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-boolean v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isEnableLog:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isSyncStart(Lcom/couchbase/lite/ReplicatorChange;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->syncTimeAt:J

    :cond_3
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/replicator/ReplicationStatusChange;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->curStatus:Lcom/couchbase/lite/ReplicatorStatus;

    iget-wide v3, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->syncTimeAt:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatorStatus;->getActivityLevel()Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object p1

    sget-object v0, Lcom/couchbase/lite/ReplicatorActivityLevel;->IDLE:Lcom/couchbase/lite/ReplicatorActivityLevel;

    if-ne p1, v0, :cond_4

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getDbName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sync time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->syncTimeAt:J

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms, dbName: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->dbName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, p0, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final printDocumentReplicationLog(Lcom/couchbase/lite/DocumentReplication;)V
    .locals 7
    .param p1    # Lcom/couchbase/lite/DocumentReplication;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "replication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/couchbase/lite/DocumentReplication;->getDocuments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-class v3, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/ReplicatedDocument;

    invoke-virtual {v1}, Lcom/couchbase/lite/ReplicatedDocument;->getError()Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getDbName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " sync data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/couchbase/lite/ReplicatedDocument;->getError()Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v1, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->dbName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/couchbase/lite/DocumentReplication;->isPush()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, " push"

    goto :goto_1

    :cond_2
    const-string v4, " pull"

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " sync data count:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/couchbase/lite/DocumentReplication;->getDocuments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", dbName: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->dbName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, p0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final removeChangeListener(Lcom/couchbase/lite/ListenerToken;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 1
    .param p1    # Lcom/couchbase/lite/ListenerToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicator:Lcom/couchbase/lite/Replicator;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/couchbase/lite/ListenerToken;->remove()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->listenerTokenList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final removeChangeListener()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->listenerTokenList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/ListenerToken;

    .line 2
    iget-object v2, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicator:Lcom/couchbase/lite/Replicator;

    if-eqz v2, :cond_0

    .line 3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/couchbase/lite/ListenerToken;->remove()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->listenerTokenList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final replicatorError()Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicator:Lcom/couchbase/lite/Replicator;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicator;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/ReplicatorStatus;->getError()Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;-><init>()V

    invoke-virtual {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->getCode()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;->setCode(I)Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;->setMessage(Ljava/lang/String;)Lcom/onyx/android/sdk/data/couchbase/bean/ReplicatorError;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final setConflictResolver(Lcom/couchbase/lite/ConflictResolver;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 0
    .param p1    # Lcom/couchbase/lite/ConflictResolver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->conflictResolver:Lcom/couchbase/lite/ConflictResolver;

    return-object p0
.end method

.method public final setContinuous(Z)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->continuous:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object p0
.end method

.method public final setEnableLog(Z)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isEnableLog:Z

    return-object p0
.end method

.method public final setEnableLog(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isEnableLog:Z

    return-void
.end method

.method public final setPullFilter(Lcom/couchbase/lite/ReplicationFilter;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 0
    .param p1    # Lcom/couchbase/lite/ReplicationFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->pullFilter:Lcom/couchbase/lite/ReplicationFilter;

    return-object p0
.end method

.method public final setPushFilter(Lcom/couchbase/lite/ReplicationFilter;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 0
    .param p1    # Lcom/couchbase/lite/ReplicationFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->pushFilter:Lcom/couchbase/lite/ReplicationFilter;

    return-object p0
.end method

.method public final setRecreateIfWrongFormat(Z)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->recreateIfWrongFormat:Z

    return-object p0
.end method

.method public final setReplicatorType(Lcom/couchbase/lite/ReplicatorType;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 1
    .param p1    # Lcom/couchbase/lite/ReplicatorType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "replicatorType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicatorType:Lcom/couchbase/lite/ReplicatorType;

    return-object p0
.end method

.method public final setSyncChannels(Ljava/util/List;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "channels"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->syncChannels:Ljava/util/List;

    return-object p0
.end method

.method public final setSyncEnabled(Z)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->syncEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object p0
.end method

.method public final setSyncGateway(Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;)Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->syncGateway:Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    return-object p0
.end method

.method public final startReplicator(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;)Z
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isSyncFinished()Z

    move-result v0

    const-class v1, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->startReplicatorBean:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getSyncAll()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string p1, "is syncing all data"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->startReplicatorBean:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBeanKt;->copyFrom(Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->syncGateway:Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    if-nez p1, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start error for null syncGateway: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getDbName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p0, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->userId:Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->userId:Ljava/lang/String;

    const-string v0, "share_user"

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->syncGateway:Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/SyncGateway;->getUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->userId:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start error for userId not equal: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->userId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p0, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_4
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isSyncEnabled()Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start error for disable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getDbName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p0, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isContinuous()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->startReplicatorBean:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getForce()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isReplicatorStart()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start error for has start: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getDbName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_6
    iget-boolean p1, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isEnableLog:Z

    if-eqz p1, :cond_7

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->database:Lcom/couchbase/lite/Database;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/couchbase/lite/Database;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " start sync"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->setCbStatus(I)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->dbName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " replicator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->startReplicatorBean:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getResetCheckpoint()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->i(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getReplicator()Lcom/couchbase/lite/Replicator;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->startReplicatorBean:Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/bean/StartReplicatorBean;->getResetCheckpoint()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/AbstractReplicator;->start(Z)V

    return v0

    :cond_8
    :goto_1
    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start error for userId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->userId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, p0, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public final stopReplicator()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicator:Lcom/couchbase/lite/Replicator;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getCbStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->isEnableLog:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v2, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopSync:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getDbName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicator:Lcom/couchbase/lite/Replicator;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/couchbase/lite/AbstractReplicator;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->removeChangeListener()V

    invoke-direct {p0, v1}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->setCbStatus(I)V

    iget-object v0, p0, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->replicator:Lcom/couchbase/lite/Replicator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/couchbase/lite/AbstractReplicator;->stop()V

    :cond_2
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->waitReplicatorStopped()V

    return-object p0
.end method
