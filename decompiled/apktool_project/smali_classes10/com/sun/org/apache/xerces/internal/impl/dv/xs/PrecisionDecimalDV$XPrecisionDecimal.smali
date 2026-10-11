.class Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XPrecisionDecimal"
.end annotation


# instance fields
.field private canonical:Ljava/lang/String;

.field fracDigits:I

.field fvalue:Ljava/lang/String;

.field intDigits:I

.field ivalue:Ljava/lang/String;

.field pvalue:I

.field sign:I

.field totalDigits:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->totalDigits:I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    const-string v2, ""

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    const-string v2, "NaN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    :cond_0
    const-string v2, "+INF"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "INF"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "-INF"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->initD(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    return-void
.end method

.method private compare(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I
    .locals 6

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    if-nez v0, :cond_1

    iget v1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intComp(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    iget v1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intComp(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I

    move-result p0

    return p0

    :cond_2
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    add-int v3, v2, v0

    iget v4, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    add-int v5, v4, v1

    if-eq v3, v5, :cond_4

    add-int/2addr v2, v0

    add-int/2addr v4, v1

    if-le v2, v4, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    :goto_1
    return p0

    :cond_4
    const/16 v2, 0x30

    const/4 v3, 0x0

    if-le v0, v1, :cond_7

    sub-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_2
    if-ge v3, v0, :cond_6

    iget v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    if-ge v3, v5, :cond_5

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->compareDecimal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7
    sub-int/2addr v1, v0

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v4, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuffer;

    iget-object v5, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_4
    if-ge v3, v1, :cond_9

    iget v5, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    if-ge v3, v5, :cond_8

    iget-object v5, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->compareDecimal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private compareDecimal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    const/4 p3, 0x1

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    return p3

    :cond_1
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    return v1

    :cond_2
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->truncateTrailingZeros(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    move p3, v1

    goto :goto_1

    :cond_3
    if-lez p0, :cond_4

    goto :goto_1

    :cond_4
    move p3, v0

    :goto_1
    return p3
.end method

.method private compareFractionalPart(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->truncateTrailingZeros(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private intComp(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    iget v1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    if-eq v0, v1, :cond_1

    if-le v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->compareDecimal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private makeCanonical()V
    .locals 1

    const-string v0, "TBD by Working Group"

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->canonical:Ljava/lang/String;

    return-void
.end method

.method private truncateTrailingZeros(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    const/16 v0, 0x30

    if-ltz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_1
    if-ltz p0, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p1

    if-ne p1, v0, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I
    .locals 5

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    if-nez v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v1, "INF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v1, "-INF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    iget v1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    if-eq v0, v1, :cond_4

    if-le v0, v1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_0
    return v3

    :cond_4
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->compare(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I

    move-result p0

    mul-int/2addr v0, p0

    return v0

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return v4

    :cond_7
    return v3

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    return v3

    :cond_a
    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->compareTo(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public initD(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    :goto_0
    move v2, v4

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1

    const/4 v2, -0x1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-ne v5, v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_3
    if-ge v5, v0, :cond_3

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    if-ge v5, v0, :cond_7

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x45

    if-eq v6, v8, :cond_5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x65

    if-ne v6, v8, :cond_4

    goto :goto_4

    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    :cond_5
    :goto_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_6

    add-int/lit8 v1, v5, 0x1

    move v6, v1

    :goto_5
    if-ge v6, v0, :cond_8

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_8

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    :cond_7
    move v6, v1

    :cond_8
    if-ne v2, v5, :cond_a

    if-eq v1, v6, :cond_9

    goto :goto_6

    :cond_9
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    :cond_a
    :goto_6
    move v2, v1

    :goto_7
    if-ge v2, v6, :cond_c

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/TypeValidator;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_b

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    :cond_c
    sub-int v2, v5, v3

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    sub-int v7, v6, v1

    iput v7, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    if-lez v2, :cond_d

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    :cond_d
    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    if-lez v2, :cond_e

    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    if-ge v6, v0, :cond_e

    add-int/2addr v6, v4

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    :cond_e
    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->totalDigits:I

    return-void

    :cond_f
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0
.end method

.method public isIdentical(Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)Z
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v2, "INF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v2, "-INF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v2, "NaN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    iget v2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    iget v2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    iget v2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    iget v2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->canonical:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->makeCanonical()V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
