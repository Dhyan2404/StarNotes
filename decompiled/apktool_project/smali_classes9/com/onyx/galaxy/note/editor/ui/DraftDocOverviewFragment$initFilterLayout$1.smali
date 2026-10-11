.class final Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$initFilterLayout$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;",
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


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$initFilterLayout$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$initFilterLayout$1;->invoke(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$initFilterLayout$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->access$getViewModel$p(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->getSearchType()Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$initFilterLayout$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->access$getViewModel$p(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->getUseCachedResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$initFilterLayout$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->access$filterSearchResult(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$initFilterLayout$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->access$getViewModel$p(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/DocOverviewViewModel;->setSearchType(Lcom/onyx/android/sdk/universal/editor/data/TextSearchType;)V

    .line 6
    sget-object p1, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$initFilterLayout$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->access$getBinding(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    const-string v1, "layoutSearch"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->clearSearchStatus(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;)V

    .line 7
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment$initFilterLayout$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->access$getBinding(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;)Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentDraftDocOverviewBinding;->layoutSearch:Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/utils/DocOutlineSearchUtils;->getInputText(Lcom/onyx/galaxy/note/databinding/LayoutDocSearchBinding;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;->access$onSearch(Lcom/onyx/galaxy/note/editor/ui/DraftDocOverviewFragment;Ljava/lang/String;)V

    return-void
.end method
