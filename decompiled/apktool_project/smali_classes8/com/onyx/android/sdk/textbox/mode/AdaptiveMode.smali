.class public final Lcom/onyx/android/sdk/textbox/mode/AdaptiveMode;
.super Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J \u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016J\u0008\u0010\u000f\u001a\u00020\rH\u0016J\u0008\u0010\u0010\u001a\u00020\tH\u0016J\u0008\u0010\u0011\u001a\u00020\tH\u0016J\u0008\u0010\u0012\u001a\u00020\u0006H\u0002\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/mode/AdaptiveMode;",
        "Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;",
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
        "a",
        "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;",
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


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/textbox/widget/TextBoxView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textBox"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;-><init>(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getViewBinding()Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->btnMove:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isVertical()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x800053

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const p0, 0x800035

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_0
    return-void
.end method

.method public getEditorContentHeight()F
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->getEditorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->getEditorContentHeight()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleHeight()F

    move-result v2

    cmpg-float v2, v1, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-nez v2, :cond_1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v4, Lcom/onyx/android/sdk/textbox/mode/AdaptiveMode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "editor content height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", view height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v0, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorViewHeight()F

    move-result p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleY()F

    move-result p0

    div-float p0, v1, p0

    :goto_1
    return p0
.end method

.method public getEditorContentWidth()F
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->getEditorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object v1

    invoke-interface {v1}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->getEditorContentWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleWidth()F

    move-result v2

    cmpg-float v2, v1, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-nez v2, :cond_1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v4, Lcom/onyx/android/sdk/textbox/mode/AdaptiveMode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "editor content width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", view width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v0, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleX()F

    move-result p0

    div-float/2addr v1, p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorViewWidth()F

    move-result v1

    :goto_1
    return v1
.end method

.method public getRenderHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleHeightInt()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->getEditorContentHeight()F

    move-result p0

    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getRenderWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getEditor()Lcom/onyx/android/sdk/textbox/editor/IEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/onyx/android/sdk/textbox/editor/IEditor;->getEditorContentWidth()F

    move-result p0

    invoke-static {p0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorScaleWidthInt()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getType()Lcom/onyx/android/sdk/textbox/data/TextBoxModeType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/textbox/data/TextBoxModeType;->ADAPTIVE:Lcom/onyx/android/sdk/textbox/data/TextBoxModeType;

    return-object p0
.end method

.method public onOrientationChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getViewBinding()Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->selectionLeftHandle:Landroid/widget/FrameLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getViewBinding()Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->selectionRightHandle:Landroid/widget/FrameLayout;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getViewBinding()Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->selectionTopHandle:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getViewBinding()Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;->selectionBottomHandle:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/AdaptiveMode;->a()V

    return-void
.end method

.method public resetMinimumSize(ZII)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->getEditorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;->getTextBox()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/widget/TextBoxView;->isVertical()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move p3, v1

    :goto_1
    invoke-virtual {v0, p3}, Landroid/view/View;->setMinimumHeight(I)V

    :goto_2
    return-void
.end method
