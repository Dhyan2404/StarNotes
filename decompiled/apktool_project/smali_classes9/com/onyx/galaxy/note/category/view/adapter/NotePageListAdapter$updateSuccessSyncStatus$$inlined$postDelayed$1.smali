.class public final Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$updateSuccessSyncStatus$$inlined$postDelayed$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->X(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$postDelayed$runnable$1\n+ 2 NotePageListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,414:1\n804#2:415\n805#2,2:423\n350#3,7:416\n*S KotlinDebug\n*F\n+ 1 NotePageListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter\n*L\n804#1:416,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "androidx/core/view/ViewKt$postDelayed$runnable$1"
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
        "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$postDelayed$runnable$1\n+ 2 NotePageListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,414:1\n804#2:415\n805#2,2:423\n350#3,7:416\n*S KotlinDebug\n*F\n+ 1 NotePageListAdapter.kt\ncom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter\n*L\n804#1:416,7\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$updateSuccessSyncStatus$$inlined$postDelayed$1;->e:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$updateSuccessSyncStatus$$inlined$postDelayed$1;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$updateSuccessSyncStatus$$inlined$postDelayed$1;->e:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$updateSuccessSyncStatus$$inlined$postDelayed$1;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter$updateSuccessSyncStatus$$inlined$postDelayed$1;->e:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
