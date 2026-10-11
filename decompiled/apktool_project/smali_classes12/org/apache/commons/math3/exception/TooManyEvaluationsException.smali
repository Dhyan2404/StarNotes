.class public Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
.super Lorg/apache/commons/math3/exception/MaxCountExceededException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x3c1742cdad69f2e7L


# direct methods
.method public constructor <init>(Ljava/lang/Number;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object p0

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EVALUATIONS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    return-void
.end method
