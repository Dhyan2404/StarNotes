.class public Lorg/apache/commons/math3/genetics/FixedGenerationCount;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/genetics/StoppingCondition;


# instance fields
.field public a:I

.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/genetics/FixedGenerationCount;->a:I

    if-lez p1, :cond_0

    iput p1, p0, Lorg/apache/commons/math3/genetics/FixedGenerationCount;->b:I

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method


# virtual methods
.method public getNumGenerations()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/genetics/FixedGenerationCount;->a:I

    return p0
.end method

.method public isSatisfied(Lorg/apache/commons/math3/genetics/Population;)Z
    .locals 2

    iget p1, p0, Lorg/apache/commons/math3/genetics/FixedGenerationCount;->a:I

    iget v0, p0, Lorg/apache/commons/math3/genetics/FixedGenerationCount;->b:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/math3/genetics/FixedGenerationCount;->a:I

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method
