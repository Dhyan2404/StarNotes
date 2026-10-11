.class public final Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->j(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$4",
        "Lcom/chad/library/adapter4/dragswipe/listener/DragAndSwipeDataCallback;",
        "dataMove",
        "",
        "fromPosition",
        "",
        "toPosition",
        "dataRemoveAt",
        "position",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$4;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$4;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataMove(II)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$4;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->getPenAdapter()Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->move(II)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$4;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method

.method public dataRemoveAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$4;->a:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->getPenAdapter()Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$PenAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->removeAt(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup$attachQuickDrag$4;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method
