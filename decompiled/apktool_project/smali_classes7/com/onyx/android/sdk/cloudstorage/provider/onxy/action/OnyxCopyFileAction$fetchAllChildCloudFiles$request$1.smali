.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxCopyFileAction$fetchAllChildCloudFiles$request$1;
.super Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxFetchAllFileListRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxCopyFileAction;->fetchAllChildCloudFiles(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation$OperationData;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/onyx/android/sdk/cloudstorage/provider/onxy/action/OnyxCopyFileAction$fetchAllChildCloudFiles$request$1",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxFetchAllFileListRequest;",
        "createGetListBean",
        "Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;",
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


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxFetchAllFileListRequest;-><init>(Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;)V

    return-void
.end method


# virtual methods
.method public createGetListBean()Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-super {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/request/OnyxFetchAllFileListRequest;->createGetListBean()Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;

    move-result-object p0

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/common/oss/GetListObjectBean;->setDelimiter(Ljava/lang/String;)V

    return-object p0
.end method
