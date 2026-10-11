.class public final Lcom/onyx/android/sdk/universal/editor/action/doc/ChangeDocScrollerGravityAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0008\u0010\u0006\u001a\u00020\u0005H\u0002J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/doc/ChangeDocScrollerGravityAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "l",
        "",
        "gravity",
        "isHorizontal",
        "m",
        "h",
        "Z",
        "i",
        "I",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZI)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final h:Z

.field public final i:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZI)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-boolean p2, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/ChangeDocScrollerGravityAction;->h:Z

    iput p3, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/ChangeDocScrollerGravityAction;->i:I

    return-void
.end method

.method public static final synthetic access$apply(Lcom/onyx/android/sdk/universal/editor/action/doc/ChangeDocScrollerGravityAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/ChangeDocScrollerGravityAction;->l()V

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

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/doc/ChangeDocScrollerGravityAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/doc/ChangeDocScrollerGravityAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/doc/ChangeDocScrollerGravityAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/doc/ChangeDocScrollerGravityAction$b;->e:Lcom/onyx/android/sdk/universal/editor/action/doc/ChangeDocScrollerGravityAction$b;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->isEnabledDocConfig(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/ChangeDocScrollerGravityAction;->i:I

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/ChangeDocScrollerGravityAction;->h:Z

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/doc/ChangeDocScrollerGravityAction;->m(IZ)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;

    iget v1, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/ChangeDocScrollerGravityAction;->i:I

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/doc/ChangeDocScrollerGravityAction;->h:Z

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/config/GlobalDocSettings;->setGlobalDocScrollerGravity(IZ)V

    :goto_0
    return-void
.end method

.method public final m(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->setScrollerHorizontalGravity(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->setScrollerVerticalGravity(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V

    :goto_0
    return-void
.end method
