.class public final synthetic Lcom/onyx/galaxy/note/category/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/l;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/l;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$hideGoTopRunnable$2;->a(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    return-void
.end method
