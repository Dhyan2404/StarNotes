.class Lcom/sun/org/apache/xpath/internal/objects/NotEqualComparator;
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

    cmpl-double p0, p1, p3

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public compareStrings(Lcom/sun/org/apache/xml/internal/utils/XMLString;Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z
    .locals 0

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xml/internal/utils/XMLString;->equals(Lcom/sun/org/apache/xml/internal/utils/XMLString;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
