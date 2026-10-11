.class public final Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;
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
    name = "TrailingMiscDriver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEmptyElement:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fEmptyElement:Z

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 v1, -0x1

    const/16 v2, 0x8

    const/16 v3, 0x22

    const/4 v4, 0x0

    :try_start_0
    iget v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    if-ne v0, v3, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget v5, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    const/16 v6, 0x1b

    const/16 v7, 0x17

    const/16 v8, 0x16

    const/16 v9, 0x15

    const/16 v10, 0x2c

    if-eq v5, v9, :cond_5

    if-eq v5, v10, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget v5, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    if-ne v5, v3, :cond_3

    return v2

    :cond_3
    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    const/16 v5, 0x3c

    invoke-virtual {v0, v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v9}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v8}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_0

    :cond_5
    iget v5, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    const/16 v5, 0x3f

    invoke-virtual {v0, v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v7}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    const/16 v5, 0x21

    invoke-virtual {v0, v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "MarkupNotRecognizedInMisc"

    if-eqz v0, :cond_8

    :try_start_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v5, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isNameStart(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v5, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->scanStartElement()Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v8}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v5, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget v5, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    if-eq v5, v9, :cond_1

    if-eq v5, v10, :cond_1

    if-eq v5, v8, :cond_10

    if-eq v5, v7, :cond_f

    if-eq v5, v6, :cond_d

    const/16 v6, 0x1c

    if-eq v5, v6, :cond_c

    const/16 v6, 0x30

    if-eq v5, v3, :cond_b

    if-eq v5, v6, :cond_a

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scanner State "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget v6, v6, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fScannerState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not Recognized "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v5, "No more events to be parsed"

    invoke-direct {v0, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {v0, v6}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    return v2

    :cond_c
    const-string v5, "ReferenceIllegalInTrailingMisc"

    invoke-virtual {v0, v5, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v10}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    const/16 p0, 0x9

    return p0

    :cond_d
    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    sget-object v5, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->COMMENTSTRING:[C

    invoke-virtual {v0, v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipString([C)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const-string v5, "InvalidCommentStart"

    invoke-virtual {v0, v5, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->scanComment()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v10}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    const/4 p0, 0x5

    return p0

    :cond_f
    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v5, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fContentBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-virtual {v0, v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->scanPI(Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v10}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    const/4 p0, 0x3

    return p0

    :cond_10
    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    return v2

    :cond_11
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const-string v5, "ContentIllegalInTrailingMisc"

    invoke-virtual {v0, v5, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanChar()I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, v10}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x4

    return p0

    :catch_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget v5, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->fMarkupDepth:I

    if-eqz v5, :cond_12

    const-string p0, "PrematureEOF"

    invoke-virtual {v0, p0, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_12
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "EOFException thrown"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl$TrailingMiscDriver;->this$0:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    return v2
.end method
