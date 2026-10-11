.class public Lorg/apache/commons/math3/special/BesselJ$BesselJResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/special/BesselJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BesselJResult"
.end annotation


# instance fields
.field public final a:[D

.field public final b:I


# direct methods
.method public constructor <init>([DI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->a:[D

    iput p2, p0, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->b:I

    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->b:I

    return p0
.end method

.method public static synthetic b(Lorg/apache/commons/math3/special/BesselJ$BesselJResult;)[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->a:[D

    return-object p0
.end method


# virtual methods
.method public getVals()[D
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->a:[D

    array-length v0, p0

    invoke-static {p0, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object p0

    return-object p0
.end method

.method public getnVals()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/special/BesselJ$BesselJResult;->b:I

    return p0
.end method
