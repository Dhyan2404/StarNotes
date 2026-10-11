.class public Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/math3/geometry/Space;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D$b;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x56b93bf15eade9a1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;
    .locals 1

    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D$b;->a()Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;

    move-result-object v0

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D$b;->a()Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDimension()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getSubSpace()Lorg/apache/commons/math3/geometry/Space;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;->getSubSpace()Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;

    move-result-object p0

    return-object p0
.end method

.method public getSubSpace()Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;
    .locals 0

    .line 2
    invoke-static {}, Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;->getInstance()Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;

    move-result-object p0

    return-object p0
.end method
