.class public final Lcom/onyx/android/sdk/textbox/listener/FinishEventObserver;
.super Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016R\u0016\u0010\u000c\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/listener/FinishEventObserver;",
        "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;",
        "Landroid/view/MotionEvent;",
        "event",
        "setEvent",
        "",
        "t",
        "",
        "onNext",
        "Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;",
        "e",
        "Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;",
        "gestureListener",
        "f",
        "Landroid/view/MotionEvent;",
        "<init>",
        "(Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;)V",
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
.field public e:Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gestureListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/FinishEventObserver;->e:Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;

    return-void
.end method


# virtual methods
.method public onNext(J)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/FinishEventObserver;->e:Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/listener/FinishEventObserver;->f:Landroid/view/MotionEvent;

    if-nez p0, :cond_0

    const-string p0, "event"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->onFinish(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/textbox/listener/FinishEventObserver;->onNext(J)V

    return-void
.end method

.method public final setEvent(Landroid/view/MotionEvent;)Lcom/onyx/android/sdk/textbox/listener/FinishEventObserver;
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/FinishEventObserver;->f:Landroid/view/MotionEvent;

    return-object p0
.end method
