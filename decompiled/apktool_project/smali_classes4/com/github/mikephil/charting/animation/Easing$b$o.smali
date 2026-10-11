.class public final Lcom/github/mikephil/charting/animation/Easing$b$o;
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

    mul-float p0, p1, p1

    const v0, 0x402ce6b0

    mul-float/2addr p1, v0

    const v0, 0x3fd9cd60

    sub-float/2addr p1, v0

    mul-float/2addr p0, p1

    return p0
.end method
