.class public final Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl$NS11ContentDriver;
.super Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NS11ContentDriver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl$NS11ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;-><init>(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;)V

    return-void
.end method

.method private reconfigurePipeline()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl$NS11ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->access$000(Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl$NS11ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl$NS11ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->access$000(Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;->hasGrammar()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl$NS11ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    iput-boolean v1, v0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->access$000(Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;->validate()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->fPerformValidation:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl$NS11ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->access$000(Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->getDocumentSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl$NS11ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->access$000(Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->getDocumentHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl$NS11ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->access$000(Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl$NS11ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->access$000(Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public scanRootElementHook()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl$NS11ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fExternalSubsetResolver:Lcom/sun/org/apache/xerces/internal/impl/ExternalSubsetResolver;

    const/4 v2, 0x1

    const/16 v3, 0x2c

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fValidation:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->scanStartElementName()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;->resolveExternalSubsetAndRead()V

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl$NS11ContentDriver;->reconfigurePipeline()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl$NS11ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->scanStartElementAfterName()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl$NS11ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl$NS11ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fTrailingMiscDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setDriver(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;)V

    return v2

    :cond_1
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl$NS11ContentDriver;->reconfigurePipeline()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl$NS11ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;->scanStartElement()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl$NS11ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl$NS11ContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fTrailingMiscDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setDriver(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;)V

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
