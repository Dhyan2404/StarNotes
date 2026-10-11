.class final Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$1;
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
        "Lcom/onyx/galaxy/note/category/data/NoteDisplayType;",
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
        "noteDisplayType",
        "Lcom/onyx/galaxy/note/category/data/NoteDisplayType;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Lcom/onyx/galaxy/note/category/data/NoteDisplayType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$1;->invoke$lambda$1$lambda$0(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Lcom/onyx/galaxy/note/category/data/NoteDisplayType;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Lcom/onyx/galaxy/note/category/data/NoteDisplayType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$1;->invoke$lambda$1(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Lcom/onyx/galaxy/note/category/data/NoteDisplayType;)V

    return-void
.end method

.method private static final invoke$lambda$1(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Lcom/onyx/galaxy/note/category/data/NoteDisplayType;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/b;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/category/ui/b;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Lcom/onyx/galaxy/note/category/data/NoteDisplayType;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    :cond_0
    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Lcom/onyx/galaxy/note/category/data/NoteDisplayType;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->access$getFolderListAdapter(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->setDisplayType(I)V

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->access$adjustListView(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Z)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->access$adjustRowCountInScreen(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->access$toggleGoTopVisible(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$1;->invoke(Lcom/onyx/galaxy/note/category/data/NoteDisplayType;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/galaxy/note/category/data/NoteDisplayType;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->access$setShowGoTopRowCount$p(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;I)V

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    invoke-static {v0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)Lcom/onyx/galaxy/note/databinding/FragmentNoteFolderRootBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$1;->this$0:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/c;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/category/ui/c;-><init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Lcom/onyx/galaxy/note/category/data/NoteDisplayType;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
