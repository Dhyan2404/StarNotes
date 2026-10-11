.class public final Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;
.super Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 22\u00020\u0001:\u00012B\u0007\u00a2\u0006\u0004\u00080\u00101J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u001e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0016J\u0016\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016J\u0016\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000b2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\u000e\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aH\u0016J\u0010\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001dH\u0007J\u0008\u0010 \u001a\u00020\u0006H\u0002J\u0010\u0010#\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020!H\u0002J\u0008\u0010$\u001a\u00020\u0006H\u0002J\u0010\u0010(\u001a\u00020\'2\u0006\u0010&\u001a\u00020%H\u0002J\u0010\u0010*\u001a\u00020\u00062\u0006\u0010)\u001a\u00020%H\u0002J\u0008\u0010)\u001a\u00020\u0006H\u0002J\u0010\u0010+\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008#\u0010,R\u001e\u0010/\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010.\u00a8\u00063"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;",
        "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
        "Landroid/content/Context;",
        "context",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;",
        "providerContext",
        "",
        "initProvider",
        "Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;",
        "userInfo",
        "activityContext",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
        "authenticate",
        "logOut",
        "",
        "isAuth",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;",
        "cloudNote",
        "Lcom/onyx/android/sdk/cloudstorage/model/AsyncResult;",
        "saveNote",
        "Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;",
        "getAccountInfo",
        "Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;",
        "cloudAnnotation",
        "saveAnnotation",
        "",
        "Lcom/onyx/android/sdk/cloudstorage/model/common/ProviderFeature;",
        "getEnableFeatures",
        "Lcom/onyx/android/sdk/cloudstorage/provider/evernote/event/EvernoteAuthEvent;",
        "event",
        "onEvernoteAuth",
        "b",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "clusterInfo",
        "a",
        "c",
        "",
        "throwable",
        "Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;",
        "g",
        "e",
        "f",
        "d",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;",
        "Lio/reactivex/rxjava3/subjects/BehaviorSubject;",
        "Lio/reactivex/rxjava3/subjects/BehaviorSubject;",
        "authObservable",
        "<init>",
        "()V",
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
.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static session:Lcom/evernote/client/android/EvernoteSession;


# instance fields
.field public a:Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

.field public b:Lio/reactivex/rxjava3/subjects/BehaviorSubject;
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


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->EVER_NOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->setProvider(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)V

    return-void
.end method

