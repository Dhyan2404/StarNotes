.class public final Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/XMLDocumentScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "XMLDeclDispatcher"
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    return-void
.end method


# virtual methods
.method public dispatch(Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, p1, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fPrologDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p1, v0}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDispatcher(Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v1, "<?xml"

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v2, v0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/2addr v2, v1

    iput v2, v0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    invoke-static {v0}, Lorg/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v0}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->e(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)Lorg/apache/xerces/util/XMLStringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v0}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->e(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)Lorg/apache/xerces/util/XMLStringBuffer;

    move-result-object v0

    const-string v2, "xml"

    invoke-virtual {v0, v2}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v0, v0, Lorg/apache/xerces/impl/XMLScanner;->fNamespaces:Z

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    invoke-static {v0}, Lorg/apache/xerces/util/XMLChar;->isNCName(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v0}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->e(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)Lorg/apache/xerces/util/XMLStringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    invoke-static {v0}, Lorg/apache/xerces/util/XMLChar;->isName(I)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v0, Lorg/apache/xerces/impl/XMLScanner;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-static {v0}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->e(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)Lorg/apache/xerces/util/XMLStringBuffer;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v3}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->e(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)Lorg/apache/xerces/util/XMLStringBuffer;

    move-result-object v3

    iget v3, v3, Lorg/apache/xerces/xni/XMLString;->offset:I

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v4}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->e(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)Lorg/apache/xerces/util/XMLStringBuffer;

    move-result-object v4

    iget v4, v4, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v2, v0, v3, v4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v2}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->f(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)Lorg/apache/xerces/xni/XMLString;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanPIData(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v0}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->e(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)Lorg/apache/xerces/util/XMLStringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, p1}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanXMLDeclOrTextDecl(Z)V

    :cond_4
    :goto_3
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-boolean v1, v0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z
    :try_end_0
    .catch Lorg/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/CharConversionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v0, "PrematureEOF"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :catch_1
    move-exception v0

    move-object v6, v0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v3, "CharConversionFailure"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    return p1

    :catch_2
    move-exception v0

    move-object v6, v0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$XMLDeclDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/io/MalformedByteSequenceException;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lorg/apache/xerces/impl/io/MalformedByteSequenceException;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lorg/apache/xerces/impl/io/MalformedByteSequenceException;->getArguments()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    return p1
.end method
