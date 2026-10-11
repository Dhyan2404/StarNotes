.class public final Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;
.super Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;
.source "SourceFile"


# instance fields
.field private _compiled:Z

.field private _disabled:Z

.field private _isSimpleNamedTemplate:Z

.field private _mode:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

.field private _name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

.field private _parameters:Ljava/util/Vector;

.field private _pattern:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

.field private _position:I

.field private _priority:D

.field private _simplified:Z

.field private _stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/TopLevelElement;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_disabled:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_compiled:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_simplified:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_isSimpleNamedTemplate:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_parameters:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    return-void
.end method

.method private resolveNamedTemplates(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getImportPrecedence()I

    move-result v1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getImportPrecedence()I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->disable()V

    return v0

    :cond_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addTemplate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->disable()V

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addParameter(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_parameters:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 6

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    iget-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_priority:D

    iget-wide v2, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_priority:D

    cmpl-double v4, v0, v2

    const/4 v5, 0x1

    if-lez v4, :cond_0

    return v5

    :cond_0
    cmpg-double v0, v0, v2

    const/4 v1, -0x1

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_position:I

    iget p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_position:I

    if-le p0, p1, :cond_2

    return v5

    :cond_2
    if-ge p0, p1, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public disable()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_disabled:Z

    return-void
.end method

.method public disabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_disabled:Z

    return p0
.end method

.method public display(I)V
    .locals 2

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->println(C)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->indent(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->indent(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_pattern:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->indent(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "match = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_pattern:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->println(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_mode:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->indent(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_mode:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->displayContents(I)V

    return-void
.end method

.method public getModeName()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_mode:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    return-object p0
.end method

.method public getName()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    return-object p0
.end method

.method public getParameters()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_parameters:Ljava/util/Vector;

    return-object p0
.end method

.method public getPattern()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_pattern:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_position:I

    return p0
.end method

.method public getPriority()D
    .locals 2

    iget-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_priority:D

    return-wide v0
.end method

.method public getStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    return-object p0
.end method

.method public hasParams()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_parameters:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNamed()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSimpleNamedTemplate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_isSimpleNamedTemplate:Z

    return p0
.end method

.method public isSimplified()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_simplified:Z

    return p0
.end method

.method public parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 8

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "match"

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "priority"

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object v5

    iput-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "INVALID_QNAME_ERR"

    const/4 v7, 0x3

    if-lez v5, :cond_1

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidQName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {v5, v6, v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {p1, v7, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :cond_0
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/utils/XML11Char;->isXML11ValidQName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {v0, v6, v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {p1, v7, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :cond_2
    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_mode:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    invoke-virtual {p1, p0, v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->parsePattern(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_pattern:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_priority:D

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_pattern:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;->getPriority()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_priority:D

    goto :goto_0

    :cond_6
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    iput-wide v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_priority:D

    :goto_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getTemplateIndex()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_position:I

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addTemplate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->resolveNamedTemplates(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v2, "TEMPLATE_REDEF_ERR"

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-direct {v0, v2, v3, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {p1, v7, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :cond_7
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_pattern:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_mode:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_isSimpleNamedTemplate:Z

    :cond_8
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->_parent:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    instance-of v2, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    if-eqz v2, :cond_9

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->addTemplate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)V

    :cond_9
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->setTemplate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->parseChildren(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->setTemplate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)V

    return-void
.end method

.method public parseSimplified(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    .locals 4

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_mode:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_priority:D

    const-string v0, "/"

    invoke-virtual {p2, p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->parsePattern(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_pattern:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_stylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getContents()Ljava/util/Vector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    instance-of v3, v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->addElement(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {v2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {v0, v1, p0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->setTemplate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)V

    invoke-virtual {v2, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->setTemplate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)V

    :cond_0
    return-void
.end method

.method public setName(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    :cond_0
    return-void
.end method

.method public setSimplified()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_simplified:Z

    return-void
.end method

.method public translate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V
    .locals 7

    invoke-virtual {p1}, Lcom/sun/org/apache/bcel/internal/generic/ClassGen;->getConstantPool()Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sun/org/apache/bcel/internal/generic/MethodGen;->getInstructionList()Lcom/sun/org/apache/bcel/internal/generic/InstructionList;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_disabled:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->getClassName()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_compiled:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->isNamed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_name:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;->loadTranslet()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadDOM()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadIterator()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadHandler()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;->loadCurrentNode()Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    new-instance p1, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;

    const-string p2, "(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xml/internal/dtm/DTMAxisIterator;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;I)V"

    invoke-virtual {v0, v2, p0, p2}, Lcom/sun/org/apache/bcel/internal/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/bcel/internal/generic/INVOKEVIRTUAL;-><init>(I)V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->append(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/InstructionHandle;

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_compiled:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_compiled:Z

    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_isSimpleNamedTemplate:Z

    if-eqz v2, :cond_3

    instance-of v2, p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NamedMethodGenerator;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_parameters:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    move-object v3, p2

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NamedMethodGenerator;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_parameters:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NamedMethodGenerator;->loadParameter(I)Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;->setLoadInstruction(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/NamedMethodGenerator;->storeParameter(I)Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;->setStoreInstruction(Lcom/sun/org/apache/bcel/internal/generic/Instruction;)Lcom/sun/org/apache/bcel/internal/generic/Instruction;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->translateContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ClassGenerator;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodGenerator;)V

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/bcel/internal/generic/InstructionList;->setPositions(Z)V

    return-void
.end method

.method public typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;->_pattern:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->typeCheckContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    move-result-object p0

    return-object p0
.end method
