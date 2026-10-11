.class public Lcom/sun/org/apache/xerces/internal/parsers/SecurityConfiguration;
.super Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;
.source "SourceFile"


# static fields
.field protected static final SECURITY_MANAGER_PROPERTY:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/SecurityConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/SecurityConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/parsers/SecurityConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/parsers/XIncludeAwareParserConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V

    .line 5
    new-instance p1, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    invoke-direct {p1}, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;-><init>()V

    const-string p2, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
