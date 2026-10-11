.class public final Lnet/sf/saxon/value/DoubleValue;
.super Lnet/sf/saxon/value/NumericValue;
.source "SourceFile"


# static fields
.field public static final NEGATIVE_ZERO:Lnet/sf/saxon/value/DoubleValue;

.field public static final NaN:Lnet/sf/saxon/value/DoubleValue;

.field public static final ONE:Lnet/sf/saxon/value/DoubleValue;

.field public static final ZERO:Lnet/sf/saxon/value/DoubleValue;


# instance fields
.field public final e:D


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/sf/saxon/value/DoubleValue;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    sput-object v0, Lnet/sf/saxon/value/DoubleValue;->ZERO:Lnet/sf/saxon/value/DoubleValue;

    new-instance v0, Lnet/sf/saxon/value/DoubleValue;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    sput-object v0, Lnet/sf/saxon/value/DoubleValue;->NEGATIVE_ZERO:Lnet/sf/saxon/value/DoubleValue;

    new-instance v0, Lnet/sf/saxon/value/DoubleValue;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    sput-object v0, Lnet/sf/saxon/value/DoubleValue;->ONE:Lnet/sf/saxon/value/DoubleValue;

    new-instance v0, Lnet/sf/saxon/value/DoubleValue;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    sput-object v0, Lnet/sf/saxon/value/DoubleValue;->NaN:Lnet/sf/saxon/value/DoubleValue;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/value/NumericValue;-><init>()V

    .line 2
    iput-wide p1, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    .line 3
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public constructor <init>(DLnet/sf/saxon/type/AtomicType;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lnet/sf/saxon/value/NumericValue;-><init>()V

    .line 5
    iput-wide p1, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    .line 6
    iput-object p3, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public static doubleToString(D)Lnet/sf/saxon/str/UnicodeString;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnet/sf/saxon/value/FloatingPointConverter;->convertDouble(DZ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public static makeDoubleValue(D)Lnet/sf/saxon/value/DoubleValue;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/DoubleValue;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public abs()Lnet/sf/saxon/value/NumericValue;
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/value/DoubleValue;

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    return-object p0
.end method

.method public asMapKey()Lnet/sf/saxon/expr/sort/AtomicMatchKey;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/value/DoubleValue;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->COLLATION_KEY_NaN:Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    return-object p0

    :cond_0
    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    :try_start_0
    new-instance v0, Lnet/sf/saxon/value/BigDecimalValue;

    iget-wide v1, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(D)V
    :try_end_0
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public asSubscript()I
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/value/DoubleValue;->isWholeNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_0

    double-to-int p0, v0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public ceiling()Lnet/sf/saxon/value/NumericValue;
    .locals 3

    new-instance v0, Lnet/sf/saxon/value/DoubleValue;

    iget-wide v1, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    return-object v0
.end method

.method public compareTo(J)I
    .locals 2

    long-to-double p1, p1

    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    cmpl-double p0, v0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    cmpg-double p0, v0, p1

    if-gez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AtomicValue;
    .locals 3

    new-instance v0, Lnet/sf/saxon/value/DoubleValue;

    iget-wide v1, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    iput-object p1, v0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-object v0
.end method

.method public effectiveBooleanValue()Z
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-eqz p0, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public floor()Lnet/sf/saxon/value/NumericValue;
    .locals 3

    new-instance v0, Lnet/sf/saxon/value/DoubleValue;

    iget-wide v1, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    return-object v0
.end method

.method public getCanonicalLexicalRepresentation()Lnet/sf/saxon/str/UnicodeString;
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    const/4 p0, 0x1

    invoke-static {v0, v1, p0}, Lnet/sf/saxon/value/FloatingPointConverter;->convertDouble(DZ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/type/ValidationException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getDoubleValue()D
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    return-wide v0
.end method

.method public getFloatValue()F
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    double-to-float p0, v0

    return p0
.end method

.method public getPrimitiveStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    invoke-static {v0, v1}, Lnet/sf/saxon/value/DoubleValue;->doubleToString(D)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    double-to-int p0, v0

    return p0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->hashCode()I

    move-result p0

    return p0
.end method

.method public isIdentical(Lnet/sf/saxon/value/AtomicValue;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/value/DoubleValue;

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/sort/DoubleSortComparer;->getInstance()Lnet/sf/saxon/expr/sort/DoubleSortComparer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/sf/saxon/expr/sort/DoubleSortComparer;->comparesEqual(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/value/AtomicValue;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNaN()Z
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    return p0
.end method

.method public isNegativeZero()Z
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-nez p0, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWholeNumber()Z
    .locals 4

    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public longValue()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public negate()Lnet/sf/saxon/value/NumericValue;
    .locals 3

    new-instance v0, Lnet/sf/saxon/value/DoubleValue;

    iget-wide v1, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    neg-double v1, v1

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    return-object v0
.end method

.method public round(I)Lnet/sf/saxon/value/NumericValue;
    .locals 12

    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_2

    return-object p0

    :cond_2
    if-nez p1, :cond_4

    const-wide/high16 v4, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v4, v0, v4

    if-lez v4, :cond_4

    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v4, v0, v4

    if-gez v4, :cond_4

    const-wide/high16 p0, -0x4020000000000000L    # -0.5

    cmpl-double p0, v0, p0

    if-ltz p0, :cond_3

    cmpg-double p0, v0, v2

    if-gez p0, :cond_3

    new-instance p0, Lnet/sf/saxon/value/DoubleValue;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    return-object p0

    :cond_3
    new-instance p0, Lnet/sf/saxon/value/DoubleValue;

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    return-object p0

    :cond_4
    add-int/lit8 v0, p1, 0x1

    int-to-double v0, v0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-wide v6, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/value/DoubleValue;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    return-object p1

    :cond_5
    rem-double v8, v6, v4

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    cmpl-double p1, v8, v10

    if-ltz p1, :cond_6

    sub-double/2addr v4, v8

    add-double/2addr v6, v4

    goto :goto_0

    :cond_6
    cmpg-double p1, v8, v10

    if-gez p1, :cond_7

    sub-double/2addr v6, v8

    :cond_7
    :goto_0
    div-double/2addr v6, v0

    iget-wide p0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    cmpg-double p0, p0, v2

    if-gez p0, :cond_8

    neg-double v6, v6

    :cond_8
    new-instance p0, Lnet/sf/saxon/value/DoubleValue;

    invoke-direct {p0, v6, v7}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    return-object p0
.end method

.method public roundHalfToEven(I)Lnet/sf/saxon/value/NumericValue;
    .locals 12

    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    add-int/lit8 v0, p1, 0x1

    int-to-double v0, v0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-wide v6, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/value/DoubleValue;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    return-object p1

    :cond_3
    rem-double v8, v6, v4

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    cmpl-double p1, v8, v10

    if-lez p1, :cond_4

    sub-double/2addr v4, v8

    add-double/2addr v6, v4

    goto :goto_0

    :cond_4
    cmpg-double p1, v8, v10

    if-gez p1, :cond_5

    sub-double/2addr v6, v8

    goto :goto_0

    :cond_5
    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    rem-double v4, v6, v4

    const-wide/high16 v8, 0x402e000000000000L    # 15.0

    cmpl-double p1, v4, v8

    if-nez p1, :cond_6

    add-double/2addr v6, v10

    goto :goto_0

    :cond_6
    sub-double/2addr v6, v10

    :goto_0
    div-double/2addr v6, v0

    iget-wide p0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    cmpg-double p0, p0, v2

    if-gez p0, :cond_7

    neg-double v6, v6

    :cond_7
    new-instance p0, Lnet/sf/saxon/value/DoubleValue;

    invoke-direct {p0, v6, v7}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    return-object p0
.end method

.method public signum()I
    .locals 6

    iget-wide v0, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lnet/sf/saxon/value/DoubleValue;->e:D

    const-wide/16 v4, 0x0

    cmpl-double p0, v2, v4

    if-lez p0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    cmpl-double p0, v2, v4

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_0
    return v1
.end method
