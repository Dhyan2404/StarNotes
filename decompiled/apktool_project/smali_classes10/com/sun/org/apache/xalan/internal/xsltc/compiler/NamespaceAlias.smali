.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NamespaceAlias;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;
.source "SourceFile"


# instance fields
.field private rPrefix:Ljava/lang/String;

.field private sPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;-><init>()V

    return-void
.end method


# virtual methods
.method public parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 1

    const-string v0, "stylesheet-prefix"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NamespaceAlias;->sPrefix:Ljava/lang/String;

    const-string v0, "result-prefix"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NamespaceAlias;->rPrefix:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NamespaceAlias;->sPrefix:Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/NamespaceAlias;->rPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrefixAlias(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 0

    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    sget-object p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    return-object p0
.end method
