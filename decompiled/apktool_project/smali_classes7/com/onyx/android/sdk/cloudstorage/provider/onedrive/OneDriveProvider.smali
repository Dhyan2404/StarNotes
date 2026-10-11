.class public final Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;
.super Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008V\u0010WJ\u001e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0008\u0010\t\u001a\u00020\u0007H\u0002J\u0018\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u001e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00122\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\nH\u0016J\u0010\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016J\u0008\u0010\u0018\u001a\u00020\u0017H\u0016J\u000e\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019H\u0016J\u0016\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u00122\u0006\u0010\u001d\u001a\u00020\u001cH\u0016J\u0016\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u00122\u0006\u0010!\u001a\u00020 H\u0016J\u0016\u0010&\u001a\u0008\u0012\u0004\u0012\u00020%0\u00122\u0006\u0010$\u001a\u00020#H\u0016J\u0016\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020%0\u00122\u0006\u0010$\u001a\u00020#H\u0016J\u0016\u0010(\u001a\u0008\u0012\u0004\u0012\u00020%0\u00122\u0006\u0010$\u001a\u00020#H\u0016J\u0016\u0010+\u001a\u0008\u0012\u0004\u0012\u00020)0\u00122\u0006\u0010*\u001a\u00020)H\u0016J\u001c\u0010.\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020-0,0\u00122\u0006\u0010$\u001a\u00020#H\u0016J\"\u00100\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020)0\u00190\u00122\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020)0\u0019H\u0016J\"\u00101\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020)0\u00190\u00122\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020)0\u0019H\u0016J\u0016\u00102\u001a\u0008\u0012\u0004\u0012\u00020%0\u00122\u0006\u0010*\u001a\u00020)H\u0016J\u0016\u00105\u001a\u0008\u0012\u0004\u0012\u00020%0\u00122\u0006\u00104\u001a\u000203H\u0016J\u0016\u00106\u001a\u0008\u0012\u0004\u0012\u00020%0\u00122\u0006\u00104\u001a\u000203H\u0016J\u0016\u00107\u001a\u0008\u0012\u0004\u0012\u00020%0\u00122\u0006\u00104\u001a\u000203H\u0016J\u0016\u00108\u001a\u0008\u0012\u0004\u0012\u00020%0\u00122\u0006\u00104\u001a\u000203H\u0016J\u0016\u0010;\u001a\u0008\u0012\u0004\u0012\u00020%0\u00122\u0006\u0010:\u001a\u000209H\u0016J\u0018\u0010=\u001a\u00020\u00152\u0006\u0010*\u001a\u00020)2\u0006\u0010<\u001a\u00020)H\u0016J\u000e\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u001a0>H\u0016J\u0012\u0010B\u001a\u00020\u00072\u0008\u0010A\u001a\u0004\u0018\u00010@H\u0016J\u0010\u0010E\u001a\u00020\u00072\u0008\u0010D\u001a\u0004\u0018\u00010CR\u001b\u0010J\u001a\u00020F8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010G\u001a\u0004\u0008H\u0010IR\"\u0010\r\u001a\u00020\u000c8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\r\u0010K\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR$\u0010D\u001a\u0004\u0018\u00010C8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008P\u0010Q\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010U\u00a8\u0006X"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;",
        "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
        "Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;",
        "dialogOneDriveAuth",
        "Lio/reactivex/rxjava3/subjects/BehaviorSubject;",
        "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
        "behaviorSubject",
        "",
        "a",
        "updateTokenHeader",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;",
        "providerContext",
        "initProvider",
        "Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;",
        "userInfo",
        "activityContext",
        "Lio/reactivex/rxjava3/core/Observable;",
        "authenticate",
        "logOut",
        "",
        "isAuth",
        "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;",
        "getAccountInfo",
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
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
        "queryArgs",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
        "refreshFileInfoList",
        "fetchFileInfoList",
        "searchFileInfoList",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "cloudFile",
        "fetchFileInfo",
        "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;",
        "loadFolderTree",
        "fileBeans",
        "uploadFiles",
        "downloadFiles",
        "createFolder",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
        "args",
        "renameFile",
        "deleteFile",
        "copyFile",
        "moveFile",
        "Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;",
        "operation",
        "pasteLocalFileToCloud",
        "localFile",
        "isFileConflict",
        "",
        "getEnableFeatures",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;",
        "accountModel",
        "configureProviderAccountModel",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;",
        "tokenResponse",
        "setDriveToken",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;",
        "Lkotlin/Lazy;",
        "getOneDriveClient",
        "()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;",
        "oneDriveClient",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;",
        "getProviderContext",
        "()Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;",
        "setProviderContext",
        "(Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;)V",
        "b",
        "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;",
        "getTokenResponse",
        "()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;",
        "setTokenResponse",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;)V",
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
.field public final a:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public providerContext:Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider$oneDriveClient$2;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider$oneDriveClient$2;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->a:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ONE_DRIVE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->setProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    return-void
.end method

