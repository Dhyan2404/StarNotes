.class public Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;
.super Lorg/apache/xerces/impl/dtd/XMLDTDLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/impl/XMLErrorReporter;Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/impl/XMLErrorReporter;Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V

    return-void
.end method


# virtual methods
.method public createDTDScanner(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/impl/XMLErrorReporter;Lorg/apache/xerces/impl/XMLEntityManager;)Lorg/apache/xerces/impl/XMLDTDScannerImpl;
    .locals 0

    new-instance p0, Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xerces/impl/XML11DTDScannerImpl;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/impl/XMLErrorReporter;Lorg/apache/xerces/impl/XMLEntityManager;)V

    return-object p0
.end method

.method public getScannerVersion()S
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public isValidName(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lorg/apache/xerces/util/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isValidNmtoken(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lorg/apache/xerces/util/XML11Char;->isXML11ValidNmtoken(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
