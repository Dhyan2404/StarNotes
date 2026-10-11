.class public final synthetic Lcom/sunia/HTREnginev2/thf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(FFLkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/thf;->e:F

    iput p2, p0, Lcom/sunia/HTREnginev2/thf;->f:F

    iput-object p3, p0, Lcom/sunia/HTREnginev2/thf;->g:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget v0, p0, Lcom/sunia/HTREnginev2/thf;->e:F

    iget v1, p0, Lcom/sunia/HTREnginev2/thf;->f:F

    iget-object p0, p0, Lcom/sunia/HTREnginev2/thf;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/DragToolEffectAnimHelper;->a(FFLkotlin/jvm/functions/Function2;Landroid/animation/ValueAnimator;)V

    return-void
.end method
