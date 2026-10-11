.class public Lorg/apache/commons/math3/exception/MathArithmeticException;
.super Ljava/lang/ArithmeticException;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/exception/util/ExceptionContextProvider;


# static fields
.field private static final serialVersionUID:J = -0x539cc8a80344c4feL


# instance fields
.field private final context:Lorg/apache/commons/math3/exception/util/ExceptionContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/ArithmeticException;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/commons/math3/exception/util/ExceptionContext;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/apache/commons/math3/exception/MathArithmeticException;->context:Lorg/apache/commons/math3/exception/util/ExceptionContext;

    .line 3
    sget-object p0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARITHMETIC_EXCEPTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/ArithmeticException;-><init>()V

    .line 5
    new-instance v0, Lorg/apache/commons/math3/exception/util/ExceptionContext;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/apache/commons/math3/exception/MathArithmeticException;->context:Lorg/apache/commons/math3/exception/util/ExceptionContext;

    .line 6
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/exception/MathArithmeticException;->context:Lorg/apache/commons/math3/exception/util/ExceptionContext;

    return-object p0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/exception/MathArithmeticException;->context:Lorg/apache/commons/math3/exception/util/ExceptionContext;

    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/exception/MathArithmeticException;->context:Lorg/apache/commons/math3/exception/util/ExceptionContext;

    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
