.class final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Import;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;
.source "SourceFile"


# instance fields
.field private _imported:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Import;->_imported:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    return-void
.end method


# virtual methods
.method public getImportedStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Import;->_imported:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    return-object p0
.end method

.method public parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 7

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getCurrentStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object v1

    :try_start_0
    const-string v2, "href"

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->checkForLoop(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v3, "CIRCULAR_INCLUDE_ERR"

    invoke-direct {v0, v3, v2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    const/4 p0, 0x2

    invoke-virtual {p1, p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->setCurrentStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getSourceLoader()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SourceLoader;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v4, v2, v3, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SourceLoader;->loadSource(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;)Lorg/xml/sax/InputSource;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    :cond_1
    move-object v0, v5

    move-object v5, v6

    goto :goto_0

    :cond_2
    move-object v0, v5

    :goto_0
    if-nez v5, :cond_3

    invoke-static {v2, v3}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1, v0, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->parse(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->parse(Lorg/xml/sax/InputSource;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->setCurrentStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    return-void

    :cond_5
    :try_start_2
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->makeStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Import;->_imported:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_6

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->setCurrentStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    return-void

    :cond_6
    :try_start_3
    invoke-virtual {v0, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setSourceLoader(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SourceLoader;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Import;->_imported:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setSystemId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Import;->_imported:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setParentStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Import;->_imported:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setImportingStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Import;->_imported:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getTemplateInlining()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setTemplateInlining(Z)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getCurrentImportPrecedence()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getNextImportPrecedence()I

    move-result v2

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Import;->_imported:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setImportPrecedence(I)V

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setImportPrecedence(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Import;->_imported:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->setCurrentStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Import;->_imported:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Import;->_imported:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elements()Ljava/util/Enumeration;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getTopLevelStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;

    if-eqz v3, :cond_7

    instance-of v3, v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;

    if-eqz v3, :cond_8

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->addVariable(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;)I

    goto :goto_2

    :cond_8
    instance-of v3, v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;

    if-eqz v3, :cond_9

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->addParam(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;)I

    goto :goto_2

    :cond_9
    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->addElement(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_a
    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->setCurrentStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    return-void

    :goto_3
    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->setCurrentStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    throw p0
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
