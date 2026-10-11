.class public final Lcom/github/mikephil/charting/animation/Easing$b$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/mikephil/charting/animation/EasingFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/animation/Easing$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    const/high16 p0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, p0

    const/high16 v1, 0x40000000    # 2.0f

    if-gez v0, :cond_0

    sget-object v0, Lcom/github/mikephil/charting/animation/Easing$b;->z:Lcom/github/mikephil/charting/animation/EasingFunction;

    mul-float/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/animation/EasingFunction;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, p0

    return p1

    :cond_0
    sget-object v0, Lcom/github/mikephil/charting/animation/Easing$b;->A:Lcom/github/mikephil/charting/animation/EasingFunction;

    mul-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/animation/EasingFunction;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, p0

    add-float/2addr p1, p0

    return p1
.end method
