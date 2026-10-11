.class public Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;
.super Lorg/apache/commons/math3/exception/MathIllegalStateException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x12e3136704fc0732L


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CARDAN_ANGLES_SINGULARITY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EULER_ANGLES_SINGULARITY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    return-void
.end method
