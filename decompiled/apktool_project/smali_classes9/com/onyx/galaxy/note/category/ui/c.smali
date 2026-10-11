.class public final synthetic Lcom/onyx/galaxy/note/category/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

.field public final synthetic f:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Lcom/onyx/galaxy/note/category/data/NoteDisplayType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/c;->e:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    iput-object p2, p0, Lcom/onyx/galaxy/note/category/ui/c;->f:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/c;->e:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/c;->f:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$initViewModel$1;->b(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;Lcom/onyx/galaxy/note/category/data/NoteDisplayType;)V

    return-void
.end method
