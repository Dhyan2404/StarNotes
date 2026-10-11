.class public Lorg/apache/xerces/impl/XML11DocumentScannerImpl;
.super Lorg/apache/xerces/impl/XMLDocumentScannerImpl;
.source "SourceFile"


# instance fields
.field public final k0:Lorg/apache/xerces/xni/XMLString;

.field public final q0:Lorg/apache/xerces/util/XMLStringBuffer;

.field public final t0:Lorg/apache/xerces/util/XMLStringBuffer;

.field public final u0:Lorg/apache/xerces/util/XMLStringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    new-instance v0, Lorg/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->k0:Lorg/apache/xerces/xni/XMLString;

    new-instance v0, Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    new-instance v0, Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->t0:Lorg/apache/xerces/util/XMLStringBuffer;

    new-instance v0, Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lorg/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->u0:Lorg/apache/xerces/util/XMLStringBuffer;

    return-void
.end method


# virtual methods
.method public getVersionNotSupportedKey()Ljava/lang/String;
    .locals 0

    const-string p0, "VersionNotSupported11"

    return-object p0
.end method

.method public isInvalid(I)Z
    .locals 0

    invoke-static {p1}, Lorg/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result p0

    return p0
.end method

.method public isInvalidLiteral(I)Z
    .locals 0

    invoke-static {p1}, Lorg/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isUnchangedByNormalization(Lorg/apache/xerces/xni/XMLString;)I
    .locals 2

    iget p0, p1, Lorg/apache/xerces/xni/XMLString;->offset:I

    iget v0, p1, Lorg/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v0, p0

    :goto_0
    if-lt p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v1, p1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    aget-char v1, v1, p0

    invoke-static {v1}, Lorg/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p1, p1, Lorg/apache/xerces/xni/XMLString;->offset:I

    sub-int/2addr p0, p1

    return p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method public isValidNCName(I)Z
    .locals 0

    invoke-static {p1}, Lorg/apache/xerces/util/XML11Char;->isXML11NCName(I)Z

    move-result p0

    return p0
.end method

.method public isValidNameChar(I)Z
    .locals 0

    invoke-static {p1}, Lorg/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result p0

    return p0
.end method

.method public isValidNameStartChar(I)Z
    .locals 0

    invoke-static {p1}, Lorg/apache/xerces/util/XML11Char;->isXML11NameStart(I)Z

    move-result p0

    return p0
.end method

.method public isValidNameStartHighSurrogate(I)Z
    .locals 0

    invoke-static {p1}, Lorg/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result p0

    return p0
.end method

