.class public Lcom/couchbase/lite/Document;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/DictionaryInterface;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/couchbase/lite/DictionaryInterface;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private c4Document:Lcom/couchbase/lite/internal/core/C4Document;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private collection:Lcom/couchbase/lite/Collection;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private data:Lcom/couchbase/lite/internal/fleece/FLDict;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "URF_UNREAD_FIELD"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private internalDict:Lcom/couchbase/lite/Dictionary;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "NP_NONNULL_FIELD_NOT_INITIALIZED_IN_CONSTRUCTOR"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mutable:Z

.field private revId:Ljava/lang/String;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private root:Lcom/couchbase/lite/internal/fleece/MRoot;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "URF_UNREAD_FIELD"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4Document;Z)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/internal/core/C4Document;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/Document;->lock:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/couchbase/lite/Document;->collection:Lcom/couchbase/lite/Collection;

    const-string p1, "id"

    .line 4
    invoke-static {p2, p1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/couchbase/lite/Document;->id:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lcom/couchbase/lite/Document;->mutable:Z

    .line 6
    invoke-direct {p0, p3, p4}, Lcom/couchbase/lite/Document;->setC4Document(Lcom/couchbase/lite/internal/core/C4Document;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/internal/fleece/FLDict;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/internal/fleece/FLDict;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/couchbase/lite/Document;-><init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4Document;Z)V

    .line 8
    iput-object p3, p0, Lcom/couchbase/lite/Document;->revId:Ljava/lang/String;

    .line 9
    invoke-direct {p0, p4, v1}, Lcom/couchbase/lite/Document;->setContentLocked(Lcom/couchbase/lite/internal/fleece/FLDict;Z)V

    return-void
.end method

.method public static getDocumentOrNull(Lcom/couchbase/lite/Collection;Ljava/lang/String;)Lcom/couchbase/lite/Document;
    .locals 3
    .param p0    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    const-string v0, "collection"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Collection;->getC4Document(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Document;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/C4Document;->isDocDeleted()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/couchbase/lite/Document;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/couchbase/lite/Document;-><init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4Document;Z)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDocumentWithDeleted(Lcom/couchbase/lite/Collection;Ljava/lang/String;)Lcom/couchbase/lite/Document;
    .locals 3
    .param p0    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    const-string v0, "collection"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Collection;->getC4Document(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Document;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/couchbase/lite/Document;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/couchbase/lite/Document;-><init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4Document;Z)V

    return-object v1

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Document not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CouchbaseLite"

    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, v1}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0
.end method

.method public static getDocumentWithRevisions(Lcom/couchbase/lite/Collection;Ljava/lang/String;)Lcom/couchbase/lite/Document;
    .locals 3
    .param p0    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    const-string v0, "collection"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Collection;->getC4DocumentWithRevs(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Document;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/couchbase/lite/Document;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/couchbase/lite/Document;-><init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4Document;Z)V

    return-object v1

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Document not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CouchbaseLite"

    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, v1}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0
.end method

