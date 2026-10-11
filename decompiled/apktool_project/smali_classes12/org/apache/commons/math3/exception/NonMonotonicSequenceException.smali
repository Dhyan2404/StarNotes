.class public Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
.super Lorg/apache/commons/math3/exception/MathIllegalNumberException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x31ea934592847abfL


# instance fields
.field private final direction:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

.field private final index:I

.field private final previous:Ljava/lang/Number;

.field private final strict:Z


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;I)V
    .locals 6

    .line 1
    sget-object v4, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;-><init>(Ljava/lang/Number;Ljava/lang/Number;ILorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;ILorg/apache/commons/math3/util/MathArrays$OrderDirection;Z)V
    .locals 3

    .line 2
    sget-object v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    if-ne p4, v0, :cond_1

    if-eqz p5, :cond_0

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_STRICTLY_INCREASING_SEQUENCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_INCREASING_SEQUENCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_STRICTLY_DECREASING_SEQUENCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_DECREASING_SEQUENCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p2, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/math3/exception/MathIllegalNumberException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    .line 3
    iput-object p4, p0, Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;->direction:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    .line 4
    iput-boolean p5, p0, Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;->strict:Z

    .line 5
    iput p3, p0, Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;->index:I

    .line 6
    iput-object p2, p0, Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;->previous:Ljava/lang/Number;

    return-void
.end method


# virtual methods
.method public getDirection()Lorg/apache/commons/math3/util/MathArrays$OrderDirection;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;->direction:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    return-object p0
.end method

.method public getIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;->index:I

    return p0
.end method

.method public getPrevious()Ljava/lang/Number;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;->previous:Ljava/lang/Number;

    return-object p0
.end method

.method public getStrict()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;->strict:Z

    return p0
.end method
