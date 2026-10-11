.class public Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;
.super Lorg/apache/xerces/impl/XML11DocumentScannerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;
    }
.end annotation


# instance fields
.field protected fBindNamespaces:Z

.field protected fPerformValidation:Z

.field public v0:Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

.field public w0:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;-><init>()V

    return-void
.end method

.method public static synthetic j(Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->v0:Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    return-object p0
.end method


# virtual methods
.method public createContentDispatcher()Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;
    .locals 1

    new-instance v0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;

    invoke-direct {v0, p0}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;-><init>(Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;)V

    return-object v0
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->fPerformValidation:Z

    iput-boolean p1, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    return-void
.end method

.method public scanAttribute(Lorg/apache/xerces/util/XMLAttributesImpl;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanQName(Lorg/apache/xerces/xni/QName;)Z

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "EqRequiredInAttribute"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-boolean v0, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v0

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    sget-object v3, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v1}, Lorg/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v0

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    sget-object v3, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v1}, Lorg/apache/xerces/util/XMLAttributesImpl;->addAttribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "AttributeNotUnique"

    invoke-virtual {p0, v3, v0}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString2:Lorg/apache/xerces/xni/XMLString;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v5, v2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-boolean v6, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fIsEntityDeclaredVC:Z

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v7, v2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->scanAttributeValue(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v3}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lorg/apache/xerces/util/XMLAttributesImpl;->setValue(ILjava/lang/String;)V

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fTempString2:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v2}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/apache/xerces/util/XMLAttributesImpl;->setNonNormalizedValue(ILjava/lang/String;)V

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lorg/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    iget-boolean v2, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v4, v2, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v5, v2

    goto :goto_1

    :cond_4
    sget-object v5, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v5, v6, :cond_6

    sget-object v7, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v5, v7, :cond_5

    if-ne v4, v6, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_d

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {p0, v2}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p1, v0, p0}, Lorg/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto :goto_6

    :cond_6
    :goto_3
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CantBindXMLNS"

    const/4 v7, 0x2

    const-string v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    if-ne v5, v6, :cond_7

    if-ne v4, v6, :cond_7

    iget-object v5, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v9, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v3, v9, v7}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_7
    sget-object v5, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v2, v5, :cond_8

    iget-object v5, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v9, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v3, v9, v7}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_8
    sget-object v3, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    const-string v5, "CantBindXML"

    if-ne v4, v3, :cond_9

    sget-object v3, Lorg/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v2, v3, :cond_a

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v9, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v5, v9, v7}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_4

    :cond_9
    sget-object v3, Lorg/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-ne v2, v3, :cond_a

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v9, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v5, v9, v7}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_a
    :goto_4
    if-eq v4, v6, :cond_b

    goto :goto_5

    :cond_b
    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_5
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_c

    move-object v1, v2

    :cond_c
    invoke-interface {v3, v4, v1}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {p0, v6}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_d
    :goto_6
    return-void
.end method

.method public scanEndElement()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lorg/apache/xerces/xni/QName;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ETagRequired"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ETagUnterminated"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ElementEntityMismatch"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    iget-boolean v0, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0}, Lorg/apache/xerces/xni/NamespaceContext;->popContext()V

    :cond_3
    iget p0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    return p0
.end method

