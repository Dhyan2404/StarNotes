.class public Lcom/sun/org/apache/xerces/internal/impl/dtd/XML11DTDProcessor;
.super Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xerces/internal/impl/dtd/XMLDTDLoader;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;)V

    return-void
.end method


# virtual methods
.method public isValidName(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isValidNmtoken(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/util/XML11Char;->isXML11ValidNmtoken(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
