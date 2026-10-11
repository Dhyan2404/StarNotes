.class public final synthetic Lcom/sunia/HTREnginev2/z0l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Landroid/view/ViewGroup$LayoutParams;

.field public final synthetic g:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

.field public final synthetic h:Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;


# direct methods
.method public synthetic constructor <init>(ZLandroid/view/ViewGroup$LayoutParams;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/z0l;->e:Z

    iput-object p2, p0, Lcom/sunia/HTREnginev2/z0l;->f:Landroid/view/ViewGroup$LayoutParams;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/z0l;->g:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/z0l;->h:Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sunia/HTREnginev2/z0l;->e:Z

    iget-object v1, p0, Lcom/sunia/HTREnginev2/z0l;->f:Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/z0l;->g:Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/z0l;->h:Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;->c(ZLandroid/view/ViewGroup$LayoutParams;Lcom/onyx/galaxy/note/editor/view/popup/PenBoxPopup;Lcom/onyx/galaxy/note/common/view/ResizableRecyclerView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
