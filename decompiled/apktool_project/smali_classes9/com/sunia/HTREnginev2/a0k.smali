.class public final synthetic Lcom/sunia/HTREnginev2/a0k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

.field public final synthetic b:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/a0k;->a:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/a0k;->b:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    iput p3, p0, Lcom/sunia/HTREnginev2/a0k;->c:I

    return-void
.end method


# virtual methods
.method public final onAnimationsFinished()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a0k;->a:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/a0k;->b:Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    iget p0, p0, Lcom/sunia/HTREnginev2/a0k;->c:I

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/category/view/drag/NotePageDragListener;->a(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;I)V

    return-void
.end method
