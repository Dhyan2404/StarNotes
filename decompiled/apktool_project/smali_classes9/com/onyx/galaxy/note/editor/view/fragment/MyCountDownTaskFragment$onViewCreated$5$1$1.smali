.class public final Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment$onViewCreated$5$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment$onViewCreated$5$1$1",
        "Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;",
        "onDelete",
        "",
        "onEdit",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment$onViewCreated$5$1$1;->a:Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment$onViewCreated$5$1$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment$onViewCreated$5$1$1;->a:Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment$onViewCreated$5$1$1;->b:I

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->access$doDelete(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;I)V

    return-void
.end method

.method public onEdit()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment$onViewCreated$5$1$1;->a:Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment$onViewCreated$5$1$1;->b:I

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;->access$doEdit(Lcom/onyx/galaxy/note/editor/view/fragment/MyCountDownTaskFragment;I)V

    return-void
.end method
