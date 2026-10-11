.class public final synthetic Lcom/sunia/HTREnginev2/bzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bzj;->e:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bzj;->e:Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;->b(Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;Landroid/animation/ValueAnimator;)V

    return-void
.end method
