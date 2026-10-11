.class public Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/xpath/XQuery;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOG:Lorg/apache/logging/log4j/Logger;


# instance fields
.field private _cur:Lorg/apache/xmlbeans/impl/store/Cur;

.field private _options:Lorg/apache/xmlbeans/XmlOptions;

.field private _version:J

.field private final config:Lnet/sf/saxon/Configuration;

.field private final contextVar:Ljava/lang/String;

.field private final xquery:Lnet/sf/saxon/query/XQueryExpression;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;

    invoke-static {v0}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/Class;)Lorg/apache/logging/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->LOG:Lorg/apache/logging/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->_options:Lorg/apache/xmlbeans/XmlOptions;

    new-instance v0, Lnet/sf/saxon/Configuration;

    invoke-direct {v0}, Lnet/sf/saxon/Configuration;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->newStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object v0

    invoke-virtual {p4}, Lorg/apache/xmlbeans/XmlOptions;->getLoadAdditionalNamespaces()Ljava/util/Map;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sunia/HTREnginev2/d1m;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/d1m;-><init>(Lnet/sf/saxon/query/StaticQueryContext;)V

    invoke-interface {p4, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    iput-object p2, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->contextVar:Ljava/lang/String;

    :try_start_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " declare variable $"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " external;"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/query/StaticQueryContext;->compileQuery(Ljava/lang/String;)Lnet/sf/saxon/query/XQueryExpression;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->xquery:Lnet/sf/saxon/query/XQueryExpression;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/xmlbeans/XmlRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xmlbeans/XmlRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
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
    instance-of p0, p1, Ljava/util/Date;

    if-eqz p0, :cond_7

    sget-object p0, Lorg/apache/xmlbeans/XmlDate;->type:Lorg/apache/xmlbeans/SchemaType;

    goto :goto_0

    :cond_7
    sget-object p0, Lorg/apache/xmlbeans/XmlAnySimpleType;->type:Lorg/apache/xmlbeans/SchemaType;

    :goto_0
    return-object p0
.end method

.method private loadNode(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/impl/store/Cur;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->_options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0, p1, v1}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/XmlOptions;)V

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->loadNodeHelper(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->finish()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->_options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/store/Locale;->associateSourceName(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->_options:Lorg/apache/xmlbeans/XmlOptions;

    const/4 p2, 0x0

    invoke-static {p1, p2, p0}, Lorg/apache/xmlbeans/impl/store/Locale;->autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/xmlbeans/XmlRuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/apache/xmlbeans/XmlRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private loadNodeHelper(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V
    .locals 2

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    new-instance p0, Ljavax/xml/namespace/QName;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->attr(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Locale;->loadNode(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    :goto_0
    return-void
.end method

.method private static objectToItem(Ljava/lang/Object;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/Item;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathException;,
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    new-instance p1, Lnet/sf/saxon/value/HexBinaryValue;

    check-cast p0, [B

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/HexBinaryValue;-><init>([B)V

    return-object p1

    :cond_2
    instance-of v0, p0, Ljava/lang/Byte;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    new-instance p1, Lnet/sf/saxon/value/Int64Value;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    int-to-long v2, p0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->BYTE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p1, v2, v3, p0, v1}, Lnet/sf/saxon/value/Int64Value;-><init>(JLnet/sf/saxon/type/BuiltInAtomicType;Z)V

    return-object p1

    :cond_3
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_4

    new-instance p1, Lnet/sf/saxon/value/FloatValue;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/FloatValue;-><init>(F)V

    return-object p1

    :cond_4
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_5

    new-instance p1, Lnet/sf/saxon/value/DoubleValue;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lnet/sf/saxon/value/DoubleValue;-><init>(D)V

    return-object p1

    :cond_5
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    new-instance p1, Lnet/sf/saxon/value/Int64Value;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v2, p0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->INT:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p1, v2, v3, p0, v1}, Lnet/sf/saxon/value/Int64Value;-><init>(JLnet/sf/saxon/type/BuiltInAtomicType;Z)V

    return-object p1

    :cond_6
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_7

    new-instance p1, Lnet/sf/saxon/value/Int64Value;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->LONG:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p1, v2, v3, p0, v1}, Lnet/sf/saxon/value/Int64Value;-><init>(JLnet/sf/saxon/type/BuiltInAtomicType;Z)V

    return-object p1

    :cond_7
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_8

    new-instance p1, Lnet/sf/saxon/value/Int64Value;

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    int-to-long v2, p0

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->SHORT:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p1, v2, v3, p0, v1}, Lnet/sf/saxon/value/Int64Value;-><init>(JLnet/sf/saxon/type/BuiltInAtomicType;Z)V

    return-object p1

    :cond_8
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_9

    new-instance p1, Lnet/sf/saxon/value/StringValue;

    check-cast p0, Ljava/lang/String;

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_9
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_a

    new-instance p1, Lnet/sf/saxon/value/BigDecimalValue;

    check-cast p0, Ljava/math/BigDecimal;

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/BigDecimalValue;-><init>(Ljava/math/BigDecimal;)V

    return-object p1

    :cond_a
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_b

    new-instance p1, Lnet/sf/saxon/value/BigIntegerValue;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/BigIntegerValue;-><init>(Ljava/math/BigInteger;)V

    return-object p1

    :cond_b
    instance-of v0, p0, Lnet/sf/saxon/value/SaxonDuration;

    if-eqz v0, :cond_c

    check-cast p0, Lnet/sf/saxon/value/SaxonDuration;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SaxonDuration;->getDurationValue()Lnet/sf/saxon/value/DurationValue;

    move-result-object p0

    return-object p0

    :cond_c
    instance-of v0, p0, Ljavax/xml/datatype/Duration;

    if-eqz v0, :cond_e

    check-cast p0, Ljavax/xml/datatype/Duration;

    new-instance p1, Lnet/sf/saxon/value/DurationValue;

    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getSign()I

    move-result v0

    if-ltz v0, :cond_d

    const/4 v1, 0x1

    :cond_d
    move v3, v1

    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getYears()I

    move-result v4

    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getMonths()I

    move-result v5

    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getDays()I

    move-result v6

    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getHours()I

    move-result v7

    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getMinutes()I

    move-result v8

    invoke-virtual {p0}, Ljavax/xml/datatype/Duration;->getSeconds()I

    move-result p0

    int-to-long v9, p0

    const/4 v11, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lnet/sf/saxon/value/DurationValue;-><init>(ZIIIIIJI)V

    return-object p1

    :cond_e
    instance-of v0, p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;

    if-eqz v0, :cond_f

    check-cast p0, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;

    invoke-virtual {p0}, Lnet/sf/saxon/value/SaxonXMLGregorianCalendar;->toCalendarValue()Lnet/sf/saxon/value/CalendarValue;

    move-result-object p0

    return-object p0

    :cond_f
    instance-of v0, p0, Ljavax/xml/datatype/XMLGregorianCalendar;

    if-eqz v0, :cond_19

    move-object v0, p0

    check-cast v0, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {v0}, Ljavax/xml/datatype/XMLGregorianCalendar;->getXMLSchemaType()Ljavax/xml/namespace/QName;

    move-result-object v0

    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->DATETIME:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/value/DateTimeValue;->makeDateTimeValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_10
    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->DATE:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/value/DateValue;->makeDateValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_11
    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->TIME:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/TimeValue;->makeTimeValue(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_12
    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->GYEAR:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GYearValue;->makeGYearValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_13
    sget-object v2, Ljavax/xml/datatype/DatatypeConstants;->GYEARMONTH:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, v2}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/value/GYearMonthValue;->makeGYearMonthValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_14
    sget-object p1, Ljavax/xml/datatype/DatatypeConstants;->GMONTH:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, p1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "--"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_15
    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/GMonthValue;->makeGMonthValue(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_16
    sget-object p1, Ljavax/xml/datatype/DatatypeConstants;->GMONTHDAY:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, p1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/GMonthDayValue;->makeGMonthDayValue(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_17
    sget-object p1, Ljavax/xml/datatype/DatatypeConstants;->GDAY:Ljavax/xml/namespace/QName;

    invoke-virtual {v0, p1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/str/StringView;->tidy(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/GDayValue;->makeGDayValue(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0

    :cond_18
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Unknown Gregorian date type"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_19
    instance-of v0, p0, Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_1a

    check-cast p0, Ljavax/xml/namespace/QName;

    new-instance p1, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1a
    instance-of v0, p0, Ljava/net/URI;

    if-eqz v0, :cond_1b

    new-instance p1, Lnet/sf/saxon/value/AnyURIValue;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/AnyURIValue;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1b
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1d

    new-instance v0, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {v0}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>()V

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->objectToItem(Ljava/lang/Object;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/Item;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/value/AtomicValue;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->objectToItem(Ljava/lang/Object;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/Item;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/ma/map/HashTrieMap;->initialPut(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Z

    goto :goto_0

    :cond_1c
    return-object v0

    :cond_1d
    new-instance p1, Lnet/sf/saxon/value/ObjectValue;

    invoke-direct {p1, p0}, Lnet/sf/saxon/value/ObjectValue;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public cursorExecute(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlCursor;
    .locals 5

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getLocale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->_version:J

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->weakCur(Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->_options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p2}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/xmlbeans/XmlOptions;->getXqueryVariables()Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->execQuery(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->getLocale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->getSchemaTypeLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->_options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->getLocale(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    new-instance v1, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->_options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v1, v0, v2}, Lorg/apache/xmlbeans/impl/store/Cur$CurLoadContext;-><init>(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/apache/xmlbeans/XmlOptions;)V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    invoke-direct {p0, v0, v4, v1}, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->loadNodeHelper(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale$LoadContext;->finish()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->_options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->associateSourceName(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->_options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p1, v3, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    new-instance p1, Lorg/apache/xmlbeans/impl/store/Cursor;

    invoke-direct {p1, p2}, Lorg/apache/xmlbeans/impl/store/Cursor;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;)V
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    move-object v3, p1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    sget-object p2, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->LOG:Lorg/apache/logging/log4j/Logger;

    invoke-interface {p2}, Lorg/apache/logging/log4j/Logger;->atInfo()Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/apache/logging/log4j/LogBuilder;->withThrowable(Ljava/lang/Throwable;)Lorg/apache/logging/log4j/LogBuilder;

    move-result-object p1

    const-string p2, "Can\'t autotype document"

    invoke-interface {p1, p2}, Lorg/apache/logging/log4j/LogBuilder;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    :goto_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->release()V

    return-object v3

    :goto_2
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0
.end method

.method public execQuery(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    :try_start_0
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    :goto_0
    new-instance v2, Lnet/sf/saxon/dom/DocumentWrapper;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->config:Lnet/sf/saxon/Configuration;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3}, Lnet/sf/saxon/dom/DocumentWrapper;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v2, p1}, Lnet/sf/saxon/dom/DocumentWrapper;->wrap(Lorg/w3c/dom/Node;)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p1

    new-instance v1, Lnet/sf/saxon/query/DynamicQueryContext;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->config:Lnet/sf/saxon/Configuration;

    invoke-direct {v1, v3}, Lnet/sf/saxon/query/DynamicQueryContext;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v1, p1}, Lnet/sf/saxon/query/DynamicQueryContext;->setContextItem(Lnet/sf/saxon/om/Item;)V

    new-instance v3, Lnet/sf/saxon/om/StructuredQName;

    iget-object v5, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->contextVar:Ljava/lang/String;

    invoke-direct {v3, v0, v4, v5}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, p1}, Lnet/sf/saxon/query/DynamicQueryContext;->setParameter(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;)V

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    new-instance v3, Lnet/sf/saxon/om/StructuredQName;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v0, v4, v5}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    instance-of v5, p2, Lorg/apache/xmlbeans/XmlTokenSource;

    if-eqz v5, :cond_1

    check-cast p2, Lorg/apache/xmlbeans/XmlTokenSource;

    invoke-interface {p2}, Lorg/apache/xmlbeans/XmlTokenSource;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-virtual {v2, p2}, Lnet/sf/saxon/dom/DocumentWrapper;->wrap(Lorg/w3c/dom/Node;)Lnet/sf/saxon/dom/DOMNodeWrapper;

    move-result-object p2

    invoke-virtual {v1, v3, p2}, Lnet/sf/saxon/query/DynamicQueryContext;->setParameter(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->config:Lnet/sf/saxon/Configuration;

    invoke-static {p2, v5}, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->objectToItem(Ljava/lang/Object;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/Item;

    move-result-object p2

    invoke-virtual {v1, v3, p2}, Lnet/sf/saxon/query/DynamicQueryContext;->setParameter(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;)V
    :try_end_1
    .catch Ljavax/xml/xpath/XPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->xquery:Lnet/sf/saxon/query/XQueryExpression;

    invoke-virtual {p1, v1}, Lnet/sf/saxon/query/XQueryExpression;->evaluate(Lnet/sf/saxon/query/DynamicQueryContext;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v1, :cond_3

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {v0}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/dom/NodeOverNodeInfo;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :cond_4
    return-object p1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error binding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->contextVar:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public objectExecute(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 5

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Cur;->getLocale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->version()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->_version:J

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/store/Cur;->weakCur(Ljava/lang/Object;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->_options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p2}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->getXqueryVariables()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Cur;->getDom()Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->execQuery(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lorg/apache/xmlbeans/XmlObject;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Cur;->getLocale()Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->getSchemaTypeLoader()Lorg/apache/xmlbeans/SchemaTypeLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->_options:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v1, v2}, Lorg/apache/xmlbeans/impl/store/Locale;->getLocale(Lorg/apache/xmlbeans/SchemaTypeLoader;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/store/Locale;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    :try_start_0
    instance-of v3, v2, Lorg/w3c/dom/Node;

    if-nez v3, :cond_0

    const-string v3, "<xml-fragment/>"

    invoke-virtual {v1, v3}, Lorg/apache/xmlbeans/impl/store/Locale;->load(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/xmlbeans/impl/store/DomImpl$Dom;->tempCur()Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xmlbeans/impl/store/Cur;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->getType(Ljava/lang/Object;)Lorg/apache/xmlbeans/SchemaType;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lorg/apache/xmlbeans/impl/store/Locale;->autoTypeDocument(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Cur;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    aput-object v2, p2, v0

    goto :goto_1

    :cond_0
    check-cast v2, Lorg/w3c/dom/Node;

    invoke-direct {p0, v1, v2}, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->loadNode(Lorg/apache/xmlbeans/impl/store/Locale;Lorg/w3c/dom/Node;)Lorg/apache/xmlbeans/impl/store/Cur;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Cur;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    aput-object v2, p2, v0
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->release()V

    return-object p2
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Cur;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;->_cur:Lorg/apache/xmlbeans/impl/store/Cur;

    :cond_0
    return-void
.end method
