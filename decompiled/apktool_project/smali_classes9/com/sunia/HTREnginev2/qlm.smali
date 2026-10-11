.class public final synthetic Lcom/sunia/HTREnginev2/qlm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qlm;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    iput p2, p0, Lcom/sunia/HTREnginev2/qlm;->f:I

    iput p3, p0, Lcom/sunia/HTREnginev2/qlm;->g:I

    iput-boolean p4, p0, Lcom/sunia/HTREnginev2/qlm;->h:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/qlm;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    iget v1, p0, Lcom/sunia/HTREnginev2/qlm;->f:I

    iget v2, p0, Lcom/sunia/HTREnginev2/qlm;->g:I

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/qlm;->h:Z

    invoke-static {v0, v1, v2, p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->b(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;IIZLandroid/animation/ValueAnimator;)V

    return-void
.end method
