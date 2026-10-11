.class public Lorg/apache/commons/math3/exception/ConvergenceException;
.super Lorg/apache/commons/math3/exception/MathIllegalStateException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x3c1742cdad69f2e7L


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONVERGENCE_FAILED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    return-void
.end method
