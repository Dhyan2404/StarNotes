.class Lorg/apache/commons/math3/optim/PointVectorValuePair$DataTransferObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optim/PointVectorValuePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataTransferObject"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x13303c1L


# instance fields
.field private final point:[D

.field private final value:[D


# direct methods
.method public constructor <init>([D[D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/optim/PointVectorValuePair$DataTransferObject;->point:[D

    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/optim/PointVectorValuePair$DataTransferObject;->value:[D

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    iget-object v1, p0, Lorg/apache/commons/math3/optim/PointVectorValuePair$DataTransferObject;->point:[D

    iget-object p0, p0, Lorg/apache/commons/math3/optim/PointVectorValuePair$DataTransferObject;->value:[D

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/commons/math3/optim/PointVectorValuePair;-><init>([D[DZ)V

    return-object v0
.end method
