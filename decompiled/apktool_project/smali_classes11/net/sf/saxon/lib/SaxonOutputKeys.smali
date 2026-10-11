.class public Lnet/sf/saxon/lib/SaxonOutputKeys;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALLOW_DUPLICATE_NAMES:Ljava/lang/String; = "allow-duplicate-names"

.field public static final ATTRIBUTE_ORDER:Ljava/lang/String; = "{http://saxon.sf.net/}attribute-order"

.field public static final BUILD_TREE:Ljava/lang/String; = "build-tree"

.field public static final BYTE_ORDER_MARK:Ljava/lang/String; = "byte-order-mark"

.field public static final CANONICAL:Ljava/lang/String; = "{http://saxon.sf.net/}canonical"

.field public static final CHARACTER_REPRESENTATION:Ljava/lang/String; = "{http://saxon.sf.net/}character-representation"

.field public static final DOUBLE_SPACE:Ljava/lang/String; = "{http://saxon.sf.net/}double-space"

.field public static final ESCAPE_URI_ATTRIBUTES:Ljava/lang/String; = "escape-uri-attributes"

.field public static final HTML_VERSION:Ljava/lang/String; = "html-version"

.field public static final INCLUDE_CONTENT_TYPE:Ljava/lang/String; = "include-content-type"

.field public static final INDENT_SPACES:Ljava/lang/String; = "{http://saxon.sf.net/}indent-spaces"

.field public static final INTERNAL_DTD_SUBSET:Ljava/lang/String; = "{http://saxon.sf.net/}internal-dtd-subset"

.field public static final ITEM_SEPARATOR:Ljava/lang/String; = "item-separator"

.field public static final JSON_NODE_OUTPUT_METHOD:Ljava/lang/String; = "json-node-output-method"

.field public static final LINE_LENGTH:Ljava/lang/String; = "{http://saxon.sf.net/}line-length"

.field public static final NEWLINE:Ljava/lang/String; = "{http://saxon.sf.net/}newline"

.field public static final NEXT_IN_CHAIN:Ljava/lang/String; = "{http://saxon.sf.net/}next-in-chain"

.field public static final NEXT_IN_CHAIN_BASE_URI:Ljava/lang/String; = "{http://saxon.sf.net/}next-in-chain-base-uri"

.field public static final NORMALIZATION_FORM:Ljava/lang/String; = "normalization-form"

.field public static final PARAMETER_DOCUMENT:Ljava/lang/String; = "parameter-document"

.field public static final PARAMETER_DOCUMENT_BASE_URI:Ljava/lang/String; = "{http://saxon.sf.net/}parameter-document-base-uri"

.field public static final PROPERTY_ORDER:Ljava/lang/String; = "{http://saxon.sf.net/}property-order"

.field public static final RECOGNIZE_BINARY:Ljava/lang/String; = "{http://saxon.sf.net/}recognize-binary"

.field public static final REQUIRE_WELL_FORMED:Ljava/lang/String; = "{http://saxon.sf.net/}require-well-formed"

.field public static final SAXON_BASE64_BINARY_METHOD:Ljava/lang/String; = "Q{http://saxon.sf.net/}base64Binary"

.field public static final SAXON_HEX_BINARY_METHOD:Ljava/lang/String; = "Q{http://saxon.sf.net/}hexBinary"

.field public static final SAXON_XML_TO_JSON_METHOD:Ljava/lang/String; = "Q{http://saxon.sf.net/}xml-to-json"

.field public static final SAXON_XQUERY_METHOD:Ljava/lang/String; = "Q{http://saxon.sf.net/}xquery"

.field public static final SINGLE_QUOTES:Ljava/lang/String; = "{http://saxon.sf.net/}single-quotes"

.field public static final STYLESHEET_VERSION:Ljava/lang/String; = "{http://saxon.sf.net/}stylesheet-version"

.field public static final SUPPLY_SOURCE_LOCATOR:Ljava/lang/String; = "{http://saxon.sf.net/}supply-source-locator"

.field public static final SUPPRESS_INDENTATION:Ljava/lang/String; = "suppress-indentation"

.field public static final UNDECLARE_PREFIXES:Ljava/lang/String; = "undeclare-prefixes"

.field public static final UNFAILING:Ljava/lang/String; = "{http://saxon.sf.net/}unfailing"

.field public static final USE_CHARACTER_MAPS:Ljava/lang/String; = "use-character-maps"

.field public static final WRAP:Ljava/lang/String; = "{http://saxon.sf.net/}wrap-result-sequence"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBuildTree(Ljava/util/Properties;)Z
    .locals 1

    const-string v0, "build-tree"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p0, "yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "method"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "json"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "adaptive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHtmlVersion5(Ljava/util/Properties;)Z
    .locals 3

    const-string v0, "html-version"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "version"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p0, 0x0

    :try_start_0
    invoke-static {v0, p0}, Lnet/sf/saxon/value/BigDecimalValue;->makeDecimalValue(Ljava/lang/String;Z)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/BigDecimalValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    const-wide/16 v1, 0x5

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isUnstrippedProperty(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "item-separator"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "{http://saxon.sf.net/}newline"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

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

.method public static isXhtmlHtmlVersion5(Ljava/util/Properties;)Z
    .locals 3

    const-string v0, "html-version"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0, v0}, Lnet/sf/saxon/value/BigDecimalValue;->makeDecimalValue(Ljava/lang/String;Z)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ConversionResult;->asAtomic()Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/BigDecimalValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object p0

    const-wide/16 v1, 0x5

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    nop

    :catch_0
    :cond_0
    return v0
.end method

.method public static parseListOfNodeNames(Ljava/lang/String;Lnet/sf/saxon/om/NamespaceResolver;ZZZLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " \t\n\r"

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x20

    if-eqz p4, :cond_0

    const-string v4, "*"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    if-nez p3, :cond_4

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "Q{"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p0}, Lnet/sf/saxon/om/NameChecker;->getQNameParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object v2, p0, v3

    invoke-interface {p1, v2, p2}, Lnet/sf/saxon/om/NamespaceResolver;->getURIForPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v4, " Q{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Namespace prefix \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v3

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' has not been declared"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, p5}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lnet/sf/saxon/om/QNameException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid QName. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/om/QNameException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, p5}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
