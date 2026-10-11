.class public final Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0013\u00a2\u0006\u0004\u0008 \u0010!J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J*\u0010\r\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u000f\u001a\u00020\u0004J\u000e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002J\u0008\u0010\u0012\u001a\u00020\u0011H\u0002R\u0016\u0010\u0015\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0014R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "Landroid/view/MotionEvent;",
        "e",
        "",
        "onLongPress",
        "",
        "onDown",
        "e1",
        "e2",
        "",
        "distanceX",
        "distanceY",
        "onScroll",
        "onSingleTapUp",
        "destroyActionMode",
        "onFinish",
        "Landroid/view/ActionMode$Callback;",
        "a",
        "Lcom/onyx/android/sdk/textbox/widget/RichEditor;",
        "Lcom/onyx/android/sdk/textbox/widget/RichEditor;",
        "richEditor",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "f",
        "Lkotlin/Lazy;",
        "b",
        "()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "textBoxView",
        "Landroid/view/ActionMode;",
        "g",
        "Landroid/view/ActionMode;",
        "actionMode",
        "<init>",
        "(Lcom/onyx/android/sdk/textbox/widget/RichEditor;)V",
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
.field public e:Lcom/onyx/android/sdk/textbox/widget/RichEditor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Landroid/view/ActionMode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/textbox/widget/RichEditor;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/textbox/widget/RichEditor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "richEditor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    new-instance p1, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener$textBoxView$2;

    invoke-direct {p1, p0}, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener$textBoxView$2;-><init>(Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->f:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getRichEditor$p(Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;)Lcom/onyx/android/sdk/textbox/widget/RichEditor;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    return-object p0
.end method

.method public static final synthetic access$setActionMode$p(Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;Landroid/view/ActionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->g:Landroid/view/ActionMode;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/ActionMode$Callback;
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener$getActionModeCallback$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener$getActionModeCallback$1;-><init>(Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;)V

    return-object v0
.end method

.method public final b()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    return-object p0
.end method

.method public final destroyActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->g:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->g:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "editor on down: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->b()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isTextBoxMovable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->b()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    sget-object v2, Lcom/onyx/android/sdk/textbox/data/TransformType;->TRANSLATE:Lcom/onyx/android/sdk/textbox/data/TransformType;

    invoke-virtual {v0, v1, p1, v2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->handleTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)Z

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->destroyActionMode()V

    return v3
.end method

.method public final onFinish(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->b()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    sget-object v1, Lcom/onyx/android/sdk/textbox/data/TransformType;->TRANSLATE:Lcom/onyx/android/sdk/textbox/data/TransformType;

    invoke-virtual {v0, p0, p1, v1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->handleTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)Z

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->b()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->setTextBoxMovable(Z)V

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->getHtml()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->a()Landroid/view/ActionMode$Callback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/textbox/widget/RichEditor;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->g:Landroid/view/ActionMode;

    :cond_0
    return-void
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

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->b()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    sget-object p3, Lcom/onyx/android/sdk/textbox/data/TransformType;->TRANSLATE:Lcom/onyx/android/sdk/textbox/data/TransformType;

    invoke-virtual {p1, p0, p2, p3}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->handleTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->b()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->b()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->enterEditingMode()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->b()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/listener/RichEditorGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/RichEditor;

    sget-object v1, Lcom/onyx/android/sdk/textbox/data/TransformType;->TRANSLATE:Lcom/onyx/android/sdk/textbox/data/TransformType;

    invoke-virtual {v0, p0, p1, v1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->handleTouch(Landroid/view/View;Landroid/view/MotionEvent;Lcom/onyx/android/sdk/textbox/data/TransformType;)Z

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
