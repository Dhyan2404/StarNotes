.class public final Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl$NSContentDriver;
.super Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NSContentDriver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl$NSContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$ContentDriver;-><init>(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;)V

    return-void
.end method

.method private reconfigurePipeline()V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl$NSContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    iget-boolean v1, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fNamespaces:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->access$000(Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl$NSContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    iput-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl$NSContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    iget-boolean v1, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fNamespaces:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->access$000(Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;->hasGrammar()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl$NSContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    iput-boolean v2, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->fBindNamespaces:Z

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->access$000(Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;->validate()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->fPerformValidation:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl$NSContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->access$000(Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->getDocumentSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl$NSContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->access$000(Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v1

    invoke-interface {v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->getDocumentHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl$NSContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->access$000(Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl$NSContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->access$000(Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDValidatorFilter;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public scanRootElementHook()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl$NSContentDriver;->reconfigurePipeline()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl$NSContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;->scanStartElement()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl$NSContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl$NSContentDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fTrailingMiscDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setDriver(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
