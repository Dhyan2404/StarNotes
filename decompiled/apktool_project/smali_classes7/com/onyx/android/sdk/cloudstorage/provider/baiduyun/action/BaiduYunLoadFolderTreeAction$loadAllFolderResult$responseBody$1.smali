.class public final Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunLoadFolderTreeAction$loadAllFolderResult$responseBody$1;
.super Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAllFileListRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunLoadFolderTreeAction;->loadAllFolderResult()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaiduYunLoadFolderTreeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaiduYunLoadFolderTreeAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunLoadFolderTreeAction$loadAllFolderResult$responseBody$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n1855#2,2:57\n*S KotlinDebug\n*F\n+ 1 BaiduYunLoadFolderTreeAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunLoadFolderTreeAction$loadAllFolderResult$responseBody$1\n*L\n36#1:57,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunLoadFolderTreeAction$loadAllFolderResult$responseBody$1",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBaiduYunLoadFolderTreeAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaiduYunLoadFolderTreeAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunLoadFolderTreeAction$loadAllFolderResult$responseBody$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n1855#2,2:57\n*S KotlinDebug\n*F\n+ 1 BaiduYunLoadFolderTreeAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunLoadFolderTreeAction$loadAllFolderResult$responseBody$1\n*L\n36#1:57,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunLoadFolderTreeAction;

.field public final synthetic d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunLoadFolderTreeAction;Ljava/util/Map;Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunLoadFolderTreeAction;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunLoadFolderTreeAction$loadAllFolderResult$responseBody$1;->c:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunLoadFolderTreeAction;

    iput-object p3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunLoadFolderTreeAction$loadAllFolderResult$responseBody$1;->d:Ljava/util/Map;

    invoke-direct {p0, p4, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunFetchAllFileListRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;)V

    return-void
.end method


# virtual methods
.method public onBatchList(Ljava/util/List;)Z
    .locals 4
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

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunLoadFolderTreeAction$loadAllFolderResult$responseBody$1;->c:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunLoadFolderTreeAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunLoadFolderTreeAction;->access$getBaiduYunProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunLoadFolderTreeAction;)Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo$Companion;->toCloudFiles(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunLoadFolderTreeAction$loadAllFolderResult$responseBody$1;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getDir()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunLoadFolderTreeAction$loadAllFolderResult$responseBody$1;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
