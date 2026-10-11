.class public Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;
.super Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$FragmentContentDriver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentDriver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$FragmentContentDriver;-><init>(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;)V

    return-void
.end method


# virtual methods
.method public elementDepthIsZeroHook()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fTrailingMiscDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setDriver(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;)V

    const/4 p0, 0x1

    return p0
.end method

.method public endOfFileHook(Ljava/io/EOFException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const-string p1, "PrematureEOF"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public resolveExternalSubsetAndRead()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->access$100(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getCurrentResourceIdentifier()Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->access$100(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;->setRootName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fExternalSubsetResolver:Lcom/sun/org/apache/xerces/internal/impl/ExternalSubsetResolver;

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->access$100(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDDescription;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/ExternalSubsetResolver;->getExternalSubset(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLDTDDescription;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iput-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    if-eqz v3, :cond_0

    iget-object v4, v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    iget-object v5, v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v1, v2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;->setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;->scanDTDExternalSubset(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setEntityHandler(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setEntityHandler(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public scanForDoctypeHook()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->DOCTYPE:[C

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipString([C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public scanRootElementHook()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->scanStartElement()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fTrailingMiscDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setDriver(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
