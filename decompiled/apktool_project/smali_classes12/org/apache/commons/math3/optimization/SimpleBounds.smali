.class public Lorg/apache/commons/math3/optimization/SimpleBounds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optimization/OptimizationData;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:[D

.field public final b:[D


# direct methods
.method public constructor <init>([D[D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/SimpleBounds;->a:[D

    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/SimpleBounds;->b:[D

    return-void
.end method


# virtual methods
.method public getLower()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/SimpleBounds;->a:[D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public getUpper()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/SimpleBounds;->b:[D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method
