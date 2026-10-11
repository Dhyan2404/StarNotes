.class public final Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;
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
    name = "DTDDispatcher"
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    return-void
.end method


# virtual methods
.method public dispatch(Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lorg/apache/xerces/impl/XMLEntityHandler;)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v3, v2, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v4, 0x13

    const/4 v5, 0x5

    const/4 v6, 0x1

    packed-switch v3, :pswitch_data_0

    new-instance p1, Lorg/apache/xerces/xni/XNIException;

    goto/16 :goto_7

    :pswitch_0
    iget-object v2, v2, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-interface {v2, v6}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->scanDTDExternalSubset(Z)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {p1, v5}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p1, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fPrologDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p1, v2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDispatcher(Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p1, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v2, p1}, Lorg/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lorg/apache/xerces/impl/XMLEntityHandler;)V
    :try_end_0
    .catch Lorg/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/CharConversionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lorg/apache/xerces/impl/XMLEntityHandler;)V

    return v6

    :pswitch_1
    :try_start_1
    invoke-static {v2}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->i(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)Lorg/apache/xerces/impl/dtd/XMLDTDDescription;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v5, v3, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    iget-object v3, v3, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    invoke-virtual {v2, v5, v3, v1, v1}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v2}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->i(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)Lorg/apache/xerces/impl/dtd/XMLDTDDescription;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v3, v3, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dtd/XMLDTDDescription;->setRootName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v3, v2, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-static {v2}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->i(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)Lorg/apache/xerces/impl/dtd/XMLDTDDescription;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/xerces/impl/XMLEntityManager;->resolveEntity(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v3, v3, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-interface {v3, v2}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2, v4}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    move v0, v6

    goto/16 :goto_6

    :pswitch_2
    iget-boolean v3, v2, Lorg/apache/xerces/impl/XMLScanner;->fValidation:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v3, :cond_2

    :cond_1
    iget-object v2, v2, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/apache/xerces/impl/validation/ValidationManager;->isCachedDTD()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v6

    :goto_1
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v7, v3, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    iget-boolean v8, v3, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    iget-boolean v3, v3, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    move v3, v6

    goto :goto_2

    :cond_4
    move v3, v0

    :goto_2
    invoke-interface {v7, v6, v8, v3}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->scanDTDInternalSubset(ZZZ)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v3, v3, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v7, 0x5d

    invoke-virtual {v3, v7}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v7, "EXPECTED_SQUARE_BRACKET_TO_CLOSE_INTERNAL_SUBSET"

    invoke-virtual {v3, v7, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v3, v3, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v3, v3, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v7, 0x3e

    invoke-virtual {v3, v7}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v7, "DoctypedeclUnterminated"

    new-array v8, v6, [Ljava/lang/Object;

    iget-object v9, v3, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    aput-object v9, v8, v0

    invoke-virtual {v3, v7, v8}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v7, v3, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    sub-int/2addr v7, v6

    iput v7, v3, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v7, v3, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-boolean v4, v3, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    if-nez v4, :cond_7

    move v4, v6

    goto :goto_3

    :cond_7
    move v4, v0

    :goto_3
    iput-boolean v4, v3, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fIsEntityDeclaredVC:Z

    if-eqz v2, :cond_c

    const/16 v2, 0x12

    invoke-virtual {v3, v2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_6

    :cond_8
    invoke-static {v3}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->g(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v7, v3, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    if-nez v7, :cond_9

    move v7, v6

    goto :goto_4

    :cond_9
    move v7, v0

    :goto_4
    iput-boolean v7, v3, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fIsEntityDeclaredVC:Z

    if-eqz v2, :cond_c

    iget-object v2, v3, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-static {v3}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->g(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {v2, v1}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->h(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2, v4}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_6

    :cond_a
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p1, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLEntityManager;->n()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v2, v2, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    if-nez v2, :cond_b

    move v2, v6

    goto :goto_5

    :cond_b
    move v2, v0

    :goto_5
    iput-boolean v2, p1, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fIsEntityDeclaredVC:Z

    :cond_c
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {p1, v5}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p1, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fPrologDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p1, v2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDispatcher(Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p1, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v2, p1}, Lorg/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lorg/apache/xerces/impl/XMLEntityHandler;)V
    :try_end_1
    .catch Lorg/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/CharConversionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lorg/apache/xerces/impl/XMLEntityHandler;)V

    return v6

    :cond_d
    :goto_6
    if-nez p1, :cond_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lorg/apache/xerces/impl/XMLEntityHandler;)V

    return v6

    :goto_7
    :try_start_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "DTDDispatcher#dispatch: scanner state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v3, v3, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v4, v3, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    invoke-virtual {v3, v4}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->getScannerStateName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Lorg/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/CharConversionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_8

    :catch_0
    :try_start_3
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v2, "PrematureEOF"

    invoke-virtual {p1, v2, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lorg/apache/xerces/impl/XMLEntityHandler;)V

    return v0

    :catch_1
    move-exception p1

    move-object v6, p1

    :try_start_4
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p1, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v3, "CharConversionFailure"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lorg/apache/xerces/impl/XMLEntityHandler;)V

    return v0

    :catch_2
    move-exception p1

    move-object v6, p1

    :try_start_5
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p1, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/io/MalformedByteSequenceException;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lorg/apache/xerces/impl/io/MalformedByteSequenceException;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lorg/apache/xerces/impl/io/MalformedByteSequenceException;->getArguments()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lorg/apache/xerces/impl/XMLEntityHandler;)V

    return v0

    :goto_8
    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$DTDDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lorg/apache/xerces/impl/XMLEntityHandler;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
