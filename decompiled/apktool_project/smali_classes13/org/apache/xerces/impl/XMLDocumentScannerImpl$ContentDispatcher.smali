.class public Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;
.super Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/XMLDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentDispatcher"
.end annotation


# instance fields
.field public final synthetic b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$FragmentContentDispatcher;-><init>(Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;)V

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    return-void
.end method


# virtual methods
.method public elementDepthIsZeroHook()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fTrailingMiscDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDispatcher(Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    const/4 p0, 0x1

    return p0
.end method

.method public endOfFileHook(Ljava/io/EOFException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string p1, "PrematureEOF"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public resolveExternalSubsetAndRead()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v0}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->i(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)Lorg/apache/xerces/impl/dtd/XMLDTDDescription;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityManager;->getCurrentResourceIdentifier()Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v0}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->i(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)Lorg/apache/xerces/impl/dtd/XMLDTDDescription;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->setRootName(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fExternalSubsetResolver:Lorg/apache/xerces/impl/ExternalSubsetResolver;

    invoke-static {v0}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->i(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)Lorg/apache/xerces/impl/dtd/XMLDTDDescription;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/xerces/impl/ExternalSubsetResolver;->getExternalSubset(Lorg/apache/xerces/xni/grammars/XMLDTDDescription;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v3, v1, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iput-object v3, v1, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v3, v1, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_0

    iget-object v4, v1, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    iget-object v5, v1, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    iget-object v1, v1, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v1, v2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/xerces/impl/validation/ValidationManager;->isCachedDTD()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-interface {v0, v2}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-interface {v1, v0}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    :cond_3
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->scanDTDExternalSubset(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    :goto_1
    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lorg/apache/xerces/impl/XMLEntityHandler;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1, p0}, Lorg/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lorg/apache/xerces/impl/XMLEntityHandler;)V

    throw v0

    :cond_4
    :goto_2
    return-void
.end method

.method public scanForDoctypeHook()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v1, "DOCTYPE"

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public scanRootElementHook()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, v0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fExternalSubsetResolver:Lorg/apache/xerces/impl/ExternalSubsetResolver;

    const/4 v2, 0x1

    const/16 v3, 0xc

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lorg/apache/xerces/impl/XMLScanner;->fValidation:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanStartElementName()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->resolveExternalSubsetAndRead()V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanStartElementAfterName()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v3}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->b:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fTrailingMiscDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDispatcher(Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    return v2

    :cond_1
    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanStartElement()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
