.class public final synthetic Lcom/sunia/HTREnginev2/bmf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bmf;->e:Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/bmf;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bmf;->e:Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bmf;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-static {v0, p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;->l(Lcom/onyx/galaxy/note/category/view/adapter/EditTagForNoteSearchAdapter;Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;Landroid/view/View;)V

    return-void
.end method
