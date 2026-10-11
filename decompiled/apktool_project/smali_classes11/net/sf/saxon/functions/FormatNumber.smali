.class public Lnet/sf/saxon/functions/FormatNumber;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;
.implements Lnet/sf/saxon/functions/StatefulSystemFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/FormatNumber$SubPicture;
    }
.end annotation


# static fields
.field public static final synthetic l:Z


# instance fields
.field public h:Lnet/sf/saxon/om/StructuredQName;

.field public i:Ljava/lang/String;

.field public j:Lnet/sf/saxon/trans/DecimalSymbols;

.field public k:[Lnet/sf/saxon/functions/FormatNumber$SubPicture;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static synthetic a([Lnet/sf/saxon/functions/FormatNumber$SubPicture;Lnet/sf/saxon/trans/DecimalSymbols;Ljava/lang/Double;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/functions/FormatNumber;->j([Lnet/sf/saxon/functions/FormatNumber$SubPicture;Lnet/sf/saxon/trans/DecimalSymbols;Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static adjustToDecimal(DI)Ljava/math/BigDecimal;
    .locals 11

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string v1, "00000"

    goto :goto_0

    :cond_0
    const-string v1, "000000000"

    :goto_0
    if-ne p2, v0, :cond_1

    const-string v2, "99999"

    goto :goto_1

    :cond_1
    const-string v2, "999999999"

    :goto_1
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v3, v4}, Lnet/sf/saxon/value/BigDecimalValue;->decimalToString(Ljava/math/BigDecimal;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_2

    move v6, v0

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    const-string v8, "."

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v9, 0x30

    const/16 v10, 0x2e

    if-lez v1, :cond_7

    if-ltz v8, :cond_4

    if-ge v1, v8, :cond_3

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_4
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_6

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v10, :cond_5

    move v5, v10

    goto :goto_5

    :cond_5
    move v5, v9

    :goto_5
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    :goto_6
    move-object v2, v1

    goto/16 :goto_e

    :cond_7
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_14

    if-ne v1, v6, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    if-ne v6, v0, :cond_8

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v6, v2, :cond_a

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_9

    move v2, v10

    goto :goto_8

    :cond_9
    move v2, v9

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_a
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_b
    :goto_9
    if-ltz v1, :cond_d

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x39

    if-eq v2, v6, :cond_c

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_d

    :cond_c
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_d
    if-ltz v1, :cond_13

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_e

    goto :goto_d

    :cond_e
    if-ltz v8, :cond_10

    if-ge v1, v8, :cond_f

    goto :goto_a

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/2addr v1, v0

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_e

    :cond_10
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/2addr v5, v0

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_12

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v10, :cond_11

    move v5, v10

    goto :goto_c

    :cond_11
    move v5, v9

    :goto_c
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_12
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_13
    :goto_d
    return-object v3

    :cond_14
    const/4 v2, 0x0

    :goto_e
    if-eqz v2, :cond_16

    if-ne p2, v0, :cond_15

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result p2

    float-to-double v0, p2

    cmpl-double p0, v0, p0

    if-nez p0, :cond_16

    goto :goto_f

    :cond_15
    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    cmpl-double p0, v0, p0

    if-nez p0, :cond_16

    :goto_f
    return-object v2

    :cond_16
    return-object v3
.end method

.method public static synthetic b(II)Z
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/functions/FormatNumber;->i(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0}, Lnet/sf/saxon/functions/FormatNumber;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d([IIII)[I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lnet/sf/saxon/functions/FormatNumber;->h([IIII)[I

    move-result-object p0

    return-object p0
.end method

.method public static e(Lnet/sf/saxon/value/NumericValue;[Lnet/sf/saxon/functions/FormatNumber$SubPicture;Lnet/sf/saxon/trans/DecimalSymbols;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->signum()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->isNegativeZero()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    const/4 v1, 0x0

    const-string v2, ""

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/value/NumericValue;->negate()Lnet/sf/saxon/value/NumericValue;

    move-result-object p0

    const/4 v0, 0x1

    aget-object v0, p1, v0

    if-nez v0, :cond_2

    aget-object v0, p1, v1

    invoke-virtual {p2}, Lnet/sf/saxon/trans/DecimalSymbols;->getMinusSign()I

    move-result p1

    invoke-static {p1}, Lnet/sf/saxon/functions/FormatNumber;->k(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    aget-object v0, p1, v1

    :cond_2
    :goto_0
    invoke-virtual {v0, p0, p2, v2}, Lnet/sf/saxon/functions/FormatNumber$SubPicture;->format(Lnet/sf/saxon/value/NumericValue;Lnet/sf/saxon/trans/DecimalSymbols;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;Lnet/sf/saxon/trans/DecimalSymbols;)[Lnet/sf/saxon/functions/FormatNumber$SubPicture;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringTool;->expand(Lnet/sf/saxon/str/UnicodeString;)[I

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Lnet/sf/saxon/functions/FormatNumber$SubPicture;

    array-length v1, p0

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    :goto_0
    array-length v4, p0

    const/4 v5, 0x1

    if-ge v3, v4, :cond_4

    aget v4, p0, v3

    invoke-virtual {p1}, Lnet/sf/saxon/trans/DecimalSymbols;->getPatternSeparator()I

    move-result v6

    if-ne v4, v6, :cond_3

    if-nez v3, :cond_0

    const-string v2, "first subpicture is zero-length"

    invoke-static {v2}, Lnet/sf/saxon/functions/FormatNumber;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-ltz v2, :cond_1

    const-string v2, "more than one pattern separator"

    invoke-static {v2}, Lnet/sf/saxon/functions/FormatNumber;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    array-length v4, p0

    sub-int/2addr v4, v5

    if-ne v2, v4, :cond_2

    const-string v2, "second subpicture is zero-length"

    invoke-static {v2}, Lnet/sf/saxon/functions/FormatNumber;->g(Ljava/lang/String;)V

    :cond_2
    :goto_1
    move v2, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-gez v2, :cond_5

    invoke-static {p0, p1}, Lnet/sf/saxon/functions/FormatNumber;->makeSubPicture([ILnet/sf/saxon/trans/DecimalSymbols;)Lnet/sf/saxon/functions/FormatNumber$SubPicture;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x0

    aput-object p0, v0, v5

    goto :goto_2

    :cond_5
    new-array v3, v2, [I

    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p0

    sub-int/2addr v4, v2

    sub-int/2addr v4, v5

    new-array v4, v4, [I

    add-int/lit8 v6, v2, 0x1

    array-length v7, p0

    sub-int/2addr v7, v2

    sub-int/2addr v7, v5

    invoke-static {p0, v6, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, p1}, Lnet/sf/saxon/functions/FormatNumber;->makeSubPicture([ILnet/sf/saxon/trans/DecimalSymbols;)Lnet/sf/saxon/functions/FormatNumber$SubPicture;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v4, p1}, Lnet/sf/saxon/functions/FormatNumber;->makeSubPicture([ILnet/sf/saxon/trans/DecimalSymbols;)Lnet/sf/saxon/functions/FormatNumber$SubPicture;

    move-result-object p0

    aput-object p0, v0, v5

    :goto_2
    return-object v0

    :cond_6
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "format-number() picture is zero-length"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "FODF1310"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0
.end method

.method public static formatExponential(Lnet/sf/saxon/value/DoubleValue;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lnet/sf/saxon/trans/DecimalSymbols;

    sget-object v1, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/DecimalSymbols;-><init>(Lnet/sf/saxon/s9api/HostLanguage;I)V

    const-string v1, "INF"

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/DecimalSymbols;->setInfinity(Ljava/lang/String;)V

    const-string v1, "0.0##########################e0"

    invoke-static {v1, v0}, Lnet/sf/saxon/functions/FormatNumber;->f(Ljava/lang/String;Lnet/sf/saxon/trans/DecimalSymbols;)[Lnet/sf/saxon/functions/FormatNumber$SubPicture;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lnet/sf/saxon/functions/FormatNumber;->e(Lnet/sf/saxon/value/NumericValue;[Lnet/sf/saxon/functions/FormatNumber$SubPicture;Lnet/sf/saxon/trans/DecimalSymbols;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "format-number picture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FODF1310"

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static getFormatter(Ljava/lang/String;)Ljava/util/function/Function;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Function<",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/trans/DecimalSymbols;

    sget-object v1, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/DecimalSymbols;-><init>(Lnet/sf/saxon/s9api/HostLanguage;I)V

    invoke-static {p0, v0}, Lnet/sf/saxon/functions/FormatNumber;->f(Ljava/lang/String;Lnet/sf/saxon/trans/DecimalSymbols;)[Lnet/sf/saxon/functions/FormatNumber$SubPicture;

    move-result-object p0

    new-instance v1, Lcom/sunia/HTREnginev2/gtg;

    invoke-direct {v1, p0, v0}, Lcom/sunia/HTREnginev2/gtg;-><init>([Lnet/sf/saxon/functions/FormatNumber$SubPicture;Lnet/sf/saxon/trans/DecimalSymbols;)V

    return-object v1
.end method

.method public static h([IIII)[I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-le v0, v1, :cond_0

    add-int/lit8 v0, p1, 0xa

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    :cond_0
    add-int/lit8 v0, p3, 0x1

    sub-int/2addr p1, p3

    invoke-static {p0, p3, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput p2, p0, p3

    return-object p0
.end method

.method public static i(II)Z
    .locals 0

    if-lt p0, p1, :cond_0

    add-int/lit8 p1, p1, 0xa

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j([Lnet/sf/saxon/functions/FormatNumber$SubPicture;Lnet/sf/saxon/trans/DecimalSymbols;Ljava/lang/Double;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lnet/sf/saxon/value/DoubleValue;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    invoke-static {v0, p0, p1}, Lnet/sf/saxon/functions/FormatNumber;->e(Lnet/sf/saxon/value/NumericValue;[Lnet/sf/saxon/functions/FormatNumber$SubPicture;Lnet/sf/saxon/trans/DecimalSymbols;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeSubPicture([ILnet/sf/saxon/trans/DecimalSymbols;)Lnet/sf/saxon/functions/FormatNumber$SubPicture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/functions/FormatNumber$SubPicture;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/functions/FormatNumber$SubPicture;-><init>([ILnet/sf/saxon/trans/DecimalSymbols;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/FormatNumber;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/StringValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/StringValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    array-length p1, p2

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    aget-object v1, p2, v1

    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/AtomicValue;

    if-nez v1, :cond_0

    .line 5
    sget-object v1, Lnet/sf/saxon/value/DoubleValue;->NaN:Lnet/sf/saxon/value/DoubleValue;

    .line 6
    :cond_0
    check-cast v1, Lnet/sf/saxon/value/NumericValue;

    .line 7
    iget-object v2, p0, Lnet/sf/saxon/functions/FormatNumber;->i:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 8
    iget-object p1, p0, Lnet/sf/saxon/functions/FormatNumber;->k:[Lnet/sf/saxon/functions/FormatNumber$SubPicture;

    iget-object p0, p0, Lnet/sf/saxon/functions/FormatNumber;->j:Lnet/sf/saxon/trans/DecimalSymbols;

    invoke-static {v1, p1, p0}, Lnet/sf/saxon/functions/FormatNumber;->e(Lnet/sf/saxon/value/NumericValue;[Lnet/sf/saxon/functions/FormatNumber$SubPicture;Lnet/sf/saxon/trans/DecimalSymbols;)Ljava/lang/String;

    move-result-object p0

    .line 9
    new-instance p1, Lnet/sf/saxon/value/StringValue;

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 10
    invoke-virtual {v0}, Lnet/sf/saxon/trans/DecimalFormatManager;->getDefaultDecimalFormat()Lnet/sf/saxon/trans/DecimalSymbols;

    move-result-object p0

    goto :goto_0

    .line 11
    :cond_2
    aget-object p1, p2, v2

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    if-nez p1, :cond_3

    .line 12
    invoke-virtual {v0}, Lnet/sf/saxon/trans/DecimalFormatManager;->getDefaultDecimalFormat()Lnet/sf/saxon/trans/DecimalSymbols;

    move-result-object p0

    goto :goto_0

    .line 13
    :cond_3
    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/functions/FormatNumber;->getNamedDecimalFormat(Lnet/sf/saxon/trans/DecimalFormatManager;Ljava/lang/String;)Lnet/sf/saxon/trans/DecimalSymbols;

    move-result-object p0

    :goto_0
    const/4 p1, 0x1

    .line 15
    aget-object p1, p2, p1

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p1, p0}, Lnet/sf/saxon/functions/FormatNumber;->f(Ljava/lang/String;Lnet/sf/saxon/trans/DecimalSymbols;)[Lnet/sf/saxon/functions/FormatNumber$SubPicture;

    move-result-object p1

    .line 17
    new-instance p2, Lnet/sf/saxon/value/StringValue;

    invoke-static {v1, p1, p0}, Lnet/sf/saxon/functions/FormatNumber;->e(Lnet/sf/saxon/value/NumericValue;[Lnet/sf/saxon/functions/FormatNumber$SubPicture;Lnet/sf/saxon/trans/DecimalSymbols;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public copy()Lnet/sf/saxon/functions/FormatNumber;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v2

    invoke-static {v0, v1, v2}, Lnet/sf/saxon/functions/SystemFunction;->makeFunction(Ljava/lang/String;Lnet/sf/saxon/expr/parser/RetainedStaticContext;I)Lnet/sf/saxon/functions/SystemFunction;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/functions/FormatNumber;

    .line 3
    iget-object v1, p0, Lnet/sf/saxon/functions/FormatNumber;->h:Lnet/sf/saxon/om/StructuredQName;

    iput-object v1, v0, Lnet/sf/saxon/functions/FormatNumber;->h:Lnet/sf/saxon/om/StructuredQName;

    .line 4
    iget-object v1, p0, Lnet/sf/saxon/functions/FormatNumber;->i:Ljava/lang/String;

    iput-object v1, v0, Lnet/sf/saxon/functions/FormatNumber;->i:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lnet/sf/saxon/functions/FormatNumber;->j:Lnet/sf/saxon/trans/DecimalSymbols;

    iput-object v1, v0, Lnet/sf/saxon/functions/FormatNumber;->j:Lnet/sf/saxon/trans/DecimalSymbols;

    .line 6
    iget-object p0, p0, Lnet/sf/saxon/functions/FormatNumber;->k:[Lnet/sf/saxon/functions/FormatNumber$SubPicture;

    iput-object p0, v0, Lnet/sf/saxon/functions/FormatNumber;->k:[Lnet/sf/saxon/functions/FormatNumber$SubPicture;

    return-object v0
.end method

.method public bridge synthetic copy()Lnet/sf/saxon/functions/SystemFunction;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/functions/FormatNumber;->copy()Lnet/sf/saxon/functions/FormatNumber;

    move-result-object p0

    return-object p0
.end method

.method public varargs fixArguments([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x1

    aget-object v1, p1, v0

    instance-of v1, v1, Lnet/sf/saxon/expr/Literal;

    if-eqz v1, :cond_4

    array-length v1, p1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    aget-object v1, p1, v2

    instance-of v1, v1, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz v1, :cond_4

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getDecimalFormatManager()Lnet/sf/saxon/trans/DecimalFormatManager;

    move-result-object v1

    aget-object v3, p1, v0

    check-cast v3, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lnet/sf/saxon/functions/FormatNumber;->i:Ljava/lang/String;

    array-length v3, p1

    const/4 v4, 0x3

    const-string v5, "FODF1280"

    if-ne v3, v4, :cond_1

    aget-object v3, p1, v2

    invoke-static {v3}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    aget-object p1, p1, v2

    check-cast p1, Lnet/sf/saxon/expr/StringLiteral;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/StringLiteral;->stringify()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v2}, Lnet/sf/saxon/om/StructuredQName;->fromLexicalQName(Ljava/lang/String;ZZLnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/FormatNumber;->h:Lnet/sf/saxon/om/StructuredQName;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid decimal format name. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lnet/sf/saxon/functions/FormatNumber;->h:Lnet/sf/saxon/om/StructuredQName;

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lnet/sf/saxon/trans/DecimalFormatManager;->getDefaultDecimalFormat()Lnet/sf/saxon/trans/DecimalSymbols;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/FormatNumber;->j:Lnet/sf/saxon/trans/DecimalSymbols;

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1}, Lnet/sf/saxon/trans/DecimalFormatManager;->getNamedDecimalFormat(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/trans/DecimalSymbols;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/FormatNumber;->j:Lnet/sf/saxon/trans/DecimalSymbols;

    if-eqz p1, :cond_3

    :goto_1
    iget-object p1, p0, Lnet/sf/saxon/functions/FormatNumber;->i:Ljava/lang/String;

    iget-object v0, p0, Lnet/sf/saxon/functions/FormatNumber;->j:Lnet/sf/saxon/trans/DecimalSymbols;

    invoke-static {p1, v0}, Lnet/sf/saxon/functions/FormatNumber;->f(Ljava/lang/String;Lnet/sf/saxon/trans/DecimalSymbols;)[Lnet/sf/saxon/functions/FormatNumber$SubPicture;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/functions/FormatNumber;->k:[Lnet/sf/saxon/functions/FormatNumber$SubPicture;

    goto :goto_2

    :cond_3
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decimal format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/functions/FormatNumber;->h:Lnet/sf/saxon/om/StructuredQName;

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has not been defined"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v5}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNamedDecimalFormat(Lnet/sf/saxon/trans/DecimalFormatManager;Ljava/lang/String;)Lnet/sf/saxon/trans/DecimalSymbols;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "FODF1280"

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p2, v1, v2, p0}, Lnet/sf/saxon/om/StructuredQName;->fromLexicalQName(Ljava/lang/String;ZZLnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/DecimalFormatManager;->getNamedDecimalFormat(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/trans/DecimalSymbols;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "format-number function: decimal-format \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' is not defined"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid decimal format name. "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p1
.end method
