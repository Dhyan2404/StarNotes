.class public Lorg/apache/commons/math3/exception/MaxCountExceededException;
.super Lorg/apache/commons/math3/exception/MathIllegalStateException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x3c1742cdad69f2e7L


# instance fields
.field private final max:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->MAX_COUNT_EXCEEDED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v0

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 4
    iput-object p2, p0, Lorg/apache/commons/math3/exception/MaxCountExceededException;->max:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public getMax()Ljava/lang/Number;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/exception/MaxCountExceededException;->max:Ljava/lang/Number;

    return-object p0
.end method
