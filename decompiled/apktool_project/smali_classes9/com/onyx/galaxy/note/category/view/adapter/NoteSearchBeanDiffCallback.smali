.class public final Lcom/onyx/galaxy/note/category/view/adapter/NoteSearchBeanDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u0018\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/NoteSearchBeanDiffCallback;",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;",
        "()V",
        "areContentsTheSame",
        "",
        "oldItem",
        "newItem",
        "areItemsTheSame",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageIndex()I

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageIndex()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getType()I

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getType()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageUpdatedAt()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageUpdatedAt()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    check-cast p2, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NoteSearchBeanDiffCallback;->areContentsTheSame(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)Z

    move-result p0

    return p0
.end method

.method public areItemsTheSame(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageIndex()I

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getPageIndex()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getType()I

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;->getType()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    check-cast p2, Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NoteSearchBeanDiffCallback;->areItemsTheSame(Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;Lcom/onyx/android/sdk/universal/editor/bean/NoteSearchBean;)Z

    move-result p0

    return p0
.end method
