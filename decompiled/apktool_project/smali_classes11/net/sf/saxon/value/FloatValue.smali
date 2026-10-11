.class public final Lnet/sf/saxon/value/FloatValue;
.super Lnet/sf/saxon/value/NumericValue;
.source "SourceFile"


# static fields
.field public static final NEGATIVE_ZERO:Lnet/sf/saxon/value/FloatValue;

.field public static final NaN:Lnet/sf/saxon/value/FloatValue;

.field public static final ONE:Lnet/sf/saxon/value/FloatValue;

.field public static final ZERO:Lnet/sf/saxon/value/FloatValue;


# instance fields
.field public final e:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/value/FloatValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/FloatValue;-><init>(F)V

    sput-object v0, Lnet/sf/saxon/value/FloatValue;->ZERO:Lnet/sf/saxon/value/FloatValue;

    new-instance v0, Lnet/sf/saxon/value/FloatValue;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/FloatValue;-><init>(F)V

    sput-object v0, Lnet/sf/saxon/value/FloatValue;->NEGATIVE_ZERO:Lnet/sf/saxon/value/FloatValue;

    new-instance v0, Lnet/sf/saxon/value/FloatValue;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/FloatValue;-><init>(F)V

    sput-object v0, Lnet/sf/saxon/value/FloatValue;->ONE:Lnet/sf/saxon/value/FloatValue;

    new-instance v0, Lnet/sf/saxon/value/FloatValue;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/FloatValue;-><init>(F)V

    sput-object v0, Lnet/sf/saxon/value/FloatValue;->NaN:Lnet/sf/saxon/value/FloatValue;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/value/NumericValue;-><init>()V

    .line 2
    iput p1, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    .line 3
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->FLOAT:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public constructor <init>(FLnet/sf/saxon/type/AtomicType;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lnet/sf/saxon/value/NumericValue;-><init>()V

    .line 5
    iput p1, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    .line 6
    iput-object p2, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public static floatToString(F)Lnet/sf/saxon/str/UnicodeString;
    .locals 2

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v0}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lnet/sf/saxon/value/FloatingPointConverter;->appendFloat(Lnet/sf/saxon/str/UnicodeBuilder;FZ)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public static makeFloatValue(F)Lnet/sf/saxon/value/FloatValue;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/FloatValue;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/FloatValue;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public abs()Lnet/sf/saxon/value/NumericValue;
    .locals 5

    iget v0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/value/FloatValue;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/value/FloatValue;-><init>(F)V

    return-object p0
.end method

.method public asAtomic()Lnet/sf/saxon/value/AtomicValue;
    .locals 0

    return-object p0
.end method

.method public asMapKey()Lnet/sf/saxon/expr/sort/AtomicMatchKey;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/value/FloatValue;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lnet/sf/saxon/expr/sort/AtomicSortComparer;->COLLATION_KEY_NaN:Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    return-object p0

    :cond_0
    iget v0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lnet/sf/saxon/value/DoubleValue;

    iget p0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    float-to-double v1, p0

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Lnet/sf/saxon/value/BigDecimalValue;

    iget p0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    float-to-double v1, p0

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
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/value/FloatValue;->isWholeNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x4f000000

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    float-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public ceiling()Lnet/sf/saxon/value/NumericValue;
    .locals 3

    new-instance v0, Lnet/sf/saxon/value/FloatValue;

    iget p0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float p0, v1

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/FloatValue;-><init>(F)V

    return-object v0
.end method

.method public compareTo(J)I
    .locals 0

    long-to-float p1, p1

    .line 10
    iget p0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    cmpl-float p2, p0, p1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/expr/sort/XPathComparable;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/FloatValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I
    .locals 2

    .line 2
    instance-of v0, p1, Lnet/sf/saxon/value/NumericValue;

    if-eqz v0, :cond_4

    .line 3
    instance-of v0, p1, Lnet/sf/saxon/value/FloatValue;

    if-eqz v0, :cond_2

    .line 4
    check-cast p1, Lnet/sf/saxon/value/FloatValue;

    iget p1, p1, Lnet/sf/saxon/value/FloatValue;->e:F

    .line 5
    iget p0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    cmpl-float v0, p0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 6
    :cond_2
    instance-of v0, p1, Lnet/sf/saxon/value/DoubleValue;

    if-eqz v0, :cond_3

    .line 7
    invoke-super {p0, p1}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0

    .line 8
    :cond_3
    sget-object v0, Lnet/sf/saxon/type/Converter$NumericToFloat;->INSTANCE:Lnet/sf/saxon/type/Converter$NumericToFloat;

    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/type/Converter$NumericToFloat;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/value/FloatValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/FloatValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0

    .line 9
    :cond_4
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot compare xs:float to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AtomicValue;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/FloatValue;

    iget p0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/FloatValue;-><init>(F)V

    iput-object p1, v0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-object v0
