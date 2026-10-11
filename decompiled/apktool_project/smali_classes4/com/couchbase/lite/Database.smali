.class public final Lcom/couchbase/lite/Database;
.super Lcom/couchbase/lite/AbstractDatabase;
.source "SourceFile"


# static fields
.field public static final prediction:Lcom/couchbase/lite/Prediction;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/couchbase/lite/Prediction;

    invoke-direct {v0}, Lcom/couchbase/lite/Prediction;-><init>()V

    sput-object v0, Lcom/couchbase/lite/Database;->prediction:Lcom/couchbase/lite/Prediction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
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

    .line 1
    invoke-direct {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/couchbase/lite/DatabaseConfiguration;)V
    .locals 0
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
    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/AbstractDatabase;-><init>(Ljava/lang/String;Lcom/couchbase/lite/DatabaseConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;)V
    .locals 0
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
    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/AbstractDatabase;-><init>(Ljava/lang/String;Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;)V

    return-void
.end method

.method public static copy(Ljava/io/File;Ljava/lang/String;Lcom/couchbase/lite/DatabaseConfiguration;)V
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    const-string v0, "config"

    .line 1
    invoke-static {p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p2}, Lcom/couchbase/lite/DatabaseConfiguration;->getEncryptionKey()Lcom/couchbase/lite/EncryptionKey;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lcom/couchbase/lite/DatabaseConfiguration;->getDirectory()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Lcom/couchbase/lite/Database;->getEncryptionAlgorithm(Lcom/couchbase/lite/EncryptionKey;)I

    move-result v1

    invoke-static {v0}, Lcom/couchbase/lite/Database;->getEncryptionKey(Lcom/couchbase/lite/EncryptionKey;)[B

    move-result-object v0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/couchbase/lite/AbstractDatabase;->copy(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I[B)V

    return-void
.end method

.method public static copy(Ljava/io/File;Ljava/lang/String;Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;)V
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    .line 4
    invoke-virtual {p2}, Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;->getEncryptionKey()Lcom/couchbase/lite/EncryptionKey;

    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/couchbase/lite/internal/BaseImmutableDatabaseConfiguration;->getDirectory()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Lcom/couchbase/lite/Database;->getEncryptionAlgorithm(Lcom/couchbase/lite/EncryptionKey;)I

    move-result v1

    invoke-static {v0}, Lcom/couchbase/lite/Database;->getEncryptionKey(Lcom/couchbase/lite/EncryptionKey;)[B

    move-result-object v0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/couchbase/lite/AbstractDatabase;->copy(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I[B)V

    return-void
.end method

.method private static getEncryptionAlgorithm(Lcom/couchbase/lite/EncryptionKey;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/couchbase/lite/Database;->getEncryptionKey(Lcom/couchbase/lite/EncryptionKey;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private static getEncryptionKey(Lcom/couchbase/lite/EncryptionKey;)[B
    .locals 0
    .param p0    # Lcom/couchbase/lite/EncryptionKey;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/EncryptionKey;->getKey()[B

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic addChangeListener(Lcom/couchbase/lite/DatabaseChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 0
    .param p1    # Lcom/couchbase/lite/DatabaseChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->addChangeListener(Lcom/couchbase/lite/DatabaseChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DatabaseChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 0
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

    .line 2
    invoke-super {p0, p1, p2}, Lcom/couchbase/lite/AbstractDatabase;->addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DatabaseChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addDocumentChangeListener(Ljava/lang/String;Lcom/couchbase/lite/DocumentChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 0
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

    .line 1
    invoke-super {p0, p1, p2}, Lcom/couchbase/lite/AbstractDatabase;->addDocumentChangeListener(Ljava/lang/String;Lcom/couchbase/lite/DocumentChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addDocumentChangeListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DocumentChangeListener;)Lcom/couchbase/lite/ListenerToken;
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
    invoke-super {p0, p1, p2, p3}, Lcom/couchbase/lite/AbstractDatabase;->addDocumentChangeListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DocumentChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public changeEncryptionKey(Lcom/couchbase/lite/EncryptionKey;)V
    .locals 2
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

    invoke-static {p1}, Lcom/couchbase/lite/Database;->getEncryptionAlgorithm(Lcom/couchbase/lite/EncryptionKey;)I

    move-result v1

    invoke-static {p1}, Lcom/couchbase/lite/Database;->getEncryptionKey(Lcom/couchbase/lite/EncryptionKey;)[B

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/couchbase/lite/internal/core/C4Database;->rekey(I[B)V
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-void

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

.method public bridge synthetic close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-super {p0}, Lcom/couchbase/lite/AbstractDatabase;->close()V

    return-void
.end method

.method public bridge synthetic createCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;
    .locals 0
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

    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->createCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createIndex(Ljava/lang/String;Lcom/couchbase/lite/Index;)V
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
    invoke-super {p0, p1, p2}, Lcom/couchbase/lite/AbstractDatabase;->createIndex(Ljava/lang/String;Lcom/couchbase/lite/Index;)V

    return-void
.end method

.method public bridge synthetic createIndex(Ljava/lang/String;Lcom/couchbase/lite/IndexConfiguration;)V
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
    invoke-super {p0, p1, p2}, Lcom/couchbase/lite/AbstractDatabase;->createIndex(Ljava/lang/String;Lcom/couchbase/lite/IndexConfiguration;)V

    return-void
.end method

.method public bridge synthetic createQuery(Ljava/lang/String;)Lcom/couchbase/lite/Query;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->createQuery(Ljava/lang/String;)Lcom/couchbase/lite/Query;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic delete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/couchbase/lite/AbstractDatabase;->delete()V

    return-void
.end method

.method public bridge synthetic delete(Lcom/couchbase/lite/Document;)V
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

    .line 2
    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->delete(Lcom/couchbase/lite/Document;)V

    return-void
.end method

.method public bridge synthetic delete(Lcom/couchbase/lite/Document;Lcom/couchbase/lite/ConcurrencyControl;)Z
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

    .line 3
    invoke-super {p0, p1, p2}, Lcom/couchbase/lite/AbstractDatabase;->delete(Lcom/couchbase/lite/Document;Lcom/couchbase/lite/ConcurrencyControl;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic deleteIndex(Ljava/lang/String;)V
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

    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->deleteIndex(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic getBlob(Ljava/util/Map;)Lcom/couchbase/lite/Blob;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->getBlob(Ljava/util/Map;)Lcom/couchbase/lite/Blob;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;
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

    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->getCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getConfig()Lcom/couchbase/lite/DatabaseConfiguration;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/couchbase/lite/AbstractDatabase;->getConfig()Lcom/couchbase/lite/DatabaseConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Lcom/couchbase/lite/AbstractDatabase;->getCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDatabase()Lcom/couchbase/lite/Database;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public bridge synthetic getDefaultCollection()Lcom/couchbase/lite/Collection;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-super {p0}, Lcom/couchbase/lite/AbstractDatabase;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDocument(Ljava/lang/String;)Lcom/couchbase/lite/Document;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->getDocument(Ljava/lang/String;)Lcom/couchbase/lite/Document;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDocumentExpiration(Ljava/lang/String;)Ljava/util/Date;
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

    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->getDocumentExpiration(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getEncryptionAlgorithm()I
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/couchbase/lite/AbstractDatabase;->config:Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;->getEncryptionKey()Lcom/couchbase/lite/EncryptionKey;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/Database;->getEncryptionAlgorithm(Lcom/couchbase/lite/EncryptionKey;)I

    move-result p0

    return p0
.end method

.method public getEncryptionKey()[B
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/couchbase/lite/AbstractDatabase;->config:Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/ImmutableDatabaseConfiguration;->getEncryptionKey()Lcom/couchbase/lite/EncryptionKey;

    move-result-object p0

    invoke-static {p0}, Lcom/couchbase/lite/Database;->getEncryptionKey(Lcom/couchbase/lite/EncryptionKey;)[B

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIndexes()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0}, Lcom/couchbase/lite/AbstractDatabase;->getIndexes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/couchbase/lite/AbstractDatabase;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPath()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-super {p0}, Lcom/couchbase/lite/AbstractDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hashCode()I
    .locals 0

    invoke-super {p0}, Lcom/couchbase/lite/AbstractDatabase;->hashCode()I

    move-result p0

    return p0
.end method

.method public bridge synthetic inBatch(Lcom/couchbase/lite/UnitOfWork;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/UnitOfWork;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;,
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->inBatch(Lcom/couchbase/lite/UnitOfWork;)V

    return-void
.end method

.method public bridge synthetic performMaintenance(Lcom/couchbase/lite/MaintenanceType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->performMaintenance(Lcom/couchbase/lite/MaintenanceType;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic purge(Lcom/couchbase/lite/Document;)V
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
    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->purge(Lcom/couchbase/lite/Document;)V

    return-void
.end method

.method public bridge synthetic purge(Ljava/lang/String;)V
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
    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->purge(Ljava/lang/String;)V

    return-void
.end method

.method public registerMessageListener(Lcom/couchbase/lite/MessageEndpointListener;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/MessageEndpointListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->assertOpenUnchecked()V

    new-instance v1, Lcom/couchbase/lite/Database$2;

    invoke-direct {v1, p0, p1, p1}, Lcom/couchbase/lite/Database$2;-><init>(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/MessageEndpointListener;Lcom/couchbase/lite/MessageEndpointListener;)V

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

.method public registerUrlListener(Lcom/couchbase/lite/URLEndpointListener;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/URLEndpointListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/BaseDatabase;->assertOpenUnchecked()V

    new-instance v1, Lcom/couchbase/lite/Database$1;

    invoke-direct {v1, p0, p1, p1}, Lcom/couchbase/lite/Database$1;-><init>(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/URLEndpointListener;Lcom/couchbase/lite/URLEndpointListener;)V

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

.method public bridge synthetic removeChangeListener(Lcom/couchbase/lite/ListenerToken;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/ListenerToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->removeChangeListener(Lcom/couchbase/lite/ListenerToken;)V

    return-void
.end method

.method public bridge synthetic save(Lcom/couchbase/lite/MutableDocument;)V
    .locals 0
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
    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->save(Lcom/couchbase/lite/MutableDocument;)V

    return-void
.end method

.method public bridge synthetic save(Lcom/couchbase/lite/MutableDocument;Lcom/couchbase/lite/ConcurrencyControl;)Z
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
    invoke-super {p0, p1, p2}, Lcom/couchbase/lite/AbstractDatabase;->save(Lcom/couchbase/lite/MutableDocument;Lcom/couchbase/lite/ConcurrencyControl;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic save(Lcom/couchbase/lite/MutableDocument;Lcom/couchbase/lite/ConflictHandler;)Z
    .locals 0
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

    .line 3
    invoke-super {p0, p1, p2}, Lcom/couchbase/lite/AbstractDatabase;->save(Lcom/couchbase/lite/MutableDocument;Lcom/couchbase/lite/ConflictHandler;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic saveBlob(Lcom/couchbase/lite/Blob;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Blob;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->saveBlob(Lcom/couchbase/lite/Blob;)V

    return-void
.end method

.method public bridge synthetic setDocumentExpiration(Ljava/lang/String;Ljava/util/Date;)V
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

    invoke-super {p0, p1, p2}, Lcom/couchbase/lite/AbstractDatabase;->setDocumentExpiration(Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Lcom/couchbase/lite/AbstractDatabase;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregisterMessageListener(Lcom/couchbase/lite/MessageEndpointListener;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/MessageEndpointListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->unregisterProcess(Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterUrlListener(Lcom/couchbase/lite/URLEndpointListener;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/URLEndpointListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractDatabase;->unregisterProcess(Ljava/lang/Object;)V

    return-void
.end method
