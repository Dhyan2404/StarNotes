.class public final Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;
.super Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction<",
        "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005H\u0014J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0012\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\u0012\u0010\u000e\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0002J\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00052\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0008\u0010\u0013\u001a\u00020\u0010H\u0002J\u0008\u0010\u0014\u001a\u00020\u0000H\u0002J\u0008\u0010\u0015\u001a\u00020\u000cH\u0002R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;",
        "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;",
        "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
        "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
        "getProvider",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "authCode",
        "q",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;",
        "accountModel",
        "",
        "n",
        "m",
        "u",
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAuthRequest;",
        "authRequest",
        "s",
        "r",
        "t",
        "p",
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;",
        "e",
        "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;",
        "provider",
        "Landroid/content/Context;",
        "f",
        "Landroid/content/Context;",
        "activityContext",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;Landroid/content/Context;)V",
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
.field public final e:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;->f:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$dismissDialog(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;->p()V

    return-void
.end method

.method public static final synthetic access$loadAccessToken(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;->q(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$prepareAuth(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAuthRequest;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;->r()Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAuthRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showAuthDialog(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAuthRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;->s(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAuthRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showPrepareLoading(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;)Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;->t()Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showTokenLoading(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;->o(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;)V

    return-void
.end method

.method public static final o(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;->p()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction$a;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction$b;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction$c;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction$d;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction$e;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction$f;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction$f;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/cxo;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/cxo;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction$g;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction$g;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnError(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;

    return-object p0
.end method

.method public final m(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/AccountProfile;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/AccountProfile;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->getAccountInfoBean()Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/model/AccountInfoBean;->getAccountName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/AccountProfile;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->getAccountId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/account/bean/AccountProfile;->setId(Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/data/account/request/cloud/BindAccountRequest;

    sget-object v1, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->ONYX_NOTE:Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/onyx/android/sdk/data/account/request/cloud/BindAccountRequest;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/data/account/bean/AccountProfile;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;->setClusterInfo(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/account/request/cloud/BindAccountRequest;->execute()V

    return-void
.end method

.method public final n(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;->m(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V

    return-void
.end method

.method public final p()V
    .locals 0

    return-void
.end method

.method public final q(Ljava/lang/String;)Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

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

    return-object p0

    :cond_1
    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAccessTokenRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAccessTokenRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAccessTokenRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/AccessTokenResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/AccessTokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/AccessTokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;->setAccessToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/AccessTokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;->updateTokenHeader(Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteFetchAccountInfoRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/model/AccessTokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteFetchAccountInfoRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;->execute()Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;->n(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;->authSuccess()Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->getAccountId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->setAccountId(Ljava/lang/String;)V

    return-object p0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;->authFail()Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    move-result-object p0

    return-object p0
.end method

.method public final r()Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAuthRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAuthRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;->getNoteClient()Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAuthRequest;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteClient;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;->getProviderContext()Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAuthRequest;->setConsumerKey(Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/UUIDUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/UUIDUtils;->shortUUID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAuthRequest;->setAuthState(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAuthRequest;->execute()Ljava/lang/String;

    return-object v0
.end method

.method public final s(Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAuthRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAuthRequest;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->create()Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialogParam;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAuthRequest;->getAuthUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v2, "authState"

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/request/YNoteAuthRequest;->getAuthState()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    filled-new-array {p1}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v7

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialogParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->Companion:Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog$Companion;

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog$Companion;->newInstance(Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialogParam;)Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction$showAuthDialog$1;

    invoke-direct {v1, v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction$showAuthDialog$1;-><init>(Lio/reactivex/rxjava3/subjects/BehaviorSubject;Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/cloudstorage/common/ui/OAuthDialog;->setOnDismissListener(Lkotlin/jvm/functions/Function0;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;->f:Landroid/content/Context;

    const-string v1, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v1, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public final t()Lcom/onyx/android/sdk/cloudstorage/provider/ynote/action/YNoteAuthAction;
    .locals 0

    return-object p0
.end method

.method public final u(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
