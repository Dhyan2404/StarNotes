.class public final synthetic Lcom/sunia/HTREnginev2/v9j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/w9j;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/w9j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/v9j;->e:Lcom/sunia/HTREnginev2/w9j;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v9j;->e:Lcom/sunia/HTREnginev2/w9j;

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/w9j;->a(Lcom/sunia/HTREnginev2/w9j;Landroid/animation/ValueAnimator;)V

    return-void
.end method
