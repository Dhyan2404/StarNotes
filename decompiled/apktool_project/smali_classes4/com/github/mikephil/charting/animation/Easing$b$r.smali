.class public final Lcom/github/mikephil/charting/animation/Easing$b$r;
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
    .locals 1

    sget-object p0, Lcom/github/mikephil/charting/animation/Easing$b;->A:Lcom/github/mikephil/charting/animation/EasingFunction;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    invoke-interface {p0, p1}, Lcom/github/mikephil/charting/animation/EasingFunction;->getInterpolation(F)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method
