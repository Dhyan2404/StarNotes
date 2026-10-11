.class final Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->n1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$1;->invoke(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->access$getViewModel(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFilterInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->access$toggleDustBinOp(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;->access$toggleOpBtn(Lcom/onyx/galaxy/note/category/ui/NoteTopContainerFragment;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V

    :goto_0
    return-void
.end method
