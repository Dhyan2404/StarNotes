.class public abstract Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateCloudFolderAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateCloudFolderAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,131:1\n1855#2,2:132\n1855#2,2:134\n*S KotlinDebug\n*F\n+ 1 CreateCloudFolderAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction\n*L\n58#1:132,2\n104#1:134,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0016J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00072\u0006\u0010\u0006\u001a\u00020\u0005H$J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u001a\u0010\u000f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u0002J\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0002H\u0002J\u0018\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0002R\u001a\u0010\u0006\u001a\u00020\u00058\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;",
        "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "cloudFile",
        "Lcom/onyx/android/sdk/data/common/data/ResponeData;",
        "createFolder",
        "l",
        "o",
        "m",
        "",
        "errno",
        "fileBean",
        "n",
        "oldCloudFile",
        "result",
        "p",
        "oldFileBean",
        "",
        "newId",
        "",
        "q",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "getCloudFile",
        "()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCreateCloudFolderAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateCloudFolderAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,131:1\n1855#2,2:132\n1855#2,2:134\n*S KotlinDebug\n*F\n+ 1 CreateCloudFolderAction.kt\ncom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction\n*L\n58#1:132,2\n104#1:134,2\n*E\n"
    }
.end annotation


# instance fields
.field private final cloudFile:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cloudFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;->cloudFile:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    return-void
.end method

.method public static final synthetic access$create(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;->l(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ensureParentCreated(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;->o(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveToLocal(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;->p(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->createObservableWithUpdateClusterInfo()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction$a;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction$b;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction$c;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public abstract createFolder(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/data/common/data/ResponeData;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getCloudFile()Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;->cloudFile:Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->queryFileInfoByLocalPath(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getSyncStatus()Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->isNewFromLocal()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;->n(ILcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;->m(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    move-result-object p0

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->setParentId(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/FileUtils;->computeMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;->createFolder(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/data/common/data/ResponeData;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/ResultCode;->Companion:Lcom/onyx/android/sdk/data/common/data/ResultCode$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/common/data/ResultCode$Companion;->isSuccessful(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/ResponeData;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->getCode()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;->n(ILcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    move-result-object p0

    return-object p0
.end method

.method public final n(ILcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
    .locals 0

    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->setCode(I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    filled-new-array {p2}, [Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setList(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->ensureList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->setCount(J)V

    return-object p0
.end method

.method public final o(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->queryParentFolderReverse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getDir()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getSyncStatus()Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->isNewFromLocal()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ensure create parent folder:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;->m(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;->p(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final p(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;
    .locals 5

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/data/ResultCode;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->getList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNonBlank(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;->getList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->setParentId(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    sget-object v3, Lcom/onyx/android/sdk/cloudstorage/constans/CloudStorageConstants;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/constans/CloudStorageConstants;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getProvider()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/cloudstorage/constans/CloudStorageConstants;->getCloudOnyxPath(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getCloudFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    sget-object v3, Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;->NEW_FROM_CLOUD:Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;

    invoke-virtual {p1, v3}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->setSyncStatus(Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;->q(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->saveCloudFiles(Ljava/util/Collection;)V

    :cond_4
    return-object p2
.end method

.method public final q(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->delete(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getCloudStorageRecordProvider()Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/onyx/android/sdk/cloudstorage/db/CloudStorageRecordProvider;->updateParentId(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",update "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
