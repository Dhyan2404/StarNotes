.class public Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;
.super Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl$NSContentDriver;
    }
.end annotation


# instance fields
.field protected fBindNamespaces:Z

.field private fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;

.field protected fNotAddNSDeclAsAttribute:Z

.field protected fPerformValidation:Z

.field private fXmlnsDeclared:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->fNotAddNSDeclAsAttribute:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->fXmlnsDeclared:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;

    return-object p0
.end method


# virtual methods
.method public createContentDriver()Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl$NSContentDriver;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl$NSContentDriver;-><init>(Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;)V

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

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

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

.method public reset(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->setPropertyManager(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    .line 2
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->reset(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    const-string v0, "add-namespacedecl-as-attrbiute"

    .line 4
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->fNotAddNSDeclAsAttribute:Z

    return-void
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .line 5
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->fNotAddNSDeclAsAttribute:Z

    .line 7
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->fPerformValidation:Z

    .line 8
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    return-void
.end method

.method public scanAttribute(Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;)V
    .locals 12
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

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    if-nez v0, :cond_1

    move v7, v8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getString()Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    move-result-object v0

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fTempString2:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v4, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    move-object v1, p0

    move-object v2, v0

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->scanAttributeValue(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;IZ)V

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    const-string v2, "AttributeNotUnique"

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v4, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    sget-object v5, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v1, v5, :cond_3

    sget-object v6, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v1, v6, :cond_f

    if-ne v4, v5, :cond_f

    :cond_3
    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-object v7, v0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    iget v9, v0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    iget v10, v0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    invoke-virtual {v6, v7, v9, v10}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v6

    const-string v7, "CantBindXMLNS"

    const/4 v9, 0x2

    const-string v10, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    if-ne v1, v5, :cond_4

    if-ne v4, v5, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v11, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v10, v7, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_4
    sget-object v1, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v6, v1, :cond_5

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v11, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v10, v7, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_5
    sget-object v1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    const-string v7, "CantBindXML"

    if-ne v4, v1, :cond_6

    sget-object v1, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v6, v1, :cond_7

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v11, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v10, v7, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-ne v6, v1, :cond_7

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v11, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v10, v7, v11, v9}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_7
    :goto_2
    if-eq v4, v5, :cond_8

    move-object v1, v4

    goto :goto_3

    :cond_8
    sget-object v1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_3
    sget-object v7, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v1, v7, :cond_9

    if-ne v4, v5, :cond_9

    iget-object v11, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object v5, v11, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    :cond_9
    if-ne v6, v7, :cond_a

    if-eq v4, v5, :cond_a

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "EmptyPrefixedAttName"

    invoke-virtual {v4, v10, v7, v5, v9}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_a
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    check-cast v4, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->containsPrefixInCurrentContext(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v5, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_c

    move-object v5, v6

    goto :goto_4

    :cond_c
    move-object v5, v3

    :goto_4
    invoke-interface {v4, v1, v5}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->fXmlnsDeclared:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    iput-boolean v8, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->fXmlnsDeclared:Z

    :cond_e
    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->fNotAddNSDeclAsAttribute:Z

    if-eqz v1, :cond_10

    return-void

    :cond_f
    move-object v6, v3

    :cond_10
    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v1, :cond_11

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getLength()I

    move-result v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget-object v4, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    invoke-virtual {p1, v2, v4, v3}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->addAttributeNS(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getLength()I

    move-result v1

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget-object v5, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v3}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->addAttribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getLength()I

    move-result v4

    if-ne v1, v4, :cond_12

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    move v1, v3

    :goto_5
    invoke-virtual {p1, v1, v6, v0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->setValue(ILjava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;)V

    invoke-virtual {p1, v1, v8}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->setSpecified(IZ)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    :cond_13
    return-void
.end method

.method public scanStartElement()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSkip:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAdd:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->getNext()Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSkip:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->push()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->reposition()V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSkip:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAdd:Z

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->nextElement()Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fNamespaces:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanQName(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v2, v1, v0, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAdd:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->matchElement(Lcom/sun/org/apache/xerces/internal/xni/QName;)Z

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v2}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->pushContext()V

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v5, 0x1a

    if-ne v2, v5, :cond_7

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->fPerformValidation:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v5, "MSG_GRAMMAR_NOT_FOUND"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v3, v5, v6, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    filled-new-array {v5, v0}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "RootElementTypeMustMatchDoctypedecl"

    invoke-virtual {v2, v3, v6, v5, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_7
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEmptyElement:Z

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {v5}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;->removeAllAttributes()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->seekCloseOfStartTag()Z

    move-result v5

    const/4 v6, 0x2

    if-nez v5, :cond_a

    iput-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fReadingAttributes:Z

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fAttributeCacheUsedCount:I

    iput v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fStringBufferIndex:I

    iput-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAddDefaultAttr:Z

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->fXmlnsDeclared:Z

    :cond_8
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {p0, v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->scanAttribute(Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;)V

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {v5}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getLength()I

    move-result v5

    iget v7, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementAttributeLimit:I

    if-le v5, v7, :cond_9

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    new-instance v7, Ljava/lang/Integer;

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {v8}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getLength()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "ElementAttributeLimit"

    invoke-virtual {v5, v3, v8, v7, v6}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_9
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->seekCloseOfStartTag()Z

    move-result v5

    if-eqz v5, :cond_8

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fReadingAttributes:Z

    :cond_a
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    sget-object v5, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    const-string v7, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    if-ne v3, v5, :cond_b

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "ElementXMLNSPrefix"

    invoke-virtual {v3, v7, v5, v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_b
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v3, :cond_c

    goto :goto_2

    :cond_c
    sget-object v3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v5, v3}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v5, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iput-object v5, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v0, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-nez v0, :cond_d

    iget-object v0, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    iput-object v0, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    :cond_d
    iget-object v0, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v5, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "ElementPrefixUnbound"

    invoke-virtual {v5, v7, v3, v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_e
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getLength()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_13

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-virtual {v3, v2, v5}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getName(ILcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v3, :cond_f

    goto :goto_4

    :cond_f
    sget-object v3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_4
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-interface {v5, v3}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v9, v8, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_10

    if-ne v9, v5, :cond_10

    goto :goto_5

    :cond_10
    sget-object v9, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v3, v9, :cond_12

    iput-object v5, v8, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-nez v5, :cond_11

    iget-object v9, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v10, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v10, v10, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v8, v8, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v10, v8, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v8, "AttributePrefixUnbound"

    invoke-virtual {v9, v7, v8, v3, v6}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_11
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {v3, v2, v5}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->setURI(ILjava/lang/String;)V

    :cond_12
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_13
    if-le v0, v4, :cond_15

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->checkDuplicatesNS()Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v5, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    filled-new-array {v5, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "AttributeNSNotUnique"

    invoke-virtual {v3, v7, v2, v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_6

    :cond_14
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "AttributeNotUnique"

    invoke-virtual {v2, v7, v3, v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_15
    :goto_6
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEmptyElement:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEntityStack:[I

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityDepth:I

    sub-int/2addr v3, v4

    aget v2, v2, v3

    if-ge v0, v2, :cond_16

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fCurrentElement:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "ElementEntityMismatch"

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_17

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-interface {v0, v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_17
    iput-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fScanEndElement:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementStack:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$ElementStack;->popElement()Lcom/sun/org/apache/xerces/internal/xni/QName;

    goto :goto_7

    :cond_18
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;

    if-eqz v0, :cond_19

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-virtual {v0, v2, v3}, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;)V

    :cond_19
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1a

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    invoke-interface {v0, v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_1a
    :goto_7
    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEmptyElement:Z

    return p0
.end method

.method public setDTDValidator(Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->fDTDValidator:Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;

    return-void
.end method
