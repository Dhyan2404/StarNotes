.class final Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$observeExcerptData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->I0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$observeExcerptData$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$observeExcerptData$1;->invoke(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$observeExcerptData$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$observeExcerptData$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    invoke-static {v3}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->access$getViewmodel(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/DocExcerptViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/viewmodel/DocSearchViewModel;->getSearchKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->setKeyword(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$observeExcerptData$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, p1}, Lcom/onyx/galaxy/note/common/extension/BaseQuickAdapterKt;->createSubmitListObservable(Lcom/chad/library/adapter4/BaseDifferAdapter;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$observeExcerptData$1$a;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$observeExcerptData$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$observeExcerptData$1$a;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$observeExcerptData$1$b;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$observeExcerptData$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment$observeExcerptData$1$b;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocExcerptFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
