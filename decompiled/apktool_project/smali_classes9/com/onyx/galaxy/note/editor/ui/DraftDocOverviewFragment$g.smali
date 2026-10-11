.class public final Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->Q0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$g;->e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$g;->e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    move-result-object p1

    const-string v0, "adapter"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;->resetCurrentIndex()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$g;->e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v1

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p0, p1, v1, v0, v1}, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;->submitInObservable$default(Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;Ljava/util/List;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$g;->a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method
