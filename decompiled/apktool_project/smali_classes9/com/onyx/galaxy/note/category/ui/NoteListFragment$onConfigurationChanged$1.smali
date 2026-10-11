.class final Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onConfigurationChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
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
        "Landroid/view/View;",
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
.field final synthetic this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onConfigurationChanged$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onConfigurationChanged$1;->invoke(Landroid/view/View;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onConfigurationChanged$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$adjustListViewMargin(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    .line 3
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onConfigurationChanged$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->x0(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;ZILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onConfigurationChanged$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$adjustRowCountInScreen(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    .line 5
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onConfigurationChanged$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onConfigurationChanged$1;->this$0:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->access$getAdapterHelper$p(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/chad/library/adapter4/QuickAdapterHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/QuickAdapterHelper;->getAdapter()Landroidx/recyclerview/widget/ConcatAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
