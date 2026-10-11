.class final Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$initData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;->v0()V
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
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
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
        "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$initData$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$initData$1;->invoke$lambda$0(Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;->access$setAdapterCurrentIndex(Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$initData$1;->invoke(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$initData$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$initData$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;

    invoke-static {v3}, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;->access$getViewmodel(Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;)Lcom/onyx/galaxy/note/editor/viewmodel/DocBookmarkViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/editor/viewmodel/DocSearchViewModel;->getSearchKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;->setKeyword(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$initData$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;->access$getAdapter$p(Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;)Lcom/onyx/galaxy/note/editor/view/adapter/DocBookmarkListAdapter;

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
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment$initData$1;->this$0:Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/a;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/ui/a;-><init>(Lcom/onyx/galaxy/note/editor/ui/DocBookmarkFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
