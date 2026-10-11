.class public final Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;
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
    name = "PrologDispatcher"
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    return-void
.end method


# virtual methods
.method public dispatch(Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget v3, v2, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v4, 0x3c

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x1

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    :pswitch_1
    const-string v3, "ContentIllegalInProlog"

    invoke-virtual {v2, v3, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    :pswitch_2
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v3, "ReferenceIllegalInProlog"

    :goto_0
    invoke-virtual {v2, v3, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_3
    iget-object v2, v2, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2, v7}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    :goto_1
    move v2, v7

    goto/16 :goto_6

    :cond_1
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_1

    :pswitch_4
    iget-boolean v3, v2, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDisallowDoctype:Z

    if-eqz v3, :cond_3

    const-string v3, "DoctypeNotAllowed"

    invoke-virtual {v2, v3, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v3, v2, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    if-eqz v3, :cond_4

    const-string v3, "AlreadySeenDoctype"

    invoke-virtual {v2, v3, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iput-boolean v7, v2, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->scanDoctypeDecl()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v2, 0x11

    invoke-virtual {p1, v2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p1, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p1, v2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDispatcher(Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    return v7

    :cond_5
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v3, v2, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDoctypeSystemId:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-boolean v3, v2, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    if-nez v3, :cond_6

    move v3, v7

    goto :goto_2

    :cond_6
    move v3, v0

    :goto_2
    iput-boolean v3, v2, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fIsEntityDeclaredVC:Z

    iget-boolean v3, v2, Lorg/apache/xerces/impl/XMLScanner;->fValidation:Z

    if-nez v3, :cond_7

    iget-boolean v3, v2, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v3, :cond_d

    :cond_7
    iget-object v2, v2, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lorg/apache/xerces/impl/validation/ValidationManager;->isCachedDTD()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_8
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v2, 0x12

    invoke-virtual {p1, v2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p1, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p1, v2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDispatcher(Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    return v7

    :cond_9
    invoke-static {v2}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->g(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-boolean v3, v2, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fStandalone:Z

    if-nez v3, :cond_a

    move v3, v7

    goto :goto_3

    :cond_a
    move v3, v0

    :goto_3
    iput-boolean v3, v2, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fIsEntityDeclaredVC:Z

    iget-boolean v3, v2, Lorg/apache/xerces/impl/XMLScanner;->fValidation:Z

    if-nez v3, :cond_b

    iget-boolean v3, v2, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fLoadExternalDTD:Z

    if-eqz v3, :cond_d

    :cond_b
    iget-object v2, v2, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lorg/apache/xerces/impl/validation/ValidationManager;->isCachedDTD()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p1, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-static {p1}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->g(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-static {p1, v1}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->h(Lorg/apache/xerces/impl/XMLDocumentScannerImpl;Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    const/16 v2, 0x13

    invoke-virtual {p1, v2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p1, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p1, v2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDispatcher(Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    return v7

    :cond_d
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-interface {v2, v1}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    :goto_4
    invoke-virtual {v2, v6}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_5

    :pswitch_5
    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLScanner;->scanPI()V

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    goto :goto_4

    :pswitch_6
    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->scanComment()V

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    goto :goto_4

    :pswitch_7
    iget v3, v2, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/2addr v3, v7

    iput v3, v2, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v2, v2, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2
    :try_end_0
    .catch Lorg/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/CharConversionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "MarkupNotRecognizedInProlog"

    if-eqz v2, :cond_11

    :try_start_1
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v6, 0x2d

    invoke-virtual {v2, v6}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v6}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v3, "InvalidCommentStart"

    invoke-virtual {v2, v3, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_1

    :cond_f
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const-string v6, "DOCTYPE"

    invoke-virtual {v2, v6}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_1

    :cond_10
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    goto/16 :goto_0

    :cond_11
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v6, v2, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/apache/xerces/impl/XMLScanner;->isValidNameStartChar(I)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {p1, v5}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p1, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fContentDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p1, v2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDispatcher(Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    return v7

    :cond_12
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, v2, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v6, 0x3f

    invoke-virtual {v2, v6}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto/16 :goto_1

    :cond_13
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v6, v2, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/apache/xerces/impl/XMLScanner;->isValidNameStartHighSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {p1, v5}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p1, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fContentDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p1, v2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDispatcher(Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V

    return v7

    :cond_14
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    goto/16 :goto_0

    :goto_5
    move v2, v0

    :goto_6
    if-nez p1, :cond_0

    if-nez v2, :cond_0

    if-eqz p1, :cond_16

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object p1, p1, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result p1

    if-eq p1, v4, :cond_15

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string v2, "RootElementRequired"

    invoke-virtual {p1, v2, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {p1, v5}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p1, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fContentDispatcher:Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;

    invoke-virtual {p1, v2}, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->setDispatcher(Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl$Dispatcher;)V
    :try_end_1
    .catch Lorg/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/CharConversionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_16
    return v7

    :catch_0
    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    const-string p1, "PrematureEOF"

    invoke-virtual {p0, p1, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :catch_1
    move-exception p1

    move-object v6, p1

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v3, "CharConversionFailure"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    return v0

    :catch_2
    move-exception p1

    move-object v6, p1

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLDocumentScannerImpl$PrologDispatcher;->a:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/io/MalformedByteSequenceException;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lorg/apache/xerces/impl/io/MalformedByteSequenceException;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lorg/apache/xerces/impl/io/MalformedByteSequenceException;->getArguments()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
