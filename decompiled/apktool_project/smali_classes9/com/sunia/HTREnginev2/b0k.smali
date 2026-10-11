.class public final synthetic Lcom/sunia/HTREnginev2/b0k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;

.field public final synthetic f:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

.field public final synthetic g:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/b0k;->e:Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/b0k;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/b0k;->g:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    iput p4, p0, Lcom/sunia/HTREnginev2/b0k;->h:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/b0k;->e:Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/b0k;->f:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/b0k;->g:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    iget p0, p0, Lcom/sunia/HTREnginev2/b0k;->h:I

    invoke-static {v0, v1, v2, p0}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->b(Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V

    return-void
.end method
