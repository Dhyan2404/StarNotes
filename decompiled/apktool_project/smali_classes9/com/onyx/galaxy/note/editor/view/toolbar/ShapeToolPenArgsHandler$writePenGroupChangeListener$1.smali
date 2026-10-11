.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$writePenGroupChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;-><init>(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0005H\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0005H\u0016J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0005H\u0016J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0005H\u0016J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0005H\u0016\u00a8\u0006\u0016"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$writePenGroupChangeListener$1",
        "Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;",
        "onChangeAlphaFactor",
        "",
        "alphaFactor",
        "",
        "onChangeLineDrawing",
        "subShapeType",
        "",
        "onChangeRoundCorner",
        "roundCorner",
        "",
        "onChangeVelocity",
        "velocity",
        "onChangeVelocityAmplifier",
        "velocityAmplifier",
        "onChangeVelocityIgnoreThreshold",
        "velocityIgnoreThreshold",
        "onChangeVelocityLowerBound",
        "velocityLowerBound",
        "onChangeVelocityUpperBound",
        "velocityUpperBound",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$writePenGroupChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddPenArgs()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener$DefaultImpls;->onAddPenArgs(Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;)V

    return-void
.end method

.method public onChangeAlphaFactor(F)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$writePenGroupChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->getPencilArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;->onChangeAlphaFactor(F)V

    return-void
.end method

.method public onChangeLineDrawing(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$writePenGroupChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->getMarkPenArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;->onChangeLineDrawing(I)V

    return-void
.end method

.method public onChangeRoundCorner(Z)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$writePenGroupChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->getMarkPenArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;->onChangeRoundCorner(Z)V

    return-void
.end method

.method public onChangeSmoothLevel(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener$DefaultImpls;->onChangeSmoothLevel(Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;F)V

    return-void
.end method

.method public onChangeStrokeNib(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener$DefaultImpls;->onChangeStrokeNib(Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;F)V

    return-void
.end method

.method public onChangeStrokePressure(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener$DefaultImpls;->onChangeStrokePressure(Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;F)V

    return-void
.end method

.method public onChangeStrokeWidth(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener$DefaultImpls;->onChangeStrokeWidth(Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;F)V

    return-void
.end method

.method public onChangeVelocity(F)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$writePenGroupChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->getInkPenArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;->onChangeVelocity(F)V

    return-void
.end method

.method public onChangeVelocityAmplifier(F)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$writePenGroupChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->getInkPenArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;->onChangeVelocityAmplifier(F)V

    return-void
.end method

.method public onChangeVelocityIgnoreThreshold(F)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$writePenGroupChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->getInkPenArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;->onChangeVelocityIgnoreThreshold(F)V

    return-void
.end method

.method public onChangeVelocityLowerBound(F)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$writePenGroupChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->getInkPenArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;->onChangeVelocityLowerBound(F)V

    return-void
.end method

.method public onChangeVelocityUpperBound(F)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler$writePenGroupChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeToolPenArgsHandler;->getInkPenArgsChangeListener()Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;->onChangeVelocityUpperBound(F)V

    return-void
.end method

.method public onRemovePenArgs()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener$DefaultImpls;->onRemovePenArgs(Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;)V

    return-void
.end method

.method public onSelectedColor(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener$DefaultImpls;->onSelectedColor(Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;II)V

    return-void
.end method

.method public onSelectedColorDismiss()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener$DefaultImpls;->onSelectedColorDismiss(Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;)V

    return-void
.end method

.method public onSelectedColorList(Lcom/onyx/android/sdk/base/extension/IntList;I)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/extension/IntList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener$DefaultImpls;->onSelectedColorList(Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;Lcom/onyx/android/sdk/base/extension/IntList;I)V

    return-void
.end method
