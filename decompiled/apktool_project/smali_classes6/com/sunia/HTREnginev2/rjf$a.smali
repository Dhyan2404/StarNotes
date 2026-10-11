.class public Lcom/sunia/HTREnginev2/rjf$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/rjf;->F()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/rjf;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/rjf;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rjf$a;->e:Lcom/sunia/HTREnginev2/rjf;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/sunia/HTREnginev2/rjf$a;->e:Lcom/sunia/HTREnginev2/rjf;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/qqf;->r()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rjf$a;->e:Lcom/sunia/HTREnginev2/rjf;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/rjf;->C(Lcom/sunia/HTREnginev2/rjf;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
