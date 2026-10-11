.class public final Lcom/onyx/android/sdk/textbox/listener/EditorTransformGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0011\u001a\u00020\r\u0012\u0006\u0010\u0017\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J*\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016R\u0017\u0010\u0011\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0017\u001a\u00020\u00128\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u001a\u001a\u00020\u00048\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/listener/EditorTransformGestureListener;",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "Landroid/view/MotionEvent;",
        "e",
        "",
        "onSingleTapUp",
        "onDown",
        "e1",
        "e2",
        "",
        "dx",
        "dy",
        "onScroll",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "getTextBox",
        "()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "textBox",
        "Landroid/view/View;",
        "f",
        "Landroid/view/View;",
        "getTarget",
        "()Landroid/view/View;",
        "target",
        "g",
        "Z",
        "supportMovingWhenEditing",
        "<init>",
        "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;)V",
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
.field public final e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textBox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/EditorTransformGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    iput-object p2, p0, Lcom/onyx/android/sdk/textbox/listener/EditorTransformGestureListener;->f:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final getTarget()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/listener/EditorTransformGestureListener;->f:Landroid/view/View;

    return-object p0
.end method

.method public final getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/listener/EditorTransformGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    return-object p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/listener/EditorTransformGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/listener/EditorTransformGestureListener;->f:Landroid/view/View;

    sget-object v2, Lcom/onyx/android/sdk/textbox/data/TransformType;->TRANSLATE:Lcom/onyx/android/sdk/textbox/data/TransformType;

    invoke-virtual {v0, v1, p1, v2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->handleTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)Z

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "e2"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/EditorTransformGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isReadOnly()Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/EditorTransformGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isEditing()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isFingerTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/onyx/android/sdk/textbox/listener/EditorTransformGestureListener;->g:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/EditorTransformGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/listener/EditorTransformGestureListener;->f:Landroid/view/View;

    sget-object p4, Lcom/onyx/android/sdk/textbox/data/TransformType;->TRANSLATE:Lcom/onyx/android/sdk/textbox/data/TransformType;

    invoke-virtual {p1, p0, p2, p4}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->handleTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)Z

    :cond_2
    return p3
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/EditorTransformGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isReadOnly()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/listener/EditorTransformGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->enterEditingMode()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