.method public normalizeWhitespace(Lorg/apache/xerces/xni/XMLString;)V
    .locals 3

    .line 1
    iget p0, p1, Lorg/apache/xerces/xni/XMLString;->offset:I

    iget v0, p1, Lorg/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v0, p0

    :goto_0
    if-lt p0, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    aget-char v1, v1, p0

    invoke-static {v1}, Lorg/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    const/16 v2, 0x20

    aput-char v2, v1, p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method public normalizeWhitespace(Lorg/apache/xerces/xni/XMLString;I)V
    .locals 2

    .line 2
    iget p0, p1, Lorg/apache/xerces/xni/XMLString;->offset:I

    iget v0, p1, Lorg/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v0, p0

    add-int/2addr p0, p2

    :goto_0
    if-lt p0, v0, :cond_0

    return-void

    :cond_0
    iget-object p2, p1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    aget-char p2, p2, p0

    invoke-static {p2}, Lorg/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    const/16 v1, 0x20

    aput-char v1, p2, p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method public scanAttributeValue(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    iget-object v5, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v5

    const/16 v6, 0x22

    const/16 v7, 0x27

    if-eq v5, v7, :cond_0

    if-eq v5, v6, :cond_0

    const-string v8, "OpenQuoteExpected"

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v8, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v8}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget v8, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    iget-object v9, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v9, v5, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILorg/apache/xerces/xni/XMLString;)I

    move-result v9

    const-string v10, "CloseQuoteExpected"

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-ne v9, v5, :cond_2

    invoke-virtual/range {p0 .. p1}, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->isUnchangedByNormalization(Lorg/apache/xerces/xni/XMLString;)I

    move-result v14

    if-ne v14, v12, :cond_3

    invoke-virtual {v2, v1}, Lorg/apache/xerces/xni/XMLString;->setValues(Lorg/apache/xerces/xni/XMLString;)V

    iget-object v1, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v1

    if-eq v1, v5, :cond_1

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return v13

    :cond_2
    const/4 v14, 0x0

    :cond_3
    iget-object v15, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->t0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v15}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v15, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->t0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v15, v1}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    invoke-virtual {v0, v1, v14}, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->normalizeWhitespace(Lorg/apache/xerces/xni/XMLString;I)V

    if-eq v9, v5, :cond_1f

    iput-boolean v13, v0, Lorg/apache/xerces/impl/XMLScanner;->fScanningAttribute:Z

    iget-object v14, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v14}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    :goto_0
    iget-object v14, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v14, v1}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    const/16 v14, 0x3c

    const/16 v15, 0x26

    if-ne v9, v15, :cond_13

    iget-object v9, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v9, v15}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    iget v9, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-ne v8, v9, :cond_4

    iget-object v9, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->t0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v9, v15}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_4
    iget-object v9, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v11, 0x23

    invoke-virtual {v9, v11}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v9

    if-eqz v9, :cond_6

    iget v9, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-ne v8, v9, :cond_5

    iget-object v9, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->t0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v9, v11}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_5
    iget-object v9, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v11, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->t0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v9, v11}, Lorg/apache/xerces/impl/XMLScanner;->scanCharReferenceValue(Lorg/apache/xerces/util/XMLStringBuffer;Lorg/apache/xerces/util/XMLStringBuffer;)I

    goto/16 :goto_8

    :cond_6
    iget-object v9, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v9}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    const-string v11, "NameRequiredInReference"

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    iget v11, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-ne v8, v11, :cond_8

    iget-object v11, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->t0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v11, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    :cond_8
    :goto_1
    iget-object v11, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v12, 0x3b

    invoke-virtual {v11, v12}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "SemicolonRequiredInReference"

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    iget v11, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-ne v8, v11, :cond_a

    iget-object v11, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->t0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v11, v12}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_a
    :goto_2
    sget-object v11, Lorg/apache/xerces/impl/XMLScanner;->fAmpSymbol:Ljava/lang/String;

    if-ne v9, v11, :cond_b

    iget-object v9, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v9, v15}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_b
    sget-object v11, Lorg/apache/xerces/impl/XMLScanner;->fAposSymbol:Ljava/lang/String;

    if-ne v9, v11, :cond_c

    iget-object v9, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v9, v7}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_c
    sget-object v11, Lorg/apache/xerces/impl/XMLScanner;->fLtSymbol:Ljava/lang/String;

    if-ne v9, v11, :cond_d

    iget-object v9, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v9, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_d
    sget-object v11, Lorg/apache/xerces/impl/XMLScanner;->fGtSymbol:Ljava/lang/String;

    if-ne v9, v11, :cond_e

    iget-object v9, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v11, 0x3e

    invoke-virtual {v9, v11}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_4

    :cond_e
    sget-object v11, Lorg/apache/xerces/impl/XMLScanner;->fQuotSymbol:Ljava/lang/String;

    if-ne v9, v11, :cond_f

    iget-object v9, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v9, v6}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_4

    :cond_f
    iget-object v11, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v11, v9}, Lorg/apache/xerces/impl/XMLEntityManager;->isExternalEntity(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    const-string v11, "ReferenceToExternalEntity"

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v11, v9}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_10
    iget-object v11, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v11, v9}, Lorg/apache/xerces/impl/XMLEntityManager;->isDeclaredEntity(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_12

    const-string v11, "EntityNotDeclared"

    if-eqz p4, :cond_11

    iget-boolean v12, v0, Lorg/apache/xerces/impl/XMLScanner;->fValidation:Z

    if-eqz v12, :cond_12

    iget-object v12, v0, Lorg/apache/xerces/impl/XMLScanner;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v14, "http://www.w3.org/TR/1998/REC-xml-19980210"

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v12, v14, v11, v15, v13}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_3

    :cond_11
    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    :goto_3
    iget-object v11, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v11, v9, v13}, Lorg/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_13
    if-ne v9, v14, :cond_15

    const-string v11, "LessthanInAttValue"

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v11, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v11}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget v11, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-ne v8, v11, :cond_14

    iget-object v11, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->t0:Lorg/apache/xerces/util/XMLStringBuffer;

    int-to-char v9, v9

    invoke-virtual {v11, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_14
    :goto_4
    const/4 v12, -0x1

    goto/16 :goto_8

    :cond_15
    const/16 v11, 0x25

    if-eq v9, v11, :cond_1b

    const/16 v11, 0x5d

    if-ne v9, v11, :cond_16

    goto/16 :goto_6

    :cond_16
    const/16 v11, 0xa

    if-eq v9, v11, :cond_1a

    const/16 v12, 0xd

    if-eq v9, v12, :cond_1a

    const/16 v12, 0x85

    if-eq v9, v12, :cond_1a

    const/16 v12, 0x2028

    if-ne v9, v12, :cond_17

    goto :goto_5

    :cond_17
    const/4 v12, -0x1

    if-eq v9, v12, :cond_19

    invoke-static {v9}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v11

    if-eqz v11, :cond_18

    iget-object v9, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->u0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v9}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v9, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->u0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v9}, Lorg/apache/xerces/impl/XMLScanner;->scanSurrogates(Lorg/apache/xerces/util/XMLStringBuffer;)Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v9, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v11, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->u0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v9, v11}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    iget v9, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-ne v8, v9, :cond_14

    iget-object v9, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->t0:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v11, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->u0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v9, v11}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    goto :goto_4

    :cond_18
    const/4 v12, -0x1

    :cond_19
    if-eq v9, v12, :cond_1c

    invoke-virtual {v0, v9}, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->isInvalidLiteral(I)Z

    move-result v11

    if-eqz v11, :cond_1c

    const/16 v11, 0x10

    invoke-static {v9, v11}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v4, v3, v11}, [Ljava/lang/Object;

    move-result-object v11

    const-string v14, "InvalidCharInAttValue"

    invoke-virtual {v0, v14, v11}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v11, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v11}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget v11, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-ne v8, v11, :cond_1c

    iget-object v11, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->t0:Lorg/apache/xerces/util/XMLStringBuffer;

    int-to-char v9, v9

    goto :goto_7

    :cond_1a
    :goto_5
    const/4 v12, -0x1

    iget-object v9, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v9}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v9, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    const/16 v14, 0x20

    invoke-virtual {v9, v14}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget v9, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-ne v8, v9, :cond_1c

    iget-object v9, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->t0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v9, v11}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_8

    :cond_1b
    :goto_6
    const/4 v12, -0x1

    iget-object v11, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v11}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v11, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    int-to-char v9, v9

    invoke-virtual {v11, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget v11, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-ne v8, v11, :cond_1c

    iget-object v11, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->t0:Lorg/apache/xerces/util/XMLStringBuffer;

    :goto_7
    invoke-virtual {v11, v9}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_1c
    :goto_8
    iget-object v9, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v9, v5, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILorg/apache/xerces/xni/XMLString;)I

    move-result v9

    iget v11, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-ne v8, v11, :cond_1d

    iget-object v11, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->t0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v11, v1}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    :cond_1d
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->normalizeWhitespace(Lorg/apache/xerces/xni/XMLString;)V

    if-ne v9, v5, :cond_1e

    iget v11, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityDepth:I

    if-ne v8, v11, :cond_1e

    iget-object v6, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v6, v1}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    iget-object v6, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v6}, Lorg/apache/xerces/xni/XMLString;->setValues(Lorg/apache/xerces/xni/XMLString;)V

    const/4 v11, 0x0

    iput-boolean v11, v0, Lorg/apache/xerces/impl/XMLScanner;->fScanningAttribute:Z

    goto :goto_9

    :cond_1e
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_1f
    :goto_9
    iget-object v6, v0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->t0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v6}, Lorg/apache/xerces/xni/XMLString;->setValues(Lorg/apache/xerces/xni/XMLString;)V

    iget-object v6, v0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v6

    if-eq v6, v5, :cond_20

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    iget-object v0, v1, Lorg/apache/xerces/xni/XMLString;->ch:[C

    iget v3, v1, Lorg/apache/xerces/xni/XMLString;->offset:I

    iget v1, v1, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v2, v0, v3, v1}, Lorg/apache/xerces/xni/XMLString;->equals([CII)Z

    move-result v0

    return v0
.end method

.method public scanContent()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->k0:Lorg/apache/xerces/xni/XMLString;

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanContent(Lorg/apache/xerces/xni/XMLString;)I

    move-result v1

    const/16 v2, 0xd

    const/4 v3, -0x1

    if-eq v1, v2, :cond_0

    const/16 v2, 0x85

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2028

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v0, p0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v0, p0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v2, p0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->k0:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v0, v2}, Lorg/apache/xerces/util/XMLStringBuffer;->append(Lorg/apache/xerces/xni/XMLString;)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v0, p0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    move v1, v3

    :cond_1
    iget-object v2, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget v5, v0, Lorg/apache/xerces/xni/XMLString;->length:I

    if-lez v5, :cond_2

    invoke-interface {v2, v0, v4}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_2
    const/16 v0, 0x5d

    if-ne v1, v0, :cond_6

    iget-object v2, p0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->k0:Lorg/apache/xerces/xni/XMLString;

    iget v2, v2, Lorg/apache/xerces/xni/XMLString;->length:I

    if-nez v2, :cond_6

    iget-object v1, p0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v1, p0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v1, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "CDEndInContent"

    invoke-virtual {p0, v0, v4}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v2, v1, Lorg/apache/xerces/xni/XMLString;->length:I

    if-eqz v2, :cond_5

    invoke-interface {v0, v1, v4}, Lorg/apache/xerces/xni/XMLDocumentHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/impl/XMLDocumentFragmentScannerImpl;->fInScanContent:Z

    goto :goto_0

    :cond_6
    move v3, v1

    :goto_0
    return v3
