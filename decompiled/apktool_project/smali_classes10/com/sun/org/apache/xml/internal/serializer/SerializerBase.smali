.class public abstract Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;
.implements Lcom/sun/org/apache/xml/internal/serializer/SerializerConstants;


# instance fields
.field protected m_attrBuff:[C

.field protected m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

.field protected m_cdataSectionElements:Ljava/util/Vector;

.field protected m_cdataTagOpen:Z

.field protected m_charsBuff:[C

.field protected m_doIndent:Z

.field private m_doctypePublic:Ljava/lang/String;

.field private m_doctypeSystem:Ljava/lang/String;

.field protected m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

.field private m_encoding:Ljava/lang/String;

.field protected m_inEntityRef:Z

.field protected m_inExternalDTD:Z

.field protected m_indentAmount:I

.field private m_locator:Lorg/xml/sax/Locator;

.field private m_mediatype:Ljava/lang/String;

.field protected m_needToCallSetDocumentInfo:Z

.field protected m_needToCallStartDocument:Z

.field m_needToOutputDocTypeDecl:Z

.field protected m_prefixMap:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

.field private m_shouldNotWriteXMLHeader:Z

.field protected m_sourceLocator:Ljavax/xml/transform/SourceLocator;

.field private m_standalone:Ljava/lang/String;

.field protected m_standaloneWasSpecified:Z

.field protected m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

.field private m_transformer:Ljavax/xml/transform/Transformer;

.field private m_version:Ljava/lang/String;

.field protected m_writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataTagOpen:Z

    new-instance v2, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-direct {v2}, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_inEntityRef:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_inExternalDTD:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_encoding:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_shouldNotWriteXMLHeader:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_standaloneWasSpecified:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doIndent:Z

    iput v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_indentAmount:I

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_version:Ljava/lang/String;

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataSectionElements:Ljava/util/Vector;

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    new-instance v1, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    invoke-direct {v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    const/16 v1, 0x3c

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    const/16 v1, 0x1e

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attrBuff:[C

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_locator:Lorg/xml/sax/Locator;

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallSetDocumentInfo:Z

    return-void
.end method

.method private flushMyWriter()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static getLocalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final getPrefixPart(Ljava/lang/String;)Ljava/lang/String;
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

.method private resetSerializerBase()V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataSectionElements:Ljava/util/Vector;

    new-instance v1, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    invoke-direct {v1}, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doctypePublic:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doctypeSystem:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doIndent:Z

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_encoding:Ljava/lang/String;

    iput v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_indentAmount:I

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_inEntityRef:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_inExternalDTD:Z

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_mediatype:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_prefixMap:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->reset()V

    :cond_0
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_shouldNotWriteXMLHeader:Z

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_standalone:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_standaloneWasSpecified:Z

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_version:Ljava/lang/String;

    return-void
.end method

.method private static final subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->patchName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, v4, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v5, "CDATA"

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, p2

    .line 7
    invoke-virtual/range {v1 .. v7}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 9
    invoke-virtual/range {v1 .. v7}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p6}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p6

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    iget-object p6, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-virtual {p6, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p6

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p6, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-virtual {p6, p3}, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->getIndex(Ljava/lang/String;)I

    move-result p6

    :goto_1
    if-ltz p6, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-virtual {p0, p6, p5}, Lorg/xml/sax/helpers/AttributesImpl;->setValue(ILjava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public addAttributes(Lorg/xml/sax/Attributes;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    move-object v4, v2

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addXSLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-boolean v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->patchName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "CDATA"

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p3

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method public asContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p0
.end method

.method public asDOMSerializer()Lcom/sun/org/apache/xml/internal/serializer/DOMSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p0
.end method

.method public characters(Lorg/w3c/dom/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->flushPending()V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    invoke-interface {p0, p1, v2, v0}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_1
    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_charsBuff:[C

    invoke-interface {p0, p1, v2, v0}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "[dtd]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_inExternalDTD:Z

    :cond_0
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_inEntityRef:Z

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireEndEntity(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public entityReference(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->flushPending()V

    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->endEntity(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireEntityReference(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_startTagOpen:Z

    return-void
.end method

.method public fireCDATAEvent([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->flushMyWriter()V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    const/16 v0, 0xa

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V

    :cond_0
    return-void
.end method

.method public fireCharEvent([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->flushMyWriter()V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    const/4 v0, 0x5

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V

    :cond_0
    return-void
.end method

.method public fireCommentEvent([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->flushMyWriter()V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    const/16 p1, 0x8

    invoke-interface {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public fireEndDoc()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->flushMyWriter()V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;->fireGenerateEvent(I)V

    :cond_0
    return-void
.end method

.method public fireEndElem(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->flushMyWriter()V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_0
    return-void
.end method

.method public fireEndEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->flushMyWriter()V

    :cond_0
    return-void
.end method

.method public fireEntityReference(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->flushMyWriter()V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_0
    return-void
.end method

.method public fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->flushMyWriter()V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    const/4 v0, 0x7

    invoke-interface {p0, v0, p1, p2}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public fireStartDoc()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->flushMyWriter()V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;->fireGenerateEvent(I)V

    :cond_0
    return-void
.end method

.method public fireStartElem(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->flushMyWriter()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_attributes:Lcom/sun/org/apache/xml/internal/serializer/AttributesImplSerializer;

    invoke-interface {v0, v1, p1, p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_0
    return-void
.end method

.method public fireStartEntity(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->flushMyWriter()V

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    const/16 v0, 0x9

    invoke-interface {p0, v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getDoctypePublic()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doctypePublic:Ljava/lang/String;

    return-object p0
.end method

.method public getDoctypeSystem()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doctypeSystem:Ljava/lang/String;

    return-object p0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_encoding:Ljava/lang/String;

    return-object p0
.end method

.method public getIndent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doIndent:Z

    return p0
.end method

.method public getIndentAmount()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_indentAmount:I

    return p0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_mediatype:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceMappings()Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_prefixMap:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    return-object p0
.end method

.method public getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    if-lez v0, :cond_0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_3

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_prefixMap:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string p0, "xmlns"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    sget-object p2, Lcom/sun/org/apache/xml/internal/serializer/utils/Utils;->messages:Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_NAMESPACE_PREFIX"

    invoke-virtual {p2, v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-object v2
.end method

.method public getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_prefixMap:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getOmitXMLDeclaration()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_shouldNotWriteXMLHeader:Z

    return p0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_prefixMap:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStandalone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_standalone:Ljava/lang/String;

    return-object p0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_version:Ljava/lang/String;

    return-object p0
.end method

.method public final inTemporaryOutputState()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initCDATA()V
    .locals 0

    return-void
.end method

.method public isCdataSection()Z
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataSectionElements:Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_prefixMap:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataSectionElements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataSectionElements:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_cdataSectionElements:Ljava/util/Vector;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-object v5, v5, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_elemContext:Lcom/sun/org/apache/xml/internal/serializer/ElemContext;

    iget-object v4, v4, Lcom/sun/org/apache/xml/internal/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public patchName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_prefixMap:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    return-object v4

    :cond_0
    if-eq v2, v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public reset()Z
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->resetSerializerBase()V

    const/4 p0, 0x1

    return p0
.end method

.method public setDTDEntityExpansion(Z)V
    .locals 0

    return-void
.end method

.method public setDoctype(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doctypeSystem:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doctypePublic:Ljava/lang/String;

    return-void
.end method

.method public setDoctypePublic(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doctypePublic:Ljava/lang/String;

    return-void
.end method

.method public setDoctypeSystem(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doctypeSystem:Ljava/lang/String;

    return-void
.end method

.method public setDocumentInfo()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_locator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    check-cast v0, Lorg/xml/sax/ext/Locator2;

    invoke-interface {v0}, Lorg/xml/sax/ext/Locator2;->getXMLVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_locator:Lorg/xml/sax/Locator;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_encoding:Ljava/lang/String;

    return-void
.end method

.method public setIndent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_doIndent:Z

    return-void
.end method

.method public setIndentAmount(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_indentAmount:I

    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_mediatype:Ljava/lang/String;

    return-void
.end method

.method public setNamespaceMappings(Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_prefixMap:Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    return-void
.end method

.method public setOmitXMLDeclaration(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_shouldNotWriteXMLHeader:Z

    return-void
.end method

.method public setSourceLocator(Ljavax/xml/transform/SourceLocator;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    return-void
.end method

.method public setStandalone(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_standaloneWasSpecified:Z

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->setStandaloneInternal(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setStandaloneInternal(Ljava/lang/String;)V
    .locals 1

    const-string v0, "yes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_standalone:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "no"

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_standalone:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setTransformer(Ljavax/xml/transform/Transformer;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    instance-of v0, p1, Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    invoke-interface {p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;->hasTraceListeners()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    check-cast p1, Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    :goto_0
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_version:Ljava/lang/String;

    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->startDocumentInternal()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_needToCallStartDocument:Z

    return-void
.end method

.method public startDocumentInternal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->m_tracer:Lcom/sun/org/apache/xml/internal/serializer/SerializerTrace;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerBase;->fireStartDoc()V

    :cond_0
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method
