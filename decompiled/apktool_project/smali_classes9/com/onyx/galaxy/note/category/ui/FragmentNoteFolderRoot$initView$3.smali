.class public final Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initView$3;
.super Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->S0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentNoteFolderRoot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentNoteFolderRoot.kt\ncom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initView$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,850:1\n1855#2,2:851\n*S KotlinDebug\n*F\n+ 1 FragmentNoteFolderRoot.kt\ncom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initView$3\n*L\n414#1:851,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0016\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initView$3",
        "Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;",
        "isEnableSwipe",
        "",
        "updateChangeItems",
        "",
        "positionList",
        "",
        "",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFragmentNoteFolderRoot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentNoteFolderRoot.kt\ncom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initView$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,850:1\n1855#2,2:851\n*S KotlinDebug\n*F\n+ 1 FragmentNoteFolderRoot.kt\ncom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initView$3\n*L\n414#1:851,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic m:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initView$3;->m:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/ui/RecyclerViewSwipeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnableSwipe()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initView$3;->m:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->access$getViewModel(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isMulSelect()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public updateChangeItems(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "positionList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initView$3;->m:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->access$getFolderListAdapter(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, v1, v0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->access$handleClickFolder(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V

    goto :goto_0

    :cond_1
    return-void
.end method
