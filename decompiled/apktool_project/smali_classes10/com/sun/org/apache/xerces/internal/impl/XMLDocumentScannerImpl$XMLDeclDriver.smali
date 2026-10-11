.class public final Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$XMLDeclDriver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "XMLDeclDriver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fPrologDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setDriver(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;)V

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->xmlDecl:[C

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipString([C)Z

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget v3, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isName(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isName(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->append(C)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    iget-object v3, v0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    iget v4, v0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    iget v0, v0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    invoke-virtual {v1, v3, v4, v0}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->clear()V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v3, v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStringBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-virtual {v1, v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->scanPIData(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    iput-boolean v2, v0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->mayReadChunks:Z

    const/4 p0, 0x3

    return p0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->scanXMLDeclOrTextDecl(Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    iput-boolean v2, v0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->mayReadChunks:Z

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    iput-boolean v2, v0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->mayReadChunks:Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$XMLDeclDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const-string v0, "PrematureEOF"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, -0x1

    return p0
.end method
