.class public Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Split"
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

.field public final b:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->a:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    .line 4
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->b:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;-><init>(Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;)V

    return-void
.end method


# virtual methods
.method public getMinus()Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->b:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    return-object p0
.end method

.method public getPlus()Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->a:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    return-object p0
.end method

.method public getSide()Lorg/apache/commons/math3/geometry/partitioning/Side;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->a:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->b:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/commons/math3/geometry/partitioning/Side;->BOTH:Lorg/apache/commons/math3/geometry/partitioning/Side;

    return-object p0

    :cond_0
    sget-object p0, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$Split;->b:Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    if-eqz p0, :cond_2

    sget-object p0, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/commons/math3/geometry/partitioning/Side;->HYPER:Lorg/apache/commons/math3/geometry/partitioning/Side;

    return-object p0
.end method
