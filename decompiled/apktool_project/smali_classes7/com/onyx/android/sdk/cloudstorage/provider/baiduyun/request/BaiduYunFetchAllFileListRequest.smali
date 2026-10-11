.class public Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAllFileListRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\u000c\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0015J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0002R\u0014\u0010\u000e\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\rR\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAllFileListRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;",
        "execute",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;",
        "list",
        "",
        "onBatchList",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;",
        "queryArgs",
        "a",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;",
        "baiduYunProvider",
        "b",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;)V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "baiduYunProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAllFileListRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAllFileListRequest;->b:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;)Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAllFileListRequest$fetch$map$1;

    invoke-direct {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAllFileListRequest$fetch$map$1;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAllFileListRequest;->a:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;->getBaiduYunClient()Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/utils/BaiduYunClient;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAllFileListRequest$fetch$response$1;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAllFileListRequest$fetch$response$1;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/utils/BaiduYunClient;->executeCall(Lkotlin/jvm/functions/Function1;)Lretrofit2/Response;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "body(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-virtual {p0}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public execute()Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAllFileListRequest;->b:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;->copy()Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAllFileListRequest;->b:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;

    .line 3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;->getStart()I

    move-result v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAllFileListRequest;->b:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;->setStart(I)V

    .line 5
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAllFileListRequest;->b:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAllFileListRequest;->a(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;)Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;->getList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAllFileListRequest;->onBatchList(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAllFileListRequest;->b:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;->getLimit()I

    move-result v3

    if-ge v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;->getCursor()I

    move-result v2

    .line 9
    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAllFileListRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;

    move-result-object p0

    return-object p0
.end method

.method public onBatchList(Ljava/util/List;)Z
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
