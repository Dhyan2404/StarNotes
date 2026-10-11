.class public Lorg/apache/xerces/impl/XMLVersionDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field public static final b:[C

.field protected static final fVersionSymbol:Ljava/lang/String;

.field protected static final fXMLSymbol:Ljava/lang/String;


# instance fields
.field public final a:[C

.field protected fEncoding:Ljava/lang/String;

.field protected fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

.field protected fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/xerces/impl/XMLVersionDetector;->b:[C

    const-string v0, "version"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/XMLVersionDetector;->fVersionSymbol:Ljava/lang/String;

    const-string v0, "[xml]"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xerces/impl/XMLVersionDetector;->fXMLSymbol:Ljava/lang/String;

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

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->fEncoding:Ljava/lang/String;

    const/16 v0, 0x13

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->a:[C

    return-void

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


# virtual methods
.method public final a(Lorg/apache/xerces/impl/XMLEntityManager;[CI)V
    .locals 6

    invoke-virtual {p1}, Lorg/apache/xerces/impl/XMLEntityManager;->getCurrentEntity()Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-result-object p0

    iget p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v1, p1, v0

    add-int/2addr v1, p3

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v1, v3, :cond_0

    add-int/2addr p1, p3

    sub-int/2addr p1, v0

    add-int/2addr p1, v4

    new-array p1, p1, [C

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v0, v2

    invoke-static {v2, v5, p1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-ge p1, p3, :cond_1

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, v0, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v0, p3, v0

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_0
    iget v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-lt p1, v0, :cond_2

    :goto_1
    iget-object p1, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {p2, v5, p1, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v5, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iput v5, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iput v5, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    iput v4, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iput v4, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    return-void

    :cond_2
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/16 v1, 0x20

    aput-char v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public determineDocVersion(Lorg/apache/xerces/xni/parser/XMLInputSource;)S
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    sget-object v1, Lorg/apache/xerces/impl/XMLVersionDetector;->fXMLSymbol:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lorg/apache/xerces/impl/XMLEntityManager;->setupCurrentEntity(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLInputSource;ZZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->fEncoding:Ljava/lang/String;

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p1, v3}, Lorg/apache/xerces/impl/XMLEntityManager;->setScannerVersion(S)V

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p1}, Lorg/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lorg/apache/xerces/impl/XMLEntityScanner;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, -0x1

    :try_start_0
    const-string v4, "<?xml"

    invoke-virtual {p1, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipDeclSpaces()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->a:[C

    const/4 v4, 0x5

    invoke-virtual {p0, p1, v2, v4}, Lorg/apache/xerces/impl/XMLVersionDetector;->a(Lorg/apache/xerces/impl/XMLEntityManager;[CI)V

    return v3

    :cond_1
    const-string v4, "version"

    invoke-virtual {p1, v4}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->a:[C

    const/4 v4, 0x6

    invoke-virtual {p0, p1, v2, v4}, Lorg/apache/xerces/impl/XMLVersionDetector;->a(Lorg/apache/xerces/impl/XMLEntityManager;[CI)V

    return v3

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipDeclSpaces()Z

    invoke-virtual {p1}, Lorg/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v4

    const/16 v5, 0x3d

    if-eq v4, v5, :cond_3

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->a:[C

    const/16 v4, 0xd

    invoke-virtual {p0, p1, v2, v4}, Lorg/apache/xerces/impl/XMLVersionDetector;->a(Lorg/apache/xerces/impl/XMLEntityManager;[CI)V

    return v3

    :cond_3
    invoke-virtual {p1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    invoke-virtual {p1}, Lorg/apache/xerces/impl/XMLEntityScanner;->skipDeclSpaces()Z

    invoke-virtual {p1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v4

    iget-object v5, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->a:[C

    const/16 v6, 0xe

    int-to-char v4, v4

    aput-char v4, v5, v6

    move v4, v2

    :goto_0
    sget-object v5, Lorg/apache/xerces/impl/XMLVersionDetector;->b:[C

    array-length v5, v5

    if-lt v4, v5, :cond_7

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->a:[C

    invoke-virtual {p1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result p1

    int-to-char p1, p1

    const/16 v5, 0x12

    aput-char p1, v4, v5

    iget-object p1, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    iget-object v4, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->a:[C

    const/16 v5, 0x13

    invoke-virtual {p0, p1, v4, v5}, Lorg/apache/xerces/impl/XMLVersionDetector;->a(Lorg/apache/xerces/impl/XMLEntityManager;[CI)V

    :goto_1
    sget-object p1, Lorg/apache/xerces/impl/XMLVersionDetector;->b:[C

    array-length v4, p1

    if-lt v2, v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->a:[C

    add-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aget-char v5, p1, v2

    if-eq v4, v5, :cond_6

    :goto_2
    array-length p0, p1

    if-ne v2, p0, :cond_5

    move v3, v0

    :cond_5
    return v3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->a:[C

    add-int/lit8 v6, v4, 0xf

    invoke-virtual {p1}, Lorg/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v7

    int-to-char v7, v7

    aput-char v7, v5, v6
    :try_end_0
    .catch Lorg/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/CharConversionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string p1, "PrematureEOF"

    const/4 v2, 0x0

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {p0, v3, p1, v2, v0}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    return v1

    :catch_1
    move-exception p1

    move-object v7, p1

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "CharConversionFailure"

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    return v1

    :catch_2
    move-exception p1

    move-object v7, p1

    iget-object v2, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v7}, Lorg/apache/xerces/impl/io/MalformedByteSequenceException;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lorg/apache/xerces/impl/io/MalformedByteSequenceException;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lorg/apache/xerces/impl/io/MalformedByteSequenceException;->getArguments()[Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    return v1
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string v0, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v0}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xerces/impl/XMLEntityManager;

    iput-object p1, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    const/16 p1, 0xe

    :goto_0
    iget-object v0, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->a:[C

    array-length v1, v0

    if-lt p1, v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x20

    aput-char v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public startDocumentParsing(Lorg/apache/xerces/impl/XMLEntityHandler;S)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p2, v0}, Lorg/apache/xerces/impl/XMLEntityManager;->setScannerVersion(S)V

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lorg/apache/xerces/impl/XMLEntityScanner;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lorg/apache/xerces/xni/XMLLocator;)V

    iget-object p2, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p2, p1}, Lorg/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lorg/apache/xerces/impl/XMLEntityHandler;)V

    sget-object p2, Lorg/apache/xerces/impl/XMLVersionDetector;->fXMLSymbol:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lorg/apache/xerces/impl/XMLEntityManager;->getCurrentResourceIdentifier()Lorg/apache/xerces/xni/XMLResourceIdentifier;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/xerces/impl/XMLVersionDetector;->fEncoding:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, p0, v1}, Lorg/apache/xerces/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method
