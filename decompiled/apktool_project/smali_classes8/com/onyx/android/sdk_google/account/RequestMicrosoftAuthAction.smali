.class public final Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction$Companion;
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
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 62\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u00016B!\u0012\u0006\u0010\u0013\u001a\u00020\u0011\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0014\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u00a2\u0006\u0004\u00084\u00105J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0014\u0010\n\u001a\u00020\u00052\n\u0010\t\u001a\u00060\u0007j\u0002`\u0008H\u0002J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0016\u0010\u0010\u001a\u00020\u00052\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000eH\u0002R\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0012R\u0016\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\'\u0010!\u001a\u0015\u0012\u000c\u0012\n \u001d*\u0004\u0018\u00010\u00020\u00020\u001c\u00a2\u0006\u0002\u0008\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u001b\u0010\'\u001a\u00020\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&R\u001a\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u000b0(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\"\u0010/\u001a\u0010\u0012\u000c\u0012\n \u001d*\u0004\u0018\u00010\u000b0\u000b0,8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102\u00a8\u00067"
    }
    d2 = {
        "Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "p",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "e",
        "u",
        "Lcom/google/firebase/auth/AuthResult;",
        "authResult",
        "w",
        "Lcom/google/android/gms/tasks/Task;",
        "task",
        "s",
        "Landroidx/fragment/app/Fragment;",
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
        "Lio/reactivex/rxjava3/subjects/ReplaySubject;",
        "kotlin.jvm.PlatformType",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "h",
        "Lio/reactivex/rxjava3/subjects/ReplaySubject;",
        "publisher",
        "Lcom/google/firebase/auth/FirebaseAuth;",
        "i",
        "Lkotlin/Lazy;",
        "r",
        "()Lcom/google/firebase/auth/FirebaseAuth;",
        "firebaseAuth",
        "Lcom/google/android/gms/tasks/OnSuccessListener;",
        "j",
        "Lcom/google/android/gms/tasks/OnSuccessListener;",
        "onSuccessListener",
        "Lcom/google/android/gms/tasks/OnCompleteListener;",
        "k",
        "Lcom/google/android/gms/tasks/OnCompleteListener;",
        "onCompleteListener",
        "Lcom/google/android/gms/tasks/OnFailureListener;",
        "l",
        "Lcom/google/android/gms/tasks/OnFailureListener;",
        "onFailureListener",
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
.field public static final Companion:Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MICROSOFT_ACCESS_TOKEN_KEY:Ljava/lang/String; = "MICROSOFT_ACCESS_TOKEN_KEY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MICROSOFT_ID_KEY:Ljava/lang/String; = "MICROSOFT_ID_KEY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MICROSOFT_ID_TOKEN_KEY:Ljava/lang/String; = "MICROSOFT_ID_TOKEN_KEY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:Ljava/lang/String; = "RequestMicrosoftAuthAction"
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

.field public final h:Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/google/android/gms/tasks/OnSuccessListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lcom/google/android/gms/tasks/OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lcom/google/android/gms/tasks/OnFailureListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->Companion:Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction$Companion;

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

    iput-object p1, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->e:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->f:Landroid/app/Dialog;

    iput p3, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->g:I

    invoke-static {}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->create()Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object p1

    const-string p2, "create(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->h:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    sget-object p1, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction$firebaseAuth$2;->INSTANCE:Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction$firebaseAuth$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->i:Lkotlin/Lazy;

    new-instance p1, Lcom/sunia/HTREnginev2/fll;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/fll;-><init>(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;)V

    iput-object p1, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->j:Lcom/google/android/gms/tasks/OnSuccessListener;

    new-instance p1, Lcom/sunia/HTREnginev2/gll;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/gll;-><init>(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;)V

    iput-object p1, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->k:Lcom/google/android/gms/tasks/OnCompleteListener;

    new-instance p1, Lcom/sunia/HTREnginev2/hll;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/hll;-><init>(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;)V

    iput-object p1, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->l:Lcom/google/android/gms/tasks/OnFailureListener;

    return-void
.end method

.method public static final synthetic access$auth(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->p()V

    return-void
.end method

.method public static final synthetic access$getDialog$p(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->f:Landroid/app/Dialog;

    return-object p0
.end method

.method public static final synthetic access$getPublisher$p(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;)Lio/reactivex/rxjava3/subjects/ReplaySubject;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->h:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;Lcom/google/firebase/auth/AuthResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->x(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;Lcom/google/firebase/auth/AuthResult;)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->q(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->v(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->t(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static final q(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->f:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static final t(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->s(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static final v(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->u(Ljava/lang/Exception;)V

    return-void
.end method

.method public static final x(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;Lcom/google/firebase/auth/AuthResult;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->w(Lcom/google/firebase/auth/AuthResult;)V

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

    new-instance v1, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction$a;-><init>(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction$b;-><init>(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction$c;-><init>(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;)V

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

    new-instance v1, Lcom/sunia/HTREnginev2/ell;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ell;-><init>(Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->r()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getPendingAuthResult()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->j:Lcom/google/android/gms/tasks/OnSuccessListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->l:Lcom/google/android/gms/tasks/OnFailureListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->k:Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    :cond_0
    const-string v0, "microsoft.com"

    invoke-static {v0}, Lcom/google/firebase/auth/OAuthProvider;->newBuilder(Ljava/lang/String;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    move-result-object v0

    const-string v1, "newBuilder(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "prompt"

    const-string v2, "consent"

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/auth/OAuthProvider$Builder;->addCustomParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/OAuthProvider$Builder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->r()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/firebase/auth/OAuthProvider$Builder;->build()Lcom/google/firebase/auth/OAuthProvider;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/auth/FirebaseAuth;->startActivityForSignInWithProvider(Landroid/app/Activity;Lcom/google/firebase/auth/FederatedAuthProvider;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->j:Lcom/google/android/gms/tasks/OnSuccessListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->l:Lcom/google/android/gms/tasks/OnFailureListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->k:Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :goto_0
    return-void
.end method

.method public final r()Lcom/google/firebase/auth/FirebaseAuth;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->i:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/auth/FirebaseAuth;

    return-object p0
.end method

.method public final s(Lcom/google/android/gms/tasks/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->h:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    return-void
.end method

.method public final u(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "microsoft auth failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "RequestMicrosoftAuthAction"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->h:Lio/reactivex/rxjava3/subjects/ReplaySubject;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final w(Lcom/google/firebase/auth/AuthResult;)V
    .locals 4

    invoke-interface {p1}, Lcom/google/firebase/auth/AuthResult;->getAdditionalUserInfo()Lcom/google/firebase/auth/AdditionalUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/firebase/auth/AdditionalUserInfo;->getProfile()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/firebase/auth/AuthResult;->getCredential()Lcom/google/firebase/auth/AuthCredential;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.google.firebase.auth.OAuthCredential"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/firebase/auth/OAuthCredential;

    invoke-virtual {p1}, Lcom/google/firebase/auth/OAuthCredential;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/auth/OAuthCredential;->getIdToken()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "MICROSOFT_ID_KEY"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "MICROSOFT_ACCESS_TOKEN_KEY"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "MICROSOFT_ID_TOKEN_KEY"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->e:Landroidx/fragment/app/Fragment;

    iget p0, p0, Lcom/onyx/android/sdk_google/account/RequestMicrosoftAuthAction;->g:I

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0, v2}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method
