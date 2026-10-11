.class public final synthetic Lcom/onyx/galaxy/note/category/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/f;->e:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/f;->e:Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot$updateNoteListViewRunnable$2;->a(Lcom/onyx/galaxy/note/category/ui/FragmentNoteFolderRoot;)V

    return-void
.end method
