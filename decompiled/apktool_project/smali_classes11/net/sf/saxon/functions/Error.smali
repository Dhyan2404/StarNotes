.class public Lnet/sf/saxon/functions/Error;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/Error$UserDefinedXPathException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    return-object v1

    :cond_0
    aget-object v0, p2, v2

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/QNameValue;

    aget-object v1, p2, v3

    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/StringValue;

    aget-object p2, p2, v4

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lnet/sf/saxon/functions/Error;->error(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/value/QNameValue;Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0

    :cond_1
    aget-object v0, p2, v2

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/QNameValue;

    aget-object p2, p2, v3

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {p0, p1, v0, p2, v1}, Lnet/sf/saxon/functions/Error;->error(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/value/QNameValue;Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0

    :cond_2
    aget-object p2, p2, v2

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/QNameValue;

    if-nez p2, :cond_3

    new-instance p2, Lnet/sf/saxon/value/QNameValue;

    const-string v0, "http://www.w3.org/2005/xqt-errors"

    const-string v2, "FOER0000"

    const-string v3, "err"

    invoke-direct {p2, v3, v0, v2}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, p1, p2, v1, v1}, Lnet/sf/saxon/functions/Error;->error(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/value/QNameValue;Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0, p1, v1, v1, v1}, Lnet/sf/saxon/functions/Error;->error(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/value/QNameValue;Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public error(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/value/QNameValue;Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Item;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x1

    if-nez p2, :cond_2

    new-instance p2, Lnet/sf/saxon/value/QNameValue;

    const-string v2, "err"

    const-string v3, "http://www.w3.org/2005/xqt-errors"

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v1

    if-ne v1, v0, :cond_1

    const-string v1, "FOTY0004"

    goto :goto_1

    :cond_1
    const-string v1, "FOER0000"

    :goto_1
    move-object v4, v1

    sget-object v5, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/4 v6, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/type/AtomicType;Z)V

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v1

    const-string v2, ""

    if-le v1, v0, :cond_4

    if-nez p3, :cond_3

    move-object p3, v2

    goto :goto_2

    :cond_3
    invoke-interface {p3}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_4
    const-string p3, "Error signalled by application call on error()"

    :goto_2
    new-instance v1, Lnet/sf/saxon/functions/Error$UserDefinedXPathException;

    invoke-direct {v1, p3}, Lnet/sf/saxon/functions/Error$UserDefinedXPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    invoke-virtual {v1, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCodeQName(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v1, p1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result p0

    const/4 p2, 0x2

    if-le p0, p2, :cond_8

    if-eqz p4, :cond_8

    invoke-static {p4}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result p2

    if-ne p2, v0, :cond_7

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    instance-of p3, p2, Lnet/sf/saxon/om/NodeInfo;

    if-eqz p3, :cond_7

    check-cast p2, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p3

    const/16 p4, 0x9

    if-ne p3, p4, :cond_7

    new-instance p3, Lnet/sf/saxon/pattern/NameTest;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p1

    const-string p4, "error"

    invoke-direct {p3, v0, v2, p4, p1}, Lnet/sf/saxon/pattern/NameTest;-><init>(ILjava/lang/String;Ljava/lang/String;Lnet/sf/saxon/om/NamePool;)V

    const/4 p1, 0x3

    invoke-interface {p2, p1, p3}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string p2, "module"

    invoke-interface {p1, v2, p2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "line"

    invoke-interface {p1, v2, p3}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, -0x1

    if-nez p3, :cond_5

    goto :goto_3

    :cond_5
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    :goto_3
    move p3, p4

    :goto_4
    const-string v0, "column"

    invoke-interface {p1, v2, v0}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_5
    new-instance p1, Lnet/sf/saxon/expr/parser/Loc;

    invoke-direct {p1, p2, p3, p4}, Lnet/sf/saxon/expr/parser/Loc;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, p1}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    :cond_7
    invoke-virtual {v1, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorObject(Lnet/sf/saxon/om/Sequence;)V

    :cond_8
    throw v1
.end method

.method public getSpecialProperties([Lnet/sf/saxon/expr/Expression;)I
    .locals 0

    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->getSpecialProperties([Lnet/sf/saxon/expr/Expression;)I

    move-result p0

    const p1, -0x800001

    and-int/2addr p0, p1

    return p0
.end method

.method public isVacuousExpression()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
