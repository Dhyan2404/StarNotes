.class final Lcom/couchbase/lite/N1qlQuery;
.super Lcom/couchbase/lite/AbstractQuery;
.source "SourceFile"


# instance fields
.field private final db:Lcom/couchbase/lite/AbstractDatabase;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final n1ql:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/AbstractDatabase;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/AbstractDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractQuery;-><init>()V

    const-string v0, "query"

    invoke-static {p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/couchbase/lite/N1qlQuery;->n1ql:Ljava/lang/String;

    const-string p2, "database"

    invoke-static {p1, p2}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/AbstractDatabase;

    iput-object p1, p0, Lcom/couchbase/lite/N1qlQuery;->db:Lcom/couchbase/lite/AbstractDatabase;

    return-void
.end method


# virtual methods
.method public getDatabase()Lcom/couchbase/lite/AbstractDatabase;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/N1qlQuery;->db:Lcom/couchbase/lite/AbstractDatabase;

    return-object p0
.end method

.method public prepQueryLocked(Lcom/couchbase/lite/AbstractDatabase;)Lcom/couchbase/lite/internal/core/C4Query;
    .locals 3
    .param p1    # Lcom/couchbase/lite/AbstractDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "AbstractQuery.lock"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/AbstractQuery;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    iget-object v1, p0, Lcom/couchbase/lite/N1qlQuery;->n1ql:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "N1QL query: %s"

    invoke-static {v0, v2, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/couchbase/lite/N1qlQuery;->n1ql:Ljava/lang/String;

    invoke-static {v0}, Lcom/couchbase/lite/internal/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/N1qlQuery;->n1ql:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/AbstractDatabase;->createN1qlQuery(Ljava/lang/String;)Lcom/couchbase/lite/internal/core/C4Query;

    move-result-object p0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string p1, "Query is null or empty."

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "N1qlQuery{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/ClassUtils;->objId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", n1ql="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/N1qlQuery;->n1ql:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
