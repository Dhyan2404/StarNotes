.class public final Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;
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
    name = "PrologDriver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v4, 0x2d

    const/16 v5, 0x15

    const/4 v6, 0x1

    const/16 v7, 0x2b

    if-eq v3, v5, :cond_4

    if-eq v3, v7, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :cond_4
    iget v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/2addr v3, v6

    iput v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "MarkupNotRecognizedInProlog"

    if-eqz v2, :cond_b

    :try_start_1
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const-string v3, "InvalidCommentStart"

    invoke-virtual {v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const/16 v3, 0x1b

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    sget-object v8, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->DOCTYPE:[C

    invoke-virtual {v2, v8}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipString([C)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->getCurrentEntity()Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    move-result-object v2

    instance-of v3, v2, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget v2, v2, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->position:I

    iput v2, v3, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fStartPos:I

    :cond_8
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iput-boolean v6, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fReadingDTD:Z

    iget-object v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDDecl:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    if-nez v3, :cond_9

    new-instance v3, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;-><init>()V

    iput-object v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDDecl:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    :cond_9
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDDecl:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    const-string v3, "<!DOCTYPE"

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isNameStart(I)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fContentDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setDriver(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fContentDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    invoke-interface {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;->next()I

    move-result p0

    return p0

    :cond_c
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    if-eq v3, v7, :cond_0

    if-eq v3, v5, :cond_0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->scanComment()V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2, v7}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    const/4 p0, 0x5

    return p0

    :pswitch_2
    iget-boolean v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    if-eqz v3, :cond_d

    const-string v3, "DoctypeNotAllowed"

    invoke-virtual {v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-boolean v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    if-eqz v3, :cond_e

    const-string v3, "AlreadySeenDoctype"

    invoke-virtual {v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iput-boolean v6, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    iget-object v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    if-nez v3, :cond_f

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;

    invoke-direct {v3, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$DTDDriver;-><init>(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;)V

    iput-object v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    :cond_f
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->scanDoctypeDecl()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iput-boolean v6, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fSeenInternalSubset:Z

    iget-object v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fContentDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setDriver(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    invoke-interface {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;->next()I

    move-result p0

    return p0

    :cond_10
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    if-eqz v3, :cond_13

    iget-boolean v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fValidation:Z

    if-nez v3, :cond_11

    iget-boolean v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v3, :cond_16

    :cond_11
    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->isCachedDTD()Z

    move-result v2

    if-nez v2, :cond_16

    :cond_12
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fContentDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setDriver(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    invoke-interface {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;->next()I

    move-result p0

    return p0

    :cond_13
    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->access$000(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-boolean v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fValidation:Z

    if-nez v3, :cond_14

    iget-boolean v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v3, :cond_16

    :cond_14
    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->isCachedDTD()Z

    move-result v2

    if-nez v2, :cond_16

    :cond_15
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->access$000(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;->setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-static {v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->access$002(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fContentDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setDriver(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDDriver:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;

    invoke-interface {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl$Driver;->next()I

    move-result p0

    return p0

    :cond_16
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    invoke-interface {v2, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;->setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2, v7}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    const/16 p0, 0xb

    return p0

    :pswitch_3
    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->clear()V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->scanPI(Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2, v7}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    const/4 p0, 0x3

    return p0

    :pswitch_4
    const-string v3, "ContentIllegalInProlog"

    invoke-virtual {v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanChar()I

    :pswitch_5
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const-string v3, "ReferenceIllegalInProlog"

    invoke-virtual {v2, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return v0

    :catch_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$PrologDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const-string v2, "PrematureEOF"

    invoke-virtual {p0, v2, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
