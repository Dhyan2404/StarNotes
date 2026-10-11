.class public final Lorg/apache/commons/math3/special/Gamma$a;
.super Lorg/apache/commons/math3/util/ContinuedFraction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/special/Gamma;->regularizedGammaQ(DDDI)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic b:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/math3/special/Gamma$a;->b:D

    invoke-direct {p0}, Lorg/apache/commons/math3/util/ContinuedFraction;-><init>()V

    return-void
.end method


# virtual methods
.method public getA(ID)D
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double v2, p1

    mul-double/2addr v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v0

    iget-wide p0, p0, Lorg/apache/commons/math3/special/Gamma$a;->b:D

    sub-double/2addr v2, p0

    add-double/2addr v2, p2

    return-wide v2
.end method

.method public getB(ID)D
    .locals 2

    int-to-double p1, p1

    iget-wide v0, p0, Lorg/apache/commons/math3/special/Gamma$a;->b:D

    sub-double/2addr v0, p1

    mul-double/2addr p1, v0

    return-wide p1
.end method
