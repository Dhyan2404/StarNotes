.class public final Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AXIS_SUPPORT_ERR:Ljava/lang/String; = "AXIS_SUPPORT_ERR"

.field public static final CANT_RESOLVE_RELATIVE_URI_ERR:Ljava/lang/String; = "CANT_RESOLVE_RELATIVE_URI_ERR"

.field public static final DATA_CONVERSION_ERR:Ljava/lang/String; = "DATA_CONVERSION_ERR"

.field public static final DOM_ADAPTER_INIT_ERR:Ljava/lang/String; = "DOM_ADAPTER_INIT_ERR"

.field private static final DOUBLE_FRACTION_DIGITS:I = 0x154

.field private static final EMPTYSTRING:Ljava/lang/String; = ""

.field public static final EQUALITY_EXPR_ERR:Ljava/lang/String; = "EQUALITY_EXPR_ERR"

.field public static final ERROR_MESSAGES_KEY:Ljava/lang/String; = "error-messages"

.field public static final EXTERNAL_FUNC_ERR:Ljava/lang/String; = "EXTERNAL_FUNC_ERR"

.field public static final FORMAT_NUMBER_ERR:Ljava/lang/String; = "FORMAT_NUMBER_ERR"

.field public static final INVALID_ARGUMENT_ERR:Ljava/lang/String; = "INVALID_ARGUMENT_ERR"

.field public static final INVALID_NCNAME_ERR:Ljava/lang/String; = "INVALID_NCNAME_ERR"

.field public static final INVALID_QNAME_ERR:Ljava/lang/String; = "INVALID_QNAME_ERR"

.field public static final ITERATOR_CLONE_ERR:Ljava/lang/String; = "ITERATOR_CLONE_ERR"

.field public static final NAMESPACES_SUPPORT_ERR:Ljava/lang/String; = "NAMESPACES_SUPPORT_ERR"

.field public static final NAMESPACE_PREFIX_ERR:Ljava/lang/String; = "NAMESPACE_PREFIX_ERR"

.field public static final PARSER_DTD_SUPPORT_ERR:Ljava/lang/String; = "PARSER_DTD_SUPPORT_ERR"

.field public static final RUN_TIME_COPY_ERR:Ljava/lang/String; = "RUN_TIME_COPY_ERR"

.field public static final RUN_TIME_INTERNAL_ERR:Ljava/lang/String; = "RUN_TIME_INTERNAL_ERR"

.field public static final STRAY_ATTRIBUTE_ERR:Ljava/lang/String; = "STRAY_ATTRIBUTE_ERR"

.field public static final STRAY_NAMESPACE_ERR:Ljava/lang/String; = "STRAY_NAMESPACE_ERR"

.field public static final TYPED_AXIS_SUPPORT_ERR:Ljava/lang/String; = "TYPED_AXIS_SUPPORT_ERR"

.field public static final UNALLOWED_EXTENSION_ELEMENT_ERR:Ljava/lang/String; = "UNALLOWED_EXTENSION_ELEMENT_ERR"

.field public static final UNALLOWED_EXTENSION_FUNCTION_ERR:Ljava/lang/String; = "UNALLOWED_EXTENSION_FUNCTION_ERR"

.field public static final UNKNOWN_TRANSLET_VERSION_ERR:Ljava/lang/String; = "UNKNOWN_TRANSLET_VERSION_ERR"

.field public static final UNSUPPORTED_EXT_ERR:Ljava/lang/String; = "UNSUPPORTED_EXT_ERR"

.field public static final UNSUPPORTED_XSL_ERR:Ljava/lang/String; = "UNSUPPORTED_XSL_ERR"

