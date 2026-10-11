.class public final synthetic Lcom/sunia/HTREnginev2/czj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;


# direct methods
.method public synthetic constructor <init>(ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/czj;->e:Z

    iput-object p2, p0, Lcom/sunia/HTREnginev2/czj;->f:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/czj;->e:Z

    iget-object p0, p0, Lcom/sunia/HTREnginev2/czj;->f:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-static {v0, p0}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->d(ZLcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V

    return-void
.end method
