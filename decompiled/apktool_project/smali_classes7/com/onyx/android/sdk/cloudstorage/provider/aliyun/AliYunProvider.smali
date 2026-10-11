.class public final Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;
.super Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAliYunProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AliYunProvider.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,351:1\n1#2:352\n1855#3,2:353\n*S KotlinDebug\n*F\n+ 1 AliYunProvider.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider\n*L\n287#1:353,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008d\u0010eJ\u001e\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0008\u0010\t\u001a\u00020\u0005H\u0002J\u0018\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0016J\u001e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00122\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\nH\u0016J\u0010\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016J\u0008\u0010\u0018\u001a\u00020\u0017H\u0016J\u000e\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0019H\u0016J\u000e\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u0019H\u0016J\u0016\u0010!\u001a\u0008\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\u0016\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\u001c\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020$0#0\u00122\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\"\u0010(\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020&0\u00190\u00122\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020&0\u0019H\u0016J\"\u0010)\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020&0\u00190\u00122\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020&0\u0019H\u0016J\u0016\u0010+\u001a\u0008\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010*\u001a\u00020&H\u0016J\u0016\u0010.\u001a\u0008\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010-\u001a\u00020,H\u0016J\u0016\u0010/\u001a\u0008\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010-\u001a\u00020,H\u0016J\u0016\u00100\u001a\u0008\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010-\u001a\u00020,H\u0016J\u0016\u00101\u001a\u0008\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010-\u001a\u00020,H\u0016J\u0016\u00102\u001a\u0008\u0012\u0004\u0012\u00020 0\u00122\u0006\u0010\u001f\u001a\u00020\u001eH\u0016J\u0016\u00103\u001a\u0008\u0012\u0004\u0012\u00020&0\u00122\u0006\u0010*\u001a\u00020&H\u0016J\u0016\u00106\u001a\u0008\u0012\u0004\u0012\u00020 0\u00122\u0006\u00105\u001a\u000204H\u0016J\u0016\u0010:\u001a\u0008\u0012\u0004\u0012\u0002090\u00122\u0006\u00108\u001a\u000207H\u0016J\u0016\u0010=\u001a\u0008\u0012\u0004\u0012\u0002090\u00122\u0006\u0010<\u001a\u00020;H\u0016J\u000e\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u001a0>H\u0016J\u0012\u0010B\u001a\u00020\u00072\u0008\u0010A\u001a\u0004\u0018\u00010@H\u0016J\u0010\u0010E\u001a\u00020\u00072\u0008\u0010D\u001a\u0004\u0018\u00010CJ\u000e\u0010G\u001a\u00020\u00072\u0006\u0010F\u001a\u00020CJ\u0006\u0010H\u001a\u00020\u0007J\u0008\u0010J\u001a\u0004\u0018\u00010IJ\u0008\u0010K\u001a\u0004\u0018\u00010IJ\u0006\u0010L\u001a\u00020IJ\u000e\u0010O\u001a\u00020&2\u0006\u0010N\u001a\u00020MJ\u001a\u0010R\u001a\u0008\u0012\u0004\u0012\u00020&0Q2\u000c\u0010P\u001a\u0008\u0012\u0004\u0012\u00020M0\u0019J\u0018\u0010O\u001a\u00020&2\u0006\u0010N\u001a\u00020M2\u0008\u0010S\u001a\u0004\u0018\u00010IJ\u0008\u0010T\u001a\u0004\u0018\u00010IR\u001b\u0010Y\u001a\u00020U8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010V\u001a\u0004\u0008W\u0010XR\"\u0010\r\u001a\u00020\u000c8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\r\u0010Z\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^R$\u0010D\u001a\u0004\u0018\u00010C8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010_\u001a\u0004\u0008`\u0010a\"\u0004\u0008b\u0010c\u00a8\u0006f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;",
        "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
        "Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;",
        "authDialog",
        "Lio/reactivex/rxjava3/subjects/BehaviorSubject;",
        "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
        "subject",
        "",
        "a",
        "b",
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
        "Lcom/onyx/android/sdk/base/data/SortBy;",
        "getSupportSortByList",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;",
        "queryArgs",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileListResult;",
        "fetchFileInfoList",
        "refreshFileInfoList",
        "Lcom/onyx/android/sdk/cloudstorage/model/QueryListResult;",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFolderTreeEntry;",
        "loadFolderTree",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;",
        "fileBeans",
        "downloadFiles",
        "uploadFiles",
        "cloudFile",
        "createFolder",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;",
        "args",
        "renameFile",
        "deleteFile",
        "copyFile",
        "moveFile",
        "searchFileInfoList",
        "fetchFileInfo",
        "Lcom/onyx/android/sdk/cloudstorage/model/PasteLocalFileOperation;",
        "operation",
        "pasteLocalFileToCloud",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;",
        "cloudNote",
        "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;",
        "saveNote",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;",
        "cloudAnnotation",
        "saveAnnotation",
        "",
        "getEnableFeatures",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;",
        "accountModel",
        "configureProviderAccountModel",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;",
        "tokenResponse",
        "setDriveToken",
        "response",
        "saveCredential",
        "onProviderAuthFail",
        "",
        "getAccessToken",
        "getRefreshToken",
        "getBearAccessToken",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;",
        "file",
        "toCloudFile",
        "fileList",
        "",
        "toCloudFiles",
        "parentCloudPath",
        "getDefaultDriveId",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;",
        "Lkotlin/Lazy;",
        "getDriveClient",
        "()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;",
        "driveClient",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;",
        "getProviderContext",
        "()Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;",
        "setProviderContext",
        "(Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;)V",
        "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;",
        "getTokenResponse",
        "()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;",
        "setTokenResponse",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;)V",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAliYunProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AliYunProvider.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,351:1\n1#2:352\n1855#3,2:353\n*S KotlinDebug\n*F\n+ 1 AliYunProvider.kt\ncom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider\n*L\n287#1:353,2\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public providerContext:Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider$driveClient$2;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider$driveClient$2;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->a:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ALI_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->setProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    return-void
