.class public final synthetic Lcom/sunia/HTREnginev2/ajn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ajn;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    iput p2, p0, Lcom/sunia/HTREnginev2/ajn;->f:I

    iput p3, p0, Lcom/sunia/HTREnginev2/ajn;->g:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ajn;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;

    iget v1, p0, Lcom/sunia/HTREnginev2/ajn;->f:I

    iget p0, p0, Lcom/sunia/HTREnginev2/ajn;->g:I

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;->p(Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;IILandroid/animation/ValueAnimator;)V

    return-void
.end method
