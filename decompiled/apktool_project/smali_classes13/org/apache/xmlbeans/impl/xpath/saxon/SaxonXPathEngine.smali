.class public Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPathEngine;
.super Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/xpath/XPathEngine;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _cur:Lorg/apache/xmlbeans/impl/store/Cur;

.field private _engine:Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPath;

.field private _firstCall:Z

.field private final _version:J

.field private final xmlDateFormat:Ljava/text/DateFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPath;Lorg/apache/xmlbeans/impl/store/Cur;)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/xpath/XPathExecutionContext;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPathEngine;->xmlDateFormat:Ljava/text/DateFormat;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPathEngine;->_firstCall:Z

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPathEngine;->_engine:Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPath;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Cur;->getLocale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPathEngine;->_version:J

    invoke-virtual {p2, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->weakCur(Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    return-void
.end method

.method private getType(Ljava/lang/Object;)Lorg/apache/xmlbeans/SchemaType;
    .locals 0

    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    sget-object p0, Lorg/apache/xmlbeans/XmlInteger;->type:Lorg/apache/xmlbeans/SchemaType;

    goto :goto_0

    :cond_0
    instance-of p0, p1, Ljava/lang/Double;

    if-eqz p0, :cond_1

    sget-object p0, Lorg/apache/xmlbeans/XmlDouble;->type:Lorg/apache/xmlbeans/SchemaType;

    goto :goto_0

    :cond_1
    instance-of p0, p1, Ljava/lang/Long;

    if-eqz p0, :cond_2

    sget-object p0, Lorg/apache/xmlbeans/XmlLong;->type:Lorg/apache/xmlbeans/SchemaType;

    goto :goto_0

    :cond_2
    instance-of p0, p1, Ljava/lang/Float;

    if-eqz p0, :cond_3

    sget-object p0, Lorg/apache/xmlbeans/XmlFloat;->type:Lorg/apache/xmlbeans/SchemaType;

    goto :goto_0

    :cond_3
    instance-of p0, p1, Ljava/math/BigDecimal;

    if-eqz p0, :cond_4

    sget-object p0, Lorg/apache/xmlbeans/XmlDecimal;->type:Lorg/apache/xmlbeans/SchemaType;

    goto :goto_0

    :cond_4
    instance-of p0, p1, Ljava/lang/Boolean;

    if-eqz p0, :cond_5

    sget-object p0, Lorg/apache/xmlbeans/XmlBoolean;->type:Lorg/apache/xmlbeans/SchemaType;

    goto :goto_0

    :cond_5
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_6

    sget-object p0, Lorg/apache/xmlbeans/XmlString;->type:Lorg/apache/xmlbeans/SchemaType;

    goto :goto_0

    :cond_6
    instance-of p0, p1, Lnet/sf/saxon/value/GDateValue;

    if-eqz p0, :cond_7

    sget-object p0, Lorg/apache/xmlbeans/XmlDate;->type:Lorg/apache/xmlbeans/SchemaType;

    goto :goto_0

    :cond_7
    instance-of p0, p1, Lnet/sf/saxon/value/DateTimeValue;

    if-eqz p0, :cond_8

    sget-object p0, Lorg/apache/xmlbeans/XmlDateTime;->type:Lorg/apache/xmlbeans/SchemaType;

    goto :goto_0

    :cond_8
    sget-object p0, Lorg/apache/xmlbeans/XmlAnySimpleType;->type:Lorg/apache/xmlbeans/SchemaType;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public next(Lorg/apache/xmlbeans/impl/store/Cur;)Z
    .locals 7

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPathEngine;->_firstCall:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPathEngine;->_firstCall:Z

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPathEngine;->_version:J

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getLocale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    const-string p1, "Document changed during select"

    invoke-direct {p0, p1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPathEngine;->_engine:Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPath;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPath;->selectPath(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lorg/w3c/dom/Node;

    if-nez v4, :cond_7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/util/Date;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPathEngine;->xmlDateFormat:Ljava/text/DateFormat;

    check-cast v4, Ljava/util/Date;

    invoke-virtual {v5, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    instance-of v5, v4, Lnet/sf/saxon/value/GDateValue;

    if-eqz v5, :cond_4

    check-cast v4, Lnet/sf/saxon/value/GDateValue;

    invoke-interface {v4}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    instance-of v5, v4, Lnet/sf/saxon/value/DateTimeValue;

    if-eqz v5, :cond_5

    check-cast v4, Lnet/sf/saxon/value/DateTimeValue;

    invoke-interface {v4}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    instance-of v5, v4, Ljava/math/BigDecimal;

    if-eqz v5, :cond_6

    check-cast v4, Ljava/math/BigDecimal;

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getLocale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v5

    :try_start_0
    const-string v6, "<xml-fragment/>"

    invoke-virtual {v5, v6}, Lorg/apache/xmlbeans/impl/store/Locale;->load(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/xmlbeans/impl/store/Cur;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPathEngine;->getType(Ljava/lang/Object;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    invoke-static {v5, v2, v3}, Lorg/apache/xmlbeans/impl/store/Locale;->autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/store/Cur;->next()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_7
    check-cast v2, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    invoke-interface {v2}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v5

    :goto_3
    invoke-virtual {p1, v5}, Lorg/apache/xmlbeans/impl/store/Cur;->addToSelection(Lorg/apache/xmlbeans/impl/store/Cur;)V

    invoke-virtual {v5}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPathEngine;->release()V

    iput-object v3, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPathEngine;->_engine:Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPath;

    const/4 p0, 0x1

    return p0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPathEngine;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    :cond_0
    return-void
.end method
