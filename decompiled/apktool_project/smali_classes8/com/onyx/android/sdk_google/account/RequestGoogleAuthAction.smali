.class public final Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u0000 \u001b2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001bB!\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0011\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\tH\u0002J\u000e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0003H\u0002R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;",
        "signInRequest",
        "Lio/reactivex/rxjava3/subjects/ReplaySubject;",
        "q",
        "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;",
        "providerCertificate",
        "u",
        "v",
        "Landroidx/fragment/app/Fragment;",
        "e",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "Landroid/app/Dialog;",
        "f",
        "Landroid/app/Dialog;",
        "dialog",
        "",
        "g",
        "I",
        "requestCode",
        "<init>",
        "(Landroidx/fragment/app/Fragment;Landroid/app/Dialog;I)V",
        "Companion",
        "sdk-google_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:Ljava/lang/String; = "RequestGoogleAuthAction"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final e:Landroidx/fragment/app/Fragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroid/app/Dialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;->Companion:Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroid/app/Dialog;I)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;->e:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;->f:Landroid/app/Dialog;

    iput p3, p0, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;->g:I

    return-void
.end method

.method public static final synthetic access$executeBeginSignInRequest(Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;)Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;->q(Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;)Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$generateAuthRequest(Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;->u(Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDialog$p(Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;->f:Landroid/app/Dialog;

    return-object p0
.end method

.method public static final synthetic access$getFragment$p(Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;->e:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public static final synthetic access$getRequestCode$p(Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;)I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;->g:I

    return p0
.end method

.method public static final synthetic access$loadCertificates(Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;->v()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lio/reactivex/rxjava3/subjects/ReplaySubject;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;->s(Lio/reactivex/rxjava3/subjects/ReplaySubject;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic m(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;->r(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;->p(Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;)V

    return-void
.end method

.method public static synthetic o(Lio/reactivex/rxjava3/subjects/ReplaySubject;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;->t(Lio/reactivex/rxjava3/subjects/ReplaySubject;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static final p(Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;->f:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static final r(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final s(Lio/reactivex/rxjava3/subjects/ReplaySubject;Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "$publisher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "google auth failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "RequestGoogleAuthAction"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final t(Lio/reactivex/rxjava3/subjects/ReplaySubject;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    const-string v0, "$publisher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
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

    new-instance v1, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$a;-><init>(Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$b;-><init>(Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$c;-><init>(Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$d;-><init>(Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/ykl;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ykl;-><init>(Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final q(Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;)Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;",
            ")",
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->create()Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/auth/api/identity/Identity;->getSignInClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/identity/SignInClient;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/auth/api/identity/SignInClient;->beginSignIn(Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$executeBeginSignInRequest$1;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction$executeBeginSignInRequest$1;-><init>(Lcom/onyx/android/sdk_google/account/RequestGoogleAuthAction;)V

    new-instance p0, Lcom/sunia/HTREnginev2/zkl;

    invoke-direct {p0, v1}, Lcom/sunia/HTREnginev2/zkl;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/all;

    invoke-direct {p1, v0}, Lcom/sunia/HTREnginev2/all;-><init>(Lio/reactivex/rxjava3/subjects/ReplaySubject;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance p1, Lcom/sunia/HTREnginev2/bll;

    invoke-direct {p1, v0}, Lcom/sunia/HTREnginev2/bll;-><init>(Lio/reactivex/rxjava3/subjects/ReplaySubject;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-object v0
.end method

.method public final u(Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;
    .locals 2

    const-string p0, "galaxy_note_google_android"

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;->find(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;->getSecret()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    invoke-static {}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;->builder()Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;->builder()Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;->setSupported(Z)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;->setServerClientId(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;->setFilterByAuthorizedAccounts(Z)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions$Builder;->build()Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->setGoogleIdTokenRequestOptions(Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$GoogleIdTokenRequestOptions;)Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/BeginSignInRequest$Builder;->build()Lcom/google/android/gms/auth/api/identity/BeginSignInRequest;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final v()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVCertificate;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVCertificate;

    const-string v0, "sdk_certificates_key"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/MMKVCertificate;->getProviderCertificates(Ljava/lang/String;)Lcom/onyx/android/sdk/data/common/data/ProviderCertificate;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v0, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;

    const-string v1, "galaxy_note_sdk_android"

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/action/LoadCertificatesAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
