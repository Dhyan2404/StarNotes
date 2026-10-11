.class Lcom/sun/org/apache/xpath/internal/objects/LessThanOrEqualComparator;
.super Lcom/sun/org/apache/xpath/internal/objects/Comparator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/objects/Comparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compareNumbers(DD)Z
    .locals 0

    cmpg-double p0, p1, p3

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public compareStrings(Lcom/sun/org/apache/xml/internal/utils/XMLString;Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z
    .locals 2

    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->toDouble()D

    move-result-wide p0

    invoke-interface {p2}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->toDouble()D

    move-result-wide v0

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
