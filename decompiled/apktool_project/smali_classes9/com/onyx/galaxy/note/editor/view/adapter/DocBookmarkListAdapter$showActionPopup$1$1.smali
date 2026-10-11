.class public final Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$showActionPopup$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/editor/view/popup/DocBookmarkActionPopup$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->D(Landroid/view/View;I)V
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
        "com/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$showActionPopup$1$1",
        "Lcom/onyx/galaxy/note/editor/view/popup/DocBookmarkActionPopup$ActionListener;",
        "onDeleted",
        "",
        "onEdited",
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
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;

.field public final synthetic b:I

.field public final synthetic c:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;ILcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$showActionPopup$1$1;->a:Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;

    iput p2, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$showActionPopup$1$1;->b:I

    iput-object p3, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$showActionPopup$1$1;->c:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$showActionPopup$1$1;->a:Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->access$getPageDataMap$p(Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$showActionPopup$1$1;->c:Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;->getPageUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$showActionPopup$1$1;->a:Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$showActionPopup$1$1;->b:I

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter4/BaseDifferAdapter;->removeAt(I)V

    return-void
.end method

.method public onEdited()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$showActionPopup$1$1;->a:Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;

    iget p0, p0, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter$showActionPopup$1$1;->b:I

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->enterEditMode(I)V

    return-void
.end method