.field private static _characterArray:[C = null

.field private static _fieldPosition:Ljava/text/FieldPosition; = null

.field private static defaultFormatter:Ljava/text/DecimalFormat; = null

.field private static defaultPattern:Ljava/lang/String; = ""

.field private static final lowerBounds:D = 0.001

.field private static m_bundle:Ljava/util/ResourceBundle; = null

.field private static prefixIndex:I = 0x0

.field private static final upperBounds:D = 1.0E7


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    instance-of v1, v0, Ljava/text/DecimalFormat;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/text/DecimalFormat;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    :goto_0
    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->defaultFormatter:Ljava/text/DecimalFormat;

    const/16 v1, 0x154

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->defaultFormatter:Ljava/text/DecimalFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->defaultFormatter:Ljava/text/DecimalFormat;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->defaultFormatter:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    new-instance v0, Ljava/text/FieldPosition;

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->_fieldPosition:Ljava/text/FieldPosition;

    const/16 v0, 0x20

    new-array v0, v0, [C

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->_characterArray:[C

    sput v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->prefixIndex:I

    const-string v0, "com.sun.org.apache.xalan.internal.xsltc.runtime.ErrorMessages"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->m_bundle:Ljava/util/ResourceBundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static booleanF(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p0, Ljava/lang/Double;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double p0, v5, v1

    if-eqz p0, :cond_0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    move v3, v4

    :cond_0
    return v3

    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v5

    cmpl-double p0, v5, v1

    if-eqz p0, :cond_2

    move v3, v4

    :cond_2
    return v3

    :cond_3
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_4
    instance-of v0, p0, Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_5

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    :cond_5
    instance-of v0, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_6

    move v3, v4

    :cond_6
    return v3

    :cond_7
    instance-of v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;

    if-eqz v0, :cond_8

    return v4

    :cond_8
    instance-of v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "INVALID_ARGUMENT_ERR"

    const-string v1, "boolean()"

    invoke-static {v0, p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v3
.end method

.method public static checkAttribQName(Ljava/lang/String;)V
    .locals 6

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "INVALID_QNAME_ERR"

    if-lez v1, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-static {v5}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "xmlns"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    invoke-static {v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static checkNCName(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "INVALID_NCNAME_ERR"

    invoke-static {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static checkQName(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidQName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "INVALID_QNAME_ERR"

    invoke-static {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static compare(ILcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;ILcom/sun/org/apache/xalan/internal/xsltc/DOM;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p2, :cond_5

    if-eq p2, v0, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p2

    if-eq p2, v1, :cond_9

    if-le p2, p0, :cond_0

    return v0

    .line 8
    :cond_1
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p2

    if-eq p2, v1, :cond_9

    if-ge p2, p0, :cond_1

    return v0

    .line 9
    :cond_2
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p2

    if-eq p2, v1, :cond_9

    .line 10
    invoke-interface {p3, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-eq p0, p2, :cond_4

    .line 11
    invoke-interface {p3, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    return v0

    .line 12
    :cond_4
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p2

    if-ne p2, v1, :cond_3

    goto :goto_1

    .line 13
    :cond_5
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p2

    if-eq p2, v1, :cond_9

    .line 14
    invoke-interface {p3, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object v2

    :cond_6
    if-eq p0, p2, :cond_8

    .line 15
    invoke-interface {p3, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_0

    .line 16
    :cond_7
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p2

    if-ne p2, v1, :cond_6

    goto :goto_1

    :cond_8
    :goto_0
    return v0

    :cond_9
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static compare(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;DILcom/sun/org/apache/xalan/internal/xsltc/DOM;)Z
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p3, :cond_5

    if-eq p3, v1, :cond_4

    const/4 v2, 0x2

    if-eq p3, v2, :cond_3

    const/4 v2, 0x3

    if-eq p3, v2, :cond_2

    const/4 v2, 0x4

    if-eq p3, v2, :cond_1

    const/4 v2, 0x5

    if-eq p3, v2, :cond_0

    const-string p0, "RUN_TIME_INTERNAL_ERR"

    const-string p1, "compare()"

    .line 17
    invoke-static {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 18
    :cond_0
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p3

    if-eq p3, v0, :cond_6

    .line 19
    invoke-interface {p4, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide v2

    cmpg-double p3, v2, p1

    if-gtz p3, :cond_0

    return v1

    .line 20
    :cond_1
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p3

    if-eq p3, v0, :cond_6

    .line 21
    invoke-interface {p4, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide v2

    cmpl-double p3, v2, p1

    if-ltz p3, :cond_1

    return v1

    .line 22
    :cond_2
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p3

    if-eq p3, v0, :cond_6

    .line 23
    invoke-interface {p4, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide v2

    cmpg-double p3, v2, p1

    if-gez p3, :cond_2

    return v1

    .line 24
    :cond_3
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p3

    if-eq p3, v0, :cond_6

    .line 25
    invoke-interface {p4, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide v2

    cmpl-double p3, v2, p1

    if-lez p3, :cond_3

    return v1

    .line 26
    :cond_4
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p3

    if-eq p3, v0, :cond_6

    .line 27
    invoke-interface {p4, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide v2

    cmpl-double p3, v2, p1

    if-eqz p3, :cond_4

    return v1

    .line 28
    :cond_5
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p3

    if-eq p3, v0, :cond_6

    .line 29
    invoke-interface {p4, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide v2

    cmpl-double p3, v2, p1

    if-nez p3, :cond_5

    return v1

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static compare(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;ILcom/sun/org/apache/xalan/internal/xsltc/DOM;)Z
    .locals 5

    .line 1
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    .line 2
    :cond_0
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 3
    invoke-interface {p3, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    .line 5
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result v3

    if-eq v3, v1, :cond_0

    const/4 v4, 0x1

    if-ne v0, v3, :cond_3

    if-nez p2, :cond_2

    return v4

    :cond_2
    if-ne p2, v4, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    invoke-interface {p3, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->compareStrings(Ljava/lang/String;Ljava/lang/String;ILcom/sun/org/apache/xalan/internal/xsltc/DOM;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static compare(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Ljava/lang/String;ILcom/sun/org/apache/xalan/internal/xsltc/DOM;)Z
    .locals 2

    .line 30
    :cond_0
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 31
    invoke-interface {p3, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->compareStrings(Ljava/lang/String;Ljava/lang/String;ILcom/sun/org/apache/xalan/internal/xsltc/DOM;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;ILcom/sun/org/apache/xalan/internal/xsltc/DOM;)Z
    .locals 6

    .line 32
    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->hasSimpleType(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->hasSimpleType(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "compare()"

    if-eqz p2, :cond_c

    if-eq p2, v1, :cond_c

    .line 33
    instance-of v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;

    if-nez v4, :cond_1

    instance-of v4, p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;

    if-eqz v4, :cond_3

    .line 34
    :cond_1
    instance-of v4, p0, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    .line 35
    new-instance v0, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->booleanF(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object p1, v0

    move v0, v1

    .line 36
    :cond_2
    instance-of v4, p1, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 37
    new-instance v0, Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->booleanF(Ljava/lang/Object;)Z

    move-result p0

    invoke-direct {v0, p0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object p0, v0

    move v0, v1

    :cond_3
    if-eqz v0, :cond_c

    const/4 v4, 0x2

    if-eq p2, v4, :cond_a

    const/4 v4, 0x3

    if-eq p2, v4, :cond_8

    const/4 v4, 0x4

    if-eq p2, v4, :cond_6

    const/4 v4, 0x5

    if-eq p2, v4, :cond_4

    const-string v4, "RUN_TIME_INTERNAL_ERR"

    .line 38
    invoke-static {v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 39
    :cond_4
    invoke-static {p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide v3

    invoke-static {p1, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide p0

    cmpg-double p0, v3, p0

    if-gtz p0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    return v1

    .line 40
    :cond_6
    invoke-static {p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide v3

    invoke-static {p1, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide p0

    cmpl-double p0, v3, p0

    if-ltz p0, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    return v1

    .line 41
    :cond_8
    invoke-static {p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide v3

    invoke-static {p1, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide p0

    cmpg-double p0, v3, p0

    if-gez p0, :cond_9

    goto :goto_3

    :cond_9
    move v1, v2

    :goto_3
    return v1

    .line 42
    :cond_a
    invoke-static {p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide v3

    invoke-static {p1, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide p0

    cmpl-double p0, v3, p0

    if-lez p0, :cond_b

    goto :goto_4

    :cond_b
    move v1, v2

    :goto_4
    return v1

    :cond_c
    :goto_5
    if-eqz v0, :cond_12

    .line 43
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_10

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    goto :goto_8

    .line 44
    :cond_d
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_f

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_f

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_f

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_e

    goto :goto_6

    .line 45
    :cond_e
    invoke-static {p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->stringF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->stringF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    move v2, p0

    goto :goto_9

    .line 46
    :cond_f
    :goto_6
    invoke-static {p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide v3

    invoke-static {p1, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide p0

    cmpl-double p0, v3, p0

    if-nez p0, :cond_11

    :goto_7
    move v2, v1

    goto :goto_9

    .line 47
    :cond_10
    :goto_8
    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->booleanF(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->booleanF(Ljava/lang/Object;)Z

    move-result p1

    if-ne p0, p1, :cond_11

    goto :goto_7

    :cond_11
    :goto_9
    if-ne p2, v1, :cond_27

    xor-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .line 48
    :cond_12
    instance-of v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;

    if-eqz v0, :cond_13

    .line 49
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;->node:I

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;-><init>(I)V

    move-object p0, v0

    .line 50
    :cond_13
    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;

    if-eqz v0, :cond_14

    .line 51
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;

    iget p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;->node:I

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;-><init>(I)V

    move-object p1, v0

    .line 52
    :cond_14
    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->hasSimpleType(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    instance-of v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    if-eqz v0, :cond_16

    instance-of v0, p1, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz v0, :cond_16

    .line 53
    :cond_15
    invoke-static {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Operators;->swapOp(I)I

    move-result p2

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    .line 54
    :cond_16
    instance-of v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    if-eqz v0, :cond_1e

    .line 55
    instance-of p3, p1, Ljava/lang/Boolean;

    if-eqz p3, :cond_19

    .line 56
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p2, :cond_17

    move p1, v1

    goto :goto_a

    :cond_17
    move p1, v2

    :goto_a
    if-ne p0, p1, :cond_18

    goto :goto_b

    :cond_18
    move v1, v2

    :goto_b
    return v1

    .line 57
    :cond_19
    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValue()Ljava/lang/String;

    move-result-object p0

    .line 58
    instance-of p3, p1, Ljava/lang/Number;

    if-eqz p3, :cond_1a

    .line 59
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->stringToReal(Ljava/lang/String;)D

    move-result-wide p0

    cmpl-double p0, v3, p0

    if-nez p0, :cond_1c

    move v2, v1

    goto :goto_c

    .line 60
    :cond_1a
    instance-of p3, p1, Ljava/lang/String;

    if-eqz p3, :cond_1b

    .line 61
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_c

    .line 62
    :cond_1b
    instance-of p3, p1, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    if-eqz p3, :cond_1c

    .line 63
    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_1c
    :goto_c
    if-ne p2, v1, :cond_1d

    xor-int/lit8 v2, v2, 0x1

    :cond_1d
    return v2

    .line 64
    :cond_1e
    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    .line 65
    instance-of v0, p1, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz v0, :cond_1f

    .line 66
    check-cast p1, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-static {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->compare(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;ILcom/sun/org/apache/xalan/internal/xsltc/DOM;)Z

    move-result v2

    goto :goto_f

    .line 67
    :cond_1f
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 68
    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->compare(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Ljava/lang/String;ILcom/sun/org/apache/xalan/internal/xsltc/DOM;)Z

    move-result v2

    goto :goto_f

    .line 69
    :cond_20
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_21

    .line 70
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 71
    invoke-static {p0, v0, v1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->compare(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;DILcom/sun/org/apache/xalan/internal/xsltc/DOM;)Z

    move-result v2

    goto :goto_f

    .line 72
    :cond_21
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_24

    .line 73
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 74
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p0

    const/4 p2, -0x1

    if-eq p0, p2, :cond_22

    move p0, v1

    goto :goto_d

    :cond_22
    move p0, v2

    :goto_d
    if-ne p0, p1, :cond_23

    goto :goto_e

    :cond_23
    move v1, v2

    :goto_e
    move v2, v1

    goto :goto_f

    .line 75
    :cond_24
    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    if-eqz v0, :cond_25

    .line 76
    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->compare(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Ljava/lang/String;ILcom/sun/org/apache/xalan/internal/xsltc/DOM;)Z

    move-result v2

    goto :goto_f

    :cond_25
    if-nez p1, :cond_26

    return v2

    .line 77
    :cond_26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "INVALID_ARGUMENT_ERR"

    .line 78
    invoke-static {p1, p0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    :goto_f
    return v2
.end method

.method private static compareStrings(Ljava/lang/String;Ljava/lang/String;ILcom/sun/org/apache/xalan/internal/xsltc/DOM;)Z
    .locals 5

    if-eqz p2, :cond_9

    const/4 v0, 0x1

    if-eq p2, v0, :cond_8

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p2, v1, :cond_6

    const/4 v1, 0x3

    if-eq p2, v1, :cond_4

    const/4 v1, 0x4

    if-eq p2, v1, :cond_2

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    const-string p0, "RUN_TIME_INTERNAL_ERR"

    const-string p1, "compare()"

    invoke-static {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    :cond_0
    invoke-static {p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide v3

    invoke-static {p1, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide p0

    cmpg-double p0, v3, p0

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    invoke-static {p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide v3

    invoke-static {p1, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide p0

    cmpl-double p0, v3, p0

    if-ltz p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0

    :cond_4
    invoke-static {p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide v3

    invoke-static {p1, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide p0

    cmpg-double p0, v3, p0

    if-gez p0, :cond_5

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    return v0

    :cond_6
    invoke-static {p0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide v3

    invoke-static {p1, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D

    move-result-wide p0

    cmpl-double p0, v3, p0

    if-lez p0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v2

    :goto_3
    return v0

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static consoleOutput(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static copy(Ljava/lang/Object;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;ILcom/sun/org/apache/xalan/internal/xsltc/DOM;)V
    .locals 1

    :try_start_0
    instance-of p2, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz p2, :cond_0

    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    invoke-interface {p3, p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->copy(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    goto :goto_0

    :cond_0
    instance-of p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;

    if-eqz p2, :cond_1

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;->node:I

    invoke-interface {p3, p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->copy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    goto :goto_0

    :cond_1
    instance-of p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    if-eqz p2, :cond_2

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getDocument()I

    move-result p2

    invoke-interface {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->copy(ILcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    sget-object p3, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->_characterArray:[C

    array-length p3, p3

    if-le p2, p3, :cond_3

    new-array p3, p2, [C

    sput-object p3, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->_characterArray:[C

    :cond_3
    sget-object p3, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->_characterArray:[C

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p3, v0}, Ljava/lang/String;->getChars(II[CI)V

    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->_characterArray:[C

    invoke-interface {p1, p0, v0, p2}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "RUN_TIME_COPY_ERR"

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static copyNodes(Lorg/w3c/dom/NodeList;Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;)V
    .locals 11

    const-string v0, "RUN_TIME_INTERNAL_ERR"

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {p0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    :try_start_0
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    invoke-interface {p1}, Lorg/w3c/dom/Document;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v8

    goto :goto_2

    :pswitch_2
    const-string v5, "__document__"

    invoke-interface {p1, v8, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-static {v4, p1, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->copyNodes(Lorg/w3c/dom/NodeList;Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;)V

    goto :goto_2

    :pswitch_3
    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v8

    goto :goto_2

    :pswitch_4
    invoke-interface {p1, v7, v6}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v8

    goto :goto_2

    :pswitch_5
    invoke-interface {p1, v7}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v8

    goto :goto_2

    :pswitch_6
    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v8

    goto :goto_2

    :pswitch_7
    invoke-interface {p1, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v8

    goto :goto_2

    :pswitch_8
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v7}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v8

    goto :goto_2

    :pswitch_9
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v4}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    move v6, v2

    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v9, v10, v7}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-static {v4, p1, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->copyNodes(Lorg/w3c/dom/NodeList;Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;)V

    :goto_2
    :try_start_1
    invoke-interface {p2, v8}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catch Lorg/w3c/dom/DOMException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static countF(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)I
    .locals 0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->getLast()I

    move-result p0

    return p0
.end method

.method public static formatNumber(DLjava/lang/String;Ljava/text/DecimalFormat;)Ljava/lang/String;
    .locals 2

    if-nez p3, :cond_0

    sget-object p3, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->defaultFormatter:Ljava/text/DecimalFormat;

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->defaultPattern:Ljava/lang/String;

    if-eq p2, v1, :cond_1

    invoke-virtual {p3, p2}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->_fieldPosition:Ljava/text/FieldPosition;

    invoke-virtual {p3, p0, p1, v0, v1}, Ljava/text/DecimalFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p3, "FORMAT_NUMBER_ERR"

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p0, ""

    return-object p0
.end method

.method public static generatePrefix()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->prefixIndex:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->prefixIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generate_idF(I)Ljava/lang/String;
    .locals 2

    if-lez p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getLocalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getSingleNode(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;-><init>(I)V

    return-object v0
.end method

.method private static hasSimpleType(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isWhiteSpace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static mapQNameToJavaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "$dot$"

    const-string v1, "$dash$"

    const-string v2, "$colon$"

    const-string v3, "$slash$"

    const-string v4, ""

    const-string v5, "$colon$"

    const-string v6, "$ques$"

    const-string v7, "$hash$"

    const-string v8, "$per$"

    const-string v9, "$aster$"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, ".-:/{}?#%*"

    invoke-static {p0, v1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->replace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static namespace_uriF(ILcom/sun/org/apache/xalan/internal/xsltc/DOM;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-interface {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x3a

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static namespace_uriF(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p0

    invoke-static {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->namespace_uriF(ILcom/sun/org/apache/xalan/internal/xsltc/DOM;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static node2Iterator(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary$1;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary$1;-><init>(Lorg/w3c/dom/Node;)V

    invoke-static {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->nodeList2Iterator(Lorg/w3c/dom/NodeList;Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0
.end method

.method public static nodeList2Iterator(Lorg/w3c/dom/NodeList;Lcom/sun/org/apache/xalan/internal/xsltc/Translet;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 9

    const-string v0, "RUN_TIME_INTERNAL_ERR"

    const/4 v1, 0x0

    :try_start_0
    move-object v2, p1

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    const-string v3, ""

    const-string v4, "__top__"

    invoke-virtual {v2, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;->newDocument(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v2
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->copyNodes(Lorg/w3c/dom/NodeList;Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;)V

    instance-of p0, p2, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;

    if-eqz p0, :cond_0

    check-cast p2, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->getMain()Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;->getDOMImpl()Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/dtm/ref/DTMDefaultBase;->getManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v3

    new-instance v4, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v4, v2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/sun/org/apache/xml/internal/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLcom/sun/org/apache/xml/internal/dtm/DTMWSFilter;ZZ)Lcom/sun/org/apache/xml/internal/dtm/DTM;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    new-instance v6, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;

    invoke-interface {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/Translet;->getNamesArray()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/Translet;->getUrisArray()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/Translet;->getTypesArray()[I

    move-result-object v4

    invoke-interface {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/Translet;->getNamespaceArray()[Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/MultiDOM;->addDOMAdapter(Lcom/sun/org/apache/xalan/internal/xsltc/dom/DOMAdapter;)I

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getAxisIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p2

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getAxisIterator(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AbsoluteIterator;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/StepIterator;

    invoke-direct {v0, p2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/StepIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V

    invoke-direct {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/AbsoluteIterator;-><init>(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)V

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->setStartNode(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    return-object p1

    :cond_0
    const-string p0, "nodeList2Iterator()"

    invoke-static {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static nodesetF(Ljava/lang/Object;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 2

    instance-of v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getDocument()I

    move-result p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;-><init>(IZ)V

    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DATA_CONVERSION_ERR"

    const-string v1, "node-set"

    invoke-static {v0, v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static normalize_spaceF(ILcom/sun/org/apache/xalan/internal/xsltc/DOM;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->normalize_spaceF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalize_spaceF(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->isWhiteSpace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->isWhiteSpace(C)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v3

    goto :goto_1

    :cond_1
    if-ne v2, v0, :cond_2

    .line 7
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_2
    if-ge v2, v0, :cond_3

    .line 8
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->isWhiteSpace(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    if-ge v2, v0, :cond_0

    const/16 v3, 0x20

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static numberF(ILcom/sun/org/apache/xalan/internal/xsltc/DOM;)D
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->stringToReal(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static numberF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D
    .locals 3

    .line 2
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    .line 4
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide p0

    return-wide p0

    .line 6
    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :cond_2
    return-wide v1

    .line 8
    :cond_3
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 9
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->stringToReal(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0

    .line 10
    :cond_4
    instance-of v0, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz v0, :cond_5

    .line 11
    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    .line 12
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->stringToReal(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0

    .line 13
    :cond_5
    instance-of v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;

    if-eqz v0, :cond_6

    .line 14
    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;->node:I

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->stringToReal(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0

    .line 15
    :cond_6
    instance-of p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    if-eqz p1, :cond_7

    .line 16
    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->stringToReal(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0

    .line 17
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "INVALID_ARGUMENT_ERR"

    const-string v0, "number()"

    .line 18
    invoke-static {p1, p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-wide v1
.end method

.method public static objectTypeF(Ljava/lang/Object;)Ljava/lang/String;
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
    instance-of v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    if-eqz v0, :cond_3

    const-string p0, "RTF"

    return-object p0

    :cond_3
    instance-of p0, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz p0, :cond_4

    const-string p0, "node-set"

    return-object p0

    :cond_4
    const-string p0, "unknown"

    return-object p0
.end method

.method public static positionF(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)I
    .locals 1

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->isReverse()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->getLast()I

    move-result v0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->getPosition()I

    move-result p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->getPosition()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static realToInt(D)I
    .locals 0

    double-to-int p0, p0

    return p0
.end method

.method public static realToString(D)Ljava/lang/String;
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_1

    const-wide v2, 0x416312d000000000L    # 1.0E7

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 v0, p1, -0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x30

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->defaultPattern:Ljava/lang/String;

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->defaultFormatter:Ljava/text/DecimalFormat;

    invoke-static {p0, p1, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->formatNumber(DLjava/lang/String;Ljava/text/DecimalFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static referenceToBoolean(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DATA_CONVERSION_ERR"

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static referenceToDouble(Ljava/lang/Object;)D
    .locals 2

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DATA_CONVERSION_ERR"

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static referenceToLong(Ljava/lang/Object;)J
    .locals 2

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DATA_CONVERSION_ERR"

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static referenceToNode(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lorg/w3c/dom/Node;
    .locals 1

    instance-of v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getChildren(I)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->makeNode(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DATA_CONVERSION_ERR"

    const-string v0, "org.w3c.dom.Node"

    invoke-static {p1, p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->referenceToNodeSet(Ljava/lang/Object;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->makeNode(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public static referenceToNodeList(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Lorg/w3c/dom/NodeList;
    .locals 1

    instance-of v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->makeNodeList(I)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DATA_CONVERSION_ERR"

    const-string v0, "org.w3c.dom.NodeList"

    invoke-static {p1, p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->referenceToNodeSet(Ljava/lang/Object;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->makeNodeList(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public static referenceToNodeSet(Ljava/lang/Object;)Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;
    .locals 2

    instance-of v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;->node:I

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SingletonIterator;-><init>(I)V

    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->cloneIterator()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DATA_CONVERSION_ERR"

    const-string v1, "node-set"

    invoke-static {v0, p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static referenceToResultTree(Ljava/lang/Object;)Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
    .locals 2

    :try_start_0
    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DATA_CONVERSION_ERR"

    const-string v1, "reference"

    invoke-static {v0, v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static referenceToString(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;->node:I

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    if-eqz p1, :cond_3

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DATA_CONVERSION_ERR"

    const-class v0, Ljava/lang/String;

    invoke-static {p1, p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static replace(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->replace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 5
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_0

    .line 6
    aget-object v3, p2, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static roundF(D)D
    .locals 2

    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_3

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_1

    :cond_2
    const-wide/high16 p0, -0x8000000000000000L

    goto :goto_1

    :cond_3
    :goto_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    :goto_1
    return-wide p0
.end method

.method public static runTimeError(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    sget-object v1, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->m_bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v1, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static runTimeError(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 4
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static runTimeError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 5
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static runTimeError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->m_bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static startXslElement(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x3a

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_1

    :cond_0
    :try_start_1
    invoke-interface {p3, p4, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->lookupNamespace(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-interface {p2}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->flushPending()V

    invoke-interface {p2}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->getNamespaceMappings()Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p3, "NAMESPACE_PREFIX_ERR"

    invoke-static {p3, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3, p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_3

    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->generatePrefix()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, p0, p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p3, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    invoke-interface {p2, p1, p1, p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static stringF(ILcom/sun/org/apache/xalan/internal/xsltc/DOM;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringF(Ljava/lang/Object;ILcom/sun/org/apache/xalan/internal/xsltc/DOM;)Ljava/lang/String;
    .locals 2

    .line 9
    instance-of v0, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz v0, :cond_0

    .line 10
    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p0

    invoke-interface {p2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    instance-of v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;

    if-eqz v0, :cond_1

    .line 12
    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;->node:I

    invoke-interface {p2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 13
    :cond_1
    instance-of v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    if-eqz v0, :cond_2

    .line 14
    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_2
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 16
    check-cast p0, Ljava/lang/Double;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p2, p1, -0x2

    .line 19
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_3

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x30

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0

    :cond_4
    if-eqz p0, :cond_5

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 22
    :cond_5
    invoke-static {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->stringF(ILcom/sun/org/apache/xalan/internal/xsltc/DOM;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringF(Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)Ljava/lang/String;
    .locals 1

    .line 2
    instance-of v0, p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->reset()Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    instance-of v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Node;->node:I

    invoke-interface {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    instance-of p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    if-eqz p1, :cond_2

    .line 7
    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    invoke-interface {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringToInt(Ljava/lang/String;)I
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static stringToReal(Ljava/lang/String;)D
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public static substringF(Ljava/lang/String;D)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, ""

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    if-le v1, v0, :cond_1

    return-object p2

    :cond_1
    if-ge v1, v2, :cond_2

    const/4 v1, 0x0

    .line 4
    :cond_2
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    const-string p0, "RUN_TIME_INTERNAL_ERR"

    const-string p1, "substring()"

    .line 5
    invoke-static {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static substringF(Ljava/lang/String;DD)Ljava/lang/String;
    .locals 5

    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 8
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v2, v1

    .line 9
    invoke-static {p3, p4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_0

    const v2, 0x7fffffff

    .line 10
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-nez v3, :cond_7

    :try_start_1
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v4

    :cond_2
    if-le v1, v0, :cond_3

    return-object v4

    :cond_3
    if-gez v2, :cond_4

    return-object v4

    :cond_4
    if-gez v1, :cond_5

    const/4 v1, 0x0

    :cond_5
    if-le v2, v0, :cond_6

    .line 12
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 13
    :cond_6
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :cond_7
    :goto_0
    return-object v4

    :catch_0
    const-string p0, "RUN_TIME_INTERNAL_ERR"

    const-string p1, "substring()"

    .line 14
    invoke-static {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static substring_afterF(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static substring_beforeF(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static sumF(Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;)D
    .locals 4

    const-wide/16 v0, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;->next()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-interface {p1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getStringValueX(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-double/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0

    :catch_0
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public static system_propertyF(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "xsl:version"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "1.0"

    return-object p0

    :cond_0
    const-string v0, "xsl:vendor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Apache Software Foundation (Xalan XSLTC)"

    return-object p0

    :cond_1
    const-string v0, "xsl:vendor-url"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "http://xml.apache.org/xalan-j"

    return-object p0

    :cond_2
    const-string v0, "INVALID_ARGUMENT_ERR"

    const-string v1, "system-property()"

    invoke-static {v0, p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p0, ""

    return-object p0
.end method

.method public static testLanguage(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/DOM;I)Z
    .locals 1

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/DOM;->getLanguage(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static translateF(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v7, v4

    :goto_1
    if-ge v7, v1, :cond_1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v6, v8, :cond_0

    if-ge v7, v0, :cond_1

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ne v7, v1, :cond_2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unallowed_extension_elementF(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNALLOWED_EXTENSION_ELEMENT_ERR"

    invoke-static {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static unallowed_extension_functionF(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNALLOWED_EXTENSION_FUNCTION_ERR"

    invoke-static {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static unresolved_externalF(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EXTERNAL_FUNC_ERR"

    invoke-static {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static unsupported_ElementF(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "UNSUPPORTED_EXT_ERR"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "UNSUPPORTED_XSL_ERR"

    invoke-static {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/BasisLibrary;->runTimeError(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
