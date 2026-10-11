.class public final Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;
.super Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction<",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 \u001b2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001bB\u001d\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00070\r\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0016J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002H\u0014J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\t\u001a\u00020\u0007H\u0014J\u0008\u0010\u000c\u001a\u00020\u0004H\u0016J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\rH\u0002J\u0008\u0010\u0010\u001a\u00020\u000fH\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
        "create",
        "r",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "toCloudFile",
        "cloudFile",
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;",
        "createUploadRequest",
        "getProvider",
        "",
        "w",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;",
        "v",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;",
        "e",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;",
        "baiduYunProvider",
        "f",
        "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;",
        "userBean",
        "fileBeans",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Ljava/util/List;)V",
        "Companion",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Lcom/onyx/android/sdk/data/cache/TimedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/data/cache/TimedCache<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction$Companion;

    new-instance v0, Lcom/onyx/android/sdk/data/cache/TimedCache;

    const-wide/32 v1, 0x927c0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/data/cache/TimedCache;-><init>(J)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;->g:Lcom/onyx/android/sdk/data/cache/TimedCache;

    return-void
.end method

.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "baiduYunProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileBeans"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;

    invoke-direct {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;->f:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;

    return-void
.end method

.method public static final synthetic access$create$s-1073564717(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-super {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadUserInfo(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;)Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;->v()Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$saveCloudFileInfoList(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;->w()Ljava/util/List;

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
            "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->createMultiObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction$a;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction$b;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction$c;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public createUploadRequest(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest;
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
            "Lcom/onyx/android/sdk/cloudstorage/provider/common/request/TransferCloudFileRequest<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cloudFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunUploadFileRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;->f:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunUploadFileRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;Ljava/lang/String;Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;)V

    return-object v0
.end method

.method public getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    return-object p0
.end method

.method public toCloudFile(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo$Companion;->toCloudFile(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toCloudFile(Ljava/lang/Object;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;->toCloudFile(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunFileInfo;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    return-object p0
.end method

.method public final v()Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;
    .locals 4

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;->g:Lcom/onyx/android/sdk/data/cache/TimedCache;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/cache/TimedCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;->f:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;

    return-object v1

    :cond_0
    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunLoadUserInfoRequest;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunLoadUserInfoRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;Z)V

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->setAccountId(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/request/BaiduYunLoadUserInfoRequest;->getUserBean()Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;->f:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;->f:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/cache/TimedCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;->f:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/bean/BaiduYunUserBean;

    return-object p0
.end method

.method public final w()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/SaveCloudFileInfoRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/action/BaiduYunUploadAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/UploadFileAction;->getFileBeans()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/SaveCloudFileInfoRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/SaveCloudFileInfoRequest;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
