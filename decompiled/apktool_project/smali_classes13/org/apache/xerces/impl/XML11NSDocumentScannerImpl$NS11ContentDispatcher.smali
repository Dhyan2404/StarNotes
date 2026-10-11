.class public final Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;
.super Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NS11ContentDispatcher"
.end annotation


# instance fields
.field public final synthetic c:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;-><init>(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)V

    iput-object p1, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->c:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->c:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-static {v0}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->j(Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->c:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-boolean v1, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->c:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-static {v0}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->j(Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->hasGrammar()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->c:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-boolean v1, v0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->fBindNamespaces:Z

    invoke-static {v0}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->j(Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;->validate()Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->fPerformValidation:Z

    iget-object v0, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->c:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-static {v0}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->j(Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xerces/xni/XMLDocumentHandler;->getDocumentSource()Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->c:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-static {v1}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->j(Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->getDocumentHandler()Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->c:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-static {v0}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->j(Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object p0, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->c:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-static {p0}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->j(Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;)Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;

    move-result-object p0

    invoke-interface {p0, v1}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public scanRootElementHook()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->c:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

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
    invoke-virtual {v0}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->scanStartElementName()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$ContentDispatcher;->resolveExternalSubsetAndRead()V

    invoke-virtual {p0}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->a()V

    iget-object v0, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->c:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->scanStartElementAfterName()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->c:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0, v3}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object p0, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->c:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fTrailingMiscDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p0, v0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDispatcher(Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    return v2

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->a()V

    iget-object v0, p0, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl$NS11ContentDispatcher;->c:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->scanStartElement()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
