.class public final Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$5;
.super Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->b1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0016\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$5",
        "Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;",
        "isEnableSwipe",
        "",
        "updateChangeItems",
        "",
        "positionList",
        "",
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
.field public final synthetic m:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$5;->m:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnableSwipe()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$5;->m:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$getSelectable$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public updateChangeItems(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "positionList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$5;->m:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    move-result-object v0

    const-string v1, "adapter"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->toggleItemsSelectedState(Ljava/util/List;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$5;->m:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$updateSelectionView(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$5;->m:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "editorBundle"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v2

    :cond_1
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/AllDataSelectedEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$initListView$5;->m:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->isAllItemSelected()Z

    move-result p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/AllDataSelectedEvent;-><init>(Z)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method
