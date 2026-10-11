.class public final Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;
.super Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008S\u0010TJ\u001e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\t\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u001e\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00062\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\rH\u0016J\u0010\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u000e\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017H\u0016J\u0016\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00062\u0006\u0010\u001b\u001a\u00020\u001aH\u0016J\u0016\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00062\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\"\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0\u00170\u00062\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020!0\u0017H\u0016J\"\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0\u00170\u00062\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020!0\u0017H\u0016J\u0016\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020&0\u00062\u0006\u0010%\u001a\u00020!H\u0016J\u0016\u0010*\u001a\u0008\u0012\u0004\u0012\u00020&0\u00062\u0006\u0010)\u001a\u00020(H\u0016J\u0016\u0010-\u001a\u0008\u0012\u0004\u0012\u00020&0\u00062\u0006\u0010,\u001a\u00020+H\u0016J\u0016\u0010.\u001a\u0008\u0012\u0004\u0012\u00020!0\u00062\u0006\u0010%\u001a\u00020!H\u0016J\u001c\u00101\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002000/0\u00062\u0006\u0010,\u001a\u00020+H\u0016J\u0016\u00102\u001a\u0008\u0012\u0004\u0012\u00020&0\u00062\u0006\u0010)\u001a\u00020(H\u0016J\u0016\u00103\u001a\u0008\u0012\u0004\u0012\u00020&0\u00062\u0006\u0010)\u001a\u00020(H\u0016J\u0016\u00104\u001a\u0008\u0012\u0004\u0012\u00020&0\u00062\u0006\u0010)\u001a\u00020(H\u0016J\u0008\u00106\u001a\u000205H\u0016J\u000e\u00108\u001a\u0008\u0012\u0004\u0012\u0002070\u0017H\u0016J\u0008\u0010:\u001a\u000209H\u0016J\u0016\u0010;\u001a\u0008\u0012\u0004\u0012\u00020&0\u00062\u0006\u0010,\u001a\u00020+H\u0016J\u0016\u0010<\u001a\u0008\u0012\u0004\u0012\u00020&0\u00062\u0006\u0010,\u001a\u00020+H\u0016J\u000e\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00180=H\u0016J\u0010\u0010A\u001a\u00020\u00082\u0006\u0010@\u001a\u00020?H\u0007R\"\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010B\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\"\u0010H\u001a\u00020G8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\u001e\u0010Q\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010R\u00a8\u0006U"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;",
        "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;",
        "credential",
        "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
        "authResult",
        "Lio/reactivex/rxjava3/core/Observable;",
        "b",
        "",
        "d",
        "",
        "accountId",
        "c",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;",
        "providerContext",
        "initProvider",
        "Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;",
        "userInfo",
        "activityContext",
        "authenticate",
        "logOut",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;",
        "getSupportFeatures",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;",
        "cloudNote",
        "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;",
        "saveNote",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;",
        "cloudAnnotation",
        "saveAnnotation",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "fileBeans",
        "uploadFiles",
        "downloadFiles",
        "cloudFile",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
        "createFolder",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
        "args",
        "deleteFile",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
        "queryArgs",
        "searchFileInfoList",
        "fetchFileInfo",
        "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;",
        "loadFolderTree",
        "renameFile",
        "copyFile",
        "moveFile",
        "",
        "isAuth",
        "Lcom/onyx/android/sdk/base/data/SortBy;",
        "getSupportSortByList",
        "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;",
        "getAccountInfo",
        "refreshFileInfoList",
        "fetchFileInfoList",
        "",
        "getEnableFeatures",
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/event/DropBoxCredentialEvent;",
        "event",
        "onDropBoxCredentialEvent",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;",
        "getProviderContext",
        "()Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;",
        "setProviderContext",
        "(Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;)V",
        "Lcom/dropbox/core/v2/DbxClientV2;",
        "dbxClient",
        "Lcom/dropbox/core/v2/DbxClientV2;",
        "getDbxClient",
        "()Lcom/dropbox/core/v2/DbxClientV2;",
        "setDbxClient",
        "(Lcom/dropbox/core/v2/DbxClientV2;)V",
        "Lio/reactivex/rxjava3/subjects/BehaviorSubject;",
        "a",
        "Lio/reactivex/rxjava3/subjects/BehaviorSubject;",
        "authObservable",
        "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;",
        "<init>",
        "()V",
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
.field public a:Lio/reactivex/rxjava3/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/BehaviorSubject<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public dbxClient:Lcom/dropbox/core/v2/DbxClientV2;

.field public providerContext:Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->DROP_BOX:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->setProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->e(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;)V

    return-void
.end method

.method public static final synthetic access$getAuthObservable$p(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;)Lio/reactivex/rxjava3/subjects/BehaviorSubject;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->a:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    return-object p0
.end method

