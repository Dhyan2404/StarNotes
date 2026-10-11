.class public Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D$NoSubSpaceException;
.super Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoSubSpaceException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x13350c1L


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_SUPPORTED_IN_DIMENSION_N:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    return-void
.end method
