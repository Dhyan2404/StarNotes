.class public final Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverSearchFileRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult<",
        "Lcom/google/api/services/drive/model/File;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverSearchFileRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;",
        "Lcom/google/api/services/drive/model/File;",
        "googleDriverProvider",
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;",
        "args",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V",
        "execute",
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
.field private final args:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverSearchFileRequest;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverSearchFileRequest;->args:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    return-void
.end method


# virtual methods
.method public execute()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult<",
            "Lcom/google/api/services/drive/model/File;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;-><init>()V

    .line 3
    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverSearchFileRequest;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverSearchFileRequest;->args:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;->getQuery()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v1, v2, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->searchFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setList(Ljava/util/List;)V

    const/4 p0, 0x1

    .line 7
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setFetchSource(I)V

    .line 8
    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setCount(J)V

    .line 9
    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverSearchFileRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "search count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->getCount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverSearchFileRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object p0

    return-object p0
.end method
