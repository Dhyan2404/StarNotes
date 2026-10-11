.class public final Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileListAction;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/FetchFileInfoListAction;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0014J\u0008\u0010\t\u001a\u00020\nH\u0014J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileListAction;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/FetchFileInfoListAction;",
        "googleDriverProvider",
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;",
        "queryArgs",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V",
        "fetchCloud",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
        "getCloudPrefixPath",
        "",
        "getProvider",
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
.field private final googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "googleDriverProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/FetchFileInfoListAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileListAction;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    return-void
.end method

.method public static final synthetic access$getGoogleDriverProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileListAction;)Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileListAction;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    return-object p0
.end method


# virtual methods
.method public fetchCloud()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchFileListRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileListAction;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/FetchFileInfoListAction;->getQueryArgs()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchFileListRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchFileListRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion;

    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileListAction$fetchCloud$cloudResult$1;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileListAction$fetchCloud$cloudResult$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileListAction;)V

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult$Companion;->from(Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/FetchFileInfoListAction;->getQueryArgs()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getParentId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileListAction;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, p0, v1, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;->setFileInfoPath(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public getCloudPrefixPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, ""

    return-object p0
.end method

.method public bridge synthetic getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileListAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/action/GoogleDriverFetchFileListAction;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    return-object p0
.end method
