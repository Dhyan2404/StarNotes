.class abstract Lcom/couchbase/lite/AbstractDatabase;
.super Lcom/couchbase/lite/BaseDatabase;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/listener/Listenable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/AbstractDatabase$ActiveProcess;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/couchbase/lite/BaseDatabase;",
        "Lcom/couchbase/lite/internal/listener/Listenable<",
        "Lcom/couchbase/lite/DatabaseChange;",
        "Lcom/couchbase/lite/DatabaseChangeListener;",
        ">;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# static fields
.field private static final DB_CLOSE_MAX_RETRIES:I = 0x5

.field private static final DB_CLOSE_WAIT_SECS:I = 0x6

.field private static final DOMAIN:Lcom/couchbase/lite/LogDomain;

.field private static final ERROR_RESOLVER_FAILED:Ljava/lang/String; = "Conflict resolution failed for document \'%s\': %s"

.field private static final EXECUTOR_CLOSE_MAX_WAIT_SECS:I = 0x5

.field private static final WARN_WRONG_COLLECTION:Ljava/lang/String; = "Conflict resolution for document \'%s\' produced a new document belonging to collection \'%s\', not the collection into which it would be stored (%s)"

.field private static final WARN_WRONG_ID:Ljava/lang/String; = "Conflict resolution for a document produced a new document with ID \'%s\', which does not match the IDs of the conflicting document (%s)"

.field public static final log:Lcom/couchbase/lite/Log;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final activeProcesses:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "activeProcesses"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/AbstractDatabase$ActiveProcess<",
            "*>;>;"
        }
    .end annotation
.end field

.field private volatile closeLatch:Ljava/util/concurrent/CountDownLatch;

.field protected final config:Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private defaultCollection:Lcom/couchbase/lite/Collection;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "dbLock"
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final postExecutor:Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;

.field private final queryExecutor:Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;

