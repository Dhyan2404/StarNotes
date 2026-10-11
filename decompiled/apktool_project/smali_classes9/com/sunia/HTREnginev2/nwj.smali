.class public final synthetic Lcom/sunia/HTREnginev2/nwj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nwj;->e:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/nwj;->f:Landroid/view/View;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/nwj;->g:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nwj;->e:Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/nwj;->f:Landroid/view/View;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nwj;->g:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;->m(Lcom/onyx/galaxy/note/category/view/adapter/NoteListAdapter;Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
