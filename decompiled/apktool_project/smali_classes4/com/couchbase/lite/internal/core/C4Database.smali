.class public abstract Lcom/couchbase/lite/internal/core/C4Database;
.super Lcom/couchbase/lite/internal/core/C4Peer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4Database$UnmanagedC4Database;,
        Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;,
        Lcom/couchbase/lite/internal/core/C4Database$ManagedC4Database;
    }
.end annotation


# static fields
.field public static final DB_EXTENSION:Ljava/lang/String; = ".cblite2"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final DB_FLAGS:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final MAINTENANCE_TYPE_MAP:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/MaintenanceType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final VERSION_VECTORS_ENABLED:Z


# instance fields
.field final dbFile:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final impl:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/couchbase/lite/internal/core/impl/NativeC4Database;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/impl/NativeC4Database;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Database;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/couchbase/lite/MaintenanceType;->COMPACT:Lcom/couchbase/lite/MaintenanceType;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/couchbase/lite/MaintenanceType;->REINDEX:Lcom/couchbase/lite/MaintenanceType;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/couchbase/lite/MaintenanceType;->INTEGRITY_CHECK:Lcom/couchbase/lite/MaintenanceType;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/couchbase/lite/MaintenanceType;->OPTIMIZE:Lcom/couchbase/lite/MaintenanceType;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/couchbase/lite/MaintenanceType;->FULL_OPTIMIZE:Lcom/couchbase/lite/MaintenanceType;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Database;->MAINTENANCE_TYPE_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;Ljava/lang/String;JLcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p3, p4, p5}, Lcom/couchbase/lite/internal/core/C4Peer;-><init>(JLcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;)V

    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p3, p0, Lcom/couchbase/lite/internal/core/C4Database;->dbFile:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/couchbase/lite/internal/core/C4Database;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4Database;->impl:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    return-void
.end method

