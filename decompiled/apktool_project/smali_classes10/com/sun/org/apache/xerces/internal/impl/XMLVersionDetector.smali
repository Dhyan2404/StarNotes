.class public Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final XML11_VERSION:[C

.field protected static final fVersionSymbol:Ljava/lang/String;

.field protected static final fXMLSymbol:Ljava/lang/String;


# instance fields
.field protected fEncoding:Ljava/lang/String;

.field protected fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

.field protected fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

.field private final fExpectedVersionString:[C

.field protected fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field private fVersionNum:Lcom/sun/org/apache/xerces/internal/xni/XMLString;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->XML11_VERSION:[C

    const-string v0, "version"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fVersionSymbol:Ljava/lang/String;

    const-string v0, "[xml]"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fXMLSymbol:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0x31s
        0x2es
        0x31s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fEncoding:Ljava/lang/String;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fVersionNum:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fExpectedVersionString:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x3cs
        0x3fs
        0x78s
        0x6ds
        0x6cs
        0x20s
        0x76s
        0x65s
        0x72s
        0x73s
        0x69s
        0x6fs
        0x6es
        0x3ds
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
    .end array-data
.end method

.method private fixupCurrentEntity(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;[CI)V
    .locals 6

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getCurrentEntity()Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    move-result-object p0

    iget p1, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->count:I

    iget v0, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->position:I

    sub-int v1, p1, v0

    add-int/2addr v1, p3

    iget-object v2, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->ch:[C

    array-length v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v1, v3, :cond_0

    add-int/2addr p1, p3

    sub-int/2addr p1, v0

    add-int/2addr p1, v4

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->ch:[C

    array-length v0, v2

    invoke-static {v2, v5, p1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p1, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->position:I

    if-ge p1, p3, :cond_1

    iget-object v0, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->ch:[C

    iget v1, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->count:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, v0, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->count:I

    iget v0, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->position:I

    sub-int v0, p3, v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->count:I

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_0
    iget v0, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->position:I

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->ch:[C

    const/16 v1, 0x20

    aput-char v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->ch:[C

    invoke-static {p2, v5, p1, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v5, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->position:I

    iput v5, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->baseCharOffset:I

    iput v5, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->startPosition:I

    iput v4, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->lineNumber:I

    iput v4, p0, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->columnNumber:I

    return-void
.end method


# virtual methods
.method public determineDocVersion(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)S
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fXMLSymbol:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setupCurrentEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;ZZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fEncoding:Ljava/lang/String;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setScannerVersion(S)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getEntityScanner()Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    move-result-object p1

    const/4 v0, 0x2

    :try_start_0
    const-string v1, "<?xml"

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipDeclSpaces()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fExpectedVersionString:[C

    const/4 v2, 0x5

    invoke-direct {p0, p1, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fixupCurrentEntity(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;[CI)V

    return v3

    :cond_1
    const-string v1, "version"

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fExpectedVersionString:[C

    const/4 v2, 0x6

    invoke-direct {p0, p1, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fixupCurrentEntity(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;[CI)V

    return v3

    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipDeclSpaces()Z

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    const/16 v4, 0x3d

    if-eq v1, v4, :cond_3

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fExpectedVersionString:[C

    const/16 v2, 0xd

    invoke-direct {p0, p1, v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fixupCurrentEntity(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;[CI)V

    return v3

    :cond_3
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanChar()I

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->skipDeclSpaces()Z

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanChar()I

    move-result v1

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fExpectedVersionString:[C

    const/16 v5, 0xe

    int-to-char v1, v1

    aput-char v1, v4, v5

    move v1, v2

    :goto_0
    sget-object v4, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->XML11_VERSION:[C

    array-length v4, v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fExpectedVersionString:[C

    add-int/lit8 v5, v1, 0xf

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanChar()I

    move-result v6

    int-to-char v6, v6

    aput-char v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fExpectedVersionString:[C

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->scanChar()I

    move-result p1

    int-to-char p1, p1

    const/16 v4, 0x12

    aput-char p1, v1, v4

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fExpectedVersionString:[C

    const/16 v4, 0x13

    invoke-direct {p0, p1, v1, v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fixupCurrentEntity(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;[CI)V

    :goto_1
    sget-object p1, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->XML11_VERSION:[C

    array-length v1, p1

    if-ge v2, v1, :cond_6

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fExpectedVersionString:[C

    add-int/lit8 v4, v2, 0xf

    aget-char v1, v1, v4

    aget-char v4, p1, v2

    if-eq v1, v4, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    array-length p0, p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p0, :cond_7

    return v0

    :cond_7
    return v3

    :catch_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string p1, "PrematureEOF"

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    return v3
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    const-string v0, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    const/16 p1, 0xe

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fExpectedVersionString:[C

    array-length v1, v0

    if-ge p1, v1, :cond_0

    const/16 v1, 0x20

    aput-char v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startDocumentParsing(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;S)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setScannerVersion(S)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setScannerVersion(S)V

    :goto_0
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fErrorReporter:Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getEntityScanner()Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->setDocumentLocator(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;)V

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->setEntityHandler(Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;)V

    sget-object p2, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fXMLSymbol:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getCurrentResourceIdentifier()Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLVersionDetector;->fEncoding:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return-void
.end method