.end method

.method public static final synthetic access$onAuth(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;Lio/reactivex/rxjava3/subjects/BehaviorSubject;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->a(Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;Lio/reactivex/rxjava3/subjects/BehaviorSubject;)V

    return-void
.end method

.method public static final synthetic access$onAuthSuccess(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;)Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->b()Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    move-result-object p0

    return-object p0
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

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;->authFail()Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onComplete()V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->configureProviderAccountModel(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunLoadTokenAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunLoadTokenAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider$b;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider$b;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider$c;

    invoke-direct {v0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider$c;-><init>(Lio/reactivex/rxjava3/subjects/BehaviorSubject;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider$d;

    invoke-direct {v0, p2, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider$d;-><init>(Lio/reactivex/rxjava3/subjects/BehaviorSubject;Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->getProviderContext()Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->getClientID()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "https://openapi.aliyundrive.com/oauth/authorize?client_id=%s&redirect_uri=https://testcallback.aliyundrive.com&scope=user:base,file:all:read,file:all:write&response_type=code&relogin=true"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "format(locale, format, *args)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialogParam;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v4

    const-string v6, "https://testcallback.aliyundrive.com"

    const-string v7, "code="

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialogParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->Companion:Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog$Companion;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog$Companion;->newInstance(Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialogParam;)Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider$authenticate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider$authenticate$1;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;Lio/reactivex/rxjava3/subjects/BehaviorSubject;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->setOnDismissListener(Lkotlin/jvm/functions/Function0;)V

    check-cast p2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p2, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b()Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;->authSuccess()Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->setAccountId(Ljava/lang/String;)V

    return-object v0
.end method

.method public configureProviderAccountModel(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->configureProviderAccountModel(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->b:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->getAccountCredentialJson()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;

    invoke-virtual {v0, p1, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->setDriveToken(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;)V

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunCopyFileAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunCopyFileAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunCreateFolderAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunCreateFolderAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunCreateFolderAction;->setCheckExist(Z)V

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunDeleteFileAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunDeleteFileAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunDownloadAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunDownloadAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider$a;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider$a;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunDownloadAction;)V

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchFileInfoAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchFileInfoAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchFileInfoAction;->create()Lio/reactivex/rxjava3/core/Observable;

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchFileListAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunFetchFileListAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/FetchFileInfoListAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->b:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAccountInfo()Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunLoadAccountRequest;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/request/AliYunLoadAccountRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->executeSafety()Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    move-result-object p0

    return-object p0
.end method

.method public final getBearAccessToken()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultDriveId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderAccountModel()Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->getDriveId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;

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

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->providerContext:Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "providerContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->b:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
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
    .locals 3
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

    sget-object p0, Lcom/onyx/android/sdk/base/data/SortBy;->Name:Lcom/onyx/android/sdk/base/data/SortBy;

    sget-object v0, Lcom/onyx/android/sdk/base/data/SortBy;->Size:Lcom/onyx/android/sdk/base/data/SortBy;

    sget-object v1, Lcom/onyx/android/sdk/base/data/SortBy;->CreationTime:Lcom/onyx/android/sdk/base/data/SortBy;

    sget-object v2, Lcom/onyx/android/sdk/base/data/SortBy;->UpdateAt:Lcom/onyx/android/sdk/base/data/SortBy;

    filled-new-array {p0, v0, v1, v2}, [Lcom/onyx/android/sdk/base/data/SortBy;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getTokenResponse()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->b:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;

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

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->setProviderContext(Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;)V

    return-void
.end method

.method public isAuth()Z
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse$Companion;

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->b:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse$Companion;->isValid(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;)Z

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunLoadFolderTreeAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunLoadFolderTreeAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/LoadFolderTreeAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public logOut(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->logOut(Landroid/content/Context;)V

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;->deleteAccount(Ljava/lang/String;Ljava/lang/String;)J

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->setDriveToken(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " logout"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunCopyFileAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunCopyFileAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;->setCut(Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/cloud/CopyCloudFileAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final onProviderAuthFail()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/utils/ThirdPartyAccountUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/utils/ThirdPartyAccountUtils;

    sget-object v1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ALI_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/cloudstorage/utils/ThirdPartyAccountUtils;->onProviderAuthFail(Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;Ljava/lang/String;)V

    return-void
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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/PasteLocalFileToAliYunAction;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/PasteLocalFileToAliYunAction;-><init>()V

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunRefreshFileListAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunRefreshFileListAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunRenameFileAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunRenameFileAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileOperation;)V

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunSaveAnnotationAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunSaveAnnotationAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->flatMap(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final saveCredential(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse$Companion;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse$Companion;->isValid(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderAccountModel()Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;->queryAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    return-void

    :cond_4
    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->setAccountCredentialJson(Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;->saveAccount(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->configureProviderAccountModel(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V

    return-void
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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunSaveNoteAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunSaveNoteAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)V

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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunSearchFileListAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunSearchFileListAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Lcom/onyx/android/sdk/cloudstorage/model/CloudFileQueryArgs;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final setDriveToken(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->b:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->getDriveClient()Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunClient;->updateTokenHeader()V

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

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->providerContext:Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    return-void
.end method

.method public final setTokenResponse(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->b:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunTokenResponse;

    return-void
.end method

.method public final toCloudFile(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->toCloudFile(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object p0

    return-object p0
.end method

.method public final toCloudFile(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;
    .locals 24
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "file"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 2
    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;->getParentFileId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;->getParentCloudPath(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    .line 3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lonyx/org/apache/commons/io/FilenameUtils;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 4
    sget-object v14, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ALI_YUN:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    .line 5
    sget-object v3, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;->getParentFileId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;->normalizeToDBParentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;->isFolder()Z

    move-result v9

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;->getName()Ljava/lang/String;

    move-result-object v12

    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;->getCloudFileLocalPath(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;->getContentHash()Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;->getSize()J

    move-result-wide v10

    .line 11
    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo$Companion;->getMediaCategory(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;

    move-result-object v15

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object v17

    .line 13
    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-object v4, v0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x3480

    const/16 v23, 0x0

    invoke-direct/range {v4 .. v23}, Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Lcom/onyx/android/sdk/cloudstorage/model/common/SyncStatus;Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/common/MediaCategory;Ljava/lang/String;Ljava/lang/String;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileBase;->getFileId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUniqueId(Ljava/lang/String;)V

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;->getUpdatedAt()Ljava/util/Date;

    move-result-object v1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    goto :goto_1

    :cond_2
    move-wide v5, v3

    :goto_1
    invoke-virtual {v0, v5, v6}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setUpdatedAt(J)V

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    :cond_3
    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->setCreatedAt(J)V

    return-object v0
.end method

.method public final toCloudFiles(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;",
            ">;)",
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fileList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/utils/AliYunUtils;->getParentCloudPathMap(Ljava/util/List;Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;->getParentFileId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;->toCloudFile(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/bean/AliYunFileInfo;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/CloudFileBean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
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

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunUploadAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/action/AliYunUploadAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider$e;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider$e;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
