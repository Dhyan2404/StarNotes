.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverSearchFileListAction;
.super Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction<",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002R\u0014\u0010\n\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverSearchFileListAction;",
        "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;",
        "getProvider",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "searchCloudFileList",
        "e",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;",
        "oneDriveProvider",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
        "f",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
        "queryArgs",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V",
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
.field public final e:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "oneDriveProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverSearchFileListAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverSearchFileListAction;->f:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    return-void
.end method

.method public static final synthetic access$searchCloudFileList(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverSearchFileListAction;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverSearchFileListAction;->searchCloudFileList()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverSearchFileListAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverSearchFileListAction$a;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverSearchFileListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverSearchFileListAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverSearchFileListAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    return-object p0
.end method

.method public final searchCloudFileList()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverSearchFileRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverSearchFileListAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->getOneDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverSearchFileListAction;->f:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverSearchFileRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriverSearchFileRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    invoke-direct {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;-><init>()V

    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Companion;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverSearchFileListAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object v4

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverSearchFileListAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3, v4, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverFileInfo$Companion;->toCloudFiles(Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setList(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->getCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setCount(J)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->getFetchSource()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setFetchSource(I)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->getCursor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setCursor(Ljava/lang/String;)V

    return-object v1
.end method
