.class public final synthetic Lcom/onyx/galaxy/note/category/ui/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/r;->e:Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/r;->e:Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment$delayRunnable$2;->a(Lcom/onyx/galaxy/note/category/ui/NoteListViewPageFragment;)V

    return-void
.end method
