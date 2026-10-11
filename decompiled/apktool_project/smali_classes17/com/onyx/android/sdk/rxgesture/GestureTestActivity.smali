.class public final Lcom/onyx/android/sdk/rxgesture/GestureTestActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u0016\u0010\u000f\u001a\u00020\u000c8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/onyx/android/sdk/rxgesture/GestureTestActivity;",
        "Landroid/app/Activity;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "b",
        "a",
        "Lcom/onyx/android/sdk/rxgesture/RxGesture;",
        "e",
        "Lcom/onyx/android/sdk/rxgesture/RxGesture;",
        "gesture",
        "Landroid/widget/TextView;",
        "f",
        "Landroid/widget/TextView;",
        "textView",
        "Landroid/view/View;",
        "g",
        "Landroid/view/View;",
        "touchView",
        "<init>",
        "()V",
        "sdk-rxgesture_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final e:Lcom/onyx/android/sdk/rxgesture/RxGesture;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Landroid/widget/TextView;

.field public g:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/rxgesture/RxGesture;

    invoke-direct {v0}, Lcom/onyx/android/sdk/rxgesture/RxGesture;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/GestureTestActivity;->e:Lcom/onyx/android/sdk/rxgesture/RxGesture;

    return-void
.end method

.method public static final synthetic access$getTextView$p(Lcom/onyx/android/sdk/rxgesture/GestureTestActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureTestActivity;->f:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 5

    sget-object v0, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->INSTANCE:Lcom/onyx/android/sdk/rxgesture/RxGestureLog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureLog;->setDebugLog(Z)V

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/GestureTestActivity;->e:Lcom/onyx/android/sdk/rxgesture/RxGesture;

    new-instance v2, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;

    invoke-direct {v2}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;-><init>()V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnableCommonGesture(Z)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnableMoveGesture(Z)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnableDoubleGesture(Z)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnableFlingGesture(Z)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnableLongPressGesture(Z)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnabledPalmReject(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnabledPenTouch(Z)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;->setEnableScaleGesture(Z)V

    new-instance v1, Lcom/onyx/android/sdk/rxgesture/GestureTestActivity$initGesture$2;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/rxgesture/GestureTestActivity$initGesture$2;-><init>(Lcom/onyx/android/sdk/rxgesture/GestureTestActivity;)V

    invoke-virtual {v0, v2, v1}, Lcom/onyx/android/sdk/rxgesture/RxGesture;->subscribe(Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;Lcom/onyx/android/sdk/rxgesture/RxGestureListener;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/GestureTestActivity;->g:Landroid/view/View;

    const/4 v1, 0x0

    const-string v2, "touchView"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v3, p0, Lcom/onyx/android/sdk/rxgesture/GestureTestActivity;->e:Lcom/onyx/android/sdk/rxgesture/RxGesture;

    new-instance v4, Lcom/sunia/HTREnginev2/h2h;

    invoke-direct {v4, v3}, Lcom/sunia/HTREnginev2/h2h;-><init>(Lcom/onyx/android/sdk/rxgesture/RxGesture;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/rxgesture/GestureTestActivity;->g:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object p0, p0, Lcom/onyx/android/sdk/rxgesture/GestureTestActivity;->e:Lcom/onyx/android/sdk/rxgesture/RxGesture;

    new-instance v0, Lcom/sunia/HTREnginev2/i2h;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/i2h;-><init>(Lcom/onyx/android/sdk/rxgesture/RxGesture;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public final b()V
    .locals 2

    sget v0, Lcom/onyx/android/sdk/rxgesture/R$id;->text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/GestureTestActivity;->f:Landroid/widget/TextView;

    sget v0, Lcom/onyx/android/sdk/rxgesture/R$id;->touch_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/rxgesture/GestureTestActivity;->g:Landroid/view/View;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffed

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
