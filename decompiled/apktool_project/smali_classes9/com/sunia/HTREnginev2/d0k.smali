.class public final synthetic Lcom/sunia/HTREnginev2/d0k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter4/BaseMultiItemAdapter$OnItemViewTypeListener;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/d0k;->a:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    return-void
.end method


# virtual methods
.method public final onItemViewType(ILjava/util/List;)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d0k;->a:Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->o(Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;ILjava/util/List;)I

    move-result p0

    return p0
.end method
