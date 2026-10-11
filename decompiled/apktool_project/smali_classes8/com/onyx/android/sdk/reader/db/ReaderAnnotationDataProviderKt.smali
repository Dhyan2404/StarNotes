.class public final Lcom/onyx/android/sdk/reader/db/ReaderAnnotationDataProviderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u0012\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\n"
    }
    d2 = {
        "annotationExpression",
        "Lcom/couchbase/lite/Expression;",
        "getAnnotationCount",
        "",
        "Lcom/onyx/android/sdk/reader/db/ReaderDataProvider;",
        "queryArgs",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "loadAnnotationList",
        "",
        "Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;",
        "sdk-reader_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final annotationExpression()Lcom/couchbase/lite/Expression;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->INSTANCE:Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "modeType"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/data/couchbase/utils/CouchUtils;->equalExpression(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/Expression;

    move-result-object v0

    return-object v0
.end method

.method public static final getAnnotationCount(Lcom/onyx/android/sdk/reader/db/ReaderDataProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/reader/db/ReaderDataProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/android/sdk/reader/db/ReaderAnnotationDataProviderKt;->annotationExpression()Lcom/couchbase/lite/Expression;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->andWith(Lcom/couchbase/lite/Expression;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/reader/db/ReaderDataProvider;->getModelCount(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final loadAnnotationList(Lcom/onyx/android/sdk/reader/db/ReaderDataProvider;Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/onyx/android/sdk/reader/db/ReaderDataProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/reader/db/ReaderDataProvider;",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/onyx/android/sdk/reader/sync/model/SyncAnnotationModel;

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/reader/db/ReaderDataProvider;->loadModelList(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
