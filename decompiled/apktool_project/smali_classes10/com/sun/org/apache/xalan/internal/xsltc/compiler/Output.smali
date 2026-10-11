.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;
.source "SourceFile"


# static fields
.field private static final HTML_VERSION:Ljava/lang/String; = "4.0"

.field private static final STRING_SIG:Ljava/lang/String; = "Ljava/lang/String;"

.field private static final XML_VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private _cdata:Ljava/lang/String;

.field private _disabled:Z

.field private _doctypePublic:Ljava/lang/String;

.field private _doctypeSystem:Ljava/lang/String;

.field private _encoding:Ljava/lang/String;

.field private _indent:Z

.field private _indentamount:Ljava/lang/String;

.field private _mediaType:Ljava/lang/String;

.field private _method:Ljava/lang/String;

.field private _omitHeader:Z

.field private _standalone:Ljava/lang/String;

.field private _version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_omitHeader:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_indent:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_disabled:Z

    return-void
.end method

.method private transferAttribute(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_disabled:Z

    return-void
.end method

.method public display(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->indent(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Output "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_method:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_disabled:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getCdata()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_cdata:Ljava/lang/String;

    return-object p0
.end method

.method public getOutputMethod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_method:Ljava/lang/String;

    return-object p0
.end method

.method public mergeOutput(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;)V
    .locals 4

    const-string v0, "version"

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->transferAttribute(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->transferAttribute(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;Ljava/lang/String;)V

    const-string v0, "encoding"

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->transferAttribute(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;Ljava/lang/String;)V

    const-string v0, "doctype-system"

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->transferAttribute(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;Ljava/lang/String;)V

    const-string v0, "doctype-public"

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->transferAttribute(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;Ljava/lang/String;)V

    const-string v0, "media-type"

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->transferAttribute(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;Ljava/lang/String;)V

    const-string v0, "indent"

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->transferAttribute(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;Ljava/lang/String;)V

    const-string v0, "omit-xml-declaration"

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->transferAttribute(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;Ljava/lang/String;)V

    const-string v0, "standalone"

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->transferAttribute(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;Ljava/lang/String;)V

    const-string v0, "cdata-section-elements"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "http://xml.apache.org/xalan"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "indent-amount"

    const/16 v2, 0x3a

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->transferAttribute(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;Ljava/lang/String;)V

    :cond_1
    const-string v0, "http://xml.apache.org/xslt"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->transferAttribute(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 13

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->setOutput(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;)V

    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_disabled:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "version"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_version:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iput-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_version:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :goto_0
    const-string v1, "method"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_method:Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_method:Ljava/lang/String;

    const-string v5, "text"

    const-string v6, "html"

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_method:Ljava/lang/String;

    const-string v7, "xml"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_method:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_method:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_method:Ljava/lang/String;

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidQName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_method:Ljava/lang/String;

    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "INVALID_METHOD_IN_OUTPUT"

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_method:Ljava/lang/String;

    invoke-virtual {p0, p0, p1, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->reportError(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_method:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_5
    :goto_2
    const-string v1, "encoding"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_encoding:Ljava/lang/String;

    goto :goto_4

    :cond_6
    :try_start_0
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_encoding:Ljava/lang/String;

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/serializer/Encodings;->convertMime2JavaEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/io/OutputStreamWriter;

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v7, v8, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v7, "UNSUPPORTED_ENCODING"

    iget-object v8, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_encoding:Ljava/lang/String;

    invoke-direct {v2, v7, v8, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    const/4 v7, 0x4

    invoke-virtual {p1, v7, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :goto_3
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_encoding:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :goto_4
    const-string v1, "omit-xml-declaration"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "yes"

    const/4 v9, 0x1

    if-nez v7, :cond_8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iput-boolean v9, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_omitHeader:Z

    :cond_7
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_8
    const-string v1, "standalone"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_standalone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iput-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_standalone:Ljava/lang/String;

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_standalone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :goto_5
    const-string v1, "doctype-system"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_doctypeSystem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iput-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_doctypeSystem:Ljava/lang/String;

    goto :goto_6

    :cond_a
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_doctypeSystem:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :goto_6
    const-string v1, "doctype-public"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_doctypePublic:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iput-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_doctypePublic:Ljava/lang/String;

    goto :goto_7

    :cond_b
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_doctypePublic:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :goto_7
    const-string v1, "cdata-section-elements"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_cdata:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iput-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_cdata:Ljava/lang/String;

    goto :goto_9

    :cond_c
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/util/StringTokenizer;

    iget-object v10, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_cdata:Ljava/lang/String;

    invoke-direct {v7, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidQName(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_d

    new-instance v11, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v12, "INVALID_QNAME_ERR"

    invoke-direct {v11, v12, v10, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    const/4 v12, 0x3

    invoke-virtual {p1, v12, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :cond_d
    invoke-virtual {p1, v10}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v10, 0x20

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_e
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_cdata:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :goto_9
    const-string v1, "indent"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iput-boolean v9, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_indent:Z

    :cond_f
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_a

    :cond_10
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_method:Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iput-boolean v9, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_indent:Z

    :cond_11
    :goto_a
    const-string v1, "http://xml.apache.org/xalan"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "indent-amount"

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_indentamount:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "http://xml.apache.org/xslt"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_indentamount:Ljava/lang/String;

    :cond_12
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_indentamount:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "indent_amount"

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_indentamount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_13
    const-string v1, "media-type"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_mediaType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iput-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_mediaType:Ljava/lang/String;

    goto :goto_b

    :cond_14
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :goto_b
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_method:Ljava/lang/String;

    if-eqz v1, :cond_17

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_version:Ljava/lang/String;

    if-nez v1, :cond_15

    const-string v1, "4.0"

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_version:Ljava/lang/String;

    :cond_15
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_mediaType:Ljava/lang/String;

    if-nez v1, :cond_17

    const-string v1, "text/html"

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_mediaType:Ljava/lang/String;

    goto :goto_c

    :cond_16
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_method:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_mediaType:Ljava/lang/String;

    if-nez v1, :cond_17

    const-string v1, "text/plain"

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_mediaType:Ljava/lang/String;

    :cond_17
    :goto_c
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getCurrentStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setOutputProperties(Ljava/util/Properties;)V

    return-void
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 7

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_disabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_version:Ljava/lang/String;

    const-string v1, "Ljava/lang/String;"

    const-string v2, "com.sun.org.apache.xalan.internal.xsltc.runtime.AbstractTranslet"

    if-eqz p1, :cond_1

    const-string v3, "1.0"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "_version"

    invoke-virtual {v0, v2, p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {p2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_version:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    invoke-direct {v3, p1}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {p2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_method:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string p1, "_method"

    invoke-virtual {v0, v2, p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {p2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_method:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    invoke-direct {v3, p1}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {p2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_encoding:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string p1, "_encoding"

    invoke-virtual {v0, v2, p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    sget-object v3, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {p2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_encoding:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v3, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    invoke-direct {v3, p1}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {p2, v3}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_3
    iget-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_omitHeader:Z

    const-string v3, "Z"

    if-eqz p1, :cond_4

    const-string p1, "_omitHeader"

    invoke-virtual {v0, v2, p1, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {p2, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-boolean v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_omitHeader:Z

    invoke-direct {v4, v0, v5}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Z)V

    invoke-virtual {p2, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    invoke-direct {v4, p1}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {p2, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_4
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_standalone:Ljava/lang/String;

    if-eqz p1, :cond_5

    const-string p1, "_standalone"

    invoke-virtual {v0, v2, p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {p2, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_standalone:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v4, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    invoke-direct {v4, p1}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {p2, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_5
    const-string p1, "_doctypeSystem"

    invoke-virtual {v0, v2, p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    sget-object v4, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {p2, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_doctypeSystem:Ljava/lang/String;

    invoke-direct {v5, v0, v6}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    invoke-direct {v5, p1}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {p2, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    const-string p1, "_doctypePublic"

    invoke-virtual {v0, v2, p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_doctypePublic:Ljava/lang/String;

    invoke-direct {v5, v0, v6}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v5, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    invoke-direct {v5, p1}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {p2, v5}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_mediaType:Ljava/lang/String;

    if-eqz p1, :cond_6

    const-string p1, "_mediaType"

    invoke-virtual {v0, v2, p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_mediaType:Ljava/lang/String;

    invoke-direct {v1, v0, v5}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    invoke-direct {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {p2, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_6
    iget-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_indent:Z

    if-eqz p1, :cond_7

    const-string p1, "_indent"

    invoke-virtual {v0, v2, p1, v3}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-boolean v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_indent:Z

    invoke-direct {v1, v0, v3}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Z)V

    invoke-virtual {p2, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    invoke-direct {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {p2, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_7
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_indentamount:Ljava/lang/String;

    if-eqz p1, :cond_8

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "_indentamount"

    const-string v1, "I"

    invoke-virtual {v0, v2, p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, v4}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_indentamount:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v0, v3}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;I)V

    invoke-virtual {p2, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance v1, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;

    invoke-direct {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/PUTFIELD;-><init>(I)V

    invoke-virtual {p2, v1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    :cond_8
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_cdata:Ljava/lang/String;

    if-eqz p1, :cond_9

    const-string p1, "addCdataElement"

    const-string v1, "(Ljava/lang/String;)V"

    invoke-virtual {v0, v2, p1, v1}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    new-instance v1, Ljava/util/StringTokenizer;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->_cdata:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->DUP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/PUSH;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/sun/org/apache/bcel/internal/generic/PUSH;-><init>(Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/CompoundInstruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p0, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    goto :goto_0

    :cond_9
    sget-object p0, Lcom/sun/org/apache/bcel/internal/generic/InstructionConstants;->POP:Lcom/sun/org/apache/bcel/internal/generic/StackInstruction;

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void
.end method
