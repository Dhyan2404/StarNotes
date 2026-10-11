.class public final synthetic Lcom/sunia/HTREnginev2/e7f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemLongClickListener;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic b:Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/e7f;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/e7f;->b:Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;

    return-void
.end method


# virtual methods
.method public final onLongClick(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/e7f;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/e7f;->b:Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;->o(Landroidx/recyclerview/widget/RecyclerView;Lcom/onyx/galaxy/note/editor/view/adapter/DocExcerptListAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method
