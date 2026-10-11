.class public final synthetic Lcom/sunia/HTREnginev2/x3l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:F


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/x3l;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;

    iput p2, p0, Lcom/sunia/HTREnginev2/x3l;->f:F

    iput p3, p0, Lcom/sunia/HTREnginev2/x3l;->g:F

    iput p4, p0, Lcom/sunia/HTREnginev2/x3l;->h:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/x3l;->e:Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;

    iget v1, p0, Lcom/sunia/HTREnginev2/x3l;->f:F

    iget v2, p0, Lcom/sunia/HTREnginev2/x3l;->g:F

    iget p0, p0, Lcom/sunia/HTREnginev2/x3l;->h:F

    invoke-static {v0, v1, v2, p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;->a(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;FFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
