.class public abstract Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\'\u001a\u00020\"\u00a2\u0006\u0004\u0008(\u0010)J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u0008\u0010\u0007\u001a\u00020\u0006H&J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H&J \u0010\u0010\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016J\u0008\u0010\u0013\u001a\u00020\u0011H\u0016J\u0008\u0010\u0014\u001a\u00020\rH\u0016J\u0008\u0010\u0015\u001a\u00020\rH\u0016J\u0010\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\rH\u0016J\u0010\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\rH\u0016J\u0010\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001aH\u0016J\u000e\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001aJ\u0010\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001aH\u0016J\u000e\u0010\u001f\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u001aJ\u0006\u0010 \u001a\u00020\rJ\u0006\u0010!\u001a\u00020\rR\u0017\u0010\'\u001a\u00020\"8\u0006\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010&\u00a8\u0006*"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;",
        "",
        "Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;",
        "getViewBinding",
        "Lcom/onyx/android/sdk/textbox/editor/IEditor;",
        "getEditor",
        "Lcom/onyx/android/sdk/textbox/data/TextBoxModeType;",
        "getType",
        "",
        "isVertical",
        "",
        "onOrientationChanged",
        "newAdded",
        "",
        "width",
        "height",
        "resetMinimumSize",
        "",
        "getEditorContentWidth",
        "getEditorContentHeight",
        "getRenderWidth",
        "getRenderHeight",
        "newWidth",
        "canUpdateEditorWidth",
        "newHeight",
        "canUpdateEditorHeight",
        "Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;",
        "sizeInfo",
        "resizeEditorWidth",
        "shouldResizeWidth",
        "resizeEditorHeight",
        "shouldResizeHeight",
        "getOriginLimitWidth",
        "getOriginLimitHeight",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "a",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "getTextBox",
        "()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
        "textBox",
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
.field public final a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textBox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    return-void
.end method


# virtual methods
.method public canUpdateEditorHeight(I)Z
    .locals 0

    int-to-float p1, p1

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorMinHeight()F

    move-result p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canUpdateEditorWidth(I)Z
    .locals 0

    int-to-float p1, p1

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorMinWidth()F

    move-result p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object p0

    return-object p0
.end method

.method public getEditorContentHeight()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorViewHeight()F

    move-result p0

    return p0
.end method

.method public getEditorContentWidth()F
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorViewWidth()F

    move-result p0

    return p0
.end method

.method public final getOriginLimitHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->getLimitRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleY()F

    move-result p0

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public final getOriginLimitWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->getLimitRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleX()F

    move-result p0

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getRenderHeight()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleHeightInt()I

    move-result p0

    return p0
.end method

.method public getRenderWidth()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleWidthInt()I

    move-result p0

    return p0
.end method

.method public final getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    return-object p0
.end method

.method public abstract getType()Lcom/onyx/android/sdk/textbox/data/TextBoxModeType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getViewBinding()Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getViewBinding()Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    move-result-object p0

    return-object p0
.end method

.method public abstract onOrientationChanged(Z)V
.end method

.method public resetMinimumSize(ZII)V
    .locals 0

    iget-object p1, p0, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setMinimumWidth(I)V

    return-void
.end method

.method public resizeEditorHeight(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sizeInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->shouldResizeHeight(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->getContentHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getOriginLimitHeight()I

    move-result v2

    invoke-static {v1, v0, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->adjustEditorHeight(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;I)Z

    move-result p0

    return p0
.end method

.method public resizeEditorWidth(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sizeInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->shouldResizeWidth(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->getContentWidth(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getOriginLimitWidth()I

    move-result v2

    invoke-static {v1, v0, v2}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->adjustEditorWidth(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;I)Z

    move-result p0

    return p0
.end method

.method public final shouldResizeHeight(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sizeInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->getLimitRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->getContentHeight(Landroid/content/Context;)I

    move-result p0

    if-gtz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final shouldResizeWidth(Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sizeInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->getLimitRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->a:Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;->getContentWidth(Landroid/content/Context;)I

    move-result p0

    if-gtz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
