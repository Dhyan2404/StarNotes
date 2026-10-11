.class public abstract Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;",
        "",
        "couchHolder",
        "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;",
        "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V",
        "getCouchHolder",
        "()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;",
        "database",
        "Lcom/couchbase/lite/Database;",
        "getDatabase",
        "()Lcom/couchbase/lite/Database;",
        "ensureCollection",
        "Lcom/couchbase/lite/Collection;",
        "collectionName",
        "",
        "ensureCollectionImpl",
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


# instance fields
.field private final couchHolder:Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "couchHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->couchHolder:Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    return-void
.end method

.method private final ensureCollectionImpl(Ljava/lang/String;)Lcom/couchbase/lite/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/couchbase/lite/Database;->getCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Database;->createCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    const-string p1, "createCollection(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final ensureCollection(Ljava/lang/String;)Lcom/couchbase/lite/Collection;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "collectionName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->ensureCollectionImpl(Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureCollection fail, collectionName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,dbName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->couchHolder:Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->getDbName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->file(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->ensureCollectionImpl(Ljava/lang/String;)Lcom/couchbase/lite/Collection;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getCouchHolder()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->couchHolder:Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    return-object p0
.end method

.method public final getDatabase()Lcom/couchbase/lite/Database;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;->couchHolder:Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureDB()Lcom/couchbase/lite/Database;

    move-result-object p0

    return-object p0
.end method
