.class public Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;
.super Lorg/apache/xerces/impl/xs/opti/DefaultXMLDocumentHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;
    }
.end annotation


# static fields
.field public static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field public static final GENERATE_SYNTHETIC_ANNOTATION:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"


# instance fields
.field protected fLocator:Lorg/apache/xerces/xni/XMLLocator;

.field protected fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

.field public h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

.field public i:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

.field public j:Lorg/apache/xerces/impl/xs/opti/ElementImpl;

.field public k:I

.field public l:I

.field public m:I

.field public n:Lorg/apache/xerces/impl/XMLErrorReporter;

.field public o:Z

.field public p:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;

.field public q:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;

.field public r:Lorg/apache/xerces/xni/XMLAttributes;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xerces/impl/xs/opti/DefaultXMLDocumentHandler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->k:I

    iput v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->l:I

    iput v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->m:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->o:Z

    new-instance v0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;

    invoke-direct {v0}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->p:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;

    new-instance v0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;

    invoke-direct {v0}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->q:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;

    new-instance v0, Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v0}, Lorg/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->r:Lorg/apache/xerces/xni/XMLAttributes;

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->i:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {p1, p0}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    invoke-interface {p1, p0}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    invoke-interface {p1, p0}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    return-void
.end method


# virtual methods
.method public characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget p2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->l:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    iget p2, p1, Lorg/apache/xerces/xni/XMLString;->offset:I

    :goto_0
    iget v0, p1, Lorg/apache/xerces/xni/XMLString;->offset:I

    iget v1, p1, Lorg/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    aget-char v0, v0, p2

    invoke-static {v0}, Lorg/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget v2, p1, Lorg/apache/xerces/xni/XMLString;->length:I

    iget p1, p1, Lorg/apache/xerces/xni/XMLString;->offset:I

    add-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-direct {v0, v1, p2, v2}, Ljava/lang/String;-><init>([CII)V

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->n:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    const-string v5, "http://www.w3.org/TR/xml-schema-1"

    const-string v6, "s4s-elt-character"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->a(Lorg/apache/xerces/xni/XMLString;)V

    :goto_1
    return-void
.end method

.method public comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget p2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->k:I

    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->c(Lorg/apache/xerces/xni/XMLString;)V

    :cond_0
    return-void
.end method

.method public emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->o:Z

    const/4 v0, -0x1

    if-eqz p3, :cond_2

    iget p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->k:I

    if-ne p3, v0, :cond_2

    iget-object p3, p1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne p3, v1, :cond_2

    iget-object p3, p1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    if-eq p3, v2, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->o(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {p3}, Lorg/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v6

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {p3}, Lorg/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v7

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {p3}, Lorg/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v8

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;III)Lorg/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-interface {p2}, Lorg/apache/xerces/xni/XMLAttributes;->removeAllAttributes()V

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {p1, v1}, Lorg/apache/xerces/xni/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v0, 0x3a

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-virtual {p3, v2, p2, v1}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->p(Ljava/lang/String;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/NamespaceContext;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_1

    sget-object p1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object p1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {p3, p1, p2}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->s(Ljava/lang/String;Lorg/apache/xerces/xni/XMLAttributes;)V

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    const-string p3, "SYNTHETIC_ANNOTATION"

    invoke-virtual {p2, p3}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->h(Ljava/lang/String;Z)V

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    const/4 p2, 0x1

    invoke-virtual {p1, v2, p2}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->h(Ljava/lang/String;Z)V

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->endElement()V

    return-void

    :cond_2
    iget p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->k:I

    if-ne p3, v0, :cond_3

    iget-object p3, p1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne p3, v1, :cond_4

    iget-object p3, p1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    if-ne p3, v1, :cond_4

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-virtual {p3, p1, p2, v1}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->q(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/NamespaceContext;)V

    goto :goto_2

    :cond_3
    iget-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {p3, p1, p2}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->t(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;)V

    :cond_4
    :goto_2
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {p3}, Lorg/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v4

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {p3}, Lorg/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v5

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {p3}, Lorg/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;III)Lorg/apache/xerces/impl/xs/opti/ElementImpl;

    move-result-object p2

    iget p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->k:I

    if-ne p3, v0, :cond_5

    iget-object p3, p1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne p3, v0, :cond_6

    iget-object p3, p1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v0, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    if-ne p3, v0, :cond_6

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->d(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/impl/xs/opti/ElementImpl;)V

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->g(Lorg/apache/xerces/xni/QName;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public endCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->k:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->e()V

    :cond_0
    return-void
.end method

.method public endDocument(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget p2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->k:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-le p2, v1, :cond_2

    iget v2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->l:I

    iget v3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->m:I

    if-ne v2, v3, :cond_0

    iput v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->l:I

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {p2, p1}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->g(Lorg/apache/xerces/xni/QName;)V

    goto/16 :goto_2

    :cond_0
    if-ne p2, v3, :cond_1

    iput v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->k:I

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->j:Lorg/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-virtual {p2, p1, v1}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->d(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/impl/xs/opti/ElementImpl;)V

    goto/16 :goto_2

    :cond_1
    iget-object p2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {p2, p1}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->g(Lorg/apache/xerces/xni/QName;)V

    goto/16 :goto_3

    :cond_2
    iget-object p1, p1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object p2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne p1, p2, :cond_5

    iget-boolean p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->o:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->p:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;->c()Z

    move-result p1

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->q:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;->c()Z

    move-result v1

    if-eqz p1, :cond_5

    if-nez v1, :cond_5

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {p1, p2}, Lorg/apache/xerces/xni/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v1, 0x3a

    if-nez p2, :cond_3

    sget-object p2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object v2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->r:Lorg/apache/xerces/xni/XMLAttributes;

    iget-object v4, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v2, p2, v3, v4}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->p(Ljava/lang/String;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/NamespaceContext;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    sget-object p1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object p1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->r:Lorg/apache/xerces/xni/XMLAttributes;

    invoke-virtual {v1, p1, v2}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->s(Ljava/lang/String;Lorg/apache/xerces/xni/XMLAttributes;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    const-string v2, "SYNTHETIC_ANNOTATION"

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->h(Ljava/lang/String;Z)V

    iget-object p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {p1, p2, v0}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->h(Ljava/lang/String;Z)V

    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->endElement()V

    :goto_3
    iget p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->m:I

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->m:I

    return-void
.end method

.method public getDocument()Lorg/w3c/dom/Document;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->i:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->i:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget p2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->k:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {p0, p1}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->a(Lorg/apache/xerces/xni/XMLString;)V

    :cond_0
    return-void
.end method

.method public final o(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;)Z
    .locals 4

    invoke-interface {p2}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p2, v1}, Lorg/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    sget-object v3, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    sget-object v3, Lorg/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-ne v2, v3, :cond_1

    invoke-interface {p2, v1}, Lorg/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    if-ne v2, v3, :cond_1

    iget-object v2, p1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_SCHEMA:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public parse(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->i:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->parse(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->k:I

    const/4 v0, -0x1

    if-le p3, v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->m(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->i:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    check-cast p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->reset()V

    return-void
.end method

.method public resetNodePool()V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->i:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    check-cast p0, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/opti/SchemaParsingConfig;->resetNodePool()V

    return-void
.end method

.method public setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->i:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, p1}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->i:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, p1, p2}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->i:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {p0, p1, p2}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->k:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {p0}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->r()V

    :cond_0
    return-void
.end method

.method public startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->i:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string p4, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p2, p4}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xerces/impl/XMLErrorReporter;

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->n:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->i:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string p4, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-interface {p2, p4}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->o:Z

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->p:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;->a()V

    iget-object p2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->q:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;

    invoke-virtual {p2}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;->a()V

    new-instance p2, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-direct {p2}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;-><init>()V

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    const/4 p4, 0x0

    iput-object p4, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->j:Lorg/apache/xerces/impl/xs/opti/ElementImpl;

    const/4 p4, -0x1

    iput p4, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->k:I

    iput p4, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->l:I

    iput p4, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->m:I

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    iput-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {p1}, Lorg/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/xerces/impl/xs/opti/DefaultDocument;->setDocumentURI(Ljava/lang/String;)V

    return-void
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->m:I

    const/4 v0, 0x1

    add-int/2addr p3, v0

    iput p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->m:I

    iget v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->k:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget-object p3, p1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lorg/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne p3, v1, :cond_2

    iget-object v2, p1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v3, Lorg/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    if-ne v2, v3, :cond_2

    iget-boolean p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->o:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->q:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;

    invoke-virtual {p3}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;->e()I

    move-result p3

    if-lez p3, :cond_0

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->q:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;

    invoke-virtual {p3}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;->c()Z

    :cond_0
    iget-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->q:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;

    invoke-virtual {p3, v0}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;->d(Z)V

    :cond_1
    iget p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->m:I

    iput p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->k:I

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-virtual {p3, p1, p2, v0}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->q(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/NamespaceContext;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {p3}, Lorg/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v4

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {p3}, Lorg/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v5

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {p3}, Lorg/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;III)Lorg/apache/xerces/impl/xs/opti/ElementImpl;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->j:Lorg/apache/xerces/impl/xs/opti/ElementImpl;

    return-void

    :cond_2
    if-ne p3, v1, :cond_4

    iget-boolean p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->o:Z

    if-eqz p3, :cond_4

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->q:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;->d(Z)V

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->p:Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->o(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;)Z

    move-result v0

    invoke-virtual {p3, v0}, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser$a;->d(Z)V

    goto :goto_0

    :cond_3
    add-int/2addr v1, v0

    if-ne p3, v1, :cond_5

    iput p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->l:I

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {p3, p1, p2}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->t(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {p3}, Lorg/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v3

    iget-object p3, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {p3}, Lorg/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v4

    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {p0}, Lorg/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;III)Lorg/apache/xerces/impl/xs/opti/ElementImpl;

    return-void

    :cond_5
    iget-object p0, p0, Lorg/apache/xerces/impl/xs/opti/SchemaDOMParser;->h:Lorg/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xerces/impl/xs/opti/SchemaDOM;->t(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;)V

    return-void
.end method
