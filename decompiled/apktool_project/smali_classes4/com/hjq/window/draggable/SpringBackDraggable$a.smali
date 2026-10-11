.class public Lcom/hjq/window/draggable/SpringBackDraggable$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hjq/window/draggable/SpringBackDraggable;->startAnimation(FFJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/hjq/window/draggable/SpringBackDraggable;


# direct methods
.method public constructor <init>(Lcom/hjq/window/draggable/SpringBackDraggable;)V
    .locals 0

    iput-object p1, p0, Lcom/hjq/window/draggable/SpringBackDraggable$a;->e:Lcom/hjq/window/draggable/SpringBackDraggable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/hjq/window/draggable/SpringBackDraggable$a;->e:Lcom/hjq/window/draggable/SpringBackDraggable;

    invoke-virtual {p0, p1}, Lcom/hjq/window/draggable/SpringBackDraggable;->dispatchSpringBackAnimationEndCallback(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/hjq/window/draggable/SpringBackDraggable$a;->e:Lcom/hjq/window/draggable/SpringBackDraggable;

    invoke-virtual {p0, p1}, Lcom/hjq/window/draggable/SpringBackDraggable;->dispatchSpringBackAnimationStartCallback(Landroid/animation/Animator;)V

    return-void
.end method
