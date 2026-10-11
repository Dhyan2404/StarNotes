.class public final Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;
.super Lcom/onyx/galaxy/note/ui/action/BaseUiAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/ui/action/BaseUiAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u000b\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;",
        "Lcom/onyx/galaxy/note/ui/action/BaseUiAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "",
        "f",
        "I",
        "titleResId",
        "g",
        "messageResId",
        "Landroid/content/Context;",
        "activityContext",
        "<init>",
        "(Landroid/content/Context;II)V",
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
.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/ui/action/BaseUiAction;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;->f:I

    iput p3, p0, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;->g:I

    return-void
.end method

.method public static final synthetic access$showMessageDialog(Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/action/BaseUiAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction$a;-><init>(Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/action/BaseUiAction;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;->f:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelButtonHide(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v1

    iget p0, p0, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction;->g:I

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setMessage(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction$showMessageDialog$1;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/ui/dialog/MessageDialogAction$showMessageDialog$1;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelable(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->create()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    return-object v0
.end method
