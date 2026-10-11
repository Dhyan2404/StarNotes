.class public Lnet/sf/saxon/functions/QNameFn;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static expandedQName(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/StringValue;)Lnet/sf/saxon/value/QNameValue;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "FOCA0002"

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v3, p0

    :try_start_0
    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/NameChecker;->getQNameParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object v1, p0, p1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, p0, p1

    invoke-static {v1}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed prefix in QName: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, p1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    new-instance v7, Lnet/sf/saxon/value/QNameValue;

    aget-object v2, p0, p1

    const/4 p1, 0x1

    aget-object v4, p0, p1

    sget-object v5, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/type/AtomicType;Z)V
    :try_end_0
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FORG0001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    :cond_3
    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Lnet/sf/saxon/om/QNameException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
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
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/QNameFn;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/QNameValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/QNameValue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 2
    aget-object p0, p2, p0

    .line 3
    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/StringValue;

    const/4 p1, 0x1

    aget-object p1, p2, p1

    .line 4
    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/StringValue;

    .line 5
    invoke-static {p0, p1}, Lnet/sf/saxon/functions/QNameFn;->expandedQName(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/value/StringValue;)Lnet/sf/saxon/value/QNameValue;

    move-result-object p0

    return-object p0
.end method

.method public getCompilerName()Ljava/lang/String;
    .locals 0

    const-string p0, "QNameFnCompiler"

    return-object p0
.end method
