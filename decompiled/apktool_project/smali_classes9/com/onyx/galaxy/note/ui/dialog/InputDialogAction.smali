.class public final Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction;
.super Lcom/onyx/galaxy/note/ui/action/BaseUiAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/ui/action/BaseUiAction<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0010\u000c\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001BM\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u000f\u001a\u00020\u0006\u0012\u0006\u0010\u0011\u001a\u00020\n\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0014\u0008\u0002\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\n0\u0015\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u000f\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0008R\u0014\u0010\u0011\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u000cR\u0014\u0010\u0014\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R \u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\n0\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction;",
        "Lcom/onyx/galaxy/note/ui/action/BaseUiAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "",
        "f",
        "I",
        "titleResId",
        "",
        "g",
        "Z",
        "enableCustomRule",
        "h",
        "maxLengthResId",
        "i",
        "displayMaxLengthView",
        "j",
        "Ljava/lang/String;",
        "originText",
        "Lkotlin/Function1;",
        "",
        "k",
        "Lkotlin/jvm/functions/Function1;",
        "charFilter",
        "Landroid/app/Activity;",
        "activityContext",
        "<init>",
        "(Landroid/app/Activity;IZIZLjava/lang/String;Lkotlin/jvm/functions/Function1;)V",
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

.field public final g:Z

.field public final h:I

.field public final i:Z

.field public final j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;IZIZLjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "IZIZ",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originText"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charFilter"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/ui/action/BaseUiAction;-><init>(Landroid/content/Context;)V

    .line 4
    iput p2, p0, Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction;->f:I

    .line 5
    iput-boolean p3, p0, Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction;->g:Z

    .line 6
    iput p4, p0, Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction;->h:I

    .line 7
    iput-boolean p5, p0, Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction;->i:Z

    .line 8
    iput-object p6, p0, Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction;->j:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction;->k:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;IZIZLjava/lang/String;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    .line 1
    sget-object v0, Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction$1;->INSTANCE:Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction$1;

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 2
    invoke-direct/range {v1 .. v8}, Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction;-><init>(Landroid/app/Activity;IZIZLjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$showInputDialog(Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction;->l()Lio/reactivex/rxjava3/core/Observable;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/action/BaseUiAction;->createObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction$a;-><init>(Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    iget v2, p0, Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction;->h:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    new-instance v2, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/ui/action/BaseUiAction;->getContext$note_overseasRelease()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction;->f:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setEditContentHide(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmDismiss(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction;->g:Z

    invoke-virtual {v2, v1, v3}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setEditTextMaxLength(IZ)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction;->i:Z

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setEditMaxLengthVisible(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setEditTextContent(Ljava/lang/String;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction;->k:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setEditCharFilter(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction$showInputDialog$1;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction$showInputDialog$1;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    new-instance v1, Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction$showInputDialog$2;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/ui/dialog/InputDialogAction$showInputDialog$2;-><init>(Lio/reactivex/rxjava3/subjects/PublishSubject;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setCancelCallback(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->create()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    return-object v0
.end method
