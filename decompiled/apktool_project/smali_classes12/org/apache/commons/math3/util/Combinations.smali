.class public Lorg/apache/commons/math3/util/Combinations;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;,
        Lorg/apache/commons/math3/util/Combinations$c;,
        Lorg/apache/commons/math3/util/Combinations$b;,
        Lorg/apache/commons/math3/util/Combinations$IterationOrder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "[I>;"
    }
.end annotation


# instance fields
.field public final e:I

.field public final f:I

.field public final g:Lorg/apache/commons/math3/util/Combinations$IterationOrder;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/math3/util/Combinations$IterationOrder;->LEXICOGRAPHIC:Lorg/apache/commons/math3/util/Combinations$IterationOrder;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/util/Combinations;-><init>(IILorg/apache/commons/math3/util/Combinations$IterationOrder;)V

    return-void
.end method

.method public constructor <init>(IILorg/apache/commons/math3/util/Combinations$IterationOrder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->checkBinomial(II)V

    .line 4
    iput p1, p0, Lorg/apache/commons/math3/util/Combinations;->e:I

    .line 5
    iput p2, p0, Lorg/apache/commons/math3/util/Combinations;->f:I

    .line 6
    iput-object p3, p0, Lorg/apache/commons/math3/util/Combinations;->g:Lorg/apache/commons/math3/util/Combinations$IterationOrder;

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[I>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;

    iget v1, p0, Lorg/apache/commons/math3/util/Combinations;->e:I

    iget p0, p0, Lorg/apache/commons/math3/util/Combinations;->f:I

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;-><init>(II)V

    return-object v0
.end method

.method public getK()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/util/Combinations;->f:I

    return p0
.end method

.method public getN()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/util/Combinations;->e:I

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[I>;"
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/math3/util/Combinations;->f:I

    if-eqz v0, :cond_2

    iget v1, p0, Lorg/apache/commons/math3/util/Combinations;->e:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/math3/util/Combinations$a;->a:[I

    iget-object v1, p0, Lorg/apache/commons/math3/util/Combinations;->g:Lorg/apache/commons/math3/util/Combinations$IterationOrder;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/apache/commons/math3/util/Combinations$b;

    iget v1, p0, Lorg/apache/commons/math3/util/Combinations;->e:I

    iget p0, p0, Lorg/apache/commons/math3/util/Combinations;->f:I

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/util/Combinations$b;-><init>(II)V

    return-object v0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    new-instance p0, Lorg/apache/commons/math3/util/Combinations$c;

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->natural(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/util/Combinations$c;-><init>([I)V

    return-object p0
.end method
