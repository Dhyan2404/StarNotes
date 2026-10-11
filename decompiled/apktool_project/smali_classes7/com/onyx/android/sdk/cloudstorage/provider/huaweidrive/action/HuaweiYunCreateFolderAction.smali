.class public final Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCreateFolderAction;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016R\u0014\u0010\n\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCreateFolderAction;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "cloudFile",
        "Lcom/onyx/android/sdk/data/common/data/ResponeData;",
        "createFolder",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;",
        "getProvider",
        "e",
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;",
        "huaweiYunProvider",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V",
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
.field public final e:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "huaweiYunProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cloudFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCreateFolderAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    return-void
.end method


# virtual methods
.method public createFolder(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/data/common/data/ResponeData;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ")",
            "Lcom/onyx/android/sdk/data/common/data/ResponeData<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cloudFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/data/common/data/ResponeData;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/data/ResponeData;-><init>()V

    :try_start_0
    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunCreateFolderRequest;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCreateFolderAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-direct {v1, v2, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunCreateFolderRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/request/HuaweiYunCreateFolderRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCreateFolderAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;->toCloudFile(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunFileListResult$File;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setParentId(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/data/ResponeData;->setData(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/onyx/android/sdk/data/common/exception/CloudNoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->getCode()I

    move-result p1

    const/16 v1, 0x193

    if-ne p1, v1, :cond_0

    const/16 p0, 0x3e9

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->setCode(I)V

    :goto_0
    return-object v0

    :cond_0
    throw p0
.end method

.method public bridge synthetic getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCreateFolderAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/action/HuaweiYunCreateFolderAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    return-object p0
.end method
