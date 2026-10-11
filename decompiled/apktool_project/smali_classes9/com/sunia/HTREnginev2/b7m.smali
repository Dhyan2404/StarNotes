.class public final synthetic Lcom/sunia/HTREnginev2/b7m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;

.field public final synthetic b:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/b7m;->a:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/b7m;->b:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/b7m;->a:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/b7m;->b:Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter$initSectionHWRVH$1;->a(Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteHWRAdapter;Lcom/onyx/galaxy/note/category/view/adapter/SearchNoteAdapter;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
