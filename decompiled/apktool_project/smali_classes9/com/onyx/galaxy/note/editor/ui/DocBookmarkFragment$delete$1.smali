.class final Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$delete$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;->q0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDocBookmarkFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocBookmarkFragment.kt\ncom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$delete$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,344:1\n1855#2,2:345\n*S KotlinDebug\n*F\n+ 1 DocBookmarkFragment.kt\ncom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$delete$1\n*L\n230#1:345,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDocBookmarkFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocBookmarkFragment.kt\ncom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$delete$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,344:1\n1855#2,2:345\n*S KotlinDebug\n*F\n+ 1 DocBookmarkFragment.kt\ncom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$delete$1\n*L\n230#1:345,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$delete$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$delete$1;->$items:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$delete$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$delete$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$delete$1;->$items:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/editor/view/adapter/BaseSelectableDifferAdapter;->remove(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$delete$1;->$items:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$delete$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;

    .line 5
    invoke-static {v2}, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "editorBundle"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_1
    new-instance v5, Lcom/onyx/android/sdk/universal/editor/events/app/DeleteBookmarkEvent;

    invoke-direct {v5, v3}, Lcom/onyx/android/sdk/universal/editor/events/app/DeleteBookmarkEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;)V

    invoke-static {v4, v5}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$delete$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;->access$clearSelectedItems(Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;)V

    return-void
.end method
