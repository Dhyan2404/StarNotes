.class public Lcom/sun/org/apache/xalan/internal/lib/ExsltCommon;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nodeSet(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/Object;)Lcom/sun/org/apache/xpath/internal/NodeSet;
    .locals 0

    invoke-static {p0, p1}, Lcom/sun/org/apache/xalan/internal/lib/Extensions;->nodeset(Lcom/sun/org/apache/xalan/internal/extensions/ExpressionContext;Ljava/lang/Object;)Lcom/sun/org/apache/xpath/internal/NodeSet;

    move-result-object p0

    return-object p0
.end method

.method public static objectType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string p0, "string"

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const-string p0, "boolean"

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    const-string p0, "number"

    return-object p0

    :cond_2
    instance-of v0, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMNodeIterator;->getDTMIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMIterator;

    move-result-object p0

    instance-of p0, p0, Lcom/sun/org/apache/xpath/internal/axes/RTFIterator;

    if-eqz p0, :cond_3

    const-string p0, "RTF"

    return-object p0

    :cond_3
    const-string p0, "node-set"

    return-object p0

    :cond_4
    const-string p0, "unknown"

    return-object p0
.end method
