.class public Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;
.super Lcom/sun/org/apache/xerces/internal/impl/xs/opti/DefaultXMLDocumentHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;
    }
.end annotation


# static fields
.field public static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field public static final GENERATE_SYNTHETIC_ANNOTATION:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"


# instance fields
.field config:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

.field private fAnnotationDepth:I

.field private fDepth:I

.field private fEmptyAttr:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

.field fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

.field private fGenerateSyntheticAnnotation:Z

.field private fHasNonSchemaAttributes:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;

.field private fInnerAnnotationDepth:I

.field protected fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

.field protected fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

.field private fSawAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;

.field schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/DefaultXMLDocumentHandler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fDepth:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fHasNonSchemaAttributes:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fEmptyAttr:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->config:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    return-void
.end method

.method private hasNonSchemaAttributes(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)Z
    .locals 4

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_2

    invoke-interface {p2, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    invoke-interface {p2, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_SCHEMA:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget p2, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    :goto_0
    iget v0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    iget v1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_2

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    aget-char v0, v0, p2

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isSpace(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    iget v2, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    iget p1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    add-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-direct {v0, v1, p2, v2}, Ljava/lang/String;-><init>([CII)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string p1, "s4s-elt-character"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "http://www.w3.org/TR/xml-schema-1"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;)V

    :cond_0
    return-void
.end method

.method public emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz p3, :cond_2

    iget p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    if-ne p3, v2, :cond_2

    iget-object p3, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne p3, v3, :cond_2

    iget-object p3, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    if-eq p3, v4, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->hasNonSchemaAttributes(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getLineNumber()I

    move-result v8

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getColumnNumber()I

    move-result v9

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getCharacterOffset()I

    move-result v10

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v5 .. v10}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;III)V

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->removeAllAttributes()V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {p1, v3}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ""

    const-string v7, ":"

    if-nez v5, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    move-object v5, v7

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, p1, v4, v2, v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-virtual {v2, p3, p2, v4}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->startAnnotation(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    new-instance v2, Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v7

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p1, v4, v5, v3}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p1, v2, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->startAnnotationElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    new-instance p2, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    const-string v3, "SYNTHETIC_ANNOTATION"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/16 v4, 0x14

    invoke-direct {p2, v3, v1, v4}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;-><init>([CII)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p1, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->endSyntheticAnnotationElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Z)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p1, p3, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->endSyntheticAnnotationElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Z)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->endElement()V

    return-void

    :cond_2
    iget p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    if-ne p3, v2, :cond_3

    iget-object p3, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne p3, v3, :cond_4

    iget-object p3, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    if-ne p3, v3, :cond_4

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-virtual {p3, p1, p2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->startAnnotation(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    goto :goto_2

    :cond_3
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p3, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->startAnnotationElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getLineNumber()I

    move-result v6

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getColumnNumber()I

    move-result v7

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getCharacterOffset()I

    move-result v8

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;III)V

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    if-ne p2, v2, :cond_5

    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    sget-object p3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne p2, p3, :cond_6

    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    sget-object p3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    if-ne p2, p3, :cond_6

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->endAnnotationElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Z)V

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->endAnnotationElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Z)V

    :cond_6
    :goto_3
    return-void
.end method

.method public endCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->endAnnotationCDATA()V

    :cond_0
    return-void
.end method

.method public endDocument(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le p2, v2, :cond_2

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    iget v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fDepth:I

    if-ne v3, v4, :cond_0

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p2, p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->endAnnotationElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Z)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->endElement()V

    goto/16 :goto_2

    :cond_0
    if-ne p2, v4, :cond_1

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p2, p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->endAnnotationElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Z)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->endElement()V

    goto/16 :goto_2

    :cond_1
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p2, p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->endAnnotationElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Z)V

    goto/16 :goto_2

    :cond_2
    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    sget-object p2, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne p1, p2, :cond_5

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fHasNonSchemaAttributes:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;->pop()Z

    move-result p1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;->pop()Z

    move-result v2

    if-eqz p1, :cond_5

    if-nez v2, :cond_5

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ""

    const-string v7, ":"

    if-nez v5, :cond_3

    move-object v5, v6

    goto :goto_0

    :cond_3
    move-object v5, v7

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4, p2}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fEmptyAttr:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-virtual {v3, v2, v4, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->startAnnotation(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    new-instance v3, Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    move-object v6, v7

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p1, v4, v5, p2}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fEmptyAttr:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-virtual {p1, v3, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->startAnnotationElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    new-instance p2, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    const-string v4, "SYNTHETIC_ANNOTATION"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/16 v5, 0x14

    invoke-direct {p2, v4, v1, v5}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;-><init>([CII)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p1, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->endSyntheticAnnotationElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Z)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p1, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->endSyntheticAnnotationElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Z)V

    :cond_5
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->endElement()V

    :goto_2
    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fDepth:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fDepth:I

    return-void
.end method

.method public getDocument()Lorg/w3c/dom/Document;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    return-object p0
.end method

.method public getDocument2()Lorg/w3c/dom/Document;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->config:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->config:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->config:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;)V

    :cond_0
    return-void
.end method

.method public parse(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->config:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->parse(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v0, -0x1

    if-le p3, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->config:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->reset()V

    return-void
.end method

.method public resetNodePool()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->config:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaParsingConfig;->resetNodePool()V

    return-void
.end method

.method public setEntityResolver(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->config:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setEntityResolver(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->config:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->config:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->startAnnotationCDATA()V

    :cond_0
    return-void
.end method

.method public startDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->config:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string p4, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p2, p4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->config:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string p4, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-interface {p2, p4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fHasNonSchemaAttributes:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;->clear()V

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;->clear()V

    new-instance p2, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-direct {p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    const/4 p4, -0x1

    iput p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    iput p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    iput p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fDepth:I

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/DefaultDocument;->setDocumentURI(Ljava/lang/String;)V

    return-void
.end method

.method public startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fDepth:I

    const/4 v0, 0x1

    add-int/2addr p3, v0

    iput p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fDepth:I

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget-object p3, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne p3, v1, :cond_2

    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    if-ne v2, v3, :cond_2

    iget-boolean p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;->size()I

    move-result p3

    if-lez p3, :cond_0

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;->pop()Z

    :cond_0
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {p3, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;->push(Z)V

    :cond_1
    iget p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fDepth:I

    iput p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-virtual {p3, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->startAnnotation(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    goto :goto_0

    :cond_2
    if-ne p3, v1, :cond_4

    iget-boolean p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;->push(Z)V

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fHasNonSchemaAttributes:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->hasNonSchemaAttributes(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)Z

    move-result v0

    invoke-virtual {p3, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser$BooleanStack;->push(Z)V

    goto :goto_0

    :cond_3
    add-int/2addr v1, v0

    if-ne p3, v1, :cond_5

    iput p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p3, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->startAnnotationElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getLineNumber()I

    move-result v3

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getColumnNumber()I

    move-result v4

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->fLocator:Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;->getCharacterOffset()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;III)V

    return-void

    :cond_5
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOM;->startAnnotationElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    return-void
.end method