.method public static final synthetic access$bindOnyxAccount(Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->a(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onException(Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$toCloudNoteException(Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;Ljava/lang/Throwable;)Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->g(Ljava/lang/Throwable;)Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/AccountProfile;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountProfile;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;->getSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/client/android/AuthenticationResult;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/AccountProfile;->setId(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/bean/AccountProfile;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/data/account/request/cloud/BindAccountRequest;

    sget-object v2, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->EVER_NOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/onyx/android/sdk/data/account/request/cloud/BindAccountRequest;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/data/account/bean/AccountProfile;)V

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/request/cloud/BindAccountRequest;->execute()V

    return-object p0
.end method

.method public authenticate(Lcom/onyx/android/sdk/cloudstorage/model/UserInfo;Landroid/content/Context;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
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

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->b:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->d(Landroid/content/Context;)V

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/ui/EvernoteAuthActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->b:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->INSTANCE:Lcom/onyx/android/sdk/data/cluster/ClusterManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/cluster/ClusterManager;->getCurrentClusterObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$a;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final c()V
    .locals 8

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;->getSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteFetchAccountInfoRequest;

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteFetchAccountInfoRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/android/sdk/base/rx/RxSimpleAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lcom/onyx/android/sdk/base/rx/RxSimpleAction;-><init>(Lcom/onyx/android/sdk/base/rx/RxBaseRequest;Lio/reactivex/rxjava3/core/Scheduler;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->a:Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    const/4 v1, 0x0

    const-string v2, "providerContext"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->getSandbox()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->SANDBOX:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->PRODUCTION:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    :goto_0
    sget-object v3, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;

    new-instance v4, Lcom/evernote/client/android/EvernoteSession$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/evernote/client/android/EvernoteSession$Builder;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->a:Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/evernote/client/android/EvernoteSession$Builder;->setLocale(Ljava/util/Locale;)Lcom/evernote/client/android/EvernoteSession$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/evernote/client/android/EvernoteSession$Builder;->setEvernoteService(Lcom/evernote/client/android/EvernoteSession$EvernoteService;)Lcom/evernote/client/android/EvernoteSession$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->a:Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->a:Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    if-nez p0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p0

    :goto_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->getSecret()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/evernote/client/android/EvernoteSession$Builder;->build(Ljava/lang/String;Ljava/lang/String;)Lcom/evernote/client/android/EvernoteSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/client/android/EvernoteSession;->asSingleton()Lcom/evernote/client/android/EvernoteSession;

    move-result-object p0

    const-string p1, "asSingleton(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;->setSession(Lcom/evernote/client/android/EvernoteSession;)V

    return-void
.end method

.method public final e()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;->getSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/EvernoteSession;->logOut()Z

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;

    sget-object v1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->EVER_NOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getAccountId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/utils/ProviderAccountModelUtils;->deleteAccount(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method public final f(Ljava/lang/Throwable;)V
    .locals 1

    instance-of v0, p1, Lcom/evernote/edam/error/EDAMUserException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMUserException;->getErrorCode()Lcom/evernote/edam/error/EDAMErrorCode;

    move-result-object p1

    sget-object v0, Lcom/evernote/edam/error/EDAMErrorCode;->AUTH_EXPIRED:Lcom/evernote/edam/error/EDAMErrorCode;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->e()V

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/Throwable;)Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;
    .locals 2

    instance-of p0, p1, Lcom/evernote/thrift/transport/TTransportException;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;-><init>(Ljava/lang/Throwable;)V

    instance-of v0, p1, Lcom/evernote/edam/error/EDAMUserException;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/evernote/edam/error/EDAMUserException;

    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMUserException;->getErrorCode()Lcom/evernote/edam/error/EDAMErrorCode;

    move-result-object v0

    sget-object v1, Lcom/evernote/edam/error/EDAMErrorCode;->QUOTA_REACHED:Lcom/evernote/edam/error/EDAMErrorCode;

    if-ne v0, v1, :cond_1

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/utils/CloudNoteUploadLimitErrorUtils;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/utils/CloudNoteUploadLimitErrorUtils;

    sget-object v0, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->EVER_NOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/cloudstorage/utils/CloudNoteUploadLimitErrorUtils;->getUploadLimitErrorString(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->setError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/evernote/edam/error/EDAMUserException;->getErrorCode()Lcom/evernote/edam/error/EDAMErrorCode;

    move-result-object p1

    sget-object v0, Lcom/evernote/edam/error/EDAMErrorCode;->LIMIT_REACHED:Lcom/evernote/edam/error/EDAMErrorCode;

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/cloudstorage/R$string;->evernote_async_fail_size_limit:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->setError(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public getAccountInfo()Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteLoadAccountInfoRequest;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteLoadAccountInfoRequest;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;->getSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/client/android/AuthenticationResult;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->setAccountId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/LoadAccountInfoRequest;->executeSafety()Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

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

    invoke-static {p0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

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

    const-string v0, "providerContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->a:Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->d(Landroid/content/Context;)V

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->Companion:Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager$Companion;->getOurInstance()Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/CloudStorageManager;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolderKt;->ensureRegister(Lorg/greenrobot/eventbus/EventBus;Ljava/lang/Object;)V

    return-void
.end method

.method public isAuth()Z
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;->getSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/evernote/client/android/EvernoteSession;->isLoggedIn()Z

    move-result p0

    return p0
.end method

.method public logOut(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->e()V

    return-void
.end method

.method public final onEvernoteAuth(Lcom/onyx/android/sdk/cloudstorage/provider/evernote/event/EvernoteAuthEvent;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/evernote/event/EvernoteAuthEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->b:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/event/EvernoteAuthEvent;->getSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;->authSuccess()Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;->getSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/client/android/EvernoteSession;->getAuthenticationResult()Lcom/evernote/client/android/AuthenticationResult;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v3, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v4, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " login success, but detect null session auth result"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/evernote/client/android/AuthenticationResult;->getUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->setAccountId(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;->authFail()Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    move-result-object v0

    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->b:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->b:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->onComplete()V

    iput-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->b:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/event/EvernoteAuthEvent;->getSuccess()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->c()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->b()V

    :cond_3
    return-void
.end method

.method public saveAnnotation(Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
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

    new-instance v0, Lcom/onyx/android/sdk/base/rx/RxSimpleAction;

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveAnnotationRequest;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveAnnotationRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/model/CloudAnnotation;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/base/rx/RxSimpleAction;-><init>(Lcom/onyx/android/sdk/base/rx/RxBaseRequest;Lio/reactivex/rxjava3/core/Scheduler;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$b;->e:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$b;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$c;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$c;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "onErrorReturn(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public saveNote(Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
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

    new-instance v0, Lcom/onyx/android/sdk/base/rx/RxSimpleAction;

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;

    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$Companion;->getSession()Lcom/evernote/client/android/EvernoteSession;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/request/EvernoteSaveNoteRequest;-><init>(Lcom/evernote/client/android/EvernoteSession;Lcom/onyx/android/sdk/cloudstorage/model/CloudNote;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/base/rx/RxSimpleAction;-><init>(Lcom/onyx/android/sdk/base/rx/RxBaseRequest;Lio/reactivex/rxjava3/core/Scheduler;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$d;->e:Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$d;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$e;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider$e;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "onErrorReturn(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