.method public static synthetic H(Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Database;->lambda$hasScope$5(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Lcom/couchbase/lite/internal/core/C4Database;ZLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Database;->lambda$endTransaction$0(ZLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic M(Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/C4Database;->lambda$setCookie$3(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Long;)V

    return-void
.end method

.method public static copyDb(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[B)V
    .locals 7
    .param p0    # Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    move-object v1, p1

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    sget-char v0, Ljava/io/File;->separatorChar:C

    if-eq p1, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object v2, p2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 5
    invoke-interface/range {v0 .. v6}, Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;->nCopy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[B)V

    return-void
.end method

.method public static copyDb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/couchbase/lite/internal/core/C4Database;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Lcom/couchbase/lite/internal/core/C4Database;->copyDb(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[B)V

    return-void
.end method

.method public static copyDb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/couchbase/lite/internal/core/C4Database;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/couchbase/lite/internal/core/C4Database;->copyDb(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[B)V

    return-void
.end method

.method public static deleteNamedDb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Database;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    invoke-interface {v0, p1, p0}, Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;->nDeleteNamed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e0(Ljava/util/Map;Lcom/couchbase/lite/internal/core/C4Database;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/couchbase/lite/internal/core/C4Database;->lambda$createLocalReplicator$9(Ljava/util/Map;Lcom/couchbase/lite/internal/core/C4Database;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/Integer;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Database;->lambda$performMaintenance$2(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Database;->lambda$getCookies$4(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Ljava/util/Set;Lcom/couchbase/lite/internal/core/C4Socket;Ljava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/C4Database;->lambda$createMessageEndpointReplicator$10(Ljava/util/Set;Lcom/couchbase/lite/internal/core/C4Socket;Ljava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object p0

    return-object p0
.end method

.method public static getDatabase(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;Ljava/lang/String;Ljava/lang/String;II[B)Lcom/couchbase/lite/internal/core/C4Database;
    .locals 8
    .param p0    # Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    move v1, v0

    :catch_0
    :cond_0
    move-object v3, p1

    if-eqz v1, :cond_1

    .line 6
    new-instance p1, Lcom/couchbase/lite/internal/core/C4Database$ManagedC4Database;

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 7
    invoke-interface/range {v2 .. v7}, Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;->nOpen(Ljava/lang/String;Ljava/lang/String;II[B)J

    move-result-wide p3

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/couchbase/lite/internal/core/C4Database$ManagedC4Database;-><init>(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;Ljava/lang/String;J)V

    return-object p1

    .line 8
    :cond_1
    new-instance p0, Lcom/couchbase/lite/LiteCoreException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Parent directory does not exist or is not a directory: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x15

    invoke-direct {p0, v0, p2, p1}, Lcom/couchbase/lite/LiteCoreException;-><init>(IILjava/lang/String;)V

    throw p0
.end method

.method public static getDatabase(Ljava/lang/String;Ljava/lang/String;I)Lcom/couchbase/lite/internal/core/C4Database;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/couchbase/lite/internal/core/C4Database;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/couchbase/lite/internal/core/C4Database;->getDatabase(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;Ljava/lang/String;Ljava/lang/String;II[B)Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object p0

    return-object p0
.end method

.method public static getDatabase(Ljava/lang/String;Ljava/lang/String;ZZI[B)Lcom/couchbase/lite/internal/core/C4Database;
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/16 p2, 0x81

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    if-nez p3, :cond_1

    or-int/lit8 p2, p2, 0x10

    :cond_1
    move v3, p2

    .line 1
    sget-object v0, Lcom/couchbase/lite/internal/core/C4Database;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    move-object v1, p0

    move-object v2, p1

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/couchbase/lite/internal/core/C4Database;->getDatabase(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;Ljava/lang/String;Ljava/lang/String;II[B)Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object p0

    return-object p0
.end method

.method public static getDatabaseFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cblite2"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getDbFile()Ljava/io/File;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Database;->dbFile:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Database;->impl:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/nx;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/nx;-><init>(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrNull(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/couchbase/lite/internal/core/C4Database;->dbFile:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/sunia/HTREnginev2/cyi;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Database;->dbFile:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0
.end method

.method public static getUnmanagedDatabase(J)Lcom/couchbase/lite/internal/core/C4Database;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/core/C4Database$UnmanagedC4Database;

    sget-object v1, Lcom/couchbase/lite/internal/core/C4Database;->NATIVE_IMPL:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    invoke-direct {v0, v1, p0, p1}, Lcom/couchbase/lite/internal/core/C4Database$UnmanagedC4Database;-><init>(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;J)V

    return-object v0
.end method

.method public static synthetic h0(Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4Database;->lambda$deleteCollection$7(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic i0(Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/Set;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Database;->lambda$getCollectionNames$6(Ljava/lang/String;Ljava/lang/Long;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/internal/sockets/MessageFraming;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/internal/SocketFactory;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 0

    invoke-static/range {p0 .. p14}, Lcom/couchbase/lite/internal/core/C4Database;->lambda$createRemoteReplicator$8(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/internal/sockets/MessageFraming;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/internal/SocketFactory;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createLocalReplicator$9(Ljava/util/Map;Lcom/couchbase/lite/internal/core/C4Database;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/couchbase/lite/internal/core/C4Replicator;->createLocalReplicator(Ljava/util/Map;JLcom/couchbase/lite/internal/core/C4Database;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$createMessageEndpointReplicator$10(Ljava/util/Set;Lcom/couchbase/lite/internal/core/C4Socket;Ljava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/couchbase/lite/internal/core/C4Replicator;->createMessageEndpointReplicator(Ljava/util/Set;JLcom/couchbase/lite/internal/core/C4Socket;Ljava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createRemoteReplicator$8(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/internal/sockets/MessageFraming;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/internal/SocketFactory;Ljava/lang/Long;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    invoke-static/range {v0 .. v15}, Lcom/couchbase/lite/internal/core/C4Replicator;->createRemoteReplicator(Ljava/util/Map;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/internal/sockets/MessageFraming;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/internal/SocketFactory;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$deleteCollection$7(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Database;->impl:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;->nDeleteCollection(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$endTransaction$0(ZLjava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Database;->impl:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;->nEndTransaction(JZ)V

    return-void
.end method

.method private synthetic lambda$getCollectionNames$6(Ljava/lang/String;Ljava/lang/Long;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Database;->impl:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;->nGetCollectionNames(JLjava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getCookies$4(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Database;->impl:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;->nGetCookies(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$hasScope$5(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Database;->impl:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;->nHasScope(JLjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$performMaintenance$2(Ljava/lang/Integer;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Database;->impl:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;->nMaintenance(JI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$rekey$1(I[BLjava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Database;->impl:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1, p1, p2}, Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;->nRekey(JI[B)V

    return-void
.end method

.method private synthetic lambda$setCookie$3(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Long;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Database;->impl:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;->nSetCookie(JLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic w(Lcom/couchbase/lite/internal/core/C4Database;I[BLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4Database;->lambda$rekey$1(I[BLjava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public addCollection(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Collection;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Collection;->create(Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Collection;

    move-result-object p0

    return-object p0
.end method

.method public beginTransaction()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Database;->impl:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ay;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/ay;-><init>(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4Peer;->voidWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public close()V
    .locals 0

    invoke-super {p0}, Lcom/couchbase/lite/internal/core/C4Peer;->close()V

    return-void
.end method

.method public closeDb()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Database;->impl:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/yx;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/yx;-><init>(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4Peer;->voidWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Database;->close()V

    return-void
.end method

.method public createJsonQuery(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Query;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/QueryLanguage;->JSON:Lcom/couchbase/lite/internal/QueryLanguage;

    invoke-static {p0, v0, p1}, Lcom/couchbase/lite/internal/core/C4Query;->create(Lcom/couchbase/lite/internal/core/C4Database;Lcom/couchbase/lite/internal/QueryLanguage;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Query;

    move-result-object p0

    return-object p0
.end method

.method public createLocalReplicator(Ljava/util/Map;Lcom/couchbase/lite/internal/core/C4Database;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 10
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/core/C4Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/ReplicatorType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/couchbase/lite/AbstractReplicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/Collection;",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ">;",
            "Lcom/couchbase/lite/internal/core/C4Database;",
            "Lcom/couchbase/lite/ReplicatorType;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;",
            "Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;",
            "Lcom/couchbase/lite/AbstractReplicator;",
            ")",
            "Lcom/couchbase/lite/internal/core/C4Replicator;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v9, Lcom/sunia/HTREnginev2/ix;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/sunia/HTREnginev2/ix;-><init>(Ljava/util/Map;Lcom/couchbase/lite/internal/core/C4Database;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;)V

    move-object v0, p0

    invoke-virtual {p0, v9}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/core/C4Replicator;

    return-object v0
.end method

.method public createMessageEndpointReplicator(Ljava/util/Set;Lcom/couchbase/lite/internal/core/C4Socket;Ljava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/core/C4Socket;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/Collection;",
            ">;",
            "Lcom/couchbase/lite/internal/core/C4Socket;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;",
            ")",
            "Lcom/couchbase/lite/internal/core/C4Replicator;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/lx;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sunia/HTREnginev2/lx;-><init>(Ljava/util/Set;Lcom/couchbase/lite/internal/core/C4Socket;Ljava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4Replicator;

    return-object p0
.end method

.method public createN1qlQuery(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Query;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/QueryLanguage;->N1QL:Lcom/couchbase/lite/internal/QueryLanguage;

    invoke-static {p0, v0, p1}, Lcom/couchbase/lite/internal/core/C4Query;->create(Lcom/couchbase/lite/internal/core/C4Database;Lcom/couchbase/lite/internal/QueryLanguage;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Query;

    move-result-object p0

    return-object p0
.end method

.method public createRemoteReplicator(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/internal/sockets/MessageFraming;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/internal/SocketFactory;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 16
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/couchbase/lite/internal/sockets/MessageFraming;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lcom/couchbase/lite/ReplicatorType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p13    # Lcom/couchbase/lite/AbstractReplicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p14    # Lcom/couchbase/lite/internal/SocketFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/Collection;",
            "Lcom/couchbase/lite/CollectionConfiguration;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/couchbase/lite/internal/sockets/MessageFraming;",
            "Lcom/couchbase/lite/ReplicatorType;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;",
            "Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;",
            "Lcom/couchbase/lite/AbstractReplicator;",
            "Lcom/couchbase/lite/internal/SocketFactory;",
            ")",
            "Lcom/couchbase/lite/internal/core/C4Replicator;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v15, Lcom/sunia/HTREnginev2/kx;

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lcom/sunia/HTREnginev2/kx;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/internal/sockets/MessageFraming;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/internal/SocketFactory;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/core/C4Replicator;

    return-object v0
.end method

.method public deleteCollection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/wx;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/wx;-><init>(Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->voidWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public deleteDb()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Database;->impl:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/zx;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/zx;-><init>(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4Peer;->voidWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Database;->close()V

    return-void
.end method

.method public endTransaction(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/mx;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/mx;-><init>(Lcom/couchbase/lite/internal/core/C4Database;Z)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->voidWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public getBlobStore()Lcom/couchbase/lite/internal/core/C4BlobStore;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/tx;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/tx;-><init>()V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4BlobStore;

    return-object p0
.end method

.method public getCollection(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Collection;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Collection;->get(Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Collection;

    move-result-object p0

    return-object p0
.end method

.method public getCollectionNames(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/jx;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/jx;-><init>(Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public getCookies(Ljava/net/URI;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/net/URI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/xx;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/xx;-><init>(Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrNull(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDbDirectory()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/couchbase/lite/internal/core/C4Database;->getDbFile()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDbFileName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/couchbase/lite/internal/core/C4Database;->getDbFile()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDbName()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Database;->getDbFileName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ".cblite2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public getDbPath()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/couchbase/lite/internal/core/C4Database;->getDbFile()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getDefaultCollection()Lcom/couchbase/lite/internal/core/C4Collection;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-static {p0}, Lcom/couchbase/lite/internal/core/C4Collection;->getDefault(Lcom/couchbase/lite/internal/core/C4Database;)Lcom/couchbase/lite/internal/core/C4Collection;

    move-result-object p0

    return-object p0
.end method

.method public getFLSharedKeys()Lcom/couchbase/lite/internal/fleece/FLSharedKeys;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/fleece/FLSharedKeys;

    iget-object v1, p0, Lcom/couchbase/lite/internal/core/C4Database;->impl:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sunia/HTREnginev2/rx;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/rx;-><init>(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;)V

    invoke-virtual {p0, v2}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLSharedKeys;-><init>(J)V

    return-object v0
.end method

.method public getPublicUUID()[B
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Database;->impl:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ox;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/ox;-><init>(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getScopeNames()Ljava/util/Set;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Database;->impl:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/vx;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/vx;-><init>(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public getSharedFleeceEncoder()Lcom/couchbase/lite/internal/fleece/FLEncoder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Database;->impl:Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sunia/HTREnginev2/ux;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/ux;-><init>(Lcom/couchbase/lite/internal/core/C4Database$NativeImpl;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->getUnmanagedEncoder(J)Lcom/couchbase/lite/internal/fleece/FLEncoder;

    move-result-object p0

    return-object p0
.end method

.method public hasScope(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/sunia/HTREnginev2/cy;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/cy;-><init>(Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public performMaintenance(Lcom/couchbase/lite/MaintenanceType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/core/C4Database;->MAINTENANCE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    new-instance p1, Lcom/sunia/HTREnginev2/sx;

    invoke-direct {p1, p0, v0}, Lcom/sunia/HTREnginev2/sx;-><init>(Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/Integer;)V

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/core/C4Peer;->withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown maintenance type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public rekey(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/px;

    invoke-direct {v0, p0, p1, p2}, Lcom/sunia/HTREnginev2/px;-><init>(Lcom/couchbase/lite/internal/core/C4Database;I[B)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->voidWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public setCookie(Ljava/net/URI;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/net/URI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/qx;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/qx;-><init>(Lcom/couchbase/lite/internal/core/C4Database;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer;->voidWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/couchbase/lite/internal/core/C4Database;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/couchbase/lite/internal/core/C4Peer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
