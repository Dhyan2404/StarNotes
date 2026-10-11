.class final Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchFileListRequest$fetch$response$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchFileListRequest;->a(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lretrofit2/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunService;",
        "Lretrofit2/Call<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lretrofit2/Call;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;",
        "service",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunService;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $queryArgs:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

.field final synthetic this$0:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchFileListRequest;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchFileListRequest;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchFileListRequest$fetch$response$1;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchFileListRequest;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchFileListRequest$fetch$response$1;->$queryArgs:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunService;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchFileListRequest$fetch$response$1;->invoke(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunService;)Lretrofit2/Call;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunService;)Lretrofit2/Call;
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunService;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "list"

    const-string v3, "web"

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchFileListRequest$fetch$response$1;->this$0:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchFileListRequest;

    invoke-static {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchFileListRequest;->access$getBaiduYunProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchFileListRequest;)Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchFileListRequest$fetch$response$1;->$queryArgs:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getParentId()Ljava/lang/String;

    move-result-object v1

    const-string v4, "/"

    .line 4
    invoke-virtual {v0, v1, v4}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->getCloudFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchFileListRequest$fetch$response$1;->$queryArgs:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getOffset()J

    move-result-wide v0

    long-to-int v5, v0

    .line 6
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchFileListRequest$fetch$response$1;->$queryArgs:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getLimit()I

    move-result v6

    .line 7
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchFileListRequest$fetch$response$1;->$queryArgs:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getSortBy()Lcom/onyx/android/sdk/base/data/SortBy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs$Companion;->getSortBy(Lcom/onyx/android/sdk/base/data/SortBy;)Ljava/lang/String;

    move-result-object v7

    .line 8
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchFileListRequest$fetch$response$1;->$queryArgs:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getOrder()Lcom/onyx/android/sdk/base/data/SortOrder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs$Companion;->getSortOrder(Lcom/onyx/android/sdk/base/data/SortOrder;)Ljava/lang/String;

    move-result-object v8

    move-object v1, p1

    .line 9
    invoke-interface/range {v1 .. v8}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunService;->fetchFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    return-object p0
.end method