.field private final sharedKeys:Lcom/couchbase/lite/internal/fleece/FLSharedKeys;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    sput-object v0, Lcom/couchbase/lite/AbstractDatabase;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    new-instance v0, Lcom/couchbase/lite/Log;

    invoke-direct {v0}, Lcom/couchbase/lite/Log;-><init>()V

    sput-object v0, Lcom/couchbase/lite/AbstractDatabase;->log:Lcom/couchbase/lite/Log;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;-><init>(Lcom/couchbase/lite/DatabaseConfiguration;)V

    invoke-direct {p0, p1, v0}, Lcom/couchbase/lite/AbstractDatabase;-><init>(Ljava/lang/String;Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/couchbase/lite/DatabaseConfiguration;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/DatabaseConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;

    invoke-direct {v0, p2}, Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;-><init>(Lcom/couchbase/lite/DatabaseConfiguration;)V

    invoke-direct {p0, p1, v0}, Lcom/couchbase/lite/AbstractDatabase;-><init>(Ljava/lang/String;Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/couchbase/lite/BaseDatabase;-><init>()V

    const-string v0, "db name"

    .line 4
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "config"

    .line 5
    invoke-static {p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cannot create database"

    .line 6
    invoke-static {v0}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->requireInit(Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lcom/couchbase/lite/AbstractDatabase;->name:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/couchbase/lite/AbstractDatabase;->config:Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;

    .line 9
    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->getExecutionService()Lcom/couchbase/lite/internal/exec/ExecutionService;

    move-result-object v0

    invoke-interface {v0}, Lcom/couchbase/lite/internal/exec/ExecutionService;->getSerialExecutor()Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/AbstractDatabase;->postExecutor:Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;

    .line 10
    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->getExecutionService()Lcom/couchbase/lite/internal/exec/ExecutionService;

    move-result-object v0

    invoke-interface {v0}, Lcom/couchbase/lite/internal/exec/ExecutionService;->getSerialExecutor()Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/AbstractDatabase;->queryExecutor:Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;

    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/AbstractDatabase;->activeProcesses:Ljava/util/Set;

    .line 12
    invoke-direct {p0, p2, p1}, Lcom/couchbase/lite/AbstractDatabase;->fixHydrogenBug(Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractDatabase;->openC4Db()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/BaseDatabase;->setC4DatabaseLocked(Lcom/couchbase/lite/internal/core/C4Database;)V

    .line 15
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4Database;->getFLSharedKeys()Lcom/couchbase/lite/internal/fleece/FLSharedKeys;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/AbstractDatabase;->sharedKeys:Lcom/couchbase/lite/internal/fleece/FLSharedKeys;

    .line 16
    invoke-static {}, Lcom/couchbase/lite/internal/logging/LogSinksImpl;->warnNoFileLogSink()V

    return-void
.end method

.method public static copy(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 2
    .param p0    # Ljava/io/File;
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    const-string v0, "path"

    .line 1
    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "name"

    .line 2
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1, p3, p4}, Lcom/couchbase/lite/internal/core/C4Database;->copyDb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)V
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p3

    .line 4
    new-instance p4, Lcom/couchbase/lite/CouchbaseLiteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed creating canonical path for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, p0, p3}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 5
    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p4

    .line 6
    :goto_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/core/C4Database;->getDatabaseFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/FileUtils;->eraseFileOrDir(Ljava/io/File;)Z

    .line 7
    throw p4
.end method

.method public static delete(Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    const-string v0, "name"

    .line 1
    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->getDefaultDbDir()Ljava/io/File;

    move-result-object p1

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->exists(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/couchbase/lite/AbstractDatabase;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "Delete database %s in %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/couchbase/lite/internal/core/C4Database;->deleteNamedDb(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 6
    new-instance v0, Lcom/couchbase/lite/CouchbaseLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No canonical path for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p0

    .line 7
    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0

    .line 8
    :cond_1
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string p1, "CouchbaseLite"

    const/4 v0, 0x7

    const-string v1, "Database not found for delete"

    invoke-direct {p0, v1, p1, v0}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0
.end method

.method public static exists(Ljava/lang/String;Ljava/io/File;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->getDefaultDbDir()Ljava/io/File;

    move-result-object p1

    :cond_0
    invoke-static {p1, p0}, Lcom/couchbase/lite/internal/core/C4Database;->getDatabaseFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/couchbase/lite/ConflictResolver;Lcom/couchbase/lite/Conflict;)Lcom/couchbase/lite/Document;
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->lambda$runClientResolver$0(Lcom/couchbase/lite/ConflictResolver;Lcom/couchbase/lite/Conflict;)Lcom/couchbase/lite/Document;

    move-result-object p0

    return-object p0
.end method

.method private fixHydrogenBug(Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->getDefaultDbDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/BaseImmutableDatabaseConfiguration;->getDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    const-string v1, ".couchbase"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2, p0}, Lcom/couchbase/lite/AbstractDatabase;->exists(Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {p2, v0}, Lcom/couchbase/lite/AbstractDatabase;->exists(Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-static {p0, p2}, Lcom/couchbase/lite/internal/core/C4Database;->getDatabaseFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    :try_start_0
    invoke-static {p0, p2, p1}, Lcom/couchbase/lite/Database;->copy(Ljava/io/File;Ljava/lang/String;Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;)V
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    :try_start_1
    invoke-static {v0, p2}, Lcom/couchbase/lite/internal/core/C4Database;->getDatabaseFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/couchbase/lite/internal/utils/FileUtils;->eraseFileOrDir(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    throw p0
.end method

.method private getConflictingRevision(Lcom/couchbase/lite/Collection;Ljava/lang/String;)Lcom/couchbase/lite/Document;
    .locals 1
    .param p1    # Lcom/couchbase/lite/Collection;
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
            Lcom/couchbase/lite/CouchbaseLiteException;,
            Lcom/couchbase/lite/internal/replicator/ConflictResolutionException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/couchbase/lite/Document;->getDocumentWithRevisions(Lcom/couchbase/lite/Collection;Ljava/lang/String;)Lcom/couchbase/lite/Document;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->selectConflictingRevision()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/internal/replicator/ConflictResolutionException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to select conflicting revision for doc \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'. Skipping."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/replicator/ConflictResolutionException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method public static getDbForCollections(Ljava/util/Set;)Lcom/couchbase/lite/Database;
    .locals 1
    .param p0    # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/Collection;",
            ">;)",
            "Lcom/couchbase/lite/Database;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/Collection;

    invoke-virtual {v0}, Lcom/couchbase/lite/Collection;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/couchbase/lite/AbstractDatabase;->verifyCollections(Ljava/util/Set;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDefaultCollectionLocked()Lcom/couchbase/lite/Collection;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/AbstractDatabase;->defaultCollection:Lcom/couchbase/lite/Collection;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    invoke-static {v0}, Lcom/couchbase/lite/Collection;->getDefaultCollection(Lcom/couchbase/lite/Database;)Lcom/couchbase/lite/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/AbstractDatabase;->defaultCollection:Lcom/couchbase/lite/Collection;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/couchbase/lite/Collection;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object p0, p0, Lcom/couchbase/lite/AbstractDatabase;->defaultCollection:Lcom/couchbase/lite/Collection;

    return-object p0

    :cond_1
    new-instance v0, Lcom/couchbase/lite/CouchbaseLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " default collection is invalid"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDefaultCollectionOrThrow()Lcom/couchbase/lite/Collection;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->assertOpenUnchecked()V

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDefaultCollectionLocked()Lcom/couchbase/lite/Collection;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v1, "DBClosedOrCollectionDeleted"

    invoke-static {v1}, Lcom/couchbase/lite/internal/logging/Log;->lookupStandardMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private static synthetic lambda$runClientResolver$0(Lcom/couchbase/lite/ConflictResolver;Lcom/couchbase/lite/Conflict;)Lcom/couchbase/lite/Document;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/couchbase/lite/ConflictResolver;->resolve(Lcom/couchbase/lite/Conflict;)Lcom/couchbase/lite/Document;

    move-result-object p0

    return-object p0
.end method

.method private openC4Db()Lcom/couchbase/lite/internal/core/C4Database;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/AbstractDatabase;->config:Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/BaseImmutableDatabaseConfiguration;->getDirectory()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/couchbase/lite/AbstractDatabase;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v2, "Opening db %s at path %s"

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v2, p0, Lcom/couchbase/lite/AbstractDatabase;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/couchbase/lite/AbstractDatabase;->config:Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/BaseImmutableDatabaseConfiguration;->isFullSync()Z

    move-result v3

    iget-object v0, p0, Lcom/couchbase/lite/AbstractDatabase;->config:Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/BaseImmutableDatabaseConfiguration;->isMMapEnabled()Z

    move-result v4

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->getEncryptionAlgorithm()I

    move-result v5

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->getEncryptionKey()[B

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/couchbase/lite/internal/core/C4Database;->getDatabase(Ljava/lang/String;Ljava/lang/String;ZZI[B)Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object p0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    iget v0, p0, Lcom/couchbase/lite/LiteCoreException;->code:I

    const/16 v1, 0x14

    const-string v2, "CouchbaseLite"

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string v1, "CreateDBDirectoryFailed"

    iget v3, p0, Lcom/couchbase/lite/LiteCoreException;->code:I

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;I)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance v0, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string v1, "The provided encryption key was incorrect."

    iget v3, p0, Lcom/couchbase/lite/LiteCoreException;->code:I

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;I)V

    throw v0
.end method

.method private resolveConflict(Lcom/couchbase/lite/ConflictResolver;Ljava/lang/String;Lcom/couchbase/lite/Document;Lcom/couchbase/lite/Document;)Lcom/couchbase/lite/Document;
    .locals 3
    .param p1    # Lcom/couchbase/lite/ConflictResolver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/AbstractDatabase;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-virtual {p3}, Lcom/couchbase/lite/Document;->getRevisionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/couchbase/lite/Document;->getRevisionID()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p2, v1, v2, p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Resolving doc \'%s\' (local=%s and remote=%s) with resolver %s"

    invoke-static {v0, v2, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/couchbase/lite/Document;->getCollection()Lcom/couchbase/lite/Collection;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/couchbase/lite/AbstractDatabase;->runClientResolver(Lcom/couchbase/lite/ConflictResolver;Ljava/lang/String;Lcom/couchbase/lite/Document;Lcom/couchbase/lite/Document;)Lcom/couchbase/lite/Document;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getCollection()Lcom/couchbase/lite/Collection;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/Document;->setCollection(Lcom/couchbase/lite/Collection;)V

    move-object p1, v1

    :cond_1
    invoke-virtual {v1, p1}, Lcom/couchbase/lite/Collection;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getId()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Conflict resolution for a document produced a new document with ID \'%s\', which does not match the IDs of the conflicting document (%s)"

    invoke-static {v0, p3, p1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/couchbase/lite/MutableDocument;

    invoke-direct {p1, p2, p0}, Lcom/couchbase/lite/MutableDocument;-><init>(Ljava/lang/String;Lcom/couchbase/lite/Document;)V

    return-object p1

    :cond_2
    return-object p0

    :cond_3
    const-string p0, "Conflict resolution for document \'%s\' produced a new document belonging to collection \'%s\', not the collection into which it would be stored (%s)"

    filled-new-array {p2, p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    new-instance p1, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string p2, "CouchbaseLite"

    const/16 p3, 0xa

    invoke-direct {p1, p0, p2, p3}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    :cond_4
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Local doc does not belong to any collection: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private resolveConflictOnce(Lcom/couchbase/lite/ConflictResolver;Lcom/couchbase/lite/Collection;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/ConflictResolver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;,
            Lcom/couchbase/lite/internal/replicator/ConflictResolutionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p2, p3}, Lcom/couchbase/lite/Document;->getDocumentWithDeleted(Lcom/couchbase/lite/Collection;Ljava/lang/String;)Lcom/couchbase/lite/Document;

    move-result-object v1

    invoke-direct {p0, p2, p3}, Lcom/couchbase/lite/AbstractDatabase;->getConflictingRevision(Lcom/couchbase/lite/Collection;Ljava/lang/String;)Lcom/couchbase/lite/Document;

    move-result-object p2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-virtual {v1}, Lcom/couchbase/lite/Document;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/couchbase/lite/Document;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p2

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/couchbase/lite/ConflictResolver;->DEFAULT:Lcom/couchbase/lite/ConflictResolver;

    :goto_0
    invoke-direct {p0, p1, p3, v1, p2}, Lcom/couchbase/lite/AbstractDatabase;->resolveConflict(Lcom/couchbase/lite/ConflictResolver;Ljava/lang/String;Lcom/couchbase/lite/Document;Lcom/couchbase/lite/Document;)Lcom/couchbase/lite/Document;

    move-result-object p1

    :goto_1
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    :try_start_1
    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0, p1, v1, p2}, Lcom/couchbase/lite/AbstractDatabase;->saveResolvedDocument(Lcom/couchbase/lite/Document;Lcom/couchbase/lite/Document;Lcom/couchbase/lite/Document;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->endTransaction(Z)V

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/couchbase/lite/AbstractDatabase;->endTransaction(Z)V

    throw p1

    :catchall_1
    move-exception p0

    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method private runClientResolver(Lcom/couchbase/lite/ConflictResolver;Ljava/lang/String;Lcom/couchbase/lite/Document;Lcom/couchbase/lite/Document;)Lcom/couchbase/lite/Document;
    .locals 2
    .param p1    # Lcom/couchbase/lite/ConflictResolver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    new-instance p0, Lcom/couchbase/lite/Conflict;

    invoke-virtual {p3}, Lcom/couchbase/lite/Document;->isDeleted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p3, v1

    :cond_0
    invoke-virtual {p4}, Lcom/couchbase/lite/Document;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p4, v1

    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/couchbase/lite/Conflict;-><init>(Lcom/couchbase/lite/Document;Lcom/couchbase/lite/Document;)V

    new-instance p3, Lcom/couchbase/lite/internal/exec/ClientTask;

    new-instance p4, Lcom/couchbase/lite/a;

    invoke-direct {p4, p1, p0}, Lcom/couchbase/lite/a;-><init>(Lcom/couchbase/lite/ConflictResolver;Lcom/couchbase/lite/Conflict;)V

    invoke-direct {p3, p4}, Lcom/couchbase/lite/internal/exec/ClientTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {p3}, Lcom/couchbase/lite/internal/exec/ClientTask;->execute()V

    invoke-virtual {p3}, Lcom/couchbase/lite/internal/exec/ClientTask;->getFailure()Ljava/lang/Exception;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {p3}, Lcom/couchbase/lite/internal/exec/ClientTask;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Document;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Conflict resolution failed for document \'%s\': %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/couchbase/lite/AbstractDatabase;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {p2, p1, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string p3, "CouchbaseLite"

    const/16 p4, 0xa

    invoke-direct {p2, p1, p0, p3, p4}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;I)V

    throw p2
.end method

.method private saveResolvedDocument(Lcom/couchbase/lite/Document;Lcom/couchbase/lite/Document;Lcom/couchbase/lite/Document;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getDbLock()"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    if-nez p1, :cond_1

    invoke-virtual {p3}, Lcom/couchbase/lite/Document;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p3

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/couchbase/lite/Document;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p2

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->getC4doc()Lcom/couchbase/lite/internal/core/C4Document;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/C4Document;->getSelectedFlags()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/couchbase/lite/AbstractDatabase;->saveResolvedDocumentWithFlags(Lcom/couchbase/lite/Document;Lcom/couchbase/lite/Document;Lcom/couchbase/lite/Document;I)V
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method private saveResolvedDocumentWithFlags(Lcom/couchbase/lite/Document;Lcom/couchbase/lite/Document;Lcom/couchbase/lite/Document;I)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getDbLock()"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    if-eq p1, p3, :cond_5

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->encode()Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    move-result-object p1

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/AbstractDatabase;->sharedKeys:Lcom/couchbase/lite/internal/fleece/FLSharedKeys;

    invoke-static {p1, p0}, Lcom/couchbase/lite/internal/core/C4Document;->dictContainsBlobs(Lcom/couchbase/lite/internal/fleece/FLSliceResult;Lcom/couchbase/lite/internal/fleece/FLSharedKeys;)Z

    move-result p0

    if-eqz p0, :cond_1

    or-int/lit8 p4, p4, 0x8

    :cond_1
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->getContent()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLSliceResult;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p0

    :cond_3
    :goto_1
    or-int/lit8 p4, p4, 0x1

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->getSharedFleeceEncoder()Lcom/couchbase/lite/internal/fleece/FLEncoder;

    move-result-object p0

    :try_start_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->writeValue(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->finish()[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->close()V

    move-object p0, p1

    goto :goto_3

    :catchall_2
    move-exception p1

    if-eqz p0, :cond_4

    :try_start_3
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1

    :cond_5
    const/4 p0, 0x0

    :goto_3
    invoke-virtual {p2}, Lcom/couchbase/lite/Document;->getC4doc()Lcom/couchbase/lite/internal/core/C4Document;

    move-result-object p1

    const-string v0, "raw doc is null"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/internal/core/C4Document;

    invoke-virtual {p3}, Lcom/couchbase/lite/Document;->getRevisionID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/couchbase/lite/Document;->getRevisionID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0, p0, p4}, Lcom/couchbase/lite/internal/core/C4Document;->resolveConflict(Ljava/lang/String;Ljava/lang/String;[BI)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/internal/core/C4Document;->save(I)V

    sget-object p0, Lcom/couchbase/lite/AbstractDatabase;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-virtual {p2}, Lcom/couchbase/lite/Document;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4Document;->getRevID()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Conflict resolved as doc \'%s\' rev %s"

    invoke-static {p0, p2, p1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private shutdown(ZLcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows<",
            "Lcom/couchbase/lite/internal/core/C4Database;",
            "Lcom/couchbase/lite/LiteCoreException;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->isOpenLocked()Z

    move-result v1

    sget-object v2, Lcom/couchbase/lite/AbstractDatabase;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v3, "Shutdown (%b, %b)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/BaseDatabase;->setC4DatabaseLocked(Lcom/couchbase/lite/internal/core/C4Database;)V

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/couchbase/lite/AbstractDatabase;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lcom/couchbase/lite/AbstractDatabase;->activeProcesses:Ljava/util/Set;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lcom/couchbase/lite/AbstractDatabase;->activeProcesses:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v1, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/couchbase/lite/AbstractDatabase;->activeProcesses:Ljava/util/Set;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0, v1}, Lcom/couchbase/lite/AbstractDatabase;->shutdownActiveProcesses(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    const/4 v0, 0x5

    :try_start_3
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractDatabase;->verifyActiveProcesses()V

    if-lt v6, v0, :cond_3

    iget-object v1, p0, Lcom/couchbase/lite/AbstractDatabase;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string v2, "Shutdown failed"

    const-string v3, "CouchbaseLite"

    const/16 v4, 0x10

    invoke-direct {v1, v2, v3, v4}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/couchbase/lite/AbstractDatabase;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x6

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    :goto_2
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_4
    invoke-interface {p2, p1}, Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;->accept(Ljava/lang/Object;)V
    :try_end_4
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object p1, p0, Lcom/couchbase/lite/AbstractDatabase;->postExecutor:Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;

    iget-object p2, p0, Lcom/couchbase/lite/AbstractDatabase;->queryExecutor:Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;

    invoke-direct {p0, p1, p2, v0}, Lcom/couchbase/lite/AbstractDatabase;->shutdownExecutors(Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;I)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :try_start_6
    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0

    :goto_3
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0
.end method

.method private shutdownActiveProcesses(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/couchbase/lite/AbstractDatabase$ActiveProcess<",
            "*>;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/AbstractDatabase$ActiveProcess;

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractDatabase$ActiveProcess;->stop()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private shutdownExecutors(Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;I)V
    .locals 2

    if-eqz p1, :cond_0

    int-to-long v0, p3

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, p0}, Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;->stop(JLjava/util/concurrent/TimeUnit;)Z

    :cond_0
    if-eqz p2, :cond_1

    int-to-long p0, p3

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, p0, p1, p3}, Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;->stop(JLjava/util/concurrent/TimeUnit;)Z

    :cond_1
    return-void
.end method

.method private verifyActiveProcesses()V
    .locals 6

    iget-object v0, p0, Lcom/couchbase/lite/AbstractDatabase;->activeProcesses:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/couchbase/lite/AbstractDatabase;->activeProcesses:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/couchbase/lite/AbstractDatabase$ActiveProcess;

    invoke-virtual {v2}, Lcom/couchbase/lite/AbstractDatabase$ActiveProcess;->isActive()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/couchbase/lite/AbstractDatabase;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found dead db process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/couchbase/lite/AbstractDatabase;->activeProcesses:Ljava/util/Set;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/couchbase/lite/AbstractDatabase;->activeProcesses:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/couchbase/lite/AbstractDatabase;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/couchbase/lite/AbstractDatabase;->activeProcesses:Ljava/util/Set;

    monitor-enter v1

    :try_start_2
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/couchbase/lite/AbstractDatabase;->activeProcesses:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    sget-object v2, Lcom/couchbase/lite/AbstractDatabase;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v3, "Active processes %s: %d"

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-gtz v1, :cond_4

    iget-object p0, p0, Lcom/couchbase/lite/AbstractDatabase;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/AbstractDatabase$ActiveProcess;

    sget-object v1, Lcom/couchbase/lite/AbstractDatabase;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v2, " processes: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method


# virtual methods
.method public addActiveReplicator(Lcom/couchbase/lite/AbstractReplicator;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/AbstractReplicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->assertOpenUnchecked()V

    new-instance v1, Lcom/couchbase/lite/AbstractDatabase$1;

    invoke-direct {v1, p0, p1, p1}, Lcom/couchbase/lite/AbstractDatabase$1;-><init>(Lcom/couchbase/lite/AbstractDatabase;Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/AbstractReplicator;)V

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/AbstractDatabase;->registerProcess(Lcom/couchbase/lite/AbstractDatabase$ActiveProcess;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addC4Collection(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Collection;
    .locals 1
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

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Database;->addCollection(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Collection;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic addChangeListener(Lcom/couchbase/lite/ChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 0
    .param p1    # Lcom/couchbase/lite/ChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    check-cast p1, Lcom/couchbase/lite/DatabaseChangeListener;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->addChangeListener(Lcom/couchbase/lite/DatabaseChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public addChangeListener(Lcom/couchbase/lite/DatabaseChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 1
    .param p1    # Lcom/couchbase/lite/DatabaseChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/couchbase/lite/AbstractDatabase;->addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DatabaseChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/ChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    check-cast p2, Lcom/couchbase/lite/DatabaseChangeListener;

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/AbstractDatabase;->addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DatabaseChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DatabaseChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/DatabaseChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDefaultCollectionOrThrow()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/y2;

    invoke-direct {v0, p2}, Lcom/sunia/HTREnginev2/y2;-><init>(Lcom/couchbase/lite/DatabaseChangeListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/Collection;->addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/CollectionChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public addDocumentChangeListener(Ljava/lang/String;Lcom/couchbase/lite/DocumentChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/DocumentChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/couchbase/lite/AbstractDatabase;->addDocumentChangeListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DocumentChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public addDocumentChangeListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DocumentChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/DocumentChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDefaultCollectionOrThrow()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/couchbase/lite/Collection;->addDocumentChangeListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DocumentChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public beginTransaction()V
    .locals 0
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getDbLock()"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Database;->beginTransaction()V
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/AbstractDatabase;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbPath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Closing %s at path %s"

    invoke-static {v0, v2, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/sunia/HTREnginev2/x2;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/x2;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/couchbase/lite/AbstractDatabase;->shutdown(ZLcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public copy()Lcom/couchbase/lite/Database;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/couchbase/lite/Database;

    iget-object v1, p0, Lcom/couchbase/lite/AbstractDatabase;->name:Ljava/lang/String;

    iget-object p0, p0, Lcom/couchbase/lite/AbstractDatabase;->config:Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;

    invoke-direct {v0, v1, p0}, Lcom/couchbase/lite/Database;-><init>(Ljava/lang/String;Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;)V

    return-object v0
.end method

.method public createCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    const-string v0, "_default"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/AbstractDatabase;->createCollection(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final createCollection(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/Collection;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p2, "_default"

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->assertOpenChecked()V

    .line 4
    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-static {p0, p2, p1}, Lcom/couchbase/lite/Collection;->createCollection(Lcom/couchbase/lite/Database;Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createIndex(Ljava/lang/String;Lcom/couchbase/lite/Index;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Index;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDefaultCollectionOrThrow()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/Collection;->createIndexInternal(Ljava/lang/String;Lcom/couchbase/lite/AbstractIndex;)V

    return-void
.end method

.method public createIndex(Ljava/lang/String;Lcom/couchbase/lite/IndexConfiguration;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/IndexConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDefaultCollectionOrThrow()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/Collection;->createIndexInternal(Ljava/lang/String;Lcom/couchbase/lite/AbstractIndex;)V

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

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/core/C4Database;->createJsonQuery(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Query;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createLocalReplicator(Ljava/util/Map;Lcom/couchbase/lite/Database;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/Replicator;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 11
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Database;
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
    .param p8    # Lcom/couchbase/lite/Replicator;
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
            "Lcom/couchbase/lite/Database;",
            "Lcom/couchbase/lite/ReplicatorType;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;",
            "Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;",
            "Lcom/couchbase/lite/Replicator;",
            ")",
            "Lcom/couchbase/lite/internal/core/C4Replicator;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object v2

    invoke-virtual {p2}, Lcom/couchbase/lite/BaseDatabase;->getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object v4

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lcom/couchbase/lite/internal/core/C4Database;->createLocalReplicator(Ljava/util/Map;Lcom/couchbase/lite/internal/core/C4Database;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/couchbase/lite/internal/core/C4Database;->createMessageEndpointReplicator(Ljava/util/Set;Lcom/couchbase/lite/internal/core/C4Socket;Ljava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
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

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/core/C4Database;->createN1qlQuery(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Query;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createQuery(Ljava/lang/String;)Lcom/couchbase/lite/Query;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->assertOpenUnchecked()V

    new-instance v1, Lcom/couchbase/lite/N1qlQuery;

    invoke-direct {v1, p0, p1}, Lcom/couchbase/lite/N1qlQuery;-><init>(Lcom/couchbase/lite/AbstractDatabase;Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createRemoteReplicator(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/internal/sockets/MessageFraming;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/Replicator;Lcom/couchbase/lite/internal/SocketFactory;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 17
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
    .param p13    # Lcom/couchbase/lite/Replicator;
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
            "Lcom/couchbase/lite/Replicator;",
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

    invoke-virtual/range {p0 .. p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/couchbase/lite/BaseDatabase;->getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object v2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-virtual/range {v2 .. v16}, Lcom/couchbase/lite/internal/core/C4Database;->createRemoteReplicator(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/internal/sockets/MessageFraming;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/internal/SocketFactory;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public delete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/couchbase/lite/AbstractDatabase;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbPath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Deleting %s at path %s"

    invoke-static {v0, v2, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    new-instance v0, Lcom/sunia/HTREnginev2/z2;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/z2;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/couchbase/lite/AbstractDatabase;->shutdown(ZLcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V

    return-void
.end method

.method public delete(Lcom/couchbase/lite/Document;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    sget-object v0, Lcom/couchbase/lite/ConcurrencyControl;->LAST_WRITE_WINS:Lcom/couchbase/lite/ConcurrencyControl;

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/AbstractDatabase;->delete(Lcom/couchbase/lite/Document;Lcom/couchbase/lite/ConcurrencyControl;)Z

    return-void
.end method

.method public delete(Lcom/couchbase/lite/Document;Lcom/couchbase/lite/ConcurrencyControl;)Z
    .locals 0
    .param p1    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ConcurrencyControl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDefaultCollectionOrThrow()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/Collection;->delete(Lcom/couchbase/lite/Document;Lcom/couchbase/lite/ConcurrencyControl;)Z

    move-result p0

    return p0
.end method

.method public final deleteCollection(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    const-string v0, "_default"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/AbstractDatabase;->deleteCollection(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final deleteCollection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p2, "_default"

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getC4DbOrThrowLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/couchbase/lite/internal/core/C4Database;->deleteCollection(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public deleteIndex(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDefaultCollectionOrThrow()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Collection;->deleteIndex(Ljava/lang/String;)V

    return-void
.end method

.method public endTransaction(Z)V
    .locals 0
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getDbLock()"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/core/C4Database;->endTransaction(Z)V
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/couchbase/lite/AbstractDatabase;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/couchbase/lite/AbstractDatabase;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/couchbase/lite/AbstractDatabase;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/couchbase/lite/AbstractDatabase;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/AbstractDatabase;->activeProcesses:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/couchbase/lite/AbstractDatabase;->shutdownActiveProcesses(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/couchbase/lite/AbstractDatabase;->postExecutor:Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;

    iget-object v1, p0, Lcom/couchbase/lite/AbstractDatabase;->queryExecutor:Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/couchbase/lite/AbstractDatabase;->shutdownExecutors(Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBlob(Ljava/util/Map;)Lcom/couchbase/lite/Blob;
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/couchbase/lite/Blob;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->assertOpenUnchecked()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/couchbase/lite/Blob;->isBlob(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/couchbase/lite/Blob;

    invoke-direct {v0, p0, p1}, Lcom/couchbase/lite/Blob;-><init>(Lcom/couchbase/lite/BaseDatabase;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/couchbase/lite/Blob;->updateSize()J

    move-result-wide p0

    const-wide/16 v1, 0x0

    cmp-long p0, p0, v1

    if-gez p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "getBlob arg does not specify a blob"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getC4Collection(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Collection;
    .locals 1
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

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Database;->getCollection(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Collection;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    const-string v0, "_default"

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/AbstractDatabase;->getCollection(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final getCollection(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/Collection;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p2, "_default"

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->assertOpenChecked()V

    .line 4
    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-static {p0, p2, p1}, Lcom/couchbase/lite/Collection;->getCollection(Lcom/couchbase/lite/Database;Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCollections()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/Collection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    const-string v0, "_default"

    .line 1
    invoke-virtual {p0, v0}, Lcom/couchbase/lite/AbstractDatabase;->getCollections(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getCollections(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
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
            "Lcom/couchbase/lite/Collection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "_default"

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getC4DbOrThrowLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/couchbase/lite/internal/core/C4Database;->getCollectionNames(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1
    :try_end_1
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/couchbase/lite/AbstractDatabase;->getCollection(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    .line 8
    :try_start_3
    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public getConfig()Lcom/couchbase/lite/DatabaseConfiguration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/DatabaseConfiguration;

    iget-object p0, p0, Lcom/couchbase/lite/AbstractDatabase;->config:Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/DatabaseConfiguration;-><init>(Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;)V

    return-object v0
.end method

.method public getCookies(Ljava/net/URI;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/net/URI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/core/C4Database;->getCookies(Ljava/net/URI;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/couchbase/lite/AbstractDatabase;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get cookies for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCount()J
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDefaultCollectionLocked()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getCount()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v1, "Failed getting default collection"

    invoke-direct {v0, v1, p0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public abstract getDatabase()Lcom/couchbase/lite/Database;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public getDbFile()Ljava/io/File;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbPath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public getDefaultC4Collection()Lcom/couchbase/lite/internal/core/C4Collection;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Database;->getDefaultCollection()Lcom/couchbase/lite/internal/core/C4Collection;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDefaultCollection()Lcom/couchbase/lite/Collection;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->assertOpenChecked()V

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDefaultCollectionLocked()Lcom/couchbase/lite/Collection;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDefaultCollectionAsSet()Ljava/util/Set;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/Collection;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/Collection;->getDefaultCollection(Lcom/couchbase/lite/Database;)Lcom/couchbase/lite/Collection;

    move-result-object p0
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v1, "Can\'t get default collection"

    invoke-direct {v0, v1, p0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public final getDefaultScope()Lcom/couchbase/lite/Scope;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->assertOpenChecked()V

    new-instance v1, Lcom/couchbase/lite/Scope;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/couchbase/lite/Scope;-><init>(Lcom/couchbase/lite/Database;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDocument(Ljava/lang/String;)Lcom/couchbase/lite/Document;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDefaultCollectionOrThrow()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Collection;->getDocument(Ljava/lang/String;)Lcom/couchbase/lite/Document;

    move-result-object p0
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    const-string v2, "Failed retrieving document: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, p0, p1}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getDocumentExpiration(Ljava/lang/String;)Ljava/util/Date;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDefaultCollectionOrThrow()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Collection;->getDocumentExpiration(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public abstract getEncryptionAlgorithm()I
.end method

.method public abstract getEncryptionKey()[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public getFilePath()Ljava/io/File;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public getIndexes()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDefaultCollectionOrThrow()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getIndexes()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/AbstractDatabase;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->isOpenLocked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbPath()Ljava/lang/String;

    move-result-object p0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getScope(Ljava/lang/String;)Lcom/couchbase/lite/Scope;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getC4DbOrThrowLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/internal/core/C4Database;->hasScope(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/couchbase/lite/Scope;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lcom/couchbase/lite/Scope;-><init>(Ljava/lang/String;Lcom/couchbase/lite/Database;)V

    move-object p0, v1

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getScopes()Ljava/util/Set;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/Scope;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getC4DbOrThrowLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/core/C4Database;->getScopeNames()Ljava/util/Set;

    move-result-object v1
    :try_end_1
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/couchbase/lite/Scope;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/couchbase/lite/Scope;-><init>(Ljava/lang/String;Lcom/couchbase/lite/Database;)V

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v2

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getSharedFleeceEncoder()Lcom/couchbase/lite/internal/fleece/FLEncoder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Database;->getSharedFleeceEncoder()Lcom/couchbase/lite/internal/fleece/FLEncoder;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSharedKeys()Lcom/couchbase/lite/internal/fleece/FLSharedKeys;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/AbstractDatabase;->sharedKeys:Lcom/couchbase/lite/internal/fleece/FLSharedKeys;

    return-object p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->isOpenLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Database;->getPublicUUID()[B

    move-result-object p0
    :try_end_1
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p0

    move-object p0, v2

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v1, v2

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/couchbase/lite/AbstractDatabase;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v3, "Failed retrieving database UUID"

    invoke-static {v0, v3, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/couchbase/lite/internal/utils/PlatformUtils;->getEncoder()Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Encoder;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/couchbase/lite/internal/utils/PlatformUtils$Base64Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/AbstractDatabase;->name:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public inBatch(Lcom/couchbase/lite/UnitOfWork;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/UnitOfWork;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/couchbase/lite/UnitOfWork<",
            "TT;>;)V^",
            "Lcom/couchbase/lite/CouchbaseLiteException;",
            "^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "work"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Database;->beginTransaction()V
    :try_end_1
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Lcom/couchbase/lite/UnitOfWork;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/core/C4Database;->endTransaction(Z)V
    :try_end_3
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4Database;->endTransaction(Z)V

    throw p1
    :try_end_5
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception p0

    :try_start_6
    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method

.method public performMaintenance(Lcom/couchbase/lite/MaintenanceType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/core/C4Database;->performMaintenance(Lcom/couchbase/lite/MaintenanceType;)Z

    move-result p0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public purge(Lcom/couchbase/lite/Document;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDefaultCollectionOrThrow()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Collection;->purge(Lcom/couchbase/lite/Document;)V

    return-void
.end method

.method public purge(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDefaultCollectionOrThrow()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Collection;->purge(Ljava/lang/String;)V

    return-void
.end method

.method public registerProcess(Lcom/couchbase/lite/AbstractDatabase$ActiveProcess;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/AbstractDatabase$ActiveProcess;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/AbstractDatabase$ActiveProcess<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/AbstractDatabase;->activeProcesses:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/AbstractDatabase;->activeProcesses:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/couchbase/lite/AbstractDatabase;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "Added active process(%s): %s"

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public removeActiveReplicator(Lcom/couchbase/lite/AbstractReplicator;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/AbstractReplicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->unregisterProcess(Ljava/lang/Object;)V

    return-void
.end method

.method public removeChangeListener(Lcom/couchbase/lite/ListenerToken;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/ListenerToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDefaultCollectionOrThrow()Lcom/couchbase/lite/Collection;

    move-result-object p0

    move-object v0, p1

    check-cast v0, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/listener/ChangeListenerToken;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Collection;->removeCollectionChangeListener(Lcom/couchbase/lite/ListenerToken;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Collection;->removeDocumentChangeListener(Lcom/couchbase/lite/ListenerToken;)V

    :goto_0
    return-void
.end method

.method public resolveReplicationConflict(Lcom/couchbase/lite/ConflictResolver;Lcom/couchbase/lite/ReplicatedDocument;Lcom/couchbase/lite/internal/utils/Fn$NullableConsumer;)V
    .locals 11
    .param p1    # Lcom/couchbase/lite/ConflictResolver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ReplicatedDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/internal/utils/Fn$NullableConsumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/ConflictResolver;",
            "Lcom/couchbase/lite/ReplicatedDocument;",
            "Lcom/couchbase/lite/internal/utils/Fn$NullableConsumer<",
            "Lcom/couchbase/lite/CouchbaseLiteException;",
            ">;)V"
        }
    .end annotation

    const-string v0, "."

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0xd

    const/16 v5, 0xa

    const-string v6, "CouchbaseLite"

    if-le v2, v4, :cond_0

    :try_start_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Too many attempts to resolve a conflicted document("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v6, v5}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Lcom/couchbase/lite/ReplicatedDocument;->getScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/couchbase/lite/ReplicatedDocument;->getCollection()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v8

    invoke-static {v8, v2, v4}, Lcom/couchbase/lite/Collection;->getCollection(Lcom/couchbase/lite/Database;Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object v8

    if-nez v8, :cond_1

    new-instance v8, Lcom/couchbase/lite/CouchbaseLiteException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot find collection "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2, v6, v5}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object p0, v8

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Lcom/couchbase/lite/ReplicatedDocument;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v8, v2}, Lcom/couchbase/lite/AbstractDatabase;->resolveConflictOnce(Lcom/couchbase/lite/ConflictResolver;Lcom/couchbase/lite/Collection;Ljava/lang/String;)V

    invoke-interface {p3, v7}, Lcom/couchbase/lite/internal/utils/Fn$NullableConsumer;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/couchbase/lite/internal/replicator/ConflictResolutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_0
    move-exception p0

    :try_start_2
    sget-object p1, Lcom/couchbase/lite/AbstractDatabase;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string p2, "Conflict already resolved: %s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {p1, p2, v0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p0, v7

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/couchbase/lite/CouchbaseLiteException;->isConflict(Lcom/couchbase/lite/CouchbaseLiteException;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v4, :cond_2

    move-object p0, v2

    goto :goto_2

    :cond_2
    move v2, v3

    goto/16 :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/couchbase/lite/CouchbaseLiteException;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "Conflict resolution failed"

    :goto_1
    invoke-direct {p2, p1, p0, v6, v5}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;I)V

    move-object p0, p2

    :goto_2
    invoke-interface {p3, p0}, Lcom/couchbase/lite/internal/utils/Fn$NullableConsumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public save(Lcom/couchbase/lite/MutableDocument;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/MutableDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/couchbase/lite/ConcurrencyControl;->LAST_WRITE_WINS:Lcom/couchbase/lite/ConcurrencyControl;

    invoke-virtual {p0, p1, v0}, Lcom/couchbase/lite/AbstractDatabase;->save(Lcom/couchbase/lite/MutableDocument;Lcom/couchbase/lite/ConcurrencyControl;)Z

    return-void
.end method

.method public save(Lcom/couchbase/lite/MutableDocument;Lcom/couchbase/lite/ConcurrencyControl;)Z
    .locals 0
    .param p1    # Lcom/couchbase/lite/MutableDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ConcurrencyControl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDefaultCollectionOrThrow()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/Collection;->save(Lcom/couchbase/lite/MutableDocument;Lcom/couchbase/lite/ConcurrencyControl;)Z

    move-result p0

    return p0
.end method

.method public save(Lcom/couchbase/lite/MutableDocument;Lcom/couchbase/lite/ConflictHandler;)Z
    .locals 1
    .param p1    # Lcom/couchbase/lite/MutableDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ConflictHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "document"

    .line 3
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "conflictHandler"

    .line 4
    invoke-static {p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    :try_start_0
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDefaultCollectionOrThrow()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/Collection;->save(Lcom/couchbase/lite/MutableDocument;Lcom/couchbase/lite/ConflictHandler;)Z

    move-result p0
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "CouchbaseLite"

    .line 6
    invoke-virtual {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->getDomain()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    invoke-virtual {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->getCode()I

    move-result p2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p2, "DBClosedOrCollectionDeleted"

    invoke-static {p2}, Lcom/couchbase/lite/internal/logging/Log;->lookupStandardMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    .line 8
    :cond_1
    :goto_0
    throw p0
.end method

.method public saveBlob(Lcom/couchbase/lite/Blob;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Blob;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->assertOpenUnchecked()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p0, Lcom/couchbase/lite/Database;

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Blob;->installInDatabase(Lcom/couchbase/lite/Database;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setCookies(Ljava/net/URI;Ljava/util/List;Z)V
    .locals 2
    .param p1    # Ljava/net/URI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object p0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1, p3}, Lcom/couchbase/lite/internal/core/C4Database;->setCookie(Ljava/net/URI;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    sget-object p2, Lcom/couchbase/lite/AbstractDatabase;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot save cookies for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public setDocumentExpiration(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDefaultCollectionOrThrow()Lcom/couchbase/lite/Collection;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/Collection;->setDocumentExpiration(Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Database{@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/ClassUtils;->objId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/AbstractDatabase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/AbstractDatabase;->config:Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/BaseImmutableDatabaseConfiguration;->isFullSync()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v1, "!"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/AbstractDatabase;->config:Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/BaseImmutableDatabaseConfiguration;->isMMapEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string v2, "*"

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregisterProcess(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/AbstractDatabase;->activeProcesses:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/AbstractDatabase;->activeProcesses:Ljava/util/Set;

    new-instance v2, Lcom/couchbase/lite/AbstractDatabase$ActiveProcess;

    invoke-direct {v2, p1}, Lcom/couchbase/lite/AbstractDatabase$ActiveProcess;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/couchbase/lite/AbstractDatabase;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "Removed active process(%s): %s"

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractDatabase;->verifyActiveProcesses()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public verifyCollections(Ljava/util/Set;)V
    .locals 3
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/Collection;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/Collection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/couchbase/lite/Collection;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/AbstractDatabase;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not belong to database "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Collection may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method
