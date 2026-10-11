.class public final synthetic Lcom/onyx/galaxy/note/category/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

.field public final synthetic b:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Lcom/onyx/galaxy/note/category/data/NoteDisplayType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/b;->a:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/ui/b;->b:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    return-void
.end method


# virtual methods
.method public final onAnimationsFinished()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/b;->a:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/b;->b:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$1;->a(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Lcom/onyx/galaxy/note/category/data/NoteDisplayType;)V

    return-void
.end method
