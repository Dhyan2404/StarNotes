.class public Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;
.super Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;
.source "SourceFile"


# instance fields
.field private fString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

.field private fStringBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

.field private fStringBuffer2:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

.field private fStringBuffer3:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

.field private fStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;->fStrings:[Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;->fString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    .line 4
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;->fStringBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    .line 5
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;->fStringBuffer2:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    .line 6
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;->fStringBuffer3:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;->fStrings:[Ljava/lang/String;

    .line 9
    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;->fString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    .line 10
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;->fStringBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    .line 11
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;->fStringBuffer2:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    .line 12
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;->fStringBuffer3:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

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

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11Valid(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isInvalidLiteral(I)Z
    .locals 0

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isUnchangedByNormalization(Lcom/sun/org/apache/xerces/internal/xni/XMLString;)I
    .locals 2

    iget p0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    iget v0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    add-int/2addr v0, p0

    :goto_0
    if-ge p0, v0, :cond_1

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    aget-char v1, v1, p0

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isSpace(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    sub-int/2addr p0, p1

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public isValidNCName(I)Z
    .locals 0

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11NCName(I)Z

    move-result p0

    return p0
.end method

.method public isValidNameChar(I)Z
    .locals 0

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11Name(I)Z

    move-result p0

    return p0
.end method

.method public isValidNameStartChar(I)Z
    .locals 0

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11NameStart(I)Z

    move-result p0

    return p0
.end method

.method public isValidNameStartHighSurrogate(I)Z
    .locals 0

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result p0

    return p0
.end method

.method public normalizeWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;)V
    .locals 3

    .line 1
    iget p0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    iget v0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    add-int/2addr v0, p0

    :goto_0
    if-ge p0, v0, :cond_1

    .line 2
    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    aget-char v1, v1, p0

    .line 3
    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isSpace(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    const/16 v2, 0x20

    aput-char v2, v1, p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public normalizeWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;I)V
    .locals 2

    .line 5
    iget p0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    iget v0, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    add-int/2addr v0, p0

    add-int/2addr p0, p2

    :goto_0
    if-ge p0, v0, :cond_1

    .line 6
    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    aget-char p2, p2, p0

    .line 7
    invoke-static {p2}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isSpace(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 8
    iget-object p2, p1, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    const/16 v1, 0x20

    aput-char v1, p2, p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scanPubidLiteral(Lcom/sun/org/apache/xerces/internal/xni/XMLString;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    const/16 v1, 0x27

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const-string p1, "QuoteRequiredInPublicID"

    invoke-virtual {p0, p1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;->fStringBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->clear()V

    const/4 v1, 0x1

    move v4, v1

    move v5, v4

    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {v6}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanChar()I

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

    goto :goto_1

    :cond_2
    if-ne v6, v0, :cond_4

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;->fStringBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    iget v2, v0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;->fStringBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->setValues(Lcom/sun/org/apache/xerces/internal/xni/XMLString;)V

    return v5

    :cond_4
    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isPubid(I)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;->fStringBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    int-to-char v6, v6

    invoke-virtual {v4, v6}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->append(C)V

    move v4, v3

    goto :goto_0

    :cond_5
    const/4 v5, -0x1

    if-ne v6, v5, :cond_6

    const-string p1, "PublicIDUnterminated"

    invoke-virtual {p0, p1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_6
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "InvalidCharInPublicID"

    invoke-virtual {p0, v6, v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v3

    goto :goto_0

    :cond_7
    :goto_1
    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XML11DTDScannerImpl;->fStringBuffer:Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    invoke-virtual {v4, v7}, Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;->append(C)V

    move v4, v1

    goto :goto_0
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
