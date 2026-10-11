.class public Lcom/sunia/HTREnginev2/fv$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/fv;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Lcom/sunia/HTREnginev2/fv;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/fv;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fv$a;->f:Lcom/sunia/HTREnginev2/fv;

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/fv$a;->e:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/sunia/HTREnginev2/fv$a;->e:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fv$a;->f:Lcom/sunia/HTREnginev2/fv;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/fv;->a(Lcom/sunia/HTREnginev2/fv;)V

    :cond_0
    return-void
.end method
