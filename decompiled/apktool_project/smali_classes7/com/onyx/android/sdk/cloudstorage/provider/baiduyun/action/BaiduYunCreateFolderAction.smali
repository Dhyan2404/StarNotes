.class public final Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunCreateFolderAction;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000c\u001a\u00020\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0014\u0010\u000c\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunCreateFolderAction;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "cloudFile",
        "Lcom/onyx/android/sdk/data/common/data/ResponeData;",
        "createFolder",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;",
        "getProvider",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;",
        "r",
        "e",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;",
        "baiduYunProvider",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V",
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
.field public final e:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "baiduYunProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cloudFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunCreateFolderAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCreateFolderRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunCreateFolderAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunCreateFolderAction;->r(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCreateFolderRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunCreateFolderRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/data/common/data/ResponeData;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/common/data/ResponeData;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileResponseBody;->mapToStandardError()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->setCode(I)V

    sget-object v1, Lcom/onyx/android/sdk/data/common/data/ResultCode;->Companion:Lcom/onyx/android/sdk/data/common/data/ResultCode$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/data/ResultCode$Companion;->isSuccessful(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunCreateFolderAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo$Companion;->toCloudFile(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/data/ResponeData;->setData(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunCreateFolderAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunCreateFolderAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    return-object p0
.end method

.method public final r(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;
    .locals 5

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunCreateFolderAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getParentId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->getCloudFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunCreateFolderAction;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " create folder, parent cloud Dir:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;

    invoke-direct {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;-><init>()V

    const-string v0, "create"

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;->setMethod(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;->setPath(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;->setIsdir(I)V

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;->setRtype(I)V

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunQueryArgs;->setSize(I)V

    return-object p1
.end method
