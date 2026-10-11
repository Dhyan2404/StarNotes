.class public Lorg/apache/commons/math3/exception/MathInternalError;
.super Lorg/apache/commons/math3/exception/MathIllegalStateException;
.source "SourceFile"


# static fields
.field private static final REPORT_URL:Ljava/lang/String; = "https://issues.apache.org/jira/browse/MATH"

.field private static final serialVersionUID:J = -0x571b96fbd1838b3eL


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object p0

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INTERNAL_ERROR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const-string v1, "https://issues.apache.org/jira/browse/MATH"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    .line 3
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INTERNAL_ERROR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const-string v1, "https://issues.apache.org/jira/browse/MATH"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Ljava/lang/Throwable;Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    return-void
.end method
