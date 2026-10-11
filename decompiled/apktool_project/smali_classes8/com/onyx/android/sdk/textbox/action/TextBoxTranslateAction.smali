.class public final Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;
.super Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction<",
        "Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0005H\u0014J\u0008\u0010\u0007\u001a\u00020\u0000H\u0002R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;",
        "Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction;",
        "Landroid/view/MotionEvent;",
        "event",
        "setMotionEvent",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "m",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "f",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "textBoxView",
        "g",
        "Landroid/view/MotionEvent;",
        "<init>",
        "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V",
        "sdk-textbox_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Landroid/view/MotionEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textBoxView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;->f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    return-void
.end method

.method public static final synthetic access$translate(Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;)Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;->m()Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;

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
            "Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;",
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

    new-instance v1, Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction$a;-><init>(Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;
    .locals 6

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;->f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getLastPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;->INSTANCE:Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;

    iget-object v2, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;->f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v4, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;->g:Landroid/view/MotionEvent;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget-object v5, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;->g:Landroid/view/MotionEvent;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/onyx/android/sdk/textbox/utils/TextBoxUtils;->updateTextBoxPosition(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;->f:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget-object v2, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;->g:Landroid/view/MotionEvent;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;->g:Landroid/view/MotionEvent;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->updateLastPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;->g:Landroid/view/MotionEvent;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-object p0
.end method

.method public final setMotionEvent(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/action/TextBoxTranslateAction;->g:Landroid/view/MotionEvent;

    return-object p0
.end method
