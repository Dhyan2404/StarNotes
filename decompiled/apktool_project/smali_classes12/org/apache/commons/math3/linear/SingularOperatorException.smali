.class public Lorg/apache/commons/math3/linear/SingularOperatorException;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x69b44eeed807be9L


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SINGULAR_OPERATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    return-void
.end method
