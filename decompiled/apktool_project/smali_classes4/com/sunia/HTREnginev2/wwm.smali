.class public final synthetic Lcom/sunia/HTREnginev2/wwm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:Lcom/hjq/window/draggable/SpringBackDraggable;

.field public final synthetic f:F


# direct methods
.method public synthetic constructor <init>(Lcom/hjq/window/draggable/SpringBackDraggable;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wwm;->e:Lcom/hjq/window/draggable/SpringBackDraggable;

    iput p2, p0, Lcom/sunia/HTREnginev2/wwm;->f:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wwm;->e:Lcom/hjq/window/draggable/SpringBackDraggable;

    iget p0, p0, Lcom/sunia/HTREnginev2/wwm;->f:F

    invoke-static {v0, p0, p1}, Lcom/hjq/window/draggable/SpringBackDraggable;->h(Lcom/hjq/window/draggable/SpringBackDraggable;FLandroid/animation/ValueAnimator;)V

    return-void
.end method
