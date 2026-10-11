.class public final synthetic Lcom/sunia/HTREnginev2/l1k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

.field public final synthetic g:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

.field public final synthetic h:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;


# direct methods
.method public synthetic constructor <init>(ZLcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/editor/data/SlideBarType;Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/l1k;->e:Z

    iput-object p2, p0, Lcom/sunia/HTREnginev2/l1k;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/l1k;->g:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/l1k;->h:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/l1k;->e:Z

    iget-object v1, p0, Lcom/sunia/HTREnginev2/l1k;->f:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/l1k;->g:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/l1k;->h:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-static {v0, v1, v2, p0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;->m0(ZLcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;Lcom/onyx/galaxy/note/editor/data/SlideBarType;Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V

    return-void
.end method
