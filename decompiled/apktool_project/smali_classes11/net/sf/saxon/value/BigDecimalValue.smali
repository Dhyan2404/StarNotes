.class public final Lnet/sf/saxon/value/BigDecimalValue;
.super Lnet/sf/saxon/value/DecimalValue;
.source "SourceFile"


# static fields
.field public static final BIG_DECIMAL_ONE_BILLION:Ljava/math/BigDecimal;

.field public static final BIG_DECIMAL_ONE_MILLION:Ljava/math/BigDecimal;

.field public static final DIVIDE_PRECISION:I = 0x12

.field public static final MAX_INT:Ljava/math/BigDecimal;

.field public static final ONE:Lnet/sf/saxon/value/BigDecimalValue;

.field public static final THREE:Lnet/sf/saxon/value/BigDecimalValue;

.field public static final TWO:Lnet/sf/saxon/value/BigDecimalValue;

.field public static final ZERO:Lnet/sf/saxon/value/BigDecimalValue;

.field public static final g:Ljava/util/regex/Pattern;


# instance fields
.field public final e:Ljava/math/BigDecimal;

.field public f:D


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-wide/32 v0, 0xf4240

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/BigDecimalValue;->BIG_DECIMAL_ONE_MILLION:Ljava/math/BigDecimal;

    const-wide/32 v0, 0x3b9aca00

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/BigDecimalValue;->BIG_DECIMAL_ONE_BILLION:Ljava/math/BigDecimal;

    new-instance v0, Lnet/sf/saxon/value/BigDecimalValue;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    sput-object v0, Lnet/sf/saxon/value/BigDecimalValue;->ZERO:Lnet/sf/saxon/value/BigDecimalValue;

    new-instance v0, Lnet/sf/saxon/value/BigDecimalValue;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    sput-object v0, Lnet/sf/saxon/value/BigDecimalValue;->ONE:Lnet/sf/saxon/value/BigDecimalValue;

    new-instance v0, Lnet/sf/saxon/value/BigDecimalValue;

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    sput-object v0, Lnet/sf/saxon/value/BigDecimalValue;->TWO:Lnet/sf/saxon/value/BigDecimalValue;

    new-instance v0, Lnet/sf/saxon/value/BigDecimalValue;

    const-wide/16 v1, 0x3

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    sput-object v0, Lnet/sf/saxon/value/BigDecimalValue;->THREE:Lnet/sf/saxon/value/BigDecimalValue;

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/BigDecimalValue;->MAX_INT:Ljava/math/BigDecimal;

    const-string v0, "(\\-|\\+)?((\\.[0-9]+)|([0-9]+(\\.[0-9]*)?))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/value/BigDecimalValue;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/ValidationException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lnet/sf/saxon/value/DecimalValue;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 6
    iput-wide v0, p0, Lnet/sf/saxon/value/BigDecimalValue;->f:D

    .line 7
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 8
    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DECIMAL:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void

    .line 10
    :catch_0
    new-instance p0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot convert double "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    .line 11
    invoke-static {p1, p2}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to decimal"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    const-string p1, "FOCA0002"

    .line 12
    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lnet/sf/saxon/type/ValidationFailure;->makeException()Lnet/sf/saxon/type/ValidationException;

    move-result-object p0

    throw p0
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 14
    invoke-direct {p0}, Lnet/sf/saxon/value/DecimalValue;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 15
    iput-wide v0, p0, Lnet/sf/saxon/value/BigDecimalValue;->f:D

    .line 16
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    .line 17
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DECIMAL:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/value/DecimalValue;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 2
    iput-wide v0, p0, Lnet/sf/saxon/value/BigDecimalValue;->f:D

    .line 3
    invoke-virtual {p1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    .line 4
    sget-object p1, Lnet/sf/saxon/type/BuiltInAtomicType;->DECIMAL:Lnet/sf/saxon/type/BuiltInAtomicType;

    iput-object p1, p0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method

.method public static castableAsDecimal(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/value/BigDecimalValue;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static decimalToString(Ljava/math/BigDecimal;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 6

    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x2d

    const-string v3, "0"

    const/16 v4, 0x30

    if-gez v0, :cond_4

    invoke-virtual {p0}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result p0

    if-gez p0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    neg-int p0, v0

    if-ge v1, p0, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1

    :cond_4
    invoke-virtual {p0}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p1

    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result p0

    if-gez p0, :cond_6

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    if-lt v0, v3, :cond_8

    const-string p0, "0."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-ge v3, v0, :cond_7

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    sub-int/2addr v3, v0

    invoke-virtual {v5, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    return-object p1
.end method

.method public static makeDecimalValue(Ljava/lang/String;Z)Lnet/sf/saxon/type/ConversionResult;
    .locals 3

    :try_start_0
    invoke-static {p0}, Lnet/sf/saxon/value/BigDecimalValue;->parse(Ljava/lang/CharSequence;)Lnet/sf/saxon/value/BigDecimalValue;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to xs:decimal: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    const-string p0, "FORG0001"

    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;->setErrorCode(Ljava/lang/String;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lnet/sf/saxon/value/BigDecimalValue;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    const/16 v7, 0x2d

    const/4 v8, 0x1

    if-ge v3, v1, :cond_c

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x9

    const/4 v11, 0x5

    if-eq v9, v10, :cond_a

    const/16 v10, 0xa

    if-eq v9, v10, :cond_a

    const/16 v10, 0xd

    if-eq v9, v10, :cond_a

    const/16 v10, 0x20

    if-eq v9, v10, :cond_a

    const/16 v10, 0x2b

    const-string v12, "unexpected sign"

    if-eq v9, v10, :cond_8

    if-eq v9, v7, :cond_6

    const/16 v7, 0x2e

    const-string v10, "contains embedded whitespace"

    const/4 v12, 0x3

    if-eq v9, v7, :cond_3

    packed-switch v9, :pswitch_data_0

    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-nez v5, :cond_0

    move v5, v8

    goto :goto_1

    :cond_0
    if-lt v5, v12, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    :goto_1
    if-eq v5, v11, :cond_2

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v8

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-eq v5, v11, :cond_5

    if-ge v5, v12, :cond_4

    move v5, v12

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "more than one decimal point"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-nez v5, :cond_7

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-nez v5, :cond_9

    :goto_2
    move v5, v8

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-eqz v5, :cond_b

    move v5, v11

    :cond_b
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    if-eqz v4, :cond_10

    :goto_4
    if-lez v6, :cond_d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 v1, 0x30

    if-ne p0, v1, :cond_d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_f

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ne p0, v8, :cond_e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    if-ne p0, v7, :cond_e

    goto :goto_5

    :cond_e
    new-instance p0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    new-instance p0, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-direct {p0, v0}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    return-object p0

    :cond_f
    :goto_5
    sget-object p0, Lnet/sf/saxon/value/BigDecimalValue;->ZERO:Lnet/sf/saxon/value/BigDecimalValue;

    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "no digits in value"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abs()Lnet/sf/saxon/value/NumericValue;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-lez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/value/BigDecimalValue;

    iget-object p0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public asSubscript()I
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/value/BigDecimalValue;->isWholeNumber()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    sget-object v2, Lnet/sf/saxon/value/BigDecimalValue;->MAX_INT:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/BigDecimalValue;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v0

    return p0

    :catch_0
    :cond_0
    return v1
.end method

.method public ceiling()Lnet/sf/saxon/value/NumericValue;
    .locals 3

    new-instance v0, Lnet/sf/saxon/value/BigDecimalValue;

    iget-object p0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    const/4 v1, 0x0

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {p0, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public compareTo(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 12
    iget-object p0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result p0

    return p0

    .line 13
    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lnet/sf/saxon/expr/sort/XPathComparable;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/BigDecimalValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I
    .locals 2

    .line 2
    instance-of v0, p1, Lnet/sf/saxon/value/NumericValue;

    if-eqz v0, :cond_3

    .line 3
    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/value/NumericValue;

    invoke-static {v0}, Lnet/sf/saxon/value/NumericValue;->isInteger(Lnet/sf/saxon/value/AtomicValue;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 5
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Conversion of integer to decimal should never fail"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 6
    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/value/BigDecimalValue;

    if-eqz v0, :cond_1

    .line 7
    iget-object p0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    check-cast p1, Lnet/sf/saxon/value/BigDecimalValue;

    iget-object p1, p1, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    return p0

    .line 8
    :cond_1
    instance-of v0, p1, Lnet/sf/saxon/value/FloatValue;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {p1, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    neg-int p0, p0

    return p0

    .line 10
    :cond_2
    invoke-super {p0, p1}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p0

    return p0

    .line 11
    :cond_3
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot compare xs:decimal to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AtomicValue;
    .locals 2

    invoke-interface {p1}, Lnet/sf/saxon/type/PlainType;->getPrimitiveItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/IntegerValue;->makeIntegerValue(Ljava/math/BigInteger;)Lnet/sf/saxon/value/IntegerValue;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/AtomicValue;->copyAsSubType(Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/value/BigDecimalValue;

    iget-object p0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    iput-object p1, v0, Lnet/sf/saxon/value/AtomicValue;->typeLabel:Lnet/sf/saxon/type/AtomicType;

    return-object v0
.end method

.method public effectiveBooleanValue()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public floor()Lnet/sf/saxon/value/NumericValue;
    .locals 3

    new-instance v0, Lnet/sf/saxon/value/BigDecimalValue;

    iget-object p0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    const/4 v1, 0x0

    sget-object v2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {p0, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public getCanonicalLexicalRepresentation()Lnet/sf/saxon/str/UnicodeString;
    .locals 4

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/UnicodeString;->indexOf(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lnet/sf/saxon/str/StringConstants;->POINT_ZERO:Lnet/sf/saxon/str/UnicodeString;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/str/UnicodeString;->concat(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public getDoubleValue()D
    .locals 2

    iget-wide v0, p0, Lnet/sf/saxon/value/BigDecimalValue;->f:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lnet/sf/saxon/value/BigDecimalValue;->f:D

    :cond_0
    iget-wide v0, p0, Lnet/sf/saxon/value/BigDecimalValue;->f:D

    return-wide v0
.end method

.method public getFloatValue()F
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getPrimitiveStringValue()Lnet/sf/saxon/str/UnicodeString;
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Lnet/sf/saxon/value/BigDecimalValue;->decimalToString(Ljava/math/BigDecimal;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/BMPString;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->DECIMAL:Lnet/sf/saxon/type/BuiltInAtomicType;

    return-object p0
.end method

.method public getXPathComparable(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/XPathComparable;
    .locals 0

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    const/4 v1, 0x0

    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/BigDecimalValue;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->hashCode()I

    move-result p0

    return p0
.end method

.method public isIdentical(Lnet/sf/saxon/value/AtomicValue;)Z
    .locals 1

    instance-of v0, p1, Lnet/sf/saxon/value/DecimalValue;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/value/NumericValue;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWholeNumber()Z
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public longValue()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public negate()Lnet/sf/saxon/value/NumericValue;
    .locals 1

    new-instance v0, Lnet/sf/saxon/value/BigDecimalValue;

    iget-object p0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public round(I)Lnet/sf/saxon/value/NumericValue;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Lnet/sf/saxon/value/BigDecimalValue;

    iget-object p0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {p0, p1, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    return-object v0

    :cond_2
    new-instance v0, Lnet/sf/saxon/value/BigDecimalValue;

    iget-object p0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p0, p1, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public roundHalfToEven(I)Lnet/sf/saxon/value/NumericValue;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    return-object p1
.end method

.method public signum()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/value/BigDecimalValue;->e:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result p0

    return p0
.end method
