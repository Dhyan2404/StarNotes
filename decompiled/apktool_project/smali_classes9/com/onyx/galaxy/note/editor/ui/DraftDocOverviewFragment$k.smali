.class public final Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->T0()V
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$k;->e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;)V
    .locals 3
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$k;->e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->access$getViewModel$p(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->setSearching(Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$k;->e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->access$getViewModel$p(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->getCachedSearchResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$k;->e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->access$setAdapterCurrentIndex(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$k;->e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->access$resetHighlightRegionData(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$k;->e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;->getCurrentIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->access$gotoNearestHighlightRegion(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$k;->e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->access$getViewModel$p(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->getSearchType()Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;->ALL:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$k;->e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->access$getViewModel$p(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->setUseCachedResult(Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$k;->e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->access$getViewModel$p(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$k;->e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocDraftOverviewPageListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->setCachedSearchResults(Ljava/util/List;)V

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$k;->e:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->access$checkEmptyData(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$k;->a(Lkotlin/Unit;)V

    return-void
.end method
