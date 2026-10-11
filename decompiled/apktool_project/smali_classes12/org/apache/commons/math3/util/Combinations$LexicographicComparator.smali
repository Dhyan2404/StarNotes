.class Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/Combinations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LexicographicComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[I>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1332c5aL


# instance fields
.field private final k:I

.field private final n:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->n:I

    iput p2, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->k:I

    return-void
.end method

.method private lexNorm([I)J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    aget v4, p1, v3

    if-ltz v4, :cond_0

    iget v5, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->n:I

    if-ge v4, v5, :cond_0

    invoke-static {v5, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(II)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->n:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    :cond_1
    return-wide v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->compare([I[I)I

    move-result p0

    return p0
.end method

.method public compare([I[I)I
    .locals 2

    .line 2
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->k:I

    if-ne v0, v1, :cond_3

    .line 3
    array-length v0, p2

    if-ne v0, v1, :cond_2

    .line 4
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([I)[I

    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 6
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([I)[I

    move-result-object p2

    .line 7
    invoke-static {p2}, Ljava/util/Arrays;->sort([I)V

    .line 8
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->lexNorm([I)J

    move-result-wide v0

    .line 9
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->lexNorm([I)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 10
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    iget p0, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->k:I

    invoke-direct {p1, p2, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1

    .line 11
    :cond_3
    new-instance p2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    iget p0, p0, Lorg/apache/commons/math3/util/Combinations$LexicographicComparator;->k:I

    invoke-direct {p2, p1, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p2
.end method