.method public scanStartElement()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanQName(Lorg/apache/xerces/xni/QName;)Z

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lorg/apache/xerces/xni/NamespaceContext;->pushContext()V

    iget v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->fPerformValidation:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "MSG_GRAMMAR_NOT_FOUND"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v5, v3, v4, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "RootElementTypeMustMatchDoctypedecl"

    invoke-virtual {v1, v5, v4, v3, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v1, v3}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lorg/apache/xerces/xni/QName;)Lorg/apache/xerces/xni/QName;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    :goto_0
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v1

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v3

    const/16 v4, 0x3e

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move v0, v5

    goto :goto_1

    :cond_2
    const/16 v6, 0x2f

    const-string v7, "ElementUnterminated"

    if-ne v3, v6, :cond_13

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_3

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move v0, v2

    :goto_1
    iget-boolean v1, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v3, v1, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    const/4 v6, 0x2

    const-string v7, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "ElementXMLNSPrefix"

    invoke-virtual {v3, v7, v4, v1, v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v3, v1, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    sget-object v3, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v4, v3}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v4, v3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v4, v1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v4, v3, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v4, :cond_6

    iget-object v4, v3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v4, :cond_6

    sget-object v4, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v4, v3, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iput-object v4, v1, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    :cond_6
    iget-object v1, v3, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v4, v3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v4, :cond_7

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "ElementPrefixUnbound"

    invoke-virtual {v4, v7, v3, v1, v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_7
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v1

    :goto_3
    if-lt v5, v1, :cond_9

    if-le v1, v2, :cond_e

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLAttributesImpl;->checkDuplicatesNS()Lorg/apache/xerces/xni/QName;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v3, v1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v5, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    filled-new-array {v5, v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "AttributeNSNotUnique"

    invoke-virtual {v4, v7, v3, v1, v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_6

    :cond_8
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "AttributeNotUnique"

    invoke-virtual {v3, v7, v4, v1, v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_6

    :cond_9
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v3, v5, v4}, Lorg/apache/xerces/util/XMLAttributesImpl;->getName(ILorg/apache/xerces/xni/QName;)V

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_a
    sget-object v3, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_4
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v4, v3}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v9, v8, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_b

    if-ne v9, v4, :cond_b

    goto :goto_5

    :cond_b
    sget-object v9, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v3, v9, :cond_d

    iput-object v4, v8, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v4, :cond_c

    iget-object v9, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v10, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v10, v8, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v8, "AttributePrefixUnbound"

    invoke-virtual {v9, v7, v8, v3, v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_c
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3, v5, v4}, Lorg/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    :cond_d
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_e
    :goto_6
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_12

    const/4 v3, 0x0

    if-eqz v0, :cond_11

    iget v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v5, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    sub-int/2addr v5, v2

    aget v2, v4, v5

    if-ge v1, v2, :cond_f

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ElementEntityMismatch"

    invoke-virtual {p0, v2, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v1, v2, v4, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    iget-boolean v1, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lorg/apache/xerces/xni/NamespaceContext;->popContext()V

    :cond_10
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v1, p0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lorg/apache/xerces/xni/QName;)V

    goto :goto_7

    :cond_11
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v1, v2, p0, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_12
    :goto_7
    return v0

    :cond_13
    invoke-virtual {p0, v3}, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v4

    if-eqz v4, :cond_14

    if-nez v1, :cond_16

    :cond_14
    invoke-virtual {p0, v3}, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_15

    if-nez v1, :cond_16

    :cond_15
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->scanAttribute(Lorg/apache/xerces/util/XMLAttributesImpl;)V

    goto/16 :goto_0
.end method

.method public scanStartElementAfterName()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lorg/apache/xerces/xni/NamespaceContext;->pushContext()V

    iget v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->fPerformValidation:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "MSG_GRAMMAR_NOT_FOUND"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v5, v3, v4, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "RootElementTypeMustMatchDoctypedecl"

    invoke-virtual {v1, v5, v4, v3, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v1, v3}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lorg/apache/xerces/xni/QName;)Lorg/apache/xerces/xni/QName;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    :goto_0
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    const/16 v3, 0x3e

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move v0, v4

    goto :goto_1

    :cond_2
    const/16 v5, 0x2f

    const-string v6, "ElementUnterminated"

    if-ne v1, v5, :cond_13

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_3

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move v0, v2

    :goto_1
    iget-boolean v1, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v3, v1, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v5, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    const/4 v6, 0x2

    const-string v7, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "ElementXMLNSPrefix"

    invoke-virtual {v3, v7, v5, v1, v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v3, v1, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    sget-object v3, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    iget-object v5, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v5, v3}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v5, v3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v5, v1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v5, v3, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v5, :cond_6

    iget-object v5, v3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v5, :cond_6

    sget-object v5, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v5, v3, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iput-object v5, v1, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    :cond_6
    iget-object v1, v3, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v5, v3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v5, :cond_7

    iget-object v5, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "ElementPrefixUnbound"

    invoke-virtual {v5, v7, v3, v1, v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_7
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v1

    :goto_3
    if-lt v4, v1, :cond_9

    if-le v1, v2, :cond_e

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLAttributesImpl;->checkDuplicatesNS()Lorg/apache/xerces/xni/QName;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v3, v1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v5, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    filled-new-array {v5, v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "AttributeNSNotUnique"

    invoke-virtual {v4, v7, v3, v1, v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_6

    :cond_8
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "AttributeNotUnique"

    invoke-virtual {v3, v7, v4, v1, v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_6

    :cond_9
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    iget-object v5, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/util/XMLAttributesImpl;->getName(ILorg/apache/xerces/xni/QName;)V

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_a
    sget-object v3, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_4
    iget-object v5, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v5, v3}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v9, v8, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_b

    if-ne v9, v5, :cond_b

    goto :goto_5

    :cond_b
    sget-object v9, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v3, v9, :cond_d

    iput-object v5, v8, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v5, :cond_c

    iget-object v9, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v10, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v10, v8, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v8, "AttributePrefixUnbound"

    invoke-virtual {v9, v7, v8, v3, v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_c
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    :cond_d
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_e
    :goto_6
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_12

    const/4 v3, 0x0

    if-eqz v0, :cond_11

    iget v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v5, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    sub-int/2addr v5, v2

    aget v2, v4, v5

    if-ge v1, v2, :cond_f

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lorg/apache/xerces/xni/QName;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ElementEntityMismatch"

    invoke-virtual {p0, v2, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v1, v2, v4, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    iget-boolean v1, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lorg/apache/xerces/xni/NamespaceContext;->popContext()V

    :cond_10
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v1, p0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement(Lorg/apache/xerces/xni/QName;)V

    goto :goto_7

    :cond_11
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v1, v2, p0, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_12
    :goto_7
    return v0

    :cond_13
    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-boolean v3, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->w0:Z

    if-nez v3, :cond_16

    :cond_14
    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-boolean v1, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->w0:Z

    if-nez v1, :cond_16

    :cond_15
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v6, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {p0, v1}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->scanAttribute(Lorg/apache/xerces/util/XMLAttributesImpl;)V

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->w0:Z

    goto/16 :goto_0
.end method

.method public scanStartElementName()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanQName(Lorg/apache/xerces/xni/QName;)Z

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->w0:Z

    return-void
.end method

.method public setDTDValidator(Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->v0:Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    return-void
.end method
