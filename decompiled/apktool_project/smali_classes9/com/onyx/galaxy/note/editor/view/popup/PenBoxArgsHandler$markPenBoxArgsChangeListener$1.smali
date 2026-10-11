.class public final Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$markPenBoxArgsChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;


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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$markPenBoxArgsChangeListener$1",
        "Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;",
        "onChangeLineDrawing",
        "",
        "subShapeType",
        "",
        "onChangeRoundCorner",
        "roundCorner",
        "",
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$markPenBoxArgsChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeLineDrawing(I)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$markPenBoxArgsChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$markPenBoxArgsChangeListener$1$onChangeLineDrawing$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$markPenBoxArgsChangeListener$1$onChangeLineDrawing$1;-><init>(I)V

    invoke-static {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->access$handlePenArgs(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onChangeRoundCorner(Z)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$markPenBoxArgsChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$markPenBoxArgsChangeListener$1$onChangeRoundCorner$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$markPenBoxArgsChangeListener$1$onChangeRoundCorner$1;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->access$handlePenArgs(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler$markPenBoxArgsChangeListener$1;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;->access$getPenBoxPopup$p(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxArgsHandler;)Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->reloadPenList(Z)V

    return-void
.end method
