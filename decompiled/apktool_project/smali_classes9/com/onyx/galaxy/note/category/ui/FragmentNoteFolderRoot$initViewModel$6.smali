.class final Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$6;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->U0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentNoteFolderRoot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentNoteFolderRoot.kt\ncom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$6\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,850:1\n277#2,2:851\n*S KotlinDebug\n*F\n+ 1 FragmentNoteFolderRoot.kt\ncom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$6\n*L\n369#1:851,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "isLoadingList",
        "",
        "kotlin.jvm.PlatformType",
        "invoke",
        "(Ljava/lang/Boolean;)V"
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
        "SMAP\nFragmentNoteFolderRoot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentNoteFolderRoot.kt\ncom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$6\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,850:1\n277#2,2:851\n*S KotlinDebug\n*F\n+ 1 FragmentNoteFolderRoot.kt\ncom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$6\n*L\n369#1:851,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$6;->this$0:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$6;->invoke(Ljava/lang/Boolean;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$6;->this$0:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->access$getViewModel(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFolderRootListData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 4
    :goto_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$6;->this$0:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->includeEmptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    const-string v0, "includeEmptyView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/2addr p1, v1

    if-eqz p1, :cond_2

    const/4 v2, 0x4

    .line 5
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
