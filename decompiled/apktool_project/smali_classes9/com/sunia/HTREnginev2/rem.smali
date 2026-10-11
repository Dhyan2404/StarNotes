.class public final synthetic Lcom/sunia/HTREnginev2/rem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;

.field public final synthetic b:Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rem;->a:Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/rem;->b:Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rem;->a:Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rem;->b:Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;->d(Lcom/onyx/galaxy/note/category/view/adapter/SearchTagAdapter;Lcom/onyx/galaxy/note/category/view/dialog/SelectImportTagDialog;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
