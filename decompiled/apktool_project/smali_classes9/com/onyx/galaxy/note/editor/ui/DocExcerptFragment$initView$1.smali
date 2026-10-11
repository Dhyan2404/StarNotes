.class public final Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$initView$1;
.super Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/ui/DocExcerptFragment$initView$1",
        "Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;",
        "onItemMoved",
        "",
        "fromPos",
        "",
        "toPos",
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
.field public final synthetic Q:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$initView$1;->Q:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    invoke-direct {p0, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Z)V

    return-void
.end method


# virtual methods
.method public onItemMoved(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->onItemMoved(II)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$initView$1;->Q:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->resetOrderIndex()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$initView$1;->Q:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;->resetOrderIndex()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$initView$1;->Q:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->access$saveReorderList(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;)V

    return-void
.end method
