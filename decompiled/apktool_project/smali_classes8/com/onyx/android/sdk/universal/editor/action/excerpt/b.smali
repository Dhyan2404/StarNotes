.class public final synthetic Lcom/onyx/android/sdk/universal/editor/action/excerpt/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;


# direct methods
.method public synthetic constructor <init>(ILcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/b;->e:I

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/b;->f:Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/b;->e:I

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/b;->f:Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction$animator$2;->a(ILcom/onyx/android/sdk/universal/editor/action/excerpt/ShowRectHighlightAnimationAction;Landroid/animation/ValueAnimator;)V

    return-void
.end method
