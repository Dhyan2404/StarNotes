.class public final Landroidx/dynamicanimation/animation/FlingAnimation;
.super Landroidx/dynamicanimation/animation/DynamicAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/dynamicanimation/animation/FlingAnimation$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/DynamicAnimation<",
        "Landroidx/dynamicanimation/animation/FlingAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field public final o:Landroidx/dynamicanimation/animation/FlingAnimation$a;


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    .line 2
    new-instance p1, Landroidx/dynamicanimation/animation/FlingAnimation$a;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/FlingAnimation$a;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->o:Landroidx/dynamicanimation/animation/FlingAnimation$a;

    .line 3
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->d()F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/FlingAnimation$a;->c(F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "TK;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 5
    new-instance p1, Landroidx/dynamicanimation/animation/FlingAnimation$a;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/FlingAnimation$a;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->o:Landroidx/dynamicanimation/animation/FlingAnimation$a;

    .line 6
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->d()F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/FlingAnimation$a;->c(F)V

    return-void
.end method


# virtual methods
.method public b(FF)F
    .locals 0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->o:Landroidx/dynamicanimation/animation/FlingAnimation$a;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/FlingAnimation$a;->getAcceleration(FF)F

    move-result p0

    return p0
.end method

.method public e(FF)Z
    .locals 1

    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->g:F

    cmpl-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->h:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object p0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->o:Landroidx/dynamicanimation/animation/FlingAnimation$a;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/FlingAnimation$a;->isAtEquilibrium(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getFriction()F
    .locals 0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->o:Landroidx/dynamicanimation/animation/FlingAnimation$a;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/FlingAnimation$a;->a()F

    move-result p0

    return p0
.end method

.method public i(F)V
    .locals 0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->o:Landroidx/dynamicanimation/animation/FlingAnimation$a;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/FlingAnimation$a;->c(F)V

    return-void
.end method

.method public k(J)Z
    .locals 3

    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->o:Landroidx/dynamicanimation/animation/FlingAnimation$a;

    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    iget v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->a:F

    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/dynamicanimation/animation/FlingAnimation$a;->d(FFJ)Landroidx/dynamicanimation/animation/DynamicAnimation$p;

    move-result-object p1

    iget p2, p1, Landroidx/dynamicanimation/animation/DynamicAnimation$p;->a:F

    iput p2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    iget p1, p1, Landroidx/dynamicanimation/animation/DynamicAnimation$p;->b:F

    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->a:F

    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->h:F

    cmpg-float v1, p2, v0

    const/4 v2, 0x1

    if-gez v1, :cond_0

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    return v2

    :cond_0
    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->g:F

    cmpl-float v1, p2, v0

    if-lez v1, :cond_1

    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->b:F

    return v2

    :cond_1
    invoke-virtual {p0, p2, p1}, Landroidx/dynamicanimation/animation/FlingAnimation;->e(FF)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public setFriction(F)Landroidx/dynamicanimation/animation/FlingAnimation;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;->o:Landroidx/dynamicanimation/animation/FlingAnimation$a;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/FlingAnimation$a;->b(F)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Friction must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object p0

    return-object p0
.end method

.method public setMaxValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/FlingAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object p0

    return-object p0
.end method

.method public setMinValue(F)Landroidx/dynamicanimation/animation/FlingAnimation;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/FlingAnimation;

    move-result-object p0

    return-object p0
.end method

.method public setStartVelocity(F)Landroidx/dynamicanimation/animation/FlingAnimation;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-object p0
.end method
