.class public final Lcom/onyx/android/sdk/reader/db/ReaderDataProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J,\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\"\u0008\u0008\u0000\u0010\u0003*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u0004R\u0017\u0010\u0011\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/reader/db/ReaderDataProvider;",
        "",
        "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
        "T",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "queryArgs",
        "Ljava/lang/Class;",
        "cls",
        "",
        "loadModelList",
        "",
        "getModelCount",
        "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;",
        "a",
        "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;",
        "getCouchHolder",
        "()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;",
        "couchHolder",
        "<init>",
        "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V",
        "sdk-reader_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
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

    iput-object p1, p0, Lcom/onyx/android/sdk/reader/db/ReaderDataProvider;->a:Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    return-void
.end method


# virtual methods
.method public final getCouchHolder()Lcom/onyx/android/sdk/data/couchbase/CouchHolder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/db/ReaderDataProvider;->a:Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    return-object p0
.end method

.method public final getModelCount(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "queryArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->getWhereEx()Lcom/couchbase/lite/Expression;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->uniqueIdValued()Lcom/couchbase/lite/Expression;

    move-result-object p1

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/db/ReaderDataProvider;->a:Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureDB()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->queryDocumentCount(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/Expression;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final loadModelList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;",
            ">(",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "queryArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cls"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/reader/db/ReaderDataProvider;->a:Lcom/onyx/android/sdk/data/couchbase/CouchHolder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CouchHolder;->ensureDB()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->queryModelList(Lcom/couchbase/lite/Database;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
