.class public final Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;
.super Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0016\u0010\u000c\u001a\u00020\u000b2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u0002\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;",
        "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "p",
        "verifyData",
        "",
        "o",
        "Lio/reactivex/rxjava3/core/Observer;",
        "observer",
        "",
        "n",
        "Landroid/content/Context;",
        "activityContext",
        "<init>",
        "(Landroid/content/Context;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    return-void
.end method

.method public static final synthetic access$checkValid(Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;->o(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getVerifyData(Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;->p()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;->r(Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic m(Ljava/util/concurrent/atomic/AtomicReference;Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;->q(Ljava/util/concurrent/atomic/AtomicReference;Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static final q(Ljava/util/concurrent/atomic/AtomicReference;Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p3, "$dataRef"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$subject"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;->n(Lio/reactivex/rxjava3/core/Observer;)V

    :cond_0
    return-void
.end method

.method public static final r(Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;Lio/reactivex/rxjava3/subjects/PublishSubject;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$subject"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;->n(Lio/reactivex/rxjava3/core/Observer;)V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->ensureClusterInfo()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction$a;-><init>(Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Lio/reactivex/rxjava3/core/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/common/exception/AbortException;

    const-string v0, "security verify cancel"

    invoke-direct {p0, v0}, Lcom/onyx/android/sdk/data/common/exception/AbortException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lio/reactivex/rxjava3/core/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final o(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->security_verification_failed_tip:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return v2
.end method

.method public final p()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v1

    const-string v2, "create(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getActivityContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->getClusterInfo()Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4}, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V

    new-instance v3, Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction$getVerifyData$dialog$1;

    invoke-direct {v3, v0, p0, v1}, Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction$getVerifyData$dialog$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {v2, v3}, Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;->setVerifyListener(Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog$OnVerifyListener;)Lcom/onyx/galaxy/note/account/view/dialog/SecurityVerificationDialog;

    move-result-object v2

    new-instance v3, Lcom/sunia/HTREnginev2/p2h;

    invoke-direct {v3, v0, p0, v1}, Lcom/sunia/HTREnginev2/p2h;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v0, Lcom/sunia/HTREnginev2/q2h;

    invoke-direct {v0, p0, v1}, Lcom/sunia/HTREnginev2/q2h;-><init>(Lcom/onyx/galaxy/note/account/action/GetSecurityVerifyDataAction;Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-object v1
.end method
