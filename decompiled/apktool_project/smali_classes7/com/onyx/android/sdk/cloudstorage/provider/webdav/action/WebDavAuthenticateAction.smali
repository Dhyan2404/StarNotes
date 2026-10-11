.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;
.super Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction<",
        "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0019\u001a\u00020\u0003\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\"\u0010#J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005H\u0014J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005H\u0002J4\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\nH\u0002J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0008\u0010\u0013\u001a\u00020\u000eH\u0002J\u0008\u0010\u0014\u001a\u00020\u000eH\u0002J\u0008\u0010\u0016\u001a\u00020\u0015H\u0002J\n\u0010\u0017\u001a\u0004\u0018\u00010\nH\u0002R\u0014\u0010\u0019\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;",
        "Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;",
        "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;",
        "getProvider",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "u",
        "Lio/reactivex/rxjava3/core/Observer;",
        "observer",
        "",
        "davUrl",
        "account",
        "password",
        "",
        "s",
        "",
        "e",
        "x",
        "q",
        "y",
        "Landroid/text/Spanned;",
        "p",
        "getTitle",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;",
        "webDavProvider",
        "Landroid/content/Context;",
        "f",
        "Landroid/content/Context;",
        "activityContext",
        "Landroid/app/Dialog;",
        "g",
        "Landroid/app/Dialog;",
        "dialogAuth",
        "<init>",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Landroid/content/Context;)V",
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
.field public final e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Landroid/app/Dialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "webDavProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->f:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getWebDavProvider$p(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;)Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    return-object p0
.end method

.method public static final synthetic access$onAuthing(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;Lio/reactivex/rxjava3/core/Observer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->s(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setDialogAuth$p(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->g:Landroid/app/Dialog;

    return-void
.end method

.method public static final synthetic access$showAuthDialog(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->u()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showErrorMessage(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->x(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic l(Lio/reactivex/rxjava3/subjects/PublishSubject;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->w(Lio/reactivex/rxjava3/subjects/PublishSubject;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic m(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->v(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic n()V
    .locals 0

    invoke-static {}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->t()V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->r(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;)V

    return-void
.end method

.method public static final r(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->configureProviderAccountModel(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V

    return-void
.end method

.method public static final t()V
    .locals 0

    return-void
.end method

.method public static final v(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static final w(Lio/reactivex/rxjava3/subjects/PublishSubject;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "$subject"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;->Companion:Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/AuthResult$Companion;->authFail()Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onComplete()V

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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$a;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic getProvider()Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget p0, Lcom/onyx/android/sdk/cloudstorage/R$string;->nut_store_bind:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/onyx/android/sdk/cloudstorage/R$string;->nut_store_bind:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/onyx/android/sdk/cloudstorage/R$string;->webdav_cloud_bind:I

    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final p()Landroid/text/Spanned;
    .locals 1

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget p0, Lcom/onyx/android/sdk/cloudstorage/R$string;->nut_store_login_tip:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/onyx/android/sdk/cloudstorage/R$string;->nut_store_login_tip:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/onyx/android/sdk/cloudstorage/R$string;->webdav_login_tip:I

    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    const-string v0, "fromHtml(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/CloudStorageProviderLogOutAction;

    iget-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/CloudStorageProviderLogOutAction;-><init>(Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/action/CloudStorageProviderLogOutAction;->setWorkScheduler(Lio/reactivex/rxjava3/core/Scheduler;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/u5o;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/u5o;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final s(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observer<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;->getWebDavClient()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;->setWebDavURL(Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;->Companion:Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount$Companion;

    invoke-virtual {v0, p3, p4}, Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount$Companion;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;->setWebDAVUrl(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;->setClientCredentials(Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;)V

    iget-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->g:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->y()V

    new-instance p4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;->saveAccountInfo(Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$b;

    invoke-direct {v0, p0, p4}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$b;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p3, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/common/base/BaseCloudStorageAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$c;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$c;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;)V

    invoke-virtual {p3, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$d;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$d;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;)V

    invoke-virtual {p3, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$e;

    invoke-direct {v0, p0, p2}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$e;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;Landroid/app/Dialog;)V

    invoke-virtual {p3, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p2, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$f;

    invoke-direct {p2, p4, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$f;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/rxjava3/core/Observer;)V

    invoke-virtual {p0, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/v5o;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/v5o;-><init>()V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final u()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/cloudstorage/model/AuthResult;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/ui/DialogWebDavAuth;

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->f:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/ui/DialogWebDavAuth;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/ui/DialogWebDavAuth;->setTitleText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->p()Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/ui/DialogWebDavAuth;->setTutorials(Landroid/text/Spanned;)V

    sget-object v2, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;

    iget-object v3, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->getProviderType()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;->getWebDAVAuthAccount(Ljava/lang/String;)Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/ui/DialogWebDavAuth;->setWebDAVAuthAccount(Lcom/onyx/android/sdk/data/model/v2/WebDAVAuthAccount;)V

    iget-object v2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->e:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavProvider;->getWebDavClient()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavClient;->getWebDavURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/ui/DialogWebDavAuth;->setDefaultDavUrl(Ljava/lang/String;)V

    new-instance v2, Lcom/sunia/HTREnginev2/w5o;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/w5o;-><init>()V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/ui/DialogWebDavAuth;->setNegativeListener(Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v2, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$showAuthDialog$1$2;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction$showAuthDialog$1$2;-><init>(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/ui/DialogWebDavAuth;->setPositiveListener(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/ui/DialogWebDavAuth$WebDavDialogPositiveListener;)V

    iput-object v1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->g:Landroid/app/Dialog;

    new-instance v2, Lcom/sunia/HTREnginev2/x5o;

    invoke-direct {v2, v0}, Lcom/sunia/HTREnginev2/x5o;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->g:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-object v0
.end method

.method public final x(Ljava/lang/Throwable;)V
    .locals 2

    instance-of v0, p1, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getAppContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/onyx/android/sdk/cloudstorage/R$string;->login_fail:I

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->q()V

    return-void

    :cond_0
    check-cast p1, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/exception/CloudNoteException;->getCode()I

    move-result p1

    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getAppContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/onyx/android/sdk/cloudstorage/R$string;->this_cloud_storage_account_is_bound:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/action/WebDavAuthenticateAction;->q()V

    return-void
.end method

.method public final y()V
    .locals 0

    return-void
.end method
