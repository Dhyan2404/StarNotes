.class public Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/XMLStreamReader;


# static fields
.field static final DEBUG:Z = false

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final READER_IN_DEFINED_STATE:Ljava/lang/String; = "http://java.sun.com/xml/stream/properties/reader-in-defined-state"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"


# instance fields
.field private fBindNamespaces:Z

.field private fDTDDecl:Ljava/lang/String;

.field protected fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

.field protected fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

.field protected fErrorReporter:Lcom/sun/xml/internal/stream/StaxErrorReporter;

.field private fEventType:I

.field protected fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

.field protected fNamespaceContextWrapper:Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;

.field protected fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

.field private fReaderInDefinedState:Z

.field private fReuse:Z

.field protected fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

.field private fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field private versionStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    .line 71
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    .line 72
    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->getNamespaceContext()Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;-><init>(Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fNamespaceContextWrapper:Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;

    .line 73
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    .line 74
    new-instance v0, Lcom/sun/xml/internal/stream/StaxErrorReporter;

    invoke-direct {v0}, Lcom/sun/xml/internal/stream/StaxErrorReporter;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fErrorReporter:Lcom/sun/xml/internal/stream/StaxErrorReporter;

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    .line 76
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    .line 77
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    const/4 v1, 0x1

    .line 78
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fReuse:Z

    .line 79
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fReaderInDefinedState:Z

    .line 80
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fBindNamespaces:Z

    .line 81
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fDTDDecl:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->versionStr:Ljava/lang/String;

    .line 83
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->init(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    .line 3
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    .line 4
    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->getNamespaceContext()Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;-><init>(Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fNamespaceContextWrapper:Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;

    .line 5
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    .line 6
    new-instance v0, Lcom/sun/xml/internal/stream/StaxErrorReporter;

    invoke-direct {v0}, Lcom/sun/xml/internal/stream/StaxErrorReporter;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fErrorReporter:Lcom/sun/xml/internal/stream/StaxErrorReporter;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    .line 8
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    .line 9
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fReuse:Z

    .line 11
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fReaderInDefinedState:Z

    .line 12
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fBindNamespaces:Z

    .line 13
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fDTDDecl:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->versionStr:Ljava/lang/String;

    .line 15
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->init(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    .line 16
    new-instance p2, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    .line 37
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    .line 38
    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->getNamespaceContext()Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;-><init>(Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fNamespaceContextWrapper:Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;

    .line 39
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    .line 40
    new-instance v0, Lcom/sun/xml/internal/stream/StaxErrorReporter;

    invoke-direct {v0}, Lcom/sun/xml/internal/stream/StaxErrorReporter;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fErrorReporter:Lcom/sun/xml/internal/stream/StaxErrorReporter;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    .line 42
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    .line 43
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fReuse:Z

    .line 45
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fReaderInDefinedState:Z

    .line 46
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fBindNamespaces:Z

    .line 47
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fDTDDecl:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->versionStr:Ljava/lang/String;

    .line 49
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->init(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    .line 50
    new-instance p3, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, p3

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p3}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    .line 54
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    .line 55
    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->getNamespaceContext()Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;-><init>(Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fNamespaceContextWrapper:Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;

    .line 56
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    .line 57
    new-instance v0, Lcom/sun/xml/internal/stream/StaxErrorReporter;

    invoke-direct {v0}, Lcom/sun/xml/internal/stream/StaxErrorReporter;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fErrorReporter:Lcom/sun/xml/internal/stream/StaxErrorReporter;

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    .line 59
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    .line 60
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    const/4 v1, 0x1

    .line 61
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fReuse:Z

    .line 62
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fReaderInDefinedState:Z

    .line 63
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fBindNamespaces:Z

    .line 64
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fDTDDecl:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->versionStr:Ljava/lang/String;

    .line 66
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->init(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    .line 67
    new-instance p2, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v7, 0x0

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    .line 20
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    .line 21
    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->getNamespaceContext()Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;-><init>(Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fNamespaceContextWrapper:Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;

    .line 22
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    .line 23
    new-instance v0, Lcom/sun/xml/internal/stream/StaxErrorReporter;

    invoke-direct {v0}, Lcom/sun/xml/internal/stream/StaxErrorReporter;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fErrorReporter:Lcom/sun/xml/internal/stream/StaxErrorReporter;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    .line 25
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fInputSource:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    .line 26
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fReuse:Z

    .line 28
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fReaderInDefinedState:Z

    .line 29
    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fBindNamespaces:Z

    .line 30
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fDTDDecl:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->versionStr:Ljava/lang/String;

    .line 32
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->init(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    .line 33
    new-instance p2, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-direct {p2, v0, p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    return-void
.end method

.method public static final getEventTypeString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_EVENT_TYPE, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "CDATA"

    return-object p0

    :pswitch_1
    const-string p0, "DTD"

    return-object p0

    :pswitch_2
    const-string p0, "ATTRIBUTE"

    return-object p0

    :pswitch_3
    const-string p0, "ENTITY_REFERENCE"

    return-object p0

    :pswitch_4
    const-string p0, "END_DOCUMENT"

    return-object p0

    :pswitch_5
    const-string p0, "START_DOCUMENT"

    return-object p0

    :pswitch_6
    const-string p0, "SPACE"

    return-object p0

    :pswitch_7
    const-string p0, "COMMENT"

    return-object p0

    :pswitch_8
    const-string p0, "CHARACTERS"

    return-object p0

    :pswitch_9
    const-string p0, "PROCESSING_INSTRUCTION"

    return-object p0

    :pswitch_a
    const-string p0, "END_ELEMENT"

    return-object p0

    :pswitch_b
    const-string p0, "START_ELEMENT"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static pr(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private switchToXML11Scanner()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget v1, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityDepth:I

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/impl/XML11NSDocumentScannerImpl;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->reset(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->setPropertyManager(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getEntityScanner()Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->fCurrentEntity:Lcom/sun/xml/internal/stream/Entity$ScannedEntity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/xml/internal/stream/Entity$ScannedEntity;->mayReadChunks:Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->setScannerState(I)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iput v1, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->fEntityDepth:I

    iput-object v0, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->next()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    return-void
.end method


# virtual methods
.method public canReuse()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fReuse:Z

    return p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fReuse:Z

    return-void
.end method

.method public convertXNIQNametoJavaxQName(Lcom/sun/org/apache/xerces/internal/xni/QName;)Ljavax/xml/namespace/QName;
    .locals 2

    iget-object p0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    if-nez p0, :cond_0

    new-instance p0, Ljavax/xml/namespace/QName;

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Ljavax/xml/namespace/QName;

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getAttributeCount()I
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current state is not among the states "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "valid for getAttributeCount()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getAttributeIterator()Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getLength()I

    move-result p0

    return p0
.end method

.method public getAttributeLocalName(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getAttributeIterator()Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getLocalName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeName(I)Ljavax/xml/namespace/QName;
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current state is not among the states "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "valid for getAttributeName()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getAttributeIterator()Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getQualifiedName(I)Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->convertXNIQNametoJavaxQName(Lcom/sun/org/apache/xerces/internal/xni/QName;)Ljavax/xml/namespace/QName;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current state is not among the states "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "valid for getAttributeNamespace()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getAttributeIterator()Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getURI(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current state is not among the states "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "valid for getAttributePrefix()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getAttributeIterator()Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getPrefix(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeQName(I)Ljavax/xml/namespace/QName;
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current state is not among the states "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "valid for getAttributeQName()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getAttributeIterator()Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getAttributeIterator()Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getURI(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljavax/xml/namespace/QName;

    invoke-direct {p1, p0, v0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current state is not among the states "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "valid for getAttributeType()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getAttributeIterator()Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current state is not among the states "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "valid for getAttributeValue()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getAttributeIterator()Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 4
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Current state is not among the states "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "valid for getAttributeValue()"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getAttributeIterator()Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getColumnNumber()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->getColumnNumber()I

    move-result p0

    return p0
.end method

.method public getElementText()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->next()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    const/16 v3, 0xc

    if-eq v0, v3, :cond_4

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    const/16 v3, 0x9

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    goto :goto_2

    :cond_1
    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "elementGetText() function expects text only elment but START_ELEMENT was encountered."

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0

    :cond_2
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected event type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v1

    :cond_3
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string v0, "unexpected end of document when reading element text content"

    invoke-direct {p0, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->next()I

    move-result v0

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "parser must be on START_ELEMENT to read next text"

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->getEncoding()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEntityDecls()Ljava/util/List;
    .locals 5

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getEntityStore()Lcom/sun/xml/internal/stream/XMLEntityStorage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->getDeclaredEntities()Ljava/util/Hashtable;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/xml/internal/stream/Entity;

    new-instance v4, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;

    invoke-direct {v4}, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;-><init>()V

    invoke-virtual {v4, v1}, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;->setEntityName(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sun/xml/internal/stream/Entity;->isExternal()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v3, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;

    iget-object v1, v3, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-virtual {v4, v1}, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;->setXMLResourceIdentifier(Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;)V

    iget-object v1, v3, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;->notation:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;->setNotationName(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    check-cast v3, Lcom/sun/xml/internal/stream/Entity$InternalEntity;

    iget-object v1, v3, Lcom/sun/xml/internal/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;->setEntityReplacementText(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getEventType()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getPITarget()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getEntityName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getElementQName()Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object p0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    return-object p0
.end method

.method public getLocation()Ljavax/xml/stream/Location;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl$1;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl$1;-><init>(Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;)V

    return-object v0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 5

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal to call getName() when event type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Valid states are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getElementQName()Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->convertXNIQNametoJavaxQName(Lcom/sun/org/apache/xerces/internal/xni/QName;)Ljavax/xml/namespace/QName;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fNamespaceContextWrapper:Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;

    return-object p0
.end method

.method public getNamespaceCount()I
    .locals 6

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current event state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not among the states "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " valid for getNamespaceCount()."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->getNamespaceContext()Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getDeclaredPrefixCount()I

    move-result p0

    return p0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current state "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not among the states "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " valid for getNamespacePrefix()."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->getNamespaceContext()Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    :cond_2
    return-object p0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getElementQName()Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object p0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 5

    .line 3
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current state "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not among the states "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " valid for getNamespaceURI()."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->getNamespaceContext()Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->getNamespaceContext()Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->getNamespaceContext()Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNotationDecls()Ljava/util/List;
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fDTDScanner:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDScanner;

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDTDScannerImpl;->getGrammar()Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/dtd/nonvalidating/DTDGrammar;->getNotationDecls()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLNotationDecl;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/sun/xml/internal/stream/events/NotationDeclarationImpl;

    invoke-direct {v2, v1}, Lcom/sun/xml/internal/stream/events/NotationDeclarationImpl;-><init>(Lcom/sun/xml/internal/stream/dtd/nonvalidating/XMLNotationDecl;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    return-object v2
.end method

.method public getPIData()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getPIData()Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current state of the parser is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " But Expected state is "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getPITarget()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current state of the parser is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " But Expected state is "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getElementQName()Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object p0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/QName;->prefix:Ljava/lang/String;

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    if-eqz v0, :cond_2

    const-string v0, "javax.xml.stream.notations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getNotationDecls()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "javax.xml.stream.entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEntityDecls()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public getPropertyManager()Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    return-object p0
.end method

.method public getScanner()Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "returning scanner"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    const/4 v2, 0x5

    if-eq v0, v2, :cond_8

    const/16 v3, 0xc

    if-eq v0, v3, :cond_8

    const/4 v4, 0x6

    if-ne v0, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v5, 0x9

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getEntityName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-boolean v3, v2, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->foundBuiltInRefs:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getCharacterData()Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getEntityStore()Lcom/sun/xml/internal/stream/XMLEntityStorage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->getDeclaredEntities()Ljava/util/Hashtable;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/xml/internal/stream/Entity;

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/Entity;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p0, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;

    iget-object p0, p0, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    check-cast p0, Lcom/sun/xml/internal/stream/Entity$InternalEntity;

    iget-object p0, p0, Lcom/sun/xml/internal/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    return-object p0

    :cond_4
    return-object v1

    :cond_5
    const/16 v6, 0xb

    if-ne v0, v6, :cond_7

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fDTDDecl:Ljava/lang/String;

    if-eqz v0, :cond_6

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->getDTDDecl()Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fDTDDecl:Ljava/lang/String;

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not among the states"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " valid for getText() "

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getCharacterData()Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextCharacters(I[CII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    if-eqz p2, :cond_3

    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    if-ltz p1, :cond_2

    .line 4
    array-length v0, p2

    if-ge p3, v0, :cond_2

    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getTextLength()I

    move-result v0

    sub-int/2addr v0, p1

    if-ltz v0, :cond_1

    if-ge v0, p4, :cond_0

    move p4, v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getTextCharacters()[C

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getTextStart()I

    move-result p0

    add-int/2addr p0, p1

    invoke-static {v0, p0, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p4

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "sourceStart is greater thannumber of characters associated with this event"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "target char array can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTextCharacters()[C
    .locals 7

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/16 v3, 0xc

    if-eq v0, v3, :cond_1

    const/4 v4, 0x6

    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not among the states "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " valid for getTextCharacters() "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getCharacterData()Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    move-result-object p0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->ch:[C

    return-object p0
.end method

.method public getTextLength()I
    .locals 7

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/16 v3, 0xc

    if-eq v0, v3, :cond_1

    const/4 v4, 0x6

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not among the states "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " valid for getTextLength() "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getCharacterData()Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    move-result-object p0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    return p0
.end method

.method public getTextStart()I
    .locals 7

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/16 v3, 0xc

    if-eq v0, v3, :cond_1

    const/4 v4, 0x6

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not among the states "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " valid for getTextStart() "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getCharacterData()Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    move-result-object p0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->offset:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getPIData()Lcom/sun/org/apache/xerces/internal/util/XMLStringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getComment()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getCharacterData()Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getElementQName()Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object p0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;->getXMLVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasAttributes()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getAttributeIterator()Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->getLength()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasName()Z
    .locals 2

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasText()Z
    .locals 4

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_9

    const/4 v1, 0x5

    if-eq v0, v1, :cond_9

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getEntityName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-boolean v1, v1, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->foundBuiltInRefs:Z

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getEntityStore()Lcom/sun/xml/internal/stream/XMLEntityStorage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/XMLEntityStorage;->getDeclaredEntities()Ljava/util/Hashtable;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/xml/internal/stream/Entity;

    if-nez p0, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/Entity;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p0, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;

    iget-object p0, p0, Lcom/sun/xml/internal/stream/Entity$ExternalEntity;->entityLocation:Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    return v2

    :cond_4
    check-cast p0, Lcom/sun/xml/internal/stream/Entity$InternalEntity;

    iget-object p0, p0, Lcom/sun/xml/internal/stream/Entity$InternalEntity;->text:Ljava/lang/String;

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    :goto_1
    return v2

    :cond_6
    return v3

    :cond_7
    const/16 v1, 0xb

    if-ne v0, v1, :cond_8

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->fSeenDoctypeDecl:Z

    return p0

    :cond_8
    return v3

    :cond_9
    :goto_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getCharacterData()Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    move-result-object p0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->length:I

    if-lez p0, :cond_a

    goto :goto_3

    :cond_a
    move v2, v3

    :goto_3
    return v2
.end method

.method public hasValue()Z
    .locals 2

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public init(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fErrorReporter:Lcom/sun/xml/internal/stream/StaxErrorReporter;

    invoke-virtual {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http://apache.org/xml/properties/internal/entity-manager"

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->reset()V

    return-void
.end method

.method public isAttributeSpecified(I)Z
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current state is not among the states "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "valid for isAttributeSpecified()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->getAttributeIterator()Lcom/sun/org/apache/xerces/internal/util/XMLAttributesIteratorImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->isSpecified(I)Z

    move-result p0

    return p0
.end method

.method public isCharacters()Z
    .locals 1

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEndElement()Z
    .locals 1

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStandalone()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->isStandAlone()Z

    move-result p0

    return p0
.end method

.method public isStartElement()Z
    .locals 1

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWhiteSpace()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->isCharacters()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getTextCharacters()[C

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getTextStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getTextLength()I

    move-result p0

    add-int/2addr p0, v2

    :goto_1
    if-ge v2, p0, :cond_3

    aget-char v3, v0, v2

    invoke-static {v3}, Lcom/sun/org/apache/xerces/internal/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public next()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->next()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->versionStr:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->versionStr:Ljava/lang/String;

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->versionStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "1.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->switchToXML11Scanner()V

    :cond_1
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v2, p0, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-direct {v1, v2, p0, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public nextTag()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->next()I

    move-result v0

    :goto_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->isWhiteSpace()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_0
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->isWhiteSpace()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_1
    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v3, Ljavax/xml/stream/XMLStreamException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", expected "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " or "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-direct {v3, v0, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    throw v3

    :cond_4
    :goto_1
    return v0

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->next()I

    move-result v0

    goto :goto_0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Namespace URI "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " specified did not match "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "with current namespace URI"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getLocalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LocalName "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " specified did not match with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "current local name"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p2, Ljavax/xml/stream/XMLStreamException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Event type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " specified did "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "not match with current parser event "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getEventTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fReuse:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->reset(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->reset(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fDTDDecl:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityManager:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLEntityManager;->getEntityScanner()Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEntityScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLEntityScanner;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    const-string v2, "http://java.sun.com/xml/stream/properties/reader-in-defined-state"

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fReaderInDefinedState:Z

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    const-string v2, "javax.xml.stream.isNamespaceAware"

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fBindNamespaces:Z

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->versionStr:Ljava/lang/String;

    return-void
.end method

.method public setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fReuse:Z

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fReaderInDefinedState:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->next()I

    move-result p1

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->versionStr:Ljava/lang/String;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->getVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->versionStr:Ljava/lang/String;

    :cond_0
    iget p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fEventType:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->versionStr:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "1.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->switchToXML11Scanner()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {p1, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setPropertyManager(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V
    .locals 2

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    const-string v1, "stax-properties"

    invoke-virtual {v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLScanner;->setPropertyManager(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    return-void
.end method

.method public standaloneSet()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->fScanner:Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLDocumentFragmentScannerImpl;->isStandAlone()Z

    move-result p0

    return p0
.end method
