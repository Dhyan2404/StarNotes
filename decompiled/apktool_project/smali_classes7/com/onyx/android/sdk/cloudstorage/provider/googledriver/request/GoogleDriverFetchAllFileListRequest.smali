.class public Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;
.super Lcom/onyx/android/sdk/base/rx/RxBaseRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest<",
        "Ljava/util/List<",
        "Lcom/google/api/services/drive/model/File;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGoogleDriverFetchAllFileListRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleDriverFetchAllFileListRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n1855#2,2:48\n*S KotlinDebug\n*F\n+ 1 GoogleDriverFetchAllFileListRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest\n*L\n37#1:48,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0016\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0003H\u0014J\u000e\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;",
        "",
        "Lcom/google/api/services/drive/model/File;",
        "googleDriverProvider",
        "Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;",
        "queryArgs",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V",
        "recursive",
        "",
        "getRecursive",
        "()Z",
        "setRecursive",
        "(Z)V",
        "abort",
        "file",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGoogleDriverFetchAllFileListRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleDriverFetchAllFileListRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n1855#2,2:48\n*S KotlinDebug\n*F\n+ 1 GoogleDriverFetchAllFileListRequest.kt\ncom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest\n*L\n37#1:48,2\n*E\n"
    }
.end annotation


# instance fields
.field private final googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final queryArgs:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private recursive:Z


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

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseRequest;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;->queryArgs:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;->recursive:Z

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;Lcom/google/api/services/drive/model/File;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;->execute$lambda$0(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;Lcom/google/api/services/drive/model/File;)Z

    move-result p0

    return p0
.end method

.method private static final execute$lambda$0(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;Lcom/google/api/services/drive/model/File;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;->abort(Lcom/google/api/services/drive/model/File;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public abort(Lcom/google/api/services/drive/model/File;)Z
    .locals 0
    .param p1    # Lcom/google/api/services/drive/model/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "file"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public execute()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/drive/model/File;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;->googleDriverProvider:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-boolean v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;->recursive:Z

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;->queryArgs:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    new-instance v3, Lcom/sunia/HTREnginev2/j4h;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/j4h;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->fetchAllList(Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;Lio/reactivex/rxjava3/functions/Predicate;)Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;->queryArgs:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {v2, v0, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->configRootParent(Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    .line 7
    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;->queryArgs:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriveManager;->fetchList(Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lcom/google/api/services/drive/model/FileList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/drive/model/FileList;->getFiles()Ljava/util/List;

    move-result-object v0

    const-string v1, "getFiles(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    :goto_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/drive/model/File;

    .line 10
    sget-object v3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/google/api/services/drive/model/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v2, v5}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public final getRecursive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;->recursive:Z

    return p0
.end method

.method public final setRecursive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/request/GoogleDriverFetchAllFileListRequest;->recursive:Z

    return-void
.end method
