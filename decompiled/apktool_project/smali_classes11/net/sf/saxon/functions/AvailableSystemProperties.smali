.class public Lnet/sf/saxon/functions/AvailableSystemProperties;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Lnet/sf/saxon/value/QNameValue;

    const-string v0, "version"

    const-string v1, "xsl"

    const-string v2, "http://www.w3.org/1999/XSL/Transform"

    invoke-direct {p2, v1, v2, v0}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lnet/sf/saxon/value/QNameValue;

    const-string v0, "vendor"

    invoke-direct {p2, v1, v2, v0}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lnet/sf/saxon/value/QNameValue;

    const-string v0, "vendor-url"

    invoke-direct {p2, v1, v2, v0}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lnet/sf/saxon/value/QNameValue;

    const-string v0, "product-name"

    invoke-direct {p2, v1, v2, v0}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lnet/sf/saxon/value/QNameValue;

    const-string v0, "product-version"

    invoke-direct {p2, v1, v2, v0}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lnet/sf/saxon/value/QNameValue;

    const-string v0, "is-schema-aware"

    invoke-direct {p2, v1, v2, v0}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lnet/sf/saxon/value/QNameValue;

    const-string v0, "supports-serialization"

    invoke-direct {p2, v1, v2, v0}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lnet/sf/saxon/value/QNameValue;

    const-string v0, "supports-backwards-compatibility"

    invoke-direct {p2, v1, v2, v0}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lnet/sf/saxon/value/QNameValue;

    const-string v0, "supports-namespace-axis"

    invoke-direct {p2, v1, v2, v0}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lnet/sf/saxon/value/QNameValue;

    const-string v0, "supports-streaming"

    invoke-direct {p2, v1, v2, v0}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lnet/sf/saxon/value/QNameValue;

    const-string v0, "supports-dynamic-evaluation"

    invoke-direct {p2, v1, v2, v0}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lnet/sf/saxon/value/QNameValue;

    const-string v0, "supports-higher-order-functions"

    invoke-direct {p2, v1, v2, v0}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lnet/sf/saxon/value/QNameValue;

    const-string v0, "xpath-version"

    invoke-direct {p2, v1, v2, v0}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lnet/sf/saxon/value/QNameValue;

    const-string v0, "xsd-version"

    invoke-direct {p2, v1, v2, v0}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    sget-object p2, Lnet/sf/saxon/lib/Feature;->ALLOW_EXTERNAL_FUNCTIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p1, p2}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v0, Lnet/sf/saxon/value/QNameValue;

    const-string v1, ""

    invoke-direct {v0, v1, v1, p2}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/om/AtomicArray;

    invoke-direct {p1, p0}, Lnet/sf/saxon/om/AtomicArray;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance v0, Lnet/sf/saxon/functions/AvailableSystemProperties$a;

    invoke-direct {v0, p0, p0, p1}, Lnet/sf/saxon/functions/AvailableSystemProperties$a;-><init>(Lnet/sf/saxon/functions/AvailableSystemProperties;Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method
