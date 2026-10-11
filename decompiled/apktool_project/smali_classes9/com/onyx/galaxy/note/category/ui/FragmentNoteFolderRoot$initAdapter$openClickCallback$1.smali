.class final Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initAdapter$openClickCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->P0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lcom/chad/library/adapter4/BaseQuickAdapter<",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "*>;",
        "Landroid/view/View;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0010\u0010\u0002\u001a\u000c\u0012\u0004\u0012\u00020\u0004\u0012\u0002\u0008\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "adapter",
        "Lcom/chad/library/adapter4/BaseQuickAdapter;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "v",
        "Landroid/view/View;",
        "pos",
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


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initAdapter$openClickCallback$1;->this$0:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter4/BaseQuickAdapter;

    check-cast p2, Landroid/view/View;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initAdapter$openClickCallback$1;->invoke(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2
    .param p1    # Lcom/chad/library/adapter4/BaseQuickAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter4/BaseQuickAdapter<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            "*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    .line 3
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    .line 4
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initAdapter$openClickCallback$1;->this$0:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->access$getViewModel(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isMulSelect()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initAdapter$openClickCallback$1;->this$0:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->access$getViewModel(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->gotoFolder(Ljava/lang/String;)V

    .line 6
    new-instance p0, Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p3}, Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;-><init>(Ljava/util/List;I)V

    .line 7
    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    .line 8
    new-instance p1, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initAdapter$openClickCallback$1$a;

    invoke-direct {p1, p2}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initAdapter$openClickCallback$1$a;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initAdapter$openClickCallback$1;->this$0:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->access$getViewModel(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->toggleSelectList(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)Z

    move-result p0

    .line 10
    invoke-virtual {p1, p0, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->updateSelect(ZI)V

    :goto_0
    return-void
.end method
