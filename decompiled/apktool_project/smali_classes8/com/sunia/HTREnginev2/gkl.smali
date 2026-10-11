.class public final synthetic Lcom/sunia/HTREnginev2/gkl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gkl;->e:Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/gkl;->f:Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gkl;->e:Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gkl;->f:Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;->b(Lcom/onyx/android/sdk/universal/editor/display/node/IRenderNode;Lcom/onyx/android/sdk/universal/editor/display/RenderNodeAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
