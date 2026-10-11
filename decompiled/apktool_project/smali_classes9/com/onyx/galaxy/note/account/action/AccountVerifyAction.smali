.class public final Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;
.super Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0008\u0010\u0007\u001a\u00020\u0005H\u0002J\u0008\u0010\u0008\u001a\u00020\u0005H\u0002R\u0014\u0010\u000c\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\'\u0010\u0016\u001a\u0015\u0012\u000c\u0012\n \u0012*\u0004\u0018\u00010\u00020\u00020\u0011\u00a2\u0006\u0002\u0008\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;",
        "Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "p",
        "o",
        "m",
        "Landroid/content/Context;",
        "e",
        "Landroid/content/Context;",
        "uiContext",
        "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;",
        "f",
        "Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;",
        "verifyArgs",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "kotlin.jvm.PlatformType",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "g",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "subject",
        "<init>",
        "(Landroid/content/Context;Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verifyArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/action/BaseRxAccountAction;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;->e:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;->f:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    .line 8
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "create(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;->g:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 2
    sget-object p1, Lcom/onyx/android/sdk/base/extension/Activity;->INSTANCE:Lcom/onyx/android/sdk/base/extension/Activity;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/extension/Activity;->getFrontActivity()Landroid/app/Activity;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 3
    new-instance p2, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    invoke-direct {p2}, Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;-><init>()V

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;)V

    return-void
.end method

.method public static final synthetic access$bindEmail(Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;->m()V

    return-void
.end method

.method public static final synthetic access$getSubject$p(Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;)Lio/reactivex/rxjava3/subjects/PublishSubject;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;->g:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic access$verify(Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;->p()V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;->n(Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;)V

    return-void
.end method

.method public static final n(Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;->g:Lio/reactivex/rxjava3/subjects/PublishSubject;

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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction$a;-><init>(Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction$b;-><init>(Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/x5;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/x5;-><init>(Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doFinally(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;->e:Landroid/content/Context;

    const-class v2, Lcom/onyx/galaxy/note/usercenter/ui/UserCenterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "purpose"

    const-string v2, "bind_email_before_verify"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;->e:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final o()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->Companion:Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;

    iget-object v1, p0, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog$Companion;->createWithWarningConfirmCloseStyle(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/DoubleOptionDialog;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$string;->user_bind_email_to_retrieve_password:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setMessageTextRes(I)V

    sget v1, Lcom/onyx/galaxy/note/R$string;->user_bind_email_to_retrieve_password_title:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setRightButtonTitleRes(I)V

    new-instance v1, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction$requestBindEmail$1$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction$requestBindEmail$1$1;-><init>(Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->setOnRightButtonClick(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/DoubleOptionDialog;->show()V

    return-void
.end method

.method public final p()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getOnyxAccount()Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/AppConfigManager;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, v4}, Lcom/onyx/galaxy/note/common/data/AppConfigManager;->isSupportLoginType$default(Lcom/onyx/galaxy/note/common/data/AppConfigManager;ILjava/lang/String;ILjava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/model/OnyxAccountModel;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;->o()V

    return-void

    :cond_2
    new-instance v0, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyFragment;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyFragment;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;->f:Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;

    iget-object p0, p0, Lcom/onyx/galaxy/note/account/action/AccountVerifyAction;->g:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-virtual {v0, v1, v2, p0}, Lcom/onyx/galaxy/note/usercenter/ui/AccountVerifyFragment;->show(Landroid/content/Context;Lcom/onyx/android/sdk/data/account/bean/AccountVerifyArgs;Lio/reactivex/rxjava3/subjects/Subject;)V

    return-void
.end method