.method private setC4Document(Lcom/couchbase/lite/internal/core/C4Document;Z)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/internal/core/C4Document;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/couchbase/lite/Document;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Document;->updateC4DocumentLocked(Lcom/couchbase/lite/internal/core/C4Document;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4Document;->isRevDeleted()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4Document;->getSelectedBody2()Lcom/couchbase/lite/internal/fleece/FLDict;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/Document;->setContentLocked(Lcom/couchbase/lite/internal/fleece/FLDict;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private setContentLocked(Lcom/couchbase/lite/internal/fleece/FLDict;Z)V
    .locals 4
    .param p1    # Lcom/couchbase/lite/internal/fleece/FLDict;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    iput-object p1, p0, Lcom/couchbase/lite/Document;->data:Lcom/couchbase/lite/internal/fleece/FLDict;

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    new-instance p1, Lcom/couchbase/lite/MutableDictionary;

    invoke-direct {p1}, Lcom/couchbase/lite/MutableDictionary;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/couchbase/lite/Dictionary;

    invoke-direct {p1}, Lcom/couchbase/lite/Dictionary;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/couchbase/lite/Document;->internalDict:Lcom/couchbase/lite/Dictionary;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/couchbase/lite/Document;->root:Lcom/couchbase/lite/internal/fleece/MRoot;

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/couchbase/lite/internal/fleece/MRoot;

    new-instance v2, Lcom/couchbase/lite/DocContext;

    iget-object v3, p0, Lcom/couchbase/lite/Document;->c4Document:Lcom/couchbase/lite/internal/core/C4Document;

    invoke-direct {v2, v0, v3}, Lcom/couchbase/lite/DocContext;-><init>(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/internal/core/C4Document;)V

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLDict;->toFLValue()Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p1

    invoke-direct {v1, v2, p1, p2}, Lcom/couchbase/lite/internal/fleece/MRoot;-><init>(Lcom/couchbase/lite/internal/fleece/MContext;Lcom/couchbase/lite/internal/fleece/FLValue;Z)V

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/fleece/MRoot;->asNative()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "root dictionary"

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/Dictionary;

    iput-object p1, p0, Lcom/couchbase/lite/Document;->internalDict:Lcom/couchbase/lite/Dictionary;

    iput-object v1, p0, Lcom/couchbase/lite/Document;->root:Lcom/couchbase/lite/internal/fleece/MRoot;

    return-void

    :cond_2
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "document has not been saved to a database"

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updateC4DocumentLocked(Lcom/couchbase/lite/internal/core/C4Document;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/core/C4Document;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Document;->c4Document:Lcom/couchbase/lite/internal/core/C4Document;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/couchbase/lite/Document;->c4Document:Lcom/couchbase/lite/internal/core/C4Document;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/couchbase/lite/Document;->revId:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public compareAge(Lcom/couchbase/lite/Document;)I
    .locals 2
    .param p1    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->getTimestamp()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Dictionary;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public count()I
    .locals 0

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/Dictionary;->count()I

    move-result p0

    return p0
.end method

.method public final encode()Lcom/couchbase/lite/internal/fleece/FLSliceResult;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/couchbase/lite/AbstractDatabase;->getSharedFleeceEncoder()Lcom/couchbase/lite/internal/fleece/FLEncoder;

    move-result-object v0

    :try_start_0
    const-string v1, "BLOB.db"

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->setArg(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/internal/fleece/FLEncoder;

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/Dictionary;->encodeTo(Lcom/couchbase/lite/internal/fleece/FLEncoder;)V

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->finish2()Lcom/couchbase/lite/internal/fleece/FLSliceResult;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0

    :cond_1
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "encode called with null database"

    invoke-direct {p0, v0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/couchbase/lite/Document;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/couchbase/lite/Document;

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/couchbase/lite/Document;->id:Ljava/lang/String;

    iget-object v2, p1, Lcom/couchbase/lite/Document;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Dictionary;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method final exists()Z
    .locals 1

    iget-object v0, p0, Lcom/couchbase/lite/Document;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Document;->c4Document:Lcom/couchbase/lite/internal/core/C4Document;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Document;->docExists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getArray(Ljava/lang/String;)Lcom/couchbase/lite/Array;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Dictionary;->getArray(Ljava/lang/String;)Lcom/couchbase/lite/Array;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getArray(Ljava/lang/String;)Lcom/couchbase/lite/ArrayInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Document;->getArray(Ljava/lang/String;)Lcom/couchbase/lite/Array;

    move-result-object p0

    return-object p0
.end method

.method public getBlob(Ljava/lang/String;)Lcom/couchbase/lite/Blob;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Dictionary;->getBlob(Ljava/lang/String;)Lcom/couchbase/lite/Blob;

    move-result-object p0

    return-object p0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Dictionary;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final getC4doc()Lcom/couchbase/lite/internal/core/C4Document;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Document;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Document;->c4Document:Lcom/couchbase/lite/internal/core/C4Document;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCollection()Lcom/couchbase/lite/Collection;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/Document;->collection:Lcom/couchbase/lite/Collection;

    return-object p0
.end method

.method public final getContent()Lcom/couchbase/lite/Dictionary;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Document;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Document;->internalDict:Lcom/couchbase/lite/Dictionary;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getDatabase()Lcom/couchbase/lite/Database;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Document;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Document;->collection:Lcom/couchbase/lite/Collection;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getDatabase()Lcom/couchbase/lite/Database;

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

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Dictionary;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/Dictionary;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Dictionary;->getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/DictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Document;->getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    return-object p0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Dictionary;->getDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Dictionary;->getFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/Document;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Dictionary;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getKeys()Ljava/util/List;
    .locals 0
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

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/Dictionary;->getKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Dictionary;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Dictionary;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public getRevisionHistory()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Document;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Document;->c4Document:Lcom/couchbase/lite/internal/core/C4Document;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/couchbase/lite/Document;->collection:Lcom/couchbase/lite/Collection;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/couchbase/lite/Collection;->getOpenC4Collection()Lcom/couchbase/lite/internal/core/C4Collection;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/couchbase/lite/Document;->c4Document:Lcom/couchbase/lite/internal/core/C4Document;

    const-wide/32 v3, 0x7fffffff

    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/couchbase/lite/internal/core/C4Document;->getRevisionHistory(Lcom/couchbase/lite/internal/core/C4Collection;JLjava/util/List;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0

    :cond_1
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string v1, "Document has no collection"

    invoke-direct {p0, v1}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getRevisionID()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Document;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Document;->c4Document:Lcom/couchbase/lite/internal/core/C4Document;

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/couchbase/lite/Document;->revId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/core/C4Document;->getSelectedRevID()Ljava/lang/String;

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

.method public getSequence()J
    .locals 3

    iget-object v0, p0, Lcom/couchbase/lite/Document;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Document;->c4Document:Lcom/couchbase/lite/internal/core/C4Document;

    if-nez p0, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Document;->getSelectedSequence()J

    move-result-wide v1

    :goto_0
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Dictionary;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimestamp()J
    .locals 3

    iget-object v0, p0, Lcom/couchbase/lite/Document;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Document;->c4Document:Lcom/couchbase/lite/internal/core/C4Document;

    if-nez p0, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Document;->getTimestamp()J

    move-result-wide v1

    :goto_0
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Dictionary;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/couchbase/lite/Database;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/couchbase/lite/Document;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/Dictionary;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method final isDeleted()Z
    .locals 1

    iget-object v0, p0, Lcom/couchbase/lite/Document;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/Document;->c4Document:Lcom/couchbase/lite/internal/core/C4Document;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Document;->isRevDeleted()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method final isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/Dictionary;->isEmpty()Z

    move-result p0

    return p0
.end method

.method final isMutable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/couchbase/lite/Document;->mutable:Z

    return p0
.end method

.method final isNewDocument()Z
    .locals 0

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getRevisionID()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/Document;->internalDict:Lcom/couchbase/lite/Dictionary;

    invoke-virtual {p0}, Lcom/couchbase/lite/Dictionary;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final replaceC4Document(Lcom/couchbase/lite/internal/core/C4Document;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/core/C4Document;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/couchbase/lite/Document;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/couchbase/lite/Document;->updateC4DocumentLocked(Lcom/couchbase/lite/internal/core/C4Document;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final selectConflictingRevision()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Document;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Document;->c4Document:Lcom/couchbase/lite/internal/core/C4Document;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :cond_0
    :goto_0
    if-nez v2, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/couchbase/lite/Document;->c4Document:Lcom/couchbase/lite/internal/core/C4Document;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v3}, Lcom/couchbase/lite/internal/core/C4Document;->selectNextLeafRevision(ZZ)V
    :try_end_1
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/couchbase/lite/Document;->c4Document:Lcom/couchbase/lite/internal/core/C4Document;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/core/C4Document;->isRevConflicted()Z

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v1

    iget v3, v1, Lcom/couchbase/lite/LiteCoreException;->code:I

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    throw v1

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/couchbase/lite/Document;->c4Document:Lcom/couchbase/lite/internal/core/C4Document;

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->isMutable()Z

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/couchbase/lite/Document;->setC4Document(Lcom/couchbase/lite/internal/core/C4Document;Z)V

    :cond_3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public setCollection(Lcom/couchbase/lite/Collection;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/couchbase/lite/Document;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/couchbase/lite/Document;->collection:Lcom/couchbase/lite/Collection;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setContent(Lcom/couchbase/lite/Dictionary;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Dictionary;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "content"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/couchbase/lite/Document;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/couchbase/lite/Document;->internalDict:Lcom/couchbase/lite/Dictionary;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toJSON()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/Document;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/couchbase/lite/Document;->c4Document:Lcom/couchbase/lite/internal/core/C4Document;

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4Document;->bodyAsJSON(Z)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_0
    monitor-exit v0

    goto :goto_0

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

    sget-object v0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    const-string v1, "Failed encoding document as JSON"

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public toMap()Ljava/util/Map;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/Dictionary;->toMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public toMutable()Lcom/couchbase/lite/MutableDocument;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/Document;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/Document;->revId:Ljava/lang/String;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/couchbase/lite/MutableDocument;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/MutableDocument;-><init>(Lcom/couchbase/lite/Document;)V

    return-object v0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Editing replication filter documents not supported"

    invoke-direct {p0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Document{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/ClassUtils;->objId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/Document;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getRevisionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->isMutable()Z

    move-result v1

    const/16 v2, 0x2e

    if-eqz v1, :cond_0

    const/16 v1, 0x2b

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x3f

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/couchbase/lite/Document;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
