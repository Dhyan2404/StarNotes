.class public final Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment$onViewCreated$9$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/popup/CounterMoreOptionsPopup$OperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "com/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment$onViewCreated$9$1$1",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment$onViewCreated$9$1$1;->a:Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment$onViewCreated$9$1$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelete()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment$onViewCreated$9$1$1;->a:Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;->access$getAdapter(Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;

    move-result-object v0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment$onViewCreated$9$1$1;->b:I

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->removeAt(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment$onViewCreated$9$1$1;->a:Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;->access$getTaskModel$p(Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;)Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;->getCountList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment$onViewCreated$9$1$1;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel$CountTimeSetting;

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment$onViewCreated$9$1$1;->a:Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;->access$refresh(Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;)V

    return-void
.end method

.method public onEdit()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment$onViewCreated$9$1$1;->a:Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;->access$getAdapter(Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;

    move-result-object v0

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/fragment/EditMultipleCountDownTaskFragment$onViewCreated$9$1$1;->b:I

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/CounterMultipleTimeEditAdapter;->editTitle(I)V

    return-void
.end method
