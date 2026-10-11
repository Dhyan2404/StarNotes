.class public final Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->I1()V
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
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$r;->e:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

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

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$r;->e:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$getViewModel$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->setSearching(Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$r;->e:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    move-result-object p1

    const-string v0, "adapter"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$r;->e:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {v2}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$getEditorBundle$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "editorBundle"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->currentPageIndex(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->setCurrentPageIndex(I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$r;->e:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$resetHighlightRegionData(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$r;->e:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_2
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;->getCurrentPageIndex()I

    move-result v2

    invoke-static {p1, v2}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$gotoNearestHighlightRegion(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;I)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$r;->e:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$getViewModel$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->getCachedSearchResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$r;->e:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$getViewModel$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->getSearchType()Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    move-result-object p1

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;->ALL:Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$r;->e:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$getViewModel$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->setUseCachedResult(Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$r;->e:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$getViewModel$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    move-result-object p1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$r;->e:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {v2}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocOverviewPageListAdapter;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Lcom/chad/library/adapter4/BaseDifferAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->setCachedSearchResults(Ljava/util/List;)V

    :cond_4
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$r;->e:Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;->access$checkEmptyData(Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocOverviewFragment$r;->a(Lkotlin/Unit;)V

    return-void
.end method
