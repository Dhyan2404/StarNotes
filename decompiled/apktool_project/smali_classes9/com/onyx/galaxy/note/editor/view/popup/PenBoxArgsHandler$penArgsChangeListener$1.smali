.class public final Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;-><init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0005H\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0018\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1",
        "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;",
        "onChangeSmoothLevel",
        "",
        "smoothLevel",
        "",
        "onChangeStrokeNib",
        "nib",
        "onChangeStrokePressure",
        "pressureSensitivity",
        "onChangeStrokeWidth",
        "strokeWidth",
        "onRemovePenArgs",
        "onSelectedColor",
        "color",
        "",
        "colorIndex",
        "onSelectedColorList",
        "colorList",
        "Lcom/onyx/android/sdk/base/extension/IntList;",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddPenArgs()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener$DefaultImpls;->onAddPenArgs(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;)V

    return-void
.end method

.method public onChangeSmoothLevel(F)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1$onChangeSmoothLevel$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1$onChangeSmoothLevel$1;-><init>(F)V

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->access$handlePenArgs(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onChangeStrokeNib(F)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1$onChangeStrokeNib$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1$onChangeStrokeNib$1;-><init>(F)V

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->access$handlePenArgs(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onChangeStrokePressure(F)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1$onChangeStrokePressure$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1$onChangeStrokePressure$1;-><init>(F)V

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->access$handlePenArgs(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onChangeStrokeWidth(F)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1$onChangeStrokeWidth$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1$onChangeStrokeWidth$1;-><init>(F)V

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->access$handlePenArgs(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->access$getPenBoxPopup$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;)Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->reloadPenList(Z)V

    return-void
.end method

.method public onRemovePenArgs()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->access$getPenBoxPopup$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;)Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->deleteSelectedPenArgs()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->access$getPenBoxPopup$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;)Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->dismissAllPopup()V

    return-void
.end method

.method public onSelectedColor(II)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1$onSelectedColor$1;

    invoke-direct {v1, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1$onSelectedColor$1;-><init>(II)V

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->access$handlePenArgs(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->access$getPenBoxPopup$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;)Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->reloadPenList(Z)V

    return-void
.end method

.method public onSelectedColorDismiss()V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener$DefaultImpls;->onSelectedColorDismiss(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;)V

    return-void
.end method

.method public onSelectedColorList(Lcom/onyx/android/sdk/base/extension/IntList;I)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/extension/IntList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "colorList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1$onSelectedColorList$1;

    invoke-direct {v1, p1, p2}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1$onSelectedColorList$1;-><init>(Lcom/onyx/android/sdk/base/extension/IntList;I)V

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->access$handlePenArgs(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$penArgsChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->access$getPenBoxPopup$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;)Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->reloadPenList(Z)V

    return-void
.end method
