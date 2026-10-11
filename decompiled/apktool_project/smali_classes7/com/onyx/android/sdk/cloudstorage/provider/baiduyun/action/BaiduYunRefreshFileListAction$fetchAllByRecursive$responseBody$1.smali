.class public final Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunRefreshFileListAction$fetchAllByRecursive$responseBody$1;
.super Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAllFileListRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunRefreshFileListAction;->fetchAllByRecursive()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunRefreshFileListAction$fetchAllByRecursive$responseBody$1",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAllFileListRequest;",
        "onBatchList",
        "",
        "list",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;",
        "sdk-cloudstorage_release"
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
.field public final synthetic c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunRefreshFileListAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;Ljava/util/List;Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunRefreshFileListAction;Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunRefreshFileListAction;",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunRefreshFileListAction$fetchAllByRecursive$responseBody$1;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunRefreshFileListAction$fetchAllByRecursive$responseBody$1;->d:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunRefreshFileListAction;

    invoke-direct {p0, p4, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAllFileListRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;)V

    return-void
.end method


# virtual methods
.method public onBatchList(Ljava/util/List;)Z
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunRefreshFileListAction$fetchAllByRecursive$responseBody$1;->c:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunRefreshFileListAction$fetchAllByRecursive$responseBody$1;->d:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunRefreshFileListAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunRefreshFileListAction;->access$getBaiduYunProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunRefreshFileListAction;)Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo$Companion;->toCloudFiles(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAddAll(Ljava/util/Collection;Ljava/util/Collection;)V

    const/4 p0, 0x0

    return p0
.end method
