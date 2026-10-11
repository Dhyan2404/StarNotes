.class public Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;
.super Lcom/sun/org/apache/xerces/internal/impl/XML11DocumentScannerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl$NS11ContentDriver;
    }
.end annotation


# instance fields
.field protected fBindNamespaces:Z

.field private fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;

.field protected fPerformValidation:Z

.field private fSawSpace:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XML11DocumentScannerImpl;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;

    return-object p0
.end method


# virtual methods
.method public createContentDriver()Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl$NS11ContentDriver;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl$NS11ContentDriver;-><init>(Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;)V

    return-object v0
.end method

.method public next()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerLastState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerLastState:I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->popContext()V

    :cond_0
    invoke-super {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->next()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerLastState:I

    return v0
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->fPerformValidation:Z

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    return-void
.end method

.method public scanAttribute(Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanQName(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "EqRequiredInAttribute"

    invoke-virtual {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipSpaces()Z

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getLength()I

    move-result v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->addAttributeNS(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getLength()I

    move-result v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget-object v3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->addAttribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getLength()I

    move-result v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "AttributeNotUnique"

    invoke-virtual {p0, v3, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v0, v2

    :goto_0
    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    if-nez v2, :cond_3

    move v8, v3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    move v8, v2

    :goto_1
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fTempString2:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v7, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v9, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/sun/org/apache/xerces/internal/impl/XML11DocumentScannerImpl;->scanAttributeValue(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Ljava/lang/String;ZLjava/lang/String;)Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->setValue(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fTempString2:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->setNonNormalizedValue(ILjava/lang/String;)V

    invoke-virtual {p1, v0, v3}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->setSpecified(IZ)V

    iget-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v4, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object v5, v3

    goto :goto_2

    :cond_4
    sget-object v5, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    sget-object v6, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v5, v6, :cond_6

    sget-object v7, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v5, v7, :cond_5

    if-ne v4, v6, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_d

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {p0, v3}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    goto :goto_6

    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CantBindXMLNS"

    const/4 v7, 0x2

    const-string v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    if-ne v5, v6, :cond_7

    if-ne v4, v6, :cond_7

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v3, v9, v7}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_7
    sget-object v5, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v2, v5, :cond_8

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v3, v9, v7}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_8
    sget-object v3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    const-string v5, "CantBindXML"

    if-ne v4, v3, :cond_9

    sget-object v3, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v2, v3, :cond_a

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v5, v9, v7}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_4

    :cond_9
    sget-object v3, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-ne v2, v3, :cond_a

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v5, v9, v7}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_a
    :goto_4
    if-eq v4, v6, :cond_b

    goto :goto_5

    :cond_b
    sget-object v4, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_5
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_c

    move-object v1, v2

    :cond_c
    invoke-interface {v3, v4, v1}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {p0, v6}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    :cond_d
    :goto_6
    return-void
.end method

.method public scanEndElement()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement()Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ETagRequired"

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ETagUnterminated"

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityDepth:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_2

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ElementEntityMismatch"

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_3
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;)V

    :cond_4
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    return p0
.end method

.method public scanStartElement()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanQName(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->pushContext()V

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v4, 0x1a

    if-ne v1, v4, :cond_1

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->fPerformValidation:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v4, "MSG_GRAMMAR_NOT_FOUND"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "RootElementTypeMustMatchDoctypedecl"

    invoke-virtual {v1, v2, v5, v4, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lcom/sun/org/apache/xerces/internal/xni/QName;)Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;->removeAllAttributes()V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v1

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->peekChar()I

    move-result v4

    const/16 v5, 0x3e

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ne v4, v5, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanChar()I

    move v0, v6

    goto :goto_1

    :cond_3
    const/16 v8, 0x2f

    const-string v9, "ElementUnterminated"

    if-ne v4, v8, :cond_14

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanChar()I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_4

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move v0, v3

    :goto_1
    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    sget-object v4, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    const-string v5, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "ElementXMLNSPrefix"

    invoke-virtual {v2, v5, v4, v1, v7}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_5
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v4, v2}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v4, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iput-object v4, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v4, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-nez v4, :cond_7

    iget-object v4, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eqz v4, :cond_7

    sget-object v4, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v4, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    iput-object v4, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    :cond_7
    iget-object v1, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v4, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ElementPrefixUnbound"

    invoke-virtual {v4, v5, v2, v1, v7}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_8
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getLength()I

    move-result v1

    :goto_3
    if-ge v6, v1, :cond_d

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v2, v6, v4}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getName(ILcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v2, :cond_9

    goto :goto_4

    :cond_9
    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_4
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v4, v2}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v9, v8, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_a

    if-ne v9, v4, :cond_a

    goto :goto_5

    :cond_a
    sget-object v9, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v2, v9, :cond_c

    iput-object v4, v8, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-nez v4, :cond_b

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v10, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v10, v10, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v8, v8, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v10, v8, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v8, "AttributePrefixUnbound"

    invoke-virtual {v9, v5, v8, v2, v7}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_b
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {v2, v6, v4}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    :cond_c
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_d
    if-le v1, v3, :cond_f

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->checkDuplicatesNS()Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v6, v6, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    filled-new-array {v6, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "AttributeNSNotUnique"

    invoke-virtual {v4, v5, v2, v1, v7}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_6

    :cond_e
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "AttributeNotUnique"

    invoke-virtual {v2, v5, v4, v1, v7}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_f
    :goto_6
    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityDepth:I

    sub-int/2addr v5, v3

    aget v4, v4, v5

    if-ge v2, v4, :cond_10

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "ElementEntityMismatch"

    invoke-virtual {p0, v4, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-interface {v2, v4, v5, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iput-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fScanEndElement:Z

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement()Lcom/sun/org/apache/xerces/internal/xni/QName;

    goto :goto_7

    :cond_11
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;

    if-eqz v2, :cond_12

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {v2, v3, v4}, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    :cond_12
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v2, :cond_13

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-interface {v2, v3, p0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_13
    :goto_7
    return v0

    :cond_14
    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xerces/internal/impl/XML11DocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v5

    if-eqz v5, :cond_15

    if-nez v1, :cond_17

    :cond_15
    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xerces/internal/impl/XML11DocumentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_16

    if-nez v1, :cond_17

    :cond_16
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v9, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->scanAttribute(Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getLength()I

    move-result v1

    iget v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementAttributeLimit:I

    if-le v1, v4, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "ElementAttributeLimit"

    invoke-virtual {v1, v2, v5, v4, v7}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto/16 :goto_0
.end method

.method public scanStartElementAfterName()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->pushContext()V

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v3, 0x1a

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->fPerformValidation:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v3, "MSG_GRAMMAR_NOT_FOUND"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v5, v3, v4, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "RootElementTypeMustMatchDoctypedecl"

    invoke-virtual {v1, v5, v4, v3, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->pushElement(Lcom/sun/org/apache/xerces/internal/xni/QName;)Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;->removeAllAttributes()V

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    const/16 v3, 0x3e

    const/4 v4, 0x0

    if-ne v1, v3, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanChar()I

    move v0, v4

    goto :goto_1

    :cond_2
    const/16 v5, 0x2f

    const-string v6, "ElementUnterminated"

    if-ne v1, v5, :cond_13

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanChar()I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_3

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move v0, v2

    :goto_1
    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    sget-object v5, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    const/4 v6, 0x2

    const-string v7, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "ElementXMLNSPrefix"

    invoke-virtual {v3, v7, v5, v1, v6}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_4
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v5, v3}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v5, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iput-object v5, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v5, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-nez v5, :cond_6

    iget-object v5, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eqz v5, :cond_6

    sget-object v5, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v5, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    iput-object v5, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    :cond_6
    iget-object v1, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v5, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "ElementPrefixUnbound"

    invoke-virtual {v5, v7, v3, v1, v6}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_7
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getLength()I

    move-result v1

    :goto_3
    if-ge v4, v1, :cond_c

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v3, v4, v5}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getName(ILcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    sget-object v3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_4
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v5, v3}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v9, v8, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_9

    if-ne v9, v5, :cond_9

    goto :goto_5

    :cond_9
    sget-object v9, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v3, v9, :cond_b

    iput-object v5, v8, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-nez v5, :cond_a

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v10, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v10, v10, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v8, v8, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v10, v8, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v8, "AttributePrefixUnbound"

    invoke-virtual {v9, v7, v8, v3, v6}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_a
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {v3, v4, v5}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    :cond_b
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    if-le v1, v2, :cond_e

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->checkDuplicatesNS()Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v5, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    filled-new-array {v5, v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "AttributeNSNotUnique"

    invoke-virtual {v4, v7, v3, v1, v6}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_6

    :cond_d
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "AttributeNotUnique"

    invoke-virtual {v3, v7, v4, v1, v6}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_e
    :goto_6
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v1, :cond_12

    const/4 v3, 0x0

    if-eqz v0, :cond_11

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityDepth:I

    sub-int/2addr v5, v2

    aget v2, v4, v5

    if-ge v1, v2, :cond_f

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ElementEntityMismatch"

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-interface {v1, v2, v4, v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->popContext()V

    :cond_10
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement()Lcom/sun/org/apache/xerces/internal/xni/QName;

    goto :goto_7

    :cond_11
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-interface {v1, v2, p0, v3}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_12
    :goto_7
    return v0

    :cond_13
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XML11DocumentScannerImpl;->isValidNameStartChar(I)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->fSawSpace:Z

    if-nez v3, :cond_16

    :cond_14
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XML11DocumentScannerImpl;->isValidNameStartHighSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->fSawSpace:Z

    if-nez v1, :cond_16

    :cond_15
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v6, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->scanAttribute(Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->fSawSpace:Z

    goto/16 :goto_0
.end method

.method public scanStartElementName()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanQName(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->fSawSpace:Z

    return-void
.end method

.method public setDTDValidator(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;

    return-void
.end method