.method public static final e(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->a:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    return-void
.end method


# virtual methods
.method public authenticate(Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;Landroid/content/Context;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "userInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "activityContext"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->create()Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->a:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/ui/DropBoxAuthActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->getProviderContext()Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "consumer_key"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->a:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;",
            "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/base/rx/RxSimpleAction;

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxFetchAccountInfoRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/base/rx/RxSimpleAction;-><init>(Lcom/onyx/android/sdk/base/rx/RxBaseRequest;Lio/reactivex/rxjava3/core/Scheduler;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider$b;

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider$b;-><init>(Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;->getDropBoxCredential(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;

    move-result-object p0

    return-object p0
.end method

.method public copyFile(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public createFolder(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cloudFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCreateFolderAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCreateFolderAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential$Companion;->isValid(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/common/AuthorizationInvalidInterceptor;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/common/AuthorizationInvalidInterceptor;-><init>(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)V

    new-instance v1, Lcom/dropbox/core/v2/DbxClientV2;

    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;->createRequestConfig(Ljava/util/List;)Lcom/dropbox/core/DbxRequestConfig;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->toDbxCredential()Lcom/dropbox/core/oauth/DbxCredential;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/dropbox/core/v2/DbxClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/oauth/DbxCredential;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->setDbxClient(Lcom/dropbox/core/v2/DbxClientV2;)V

    return-void
.end method

.method public deleteFile(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxDeleteFileAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxDeleteFileAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DeleteCloudFileAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public downloadFiles(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fileBeans"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxDownloadAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxDownloadAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider$a;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider$a;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxDownloadAction;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public fetchFileInfo(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cloudFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxFetchFileInfoAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxFetchFileInfoAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxFetchFileInfoAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public fetchFileInfoList(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "queryArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxFetchFileListAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxFetchFileListAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/FetchFileInfoListAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public getAccountInfo()Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxLoadAccountRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->getDbxClient()Lcom/dropbox/core/v2/DbxClientV2;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/request/DropBoxLoadAccountRequest;-><init>(Lcom/dropbox/core/v2/DbxClientV2;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->setAccountId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->executeSafety()Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    move-result-object p0

    return-object p0
.end method

.method public final getDbxClient()Lcom/dropbox/core/v2/DbxClientV2;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->dbxClient:Lcom/dropbox/core/v2/DbxClientV2;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "dbxClient"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEnableFeatures()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderAccountModel()Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;->Note:Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;->Document:Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;

    filled-new-array {p0, v0}, [Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderAccountModel()Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->getEnableFeatures()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getProviderContext()Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->providerContext:Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "providerContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportFeatures()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;->Document:Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSupportSortByList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/SortBy;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public initProvider(Landroid/content/Context;Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "providerContext"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->setProviderContext(Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;)V

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->c(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->b:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->d(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;)V

    return-void
.end method

.method public isAuth()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->b:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential$Companion;->isValid(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;)Z

    move-result p0

    return p0
.end method

.method public loadFolderTree(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "queryArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxLoadFolderTreeAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxLoadFolderTreeAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/LoadFolderTreeAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public logOut(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->logOut(Landroid/content/Context;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/utils/Debug;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "dropbox logout log stack"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->b:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxUtils;->logoutAccount(Ljava/lang/String;)J

    return-void
.end method

.method public moveFile(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxCopyFileAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;->setCut(Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final onDropBoxCredentialEvent(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/event/DropBoxCredentialEvent;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/event/DropBoxCredentialEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->a:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/event/DropBoxCredentialEvent;->getCredential()Lcom/dropbox/core/oauth/DbxCredential;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->a:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;->authFail()Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->a:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onComplete()V

    return-void

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/event/DropBoxCredentialEvent;->getCredential()Lcom/dropbox/core/oauth/DbxCredential;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential$Companion;->toDropBoxCredential(Lcom/dropbox/core/oauth/DbxCredential;)Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->b:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DropBoxCredential:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    iget-object v4, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->b:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->b:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->d(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->b:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential$Companion;->isValid(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;->authSuccess()Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;->authFail()Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->b:Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->b(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/bean/DropBoxCredential;Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider$c;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider$d;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider$d;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/hjf;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/hjf;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public refreshFileInfoList(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "queryArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxRefreshFileListAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxRefreshFileListAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/RefreshCloudFileInfoListAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public renameFile(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxRenameFileAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxRenameFileAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/RenameCloudFileAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public saveAnnotation(Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cloudAnnotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxSaveAnnotationAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxSaveAnnotationAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->flatMap(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public saveNote(Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cloudNote"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxSaveNoteAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxSaveNoteAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->flatMap(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public searchFileInfoList(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "queryArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxSearchFileListAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxSearchFileListAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxSearchFileListAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final setDbxClient(Lcom/dropbox/core/v2/DbxClientV2;)V
    .locals 1
    .param p1    # Lcom/dropbox/core/v2/DbxClientV2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->dbxClient:Lcom/dropbox/core/v2/DbxClientV2;

    return-void
.end method

.method public final setProviderContext(Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;->providerContext:Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    return-void
.end method

.method public uploadFiles(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fileBeans"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxUploadAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/action/DropBoxUploadAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider$e;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider$e;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
