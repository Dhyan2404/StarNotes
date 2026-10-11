.class public Lcom/sun/org/apache/xalan/internal/lib/ExsltMath;
.super Lcom/sun/org/apache/xalan/internal/lib/ExsltBase;
.source "SourceFile"


# static fields
.field private static E:Ljava/lang/String; = "2.71828182845904523536028747135266249775724709369996"

.field private static LN10:Ljava/lang/String; = "2.302585092994046"

.field private static LN2:Ljava/lang/String; = "0.69314718055994530941723212145817656807550013436025"

.field private static LOG2E:Ljava/lang/String; = "1.4426950408889633"

.field private static PI:Ljava/lang/String; = "3.1415926535897932384626433832795028841971693993751"

.field private static SQRRT2:Ljava/lang/String; = "1.41421356237309504880168872420969807856967187537694"

.field private static SQRT1_2:Ljava/lang/String; = "0.7071067811865476"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/lib/ExsltBase;-><init>()V

    return-void
.end method

.method public static abs(D)D
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static acos(D)D
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static asin(D)D
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static atan(D)D
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static atan2(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static constant(Ljava/lang/String;D)D
    .locals 1

    const-string v0, "PI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sun/org/apache/xalan/internal/lib/ExsltMath;->PI:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "E"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sun/org/apache/xalan/internal/lib/ExsltMath;->E:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "SQRRT2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sun/org/apache/xalan/internal/lib/ExsltMath;->SQRRT2:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "LN2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sun/org/apache/xalan/internal/lib/ExsltMath;->LN2:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "LN10"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/sun/org/apache/xalan/internal/lib/ExsltMath;->LN10:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "LOG2E"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/sun/org/apache/xalan/internal/lib/ExsltMath;->LOG2E:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "SQRT1_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/sun/org/apache/xalan/internal/lib/ExsltMath;->SQRT1_2:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_8

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-gt p1, p2, :cond_7

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_7
    new-instance p1, Ljava/lang/Double;

    invoke-direct {p1, p0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    :cond_8
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public static cos(D)D
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static exp(D)D
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static highest(Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/NodeList;
    .locals 7

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/lib/ExsltMath;->max(Lorg/w3c/dom/NodeList;)D

    move-result-wide v0

    new-instance v2, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {v2}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xpath/internal/NodeSet;->setShouldCacheNodes(Z)V

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {p0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/org/apache/xalan/internal/lib/ExsltBase;->toNumber(Lorg/w3c/dom/Node;)D

    move-result-wide v5

    cmpl-double v5, v5, v0

    if-nez v5, :cond_1

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static log(D)D
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static lowest(Lorg/w3c/dom/NodeList;)Lorg/w3c/dom/NodeList;
    .locals 7

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/lib/ExsltMath;->min(Lorg/w3c/dom/NodeList;)D

    move-result-wide v0

    new-instance v2, Lcom/sun/org/apache/xpath/internal/NodeSet;

    invoke-direct {v2}, Lcom/sun/org/apache/xpath/internal/NodeSet;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xpath/internal/NodeSet;->setShouldCacheNodes(Z)V

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {p0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/org/apache/xalan/internal/lib/ExsltBase;->toNumber(Lorg/w3c/dom/Node;)D

    move-result-wide v5

    cmpl-double v5, v5, v0

    if-nez v5, :cond_1

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xpath/internal/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static max(Lorg/w3c/dom/NodeList;)D
    .locals 8

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-wide v2, -0x10000000000001L

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/org/apache/xalan/internal/lib/ExsltBase;->toNumber(Lorg/w3c/dom/Node;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_1

    return-wide v0

    :cond_1
    cmpl-double v7, v5, v2

    if-lez v7, :cond_2

    move-wide v2, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-wide v2

    :cond_4
    :goto_1
    return-wide v0
.end method

.method public static min(Lorg/w3c/dom/NodeList;)D
    .locals 8

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/org/apache/xalan/internal/lib/ExsltBase;->toNumber(Lorg/w3c/dom/Node;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_1

    return-wide v0

    :cond_1
    cmpg-double v7, v5, v2

    if-gez v7, :cond_2

    move-wide v2, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-wide v2

    :cond_4
    :goto_1
    return-wide v0
.end method

.method public static power(DD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static random()D
    .locals 2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    return-wide v0
.end method

.method public static sin(D)D
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static sqrt(D)D
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static tan(D)D
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    return-wide p0
.end method
