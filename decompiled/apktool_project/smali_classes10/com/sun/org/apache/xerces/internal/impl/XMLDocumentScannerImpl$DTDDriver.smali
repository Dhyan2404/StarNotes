.class public final Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;
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
    name = "DTDDriver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setEntityHandler(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;-><init>()V

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v4, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    if-nez v4, :cond_1

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getEntityScanner()Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    move-result-object v3

    instance-of v3, v3, Lcom/sun/org/apache/xerces/internal/impl/XML11EntityScanner;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;

    invoke-direct {v4}, Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;-><init>()V

    iput-object v4, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    new-instance v4, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;

    invoke-direct {v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;-><init>()V

    iput-object v4, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    :goto_0
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v4, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    check-cast v4, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;->reset(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    :cond_1
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget v4, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v5, 0x2b

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    goto/16 :goto_5

    :pswitch_0
    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    invoke-interface {v3, v6}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;->scanDTDExternalSubset(Z)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p1, v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fPrologDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setDriver(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setEntityHandler(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setEntityHandler(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;)V

    return v6

    :pswitch_1
    :try_start_1
    iget-object v4, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypePublicId:Ljava/lang/String;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    invoke-virtual {v2, v4, v3, v1, v1}, Lcom/sun/org/apache/xerces/internal/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->resolveEntityAsPerStax(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)Lcom/sun/xml/internal/stream/StaxXMLInputSource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/xml/internal/stream/StaxXMLInputSource;->getXMLInputSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    invoke-interface {v4, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;->setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    move v3, v6

    goto/16 :goto_4

    :pswitch_2
    iget-object v4, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    iget-boolean v7, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    iget-boolean v8, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fHasExternalDTD:Z

    if-eqz v8, :cond_2

    iget-boolean v3, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v3, :cond_2

    move v3, v6

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    invoke-interface {v4, v6, v7, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;->scanDTDInternalSubset(ZZZ)Z

    move-result v3

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v4, v4, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->getCurrentEntity()Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    move-result-object v4

    instance-of v7, v4, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget v4, v4, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->position:I

    iput v4, v7, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fEndPos:I

    :cond_3
    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iput-boolean v0, v4, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fReadingDTD:Z

    if-nez v3, :cond_8

    iget-object v3, v4, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const-string v4, "EXPECTED_SQUARE_BRACKET_TO_CLOSE_INTERNAL_SUBSET"

    invoke-virtual {v3, v4, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v3, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const-string v4, "DoctypedeclUnterminated"

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeName:Ljava/lang/String;

    aput-object v8, v7, v0

    invoke-virtual {v3, v4, v7}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget v4, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    sub-int/2addr v4, v6

    iput v4, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v4, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-boolean v4, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fValidation:Z

    if-nez v4, :cond_6

    iget-boolean v4, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v4, :cond_7

    :cond_6
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_3

    :cond_7
    invoke-virtual {v3, v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fPrologDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {p1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setDriver(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v2, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setEntityHandler(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :cond_8
    :goto_3
    move v3, v0

    :goto_4
    if-nez p1, :cond_1

    if-nez v3, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setEntityHandler(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;)V

    return v6

    :goto_5
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTDDriver#dispatch: scanner state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget v3, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget v4, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->getScannerStateName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const-string v2, "PrematureEOF"

    invoke-virtual {p1, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setEntityHandler(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;)V

    return v0

    :goto_6
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setEntityHandler(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public next()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->dispatch(Z)Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;->getGrammar()Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;

    move-result-object v2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-direct {v1, v2, v3, p0}, Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;-><init>(Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    iput-object v1, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->dtdGrammarUtil:Lcom/sun/xml/internal/stream/dtd/DTDGrammarUtil;

    :cond_0
    const/16 p0, 0xb

    return p0
.end method
