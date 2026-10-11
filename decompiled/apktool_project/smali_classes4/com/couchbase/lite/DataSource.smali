.class public Lcom/couchbase/lite/DataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/DataSource$As;
    }
.end annotation


# instance fields
.field protected alias:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final source:Lcom/couchbase/lite/Collection;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/couchbase/lite/Collection;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/DataSource;->source:Lcom/couchbase/lite/Collection;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/DataSource$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/couchbase/lite/DataSource;-><init>(Lcom/couchbase/lite/Collection;)V

    return-void
.end method

.method public static collection(Lcom/couchbase/lite/Collection;)Lcom/couchbase/lite/DataSource$As;
    .locals 1
    .param p0    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "collection"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/DataSource$As;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/DataSource$As;-><init>(Lcom/couchbase/lite/Collection;)V

    return-object v0
.end method

.method public static database(Lcom/couchbase/lite/Database;)Lcom/couchbase/lite/DataSource$As;
    .locals 2
    .param p0    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "NP_NULL_ON_SOME_PATH_FROM_RETURN_VALUE"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "database"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object v0
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/couchbase/lite/DataSource$As;

    invoke-direct {v1, v0}, Lcom/couchbase/lite/DataSource$As;-><init>(Lcom/couchbase/lite/Collection;)V

    invoke-virtual {p0}, Lcom/couchbase/lite/Database;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/couchbase/lite/DataSource$As;->as(Ljava/lang/String;)Lcom/couchbase/lite/DataSource;

    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Database not open"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public asJSON()Ljava/util/Map;
    .locals 3
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/couchbase/lite/DataSource;->source:Lcom/couchbase/lite/Collection;

    invoke-virtual {v1}, Lcom/couchbase/lite/Collection;->getFullName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "COLLECTION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/couchbase/lite/DataSource;->alias:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v1, "AS"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getDatabase()Lcom/couchbase/lite/AbstractDatabase;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/DataSource;->source:Lcom/couchbase/lite/Collection;

    invoke-virtual {p0}, Lcom/couchbase/lite/Collection;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    return-object p0
.end method
