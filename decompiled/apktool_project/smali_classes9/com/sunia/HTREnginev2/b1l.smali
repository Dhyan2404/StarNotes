.class public final synthetic Lcom/sunia/HTREnginev2/b1l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic g:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

.field public final synthetic h:I

.field public final synthetic i:Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;


# direct methods
.method public synthetic constructor <init>(ZLandroid/view/ViewGroup$LayoutParams;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;ILcom/onyx/galaxy/note/common/view/ResizableRecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/b1l;->e:Z

    iput-object p2, p0, Lcom/sunia/HTREnginev2/b1l;->f:Landroid/view/ViewGroup$LayoutParams;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/b1l;->g:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    iput p4, p0, Lcom/sunia/HTREnginev2/b1l;->h:I

    iput-object p5, p0, Lcom/sunia/HTREnginev2/b1l;->i:Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/b1l;->e:Z

    iget-object v1, p0, Lcom/sunia/HTREnginev2/b1l;->f:Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/b1l;->g:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    iget v3, p0, Lcom/sunia/HTREnginev2/b1l;->h:I

    iget-object v4, p0, Lcom/sunia/HTREnginev2/b1l;->i:Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->f(ZLandroid/view/ViewGroup$LayoutParams;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;ILcom/onyx/galaxy/note/common/view/ResizableRecyclerView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
