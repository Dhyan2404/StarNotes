.class public Lcom/sunia/HTREnginev2/eb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/eb;->a:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/eb;->a:Landroid/animation/Animator;

    return-void
.end method

.method public c(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/eb;->a()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/eb;->a:Landroid/animation/Animator;

    return-void
.end method