.method public static final synthetic access$onAuth(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;Lio/reactivex/rxjava3/subjects/BehaviorSubject;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->a(Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;Lio/reactivex/rxjava3/subjects/BehaviorSubject;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;Lio/reactivex/rxjava3/subjects/BehaviorSubject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;",
            "Lio/reactivex/rxjava3/subjects/BehaviorSubject<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;->authFail()Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onComplete()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->configureProviderAccountModel(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveLoadTokenAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveLoadTokenAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider$b;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider$b;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider$c;

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider$c;-><init>(Lio/reactivex/rxjava3/subjects/BehaviorSubject;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider$d;

    invoke-direct {p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider$d;-><init>(Lio/reactivex/rxjava3/subjects/BehaviorSubject;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :goto_1
    return-void
.end method

.method public authenticate(Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;Landroid/content/Context;)Lio/reactivex/rxjava3/core/Observable;
    .locals 11
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

    const-string v0, "create(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/constans/CloudStorageConstants;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/constans/CloudStorageConstants;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/constans/CloudStorageConstants;->getMICROSOFT_ONLINE_AUTH_URL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->getProviderContext()Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->getClientID()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "format(locale, format, *args)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialogParam;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v4

    const-string v6, "https://login.microsoftonline.com/common/oauth2/nativeclient"

    const-string v7, "code="

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialogParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->Companion:Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog$Companion;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog$Companion;->newInstance(Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialogParam;)Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider$authenticate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider$authenticate$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;Lio/reactivex/rxjava3/subjects/BehaviorSubject;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->setOnDismissListener(Lkotlin/jvm/functions/Function0;)V

    check-cast p2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p2, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object p1
.end method

.method public configureProviderAccountModel(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->configureProviderAccountModel(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->getAccountId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;->getOneDriveTokenResponse(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->setDriveToken(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;)V

    :cond_0
    return-void
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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverCopyFileAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverCopyFileAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverCreateFolderAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverCreateFolderAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CreateCloudFolderAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverDeleteFileAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverDeleteFileAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverDownloadAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverDownloadAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/DownloadFileByUrlAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider$a;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider$a;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverDownloadAction;)V

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverFetchFileInfoAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverFetchFileInfoAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverFetchFileInfoAction;->create()Lio/reactivex/rxjava3/core/Observable;

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverFetchFileListAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverFetchFileListAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/FetchFileInfoListAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public getAccountInfo()Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveLoadAccountRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->getOneDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/request/OneDriveLoadAccountRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->setAccountId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->executeSafety()Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    move-result-object p0

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

.method public final getOneDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;

    return-object p0
.end method

.method public final getProviderContext()Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->providerContext:Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

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

.method public final getTokenResponse()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->b:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;

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

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->setProviderContext(Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->updateTokenHeader()V

    return-void
.end method

.method public isAuth()Z
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse$Companion;

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;->getOneDriveTokenResponse(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse$Companion;->isValid(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;)Z

    move-result p0

    return p0
.end method

.method public isFileConflict(Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)Z
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "cloudFile"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "localFile"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUpdatedAt()J

    move-result-wide v2

    cmp-long p0, v0, v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getSize()J

    move-result-wide p0

    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lonyx/org/apache/commons/io/FileUtils;->sizeOf(Ljava/io/File;)J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getSize()J

    move-result-wide p0

    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;->getLocalFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lonyx/org/apache/commons/io/FileUtils;->sizeOf(Ljava/io/File;)J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverLoadFolderTreeAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverLoadFolderTreeAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/LoadFolderTreeAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public logOut(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->logOut(Landroid/content/Context;)V

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/utils/OneDriverUtils;->logoutAccount(Ljava/lang/String;)J

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverCopyFileAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverCopyFileAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;->setCut(Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public pasteLocalFileToCloud(Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/PasteLocalFileToOneDriveAction;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/PasteLocalFileToOneDriveAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/common/action/PasteLocalFileToCloudAction;->setCloudStorageProvider(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/common/action/PasteLocalFileToCloudAction;->setOperation(Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/common/action/PasteLocalFileToCloudAction;->setWorkScheduler(Lio/reactivex/rxjava3/core/Scheduler;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverRefreshFileListAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverRefreshFileListAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverRenameFileAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverRenameFileAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveSaveAnnotationAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveSaveAnnotationAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;)V

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverSaveNoteAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverSaveNoteAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)V

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverSearchFileListAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverSearchFileListAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriverSearchFileListAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final setDriveToken(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->b:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->updateTokenHeader()V

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

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->providerContext:Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    return-void
.end method

.method public final setTokenResponse(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->b:Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriveTokenResponse;

    return-void
.end method

.method public final updateTokenHeader()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;->getOneDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveClient;->updateTokenHeader()V

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveUploadAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/action/OneDriveUploadAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider$e;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider$e;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