.end method

.method public effectiveBooleanValue()Z
    .locals 4

    iget p0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    float-to-double v0, p0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

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

    new-instance v0, Lnet/sf/saxon/value/FloatValue;

    iget p0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float p0, v1

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/FloatValue;-><init>(F)V

    return-object v0
.end method

.method public getCanonicalLexicalRepresentation()Lnet/sf/saxon/str/UnicodeString;
    .locals 2

    new-instance v0, Lnet/sf/saxon/str/UnicodeBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>(I)V

    iget p0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lnet/sf/saxon/value/FloatingPointConverter;->appendFloat(Lnet/sf/saxon/str/UnicodeBuilder;FZ)Lnet/sf/saxon/str/UnicodeString;

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
    iget p0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    float-to-double v0, p0

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

    iget p0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getFloatValue()F
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    return p0
.end method

.method public getPrimitiveStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    invoke-static {p0}, Lnet/sf/saxon/value/FloatValue;->floatToString(F)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->FLOAT:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    const/high16 v1, -0x31000000

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x4f000000

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    float-to-int p0, v0

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/FloatValue;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->hashCode()I

    move-result p0

    return p0
.end method

.method public isIdentical(Lnet/sf/saxon/value/AtomicValue;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/value/FloatValue;

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
    .locals 0

    iget p0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    return p0
.end method

.method public isNegativeZero()Z
    .locals 4

    iget p0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    float-to-double v0, p0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWholeNumber()Z
    .locals 5

    iget v0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    float-to-double v1, v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    cmpl-double v0, v1, v3

    if-nez v0, :cond_0

    iget p0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

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

    iget p0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    float-to-long v0, p0

    return-wide v0
.end method

.method public negate()Lnet/sf/saxon/value/NumericValue;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/FloatValue;

    iget p0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    neg-float p0, p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/FloatValue;-><init>(F)V

    return-object v0
.end method

.method public round(I)Lnet/sf/saxon/value/NumericValue;
    .locals 5

    iget v0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    iget v0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_2

    return-object p0

    :cond_2
    if-nez p1, :cond_4

    const/high16 v1, -0x31000000

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    const/high16 v1, 0x4f000000

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    float-to-double p0, v0

    const-wide/high16 v1, -0x4020000000000000L    # -0.5

    cmpl-double p0, p0, v1

    if-ltz p0, :cond_3

    float-to-double p0, v0

    cmpg-double p0, p0, v3

    if-gez p0, :cond_3

    new-instance p0, Lnet/sf/saxon/value/FloatValue;

    const/high16 p1, -0x80000000

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/FloatValue;-><init>(F)V

    return-object p0

    :cond_3
    new-instance p0, Lnet/sf/saxon/value/FloatValue;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/FloatValue;-><init>(F)V

    return-object p0

    :cond_4
    new-instance v0, Lnet/sf/saxon/value/DoubleValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/FloatValue;->getDoubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/value/DoubleValue;->round(I)Lnet/sf/saxon/value/NumericValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/DoubleValue;

    new-instance p1, Lnet/sf/saxon/value/FloatValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DoubleValue;->getFloatValue()F

    move-result p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/FloatValue;-><init>(F)V

    return-object p1
.end method

.method public roundHalfToEven(I)Lnet/sf/saxon/value/NumericValue;
    .locals 3

    new-instance v0, Lnet/sf/saxon/value/DoubleValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/FloatValue;->getDoubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/value/DoubleValue;->roundHalfToEven(I)Lnet/sf/saxon/value/NumericValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/DoubleValue;

    new-instance p1, Lnet/sf/saxon/value/FloatValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/DoubleValue;->getFloatValue()F

    move-result p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/FloatValue;-><init>(F)V

    return-object p1
.end method

.method public signum()I
    .locals 2

    iget v0, p0, Lnet/sf/saxon/value/FloatValue;->e:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/value/FloatValue;->compareTo(J)I

    move-result p0

    return p0
.end method
