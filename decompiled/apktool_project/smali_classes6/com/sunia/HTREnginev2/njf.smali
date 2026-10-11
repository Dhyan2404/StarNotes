.class public final synthetic Lcom/sunia/HTREnginev2/njf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/rjf;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/rjf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/njf;->e:Lcom/sunia/HTREnginev2/rjf;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/njf;->e:Lcom/sunia/HTREnginev2/rjf;

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/rjf;->v(Lcom/sunia/HTREnginev2/rjf;Landroid/animation/ValueAnimator;)V

    return-void
.end method
