.class public final synthetic Lcom/sunia/HTREnginev2/o7j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildLongClickListener;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog;

.field public final synthetic b:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog;Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/o7j;->a:Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/o7j;->b:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/o7j;->a:Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/o7j;->b:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog;->c(Lcom/onyx/galaxy/note/category/view/dialog/ManageFolderDialog;Landroidx/recyclerview/widget/ItemTouchHelper;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method
