.class public Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/serialize/OutputFormat$Defaults;,
        Lcom/sun/org/apache/xml/internal/serialize/OutputFormat$DTD;
    }
.end annotation


# instance fields
.field private _allowJavaNames:Z

.field private _cdataElements:[Ljava/lang/String;

.field private _doctypePublic:Ljava/lang/String;

.field private _doctypeSystem:Ljava/lang/String;

.field private _encoding:Ljava/lang/String;

.field private _encodingInfo:Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;

.field private _indent:I

.field private _lineSeparator:Ljava/lang/String;

.field private _lineWidth:I

.field private _mediaType:Ljava/lang/String;

.field private _method:Ljava/lang/String;

.field private _nonEscapingElements:[Ljava/lang/String;

.field private _omitComments:Z

.field private _omitDoctype:Z

.field private _omitXmlDeclaration:Z

.field private _preserve:Z

.field private _preserveEmptyAttributes:Z

.field private _standalone:Z

.field private _stripComments:Z

.field private _version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_indent:I

    const-string v1, "UTF-8"

    .line 3
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_encodingInfo:Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;

    .line 5
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_allowJavaNames:Z

    .line 6
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_omitXmlDeclaration:Z

    .line 7
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_omitDoctype:Z

    .line 8
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_omitComments:Z

    .line 9
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_stripComments:Z

    .line 10
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_standalone:Z

    const-string v1, "\n"

    .line 11
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    const/16 v1, 0x48

    .line 12
    iput v1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_lineWidth:I

    .line 13
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_preserve:Z

    .line 14
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_indent:I

    const-string v1, "UTF-8"

    .line 17
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_encodingInfo:Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;

    .line 19
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_allowJavaNames:Z

    .line 20
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_omitXmlDeclaration:Z

    .line 21
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_omitDoctype:Z

    .line 22
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_omitComments:Z

    .line 23
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_stripComments:Z

    .line 24
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_standalone:Z

    const-string v1, "\n"

    .line 25
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    const/16 v1, 0x48

    .line 26
    iput v1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_lineWidth:I

    .line 27
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_preserve:Z

    .line 28
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    .line 29
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->setIndenting(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_indent:I

    const-string v1, "UTF-8"

    .line 34
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_encodingInfo:Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;

    .line 36
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_allowJavaNames:Z

    .line 37
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_omitXmlDeclaration:Z

    .line 38
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_omitDoctype:Z

    .line 39
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_omitComments:Z

    .line 40
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_stripComments:Z

    .line 41
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_standalone:Z

    const-string v1, "\n"

    .line 42
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    const/16 v1, 0x48

    .line 43
    iput v1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_lineWidth:I

    .line 44
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_preserve:Z

    .line 45
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    .line 46
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->whichMethod(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    .line 47
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->whichDoctypePublic(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->whichDoctypeSystem(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->setDoctype(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getMethod()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->whichMediaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->setMediaType(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;-><init>(Lorg/w3c/dom/Document;)V

    .line 50
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->setIndenting(Z)V

    return-void
.end method

.method public static whichDoctypePublic(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    instance-of p0, p0, Lorg/w3c/dom/html/HTMLDocument;

    if-eqz p0, :cond_1

    const-string p0, "-//W3C//DTD XHTML 1.0 Strict//EN"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static whichDoctypeSystem(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    instance-of p0, p0, Lorg/w3c/dom/html/HTMLDocument;

    if-eqz p0, :cond_1

    const-string p0, "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static whichMediaType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "text/xml"

    return-object p0

    :cond_0
    const-string v0, "html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "text/html"

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "xhtml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    const-string v0, "text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "text/plain"

    return-object p0

    :cond_3
    const-string v0, "fop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "application/pdf"

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static whichMethod(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 6

    instance-of v0, p0, Lorg/w3c/dom/html/HTMLDocument;

    const-string v1, "html"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    const-string v0, "xml"

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "root"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "fop"

    return-object p0

    :cond_2
    return-object v0

    :cond_3
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_4

    return-object v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_6
    return-object v0
.end method


# virtual methods
.method public getCDataElements()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    return-object p0
.end method

.method public getDoctypePublic()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_doctypePublic:Ljava/lang/String;

    return-object p0
.end method

.method public getDoctypeSystem()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_doctypeSystem:Ljava/lang/String;

    return-object p0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    return-object p0
.end method

.method public getEncodingInfo()Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_encodingInfo:Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_allowJavaNames:Z

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/serialize/Encodings;->getEncodingInfo(Ljava/lang/String;Z)Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_encodingInfo:Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_encodingInfo:Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;

    return-object p0
.end method

.method public getIndent()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_indent:I

    return p0
.end method

.method public getIndenting()Z
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_indent:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLastPrintable()C
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xff

    return p0

    :cond_0
    const p0, 0xffff

    return p0
.end method

.method public getLineSeparator()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    return-object p0
.end method

.method public getLineWidth()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_lineWidth:I

    return p0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_mediaType:Ljava/lang/String;

    return-object p0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_method:Ljava/lang/String;

    return-object p0
.end method

.method public getNonEscapingElements()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    return-object p0
.end method

.method public getOmitComments()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_omitComments:Z

    return p0
.end method

.method public getOmitDocumentType()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_omitDoctype:Z

    return p0
.end method

.method public getOmitXMLDeclaration()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_omitXmlDeclaration:Z

    return p0
.end method

.method public getPreserveEmptyAttributes()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    return p0
.end method

.method public getPreserveSpace()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_preserve:Z

    return p0
.end method

.method public getStandalone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_standalone:Z

    return p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_version:Ljava/lang/String;

    return-object p0
.end method

.method public isCDataElement(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isNonEscapingElement(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public setAllowJavaNames(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_allowJavaNames:Z

    return-void
.end method

.method public setAllowJavaNames()Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_allowJavaNames:Z

    return p0
.end method

.method public setCDataElements([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_cdataElements:[Ljava/lang/String;

    return-void
.end method

.method public setDoctype(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_doctypePublic:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_doctypeSystem:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;->getIANAName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_encodingInfo:Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_encoding:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_encodingInfo:Lcom/sun/org/apache/xml/internal/serialize/EncodingInfo;

    return-void
.end method

.method public setIndent(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_indent:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_indent:I

    :goto_0
    return-void
.end method

.method public setIndenting(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    iput p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_indent:I

    const/16 p1, 0x48

    iput p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_lineWidth:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_indent:I

    iput p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_lineWidth:I

    :goto_0
    return-void
.end method

.method public setLineSeparator(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "\n"

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_lineSeparator:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setLineWidth(I)V
    .locals 0

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_lineWidth:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_lineWidth:I

    :goto_0
    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_mediaType:Ljava/lang/String;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_method:Ljava/lang/String;

    return-void
.end method

.method public setNonEscapingElements([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_nonEscapingElements:[Ljava/lang/String;

    return-void
.end method

.method public setOmitComments(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_omitComments:Z

    return-void
.end method

.method public setOmitDocumentType(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_omitDoctype:Z

    return-void
.end method

.method public setOmitXMLDeclaration(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_omitXmlDeclaration:Z

    return-void
.end method

.method public setPreserveEmptyAttributes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_preserveEmptyAttributes:Z

    return-void
.end method

.method public setPreserveSpace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_preserve:Z

    return-void
.end method

.method public setStandalone(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_standalone:Z

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serialize/OutputFormat;->_version:Ljava/lang/String;

    return-void
.end method
