.class public final Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0017\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0011\u0012\u0006\u0010\u001b\u001a\u00020\r\u00a2\u0006\u0004\u0008&\u0010\'J*\u0010\t\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0016J\u000e\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0002H\u0002R\u0017\u0010\u0016\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u001b\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\u00088\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\"\u0010%\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;",
        "Landroid/view/GestureDetector$SimpleOnGestureListener;",
        "Landroid/view/MotionEvent;",
        "e1",
        "e2",
        "",
        "dx",
        "dy",
        "",
        "onScroll",
        "event",
        "",
        "onUp",
        "Landroid/widget/EditText;",
        "editText",
        "",
        "a",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "e",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "getTextBox",
        "()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "textBox",
        "f",
        "Landroid/widget/EditText;",
        "getEditor",
        "()Landroid/widget/EditText;",
        "editor",
        "g",
        "Z",
        "supportMovingWhenEditing",
        "h",
        "I",
        "getSelectionStart",
        "()I",
        "setSelectionStart",
        "(I)V",
        "selectionStart",
        "<init>",
        "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/widget/EditText;)V",
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

.field public final f:Landroid/widget/EditText;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Z

.field public h:I


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;Landroid/widget/EditText;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/EditText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textBox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    iput-object p2, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->f:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/EditText;Landroid/view/MotionEvent;)I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    int-to-float v1, v1

    sub-float/2addr v2, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleX()F

    move-result v1

    div-float/2addr v2, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleY()F

    move-result p0

    div-float/2addr p2, p0

    invoke-virtual {p1, v2, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result p0

    return p0
.end method

.method public final getEditor()Landroid/widget/EditText;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->f:Landroid/widget/EditText;

    return-object p0
.end method

.method public final getSelectionStart()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->h:I

    return p0
.end method

.method public final getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    return-object p0
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

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isReadOnly()Z

    move-result p1

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isEditing()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isFingerTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->g:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p4, p3

    :goto_0
    if-eqz p4, :cond_3

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isTextBoxMoved()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->f:Landroid/widget/EditText;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->f:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->h:I

    :cond_3
    :goto_1
    return p4
.end method

.method public final onUp(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->e:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isTextBoxMoved()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->h:I

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p1, v0, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->f:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->h:I

    :cond_2
    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->f:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->f:Landroid/widget/EditText;

    iget v0, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->h:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->f:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->f:Landroid/widget/EditText;

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->a(Landroid/widget/EditText;Landroid/view/MotionEvent;)I

    move-result p1

    iput p1, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->h:I

    return-void
.end method

.method public final setSelectionStart(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/textbox/listener/NativeEditorGestureListener;->h:I

    return-void
.end method