.end method

.method public scanPubidLiteral(Lorg/apache/xerces/xni/XMLString;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    const/16 v1, 0x27

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const-string p1, "QuoteRequiredInPublicID"

    :goto_0
    invoke-virtual {p0, p1, v2}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    iget-object v1, p0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLStringBuffer;->clear()V

    const/4 v1, 0x1

    move v4, v1

    move v5, v4

    :cond_1
    :goto_1
    iget-object v6, p0, Lorg/apache/xerces/impl/XMLScanner;->fEntityScanner:Lorg/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_7

    const/16 v8, 0xa

    if-eq v6, v8, :cond_7

    const/16 v8, 0xd

    if-eq v6, v8, :cond_7

    const/16 v8, 0x85

    if-eq v6, v8, :cond_7

    const/16 v8, 0x2028

    if-ne v6, v8, :cond_2

    goto :goto_2

    :cond_2
    if-ne v6, v0, :cond_4

    if-eqz v4, :cond_3

    iget-object v0, p0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    iget v2, v0, Lorg/apache/xerces/xni/XMLString;->length:I

    sub-int/2addr v2, v1

    iput v2, v0, Lorg/apache/xerces/xni/XMLString;->length:I

    :cond_3
    iget-object p0, p0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/xni/XMLString;->setValues(Lorg/apache/xerces/xni/XMLString;)V

    return v5

    :cond_4
    invoke-static {v6}, Lorg/apache/xerces/util/XMLChar;->isPubid(I)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v4, p0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    int-to-char v6, v6

    invoke-virtual {v4, v6}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    move v4, v3

    goto :goto_1

    :cond_5
    const/4 v5, -0x1

    if-ne v6, v5, :cond_6

    const-string p1, "PublicIDUnterminated"

    goto :goto_0

    :cond_6
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "InvalidCharInPublicID"

    invoke-virtual {p0, v6, v5}, Lorg/apache/xerces/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v3

    goto :goto_1

    :cond_7
    :goto_2
    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->q0:Lorg/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v7}, Lorg/apache/xerces/util/XMLStringBuffer;->append(C)V

    move v4, v1

    goto :goto_1
.end method

.method public versionSupported(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "1.1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "1.0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
