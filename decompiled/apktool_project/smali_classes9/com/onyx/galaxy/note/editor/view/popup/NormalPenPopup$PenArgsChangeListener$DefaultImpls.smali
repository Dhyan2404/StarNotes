.class public final Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static onAddPenArgs(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onChangeSmoothLevel(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;F)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onChangeStrokeNib(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;F)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onChangeStrokePressure(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;F)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onChangeStrokeWidth(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;F)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onRemovePenArgs(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onSelectedColor(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;II)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onSelectedColorDismiss(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public static onSelectedColorList(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;Lcom/onyx/android/sdk/base/extension/IntList;I)V
    .locals 0
    .param p0    # Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/onyx/android/sdk/base/extension/IntList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "colorList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
