.class public Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Constants;
.implements Lorg/xml/sax/ContentHandler;


# static fields
.field private static final TRANSLET:Ljava/lang/String; = "translet"

.field private static final XSL:Ljava/lang/String; = "xsl"


# instance fields
.field private _PIcharset:Ljava/lang/String;

.field private _PImedia:Ljava/lang/String;

.field private _PItitle:Ljava/lang/String;

.field private _currentImportPrecedence:I

.field private _currentStylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

.field private _errors:Ljava/util/Vector;

.field private _excludeResultPrefixes:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

.field private _extensionElementPrefixes:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

.field private _instructionAttrs:Ljava/util/Hashtable;

.field private _instructionClasses:Ljava/util/Hashtable;

.field private _locator:Lorg/xml/sax/Locator;

.field private _namespaces:Ljava/util/Hashtable;

.field private _output:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;

.field private _parentStack:Ljava/util/Stack;

.field private _prefixMapping:Ljava/util/Hashtable;

.field private _qNames:Ljava/util/Hashtable;

.field private _root:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

.field private _rootNamespaceDef:Z

.field private _symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

.field private _target:Ljava/lang/String;

.field private _template:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

.field private _templateIndex:I

.field private _useAttributeSets:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

.field private _variableScope:Ljava/util/Hashtable;

.field private _warnings:Ljava/util/Vector;

.field private _xpathParser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

.field private _xsltc:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

.field private versionIsOne:Z


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_locator:Lorg/xml/sax/Locator;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_PImedia:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_PItitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_PIcharset:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_templateIndex:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->versionIsOne:Z

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_parentStack:Ljava/util/Stack;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_prefixMapping:Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_xsltc:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    return-void
.end method

.method private addVariableOrParam(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_variableScope:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getName()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/util/Stack;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_variableScope:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getName()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_variableScope:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;->getName()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private checkForSuperfluousAttributes(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Lorg/xml/sax/Attributes;)V
    .locals 8

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getQName()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    instance-of v1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_instructionAttrs:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->versionIsOne:Z

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    invoke-interface {p2}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    invoke-interface {p2, v4}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_0

    const-string v6, "version"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p2, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1.0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->versionIsOne:Z

    :cond_0
    const-string v6, "xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_1

    goto :goto_3

    :cond_1
    move v6, v3

    :goto_1
    array-length v7, v0

    if-ge v6, v7, :cond_3

    aget-object v7, v0, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    array-length v7, v0

    if-ne v6, v7, :cond_4

    new-instance v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v7, "ILLEGAL_ATTRIBUTE_ERR"

    invoke-direct {v6, v7, v5, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    const/4 v5, 0x1

    invoke-virtual {v6, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->setWarningError(Z)V

    const/4 v5, 0x4

    invoke-virtual {p0, v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private findStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    if-eqz v1, :cond_1

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getContents()Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    invoke-direct {p0, v3, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->findStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getLineNumber()I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_locator:Lorg/xml/sax/Locator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getQName(Ljava/lang/String;ZZ)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;
    .locals 5

    const/16 v0, 0x3a

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const-string v3, "xmlns"

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1

    const/4 p3, 0x0

    .line 4
    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    add-int/2addr v0, v2

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-virtual {v0, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getLineNumber()I

    move-result p2

    .line 9
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v1, "NAMESPACE_UNDEF_ERR"

    invoke-direct {v0, v1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    const/4 p2, 0x3

    .line 10
    invoke-virtual {p0, p2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    .line 11
    :cond_0
    invoke-virtual {p0, v4, p3, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object p0

    return-object p0

    .line 12
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move p3, v2

    :cond_2
    if-eqz p3, :cond_3

    move-object p2, v4

    goto :goto_0

    .line 13
    :cond_3
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string p3, ""

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 14
    :goto_0
    invoke-virtual {p0, p2, v4, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object p0

    return-object p0
.end method

.method private getStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CompilerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_target:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_rootNamespaceDef:Z

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p1, "MISSING_XSLT_URI_ERR"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CompilerException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CompilerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_target:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->findStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v1, "MISSING_XSLT_TARGET_ERR"

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_target:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CompilerException;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CompilerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_target:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->loadExternalStylesheet(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object p0

    return-object p0
.end method

.method private getTokenValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 p0, 0x22

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_instructionAttrs:Ljava/util/Hashtable;

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    const-string v2, "xsl"

    invoke-virtual {p0, v1, v2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initExtClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_instructionClasses:Ljava/util/Hashtable;

    const-string v1, "http://xml.apache.org/xalan/xsltc"

    const-string v2, "translet"

    invoke-virtual {p0, v1, v2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.sun.org.apache.xalan.internal.xsltc.compiler."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initExtClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_instructionClasses:Ljava/util/Hashtable;

    const-string v1, "translet"

    invoke-virtual {p0, p1, v1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "com.sun.org.apache.xalan.internal.xsltc.compiler."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initExtClasses()V
    .locals 3

    const-string v0, "output"

    const-string v1, "TransletOutput"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initExtClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://xml.apache.org/xalan/redirect"

    const-string v2, "write"

    invoke-direct {p0, v0, v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initExtClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initInstructionAttrs()V
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "match"

    const-string v2, "name"

    const-string v3, "priority"

    const-string v4, "mode"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v5, "template"

    invoke-direct {v0, v5, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v3, "id"

    const-string v5, "version"

    const-string v6, "extension-element-prefixes"

    const-string v7, "exclude-result-prefixes"

    filled-new-array {v3, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "stylesheet"

    invoke-direct {v0, v9, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v8, "transform"

    filled-new-array {v3, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v8, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v3, "disable-output-escaping"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "text"

    invoke-direct {v0, v6, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v5, "test"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "if"

    invoke-direct {v0, v7, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "choose"

    invoke-direct {v0, v8, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v7, "when"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v7, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v5, "otherwise"

    new-array v7, v6, [Ljava/lang/String;

    invoke-direct {v0, v5, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v5, "select"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "for-each"

    invoke-direct {v0, v8, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v7, "terminate"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "message"

    invoke-direct {v0, v8, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v9, "level"

    const-string v10, "count"

    const-string v11, "from"

    const-string v12, "value"

    const-string v13, "format"

    const-string v14, "lang"

    const-string v15, "letter-value"

    const-string v16, "grouping-separator"

    const-string v17, "grouping-size"

    filled-new-array/range {v9 .. v17}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "number"

    invoke-direct {v0, v8, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v7, "comment"

    new-array v8, v6, [Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v7, "use-attribute-sets"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "copy"

    invoke-direct {v0, v9, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v8, "copy-of"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v8, "param"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v8, "with-param"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v8, "variable"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v10, "method"

    const-string v11, "version"

    const-string v12, "encoding"

    const-string v13, "omit-xml-declaration"

    const-string v14, "standalone"

    const-string v15, "doctype-public"

    const-string v16, "doctype-system"

    const-string v17, "cdata-section-elements"

    const-string v18, "indent"

    const-string v19, "media-type"

    filled-new-array/range {v10 .. v19}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "output"

    invoke-direct {v0, v9, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v8, "lang"

    const-string v9, "data-type"

    const-string v10, "order"

    const-string v11, "case-order"

    filled-new-array {v5, v10, v11, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "sort"

    invoke-direct {v0, v9, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v8, "use"

    filled-new-array {v2, v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const-string v8, "key"

    invoke-direct {v0, v8, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "fallback"

    new-array v8, v6, [Ljava/lang/String;

    invoke-direct {v0, v1, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "namespace"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "attribute"

    invoke-direct {v0, v9, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v8, "attribute-set"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v8, "value-of"

    filled-new-array {v5, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v8, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v3, "element"

    filled-new-array {v2, v1, v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "call-template"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "apply-templates"

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "apply-imports"

    new-array v3, v6, [Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v4, "name"

    const-string v5, "decimal-separator"

    const-string v6, "grouping-separator"

    const-string v7, "infinity"

    const-string v8, "minus-sign"

    const-string v9, "NaN"

    const-string v10, "percent"

    const-string v11, "per-mille"

    const-string v12, "zero-digit"

    const-string v13, "digit"

    const-string v14, "pattern-separator"

    filled-new-array/range {v4 .. v14}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "decimal-format"

    invoke-direct {v0, v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "href"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "import"

    invoke-direct {v0, v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v3, "include"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "elements"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "strip-space"

    invoke-direct {v0, v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v3, "preserve-space"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "processing-instruction"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "stylesheet-prefix"

    const-string v2, "result-prefix"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "namespace-alias"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initAttrTable(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private initStdClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_instructionClasses:Ljava/util/Hashtable;

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    const-string v2, "xsl"

    invoke-virtual {p0, v1, v2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.sun.org.apache.xalan.internal.xsltc.compiler."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initStdClasses()V
    .locals 2

    const-string v0, "template"

    const-string v1, "Template"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stylesheet"

    const-string v1, "Stylesheet"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text"

    const-string v1, "Text"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "if"

    const-string v1, "If"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "choose"

    const-string v1, "Choose"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "when"

    const-string v1, "When"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "otherwise"

    const-string v1, "Otherwise"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "for-each"

    const-string v1, "ForEach"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "message"

    const-string v1, "Message"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "number"

    const-string v1, "Number"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "comment"

    const-string v1, "Comment"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "copy"

    const-string v1, "Copy"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "copy-of"

    const-string v1, "CopyOf"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "param"

    const-string v1, "Param"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "with-param"

    const-string v1, "WithParam"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "variable"

    const-string v1, "Variable"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "output"

    const-string v1, "Output"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sort"

    const-string v1, "Sort"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key"

    const-string v1, "Key"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fallback"

    const-string v1, "Fallback"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "attribute"

    const-string v1, "XslAttribute"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "attribute-set"

    const-string v1, "AttributeSet"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "value-of"

    const-string v1, "ValueOf"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "element"

    const-string v1, "XslElement"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "call-template"

    const-string v1, "CallTemplate"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "apply-templates"

    const-string v1, "ApplyTemplates"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "apply-imports"

    const-string v1, "ApplyImports"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "decimal-format"

    const-string v1, "DecimalFormatting"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "import"

    const-string v1, "Import"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "include"

    const-string v1, "Include"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "strip-space"

    const-string v1, "Whitespace"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "preserve-space"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "processing-instruction"

    const-string v1, "ProcessingInstruction"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "namespace-alias"

    const-string v1, "NamespaceAlias"

    invoke-direct {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClass(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initSymbolTable()V
    .locals 40

    move-object/from16 v0, p0

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    sget-object v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Int:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    sget-object v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Void:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    new-instance v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    sget-object v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Real:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {v4, v2, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    new-instance v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    sget-object v6, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->String:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {v4, v2, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    new-instance v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    sget-object v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->NodeSet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {v7, v2, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    new-instance v9, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v9, v5, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    new-instance v9, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v9, v5, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    new-instance v10, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v10, v5, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    new-instance v11, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v11, v5, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    new-instance v12, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    sget-object v13, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Reference:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {v12, v5, v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    new-instance v14, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v14, v2, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    new-instance v15, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v15, v8, v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    move-object/from16 v16, v14

    new-instance v14, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v14, v8, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    move-object/from16 v17, v15

    new-instance v15, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v15, v8, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    move-object/from16 v18, v11

    new-instance v11, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v11, v8, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    move-object/from16 v19, v7

    new-instance v7, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    move-object/from16 v20, v14

    sget-object v14, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Node:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {v7, v14, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    move-object/from16 v21, v11

    new-instance v11, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v11, v6, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    move-object/from16 v22, v15

    new-instance v15, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v15, v6, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    move-object/from16 v23, v15

    new-instance v15, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v15, v6, v14}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    new-instance v14, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v14, v6, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    move-object/from16 v24, v14

    new-instance v14, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v14, v6, v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    move-object/from16 v25, v4

    new-instance v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    move-object/from16 v26, v14

    sget-object v14, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Boolean:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {v4, v14, v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    move-object/from16 v27, v4

    new-instance v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v4, v14, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v3, v14, v14}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    move-object/from16 v28, v9

    new-instance v9, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v9, v14, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    move-object/from16 v29, v9

    new-instance v9, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    move-object/from16 v30, v12

    sget-object v12, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;->Object:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;

    invoke-direct {v9, v8, v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    new-instance v9, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v9, v5, v5, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    new-instance v12, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v12, v2, v2, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    move-object/from16 v31, v12

    new-instance v12, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v12, v14, v5, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    move-object/from16 v32, v12

    new-instance v12, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v12, v14, v2, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v2, v6, v6, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    move-object/from16 v33, v12

    new-instance v12, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v12, v6, v5, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    move-object/from16 v34, v9

    new-instance v9, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v9, v6, v6, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    move-object/from16 v35, v2

    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v2, v13, v6, v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    new-instance v13, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v13, v8, v6, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    move-object/from16 v36, v2

    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v2, v8, v6, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    move-object/from16 v37, v9

    new-instance v9, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v9, v14, v14, v14}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    move-object/from16 v38, v9

    new-instance v9, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v9, v14, v6, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    new-instance v14, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v14, v6, v6, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    new-instance v8, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v8, v6, v5, v6, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    new-instance v14, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v14, v6, v6, v5, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    new-instance v5, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;

    invoke-direct {v5, v6, v6, v6, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;)V

    iget-object v6, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-object/from16 v39, v14

    const-string v14, "current"

    invoke-virtual {v6, v14, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v6, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v7, "last"

    invoke-virtual {v6, v7, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v6, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v7, "position"

    invoke-virtual {v6, v7, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v6, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v7, "true"

    invoke-virtual {v6, v7, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v6, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v7, "false"

    invoke-virtual {v6, v7, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v4, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v6, "not"

    invoke-virtual {v4, v6, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v4, "name"

    invoke-virtual {v3, v4, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-virtual {v3, v4, v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v4, "generate-id"

    invoke-virtual {v3, v4, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-virtual {v3, v4, v15}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v4, "ceiling"

    invoke-virtual {v3, v4, v10}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v4, "floor"

    invoke-virtual {v3, v4, v10}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v4, "round"

    invoke-virtual {v3, v4, v10}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v4, "contains"

    invoke-virtual {v3, v4, v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v4, "number"

    move-object/from16 v6, v30

    invoke-virtual {v3, v4, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-object/from16 v6, v28

    invoke-virtual {v3, v4, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v4, "boolean"

    move-object/from16 v6, v27

    invoke-virtual {v3, v4, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v4, "string"

    move-object/from16 v6, v26

    invoke-virtual {v3, v4, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-virtual {v3, v4, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v4, "translate"

    invoke-virtual {v3, v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v3, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v4, "string-length"

    invoke-virtual {v3, v4, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-object/from16 v3, v25

    invoke-virtual {v1, v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v3, "starts-with"

    invoke-virtual {v1, v3, v9}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v3, "format-number"

    invoke-virtual {v1, v3, v12}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-virtual {v1, v3, v8}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v3, "unparsed-entity-uri"

    move-object/from16 v4, v23

    invoke-virtual {v1, v3, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v3, "key"

    invoke-virtual {v1, v3, v13}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-virtual {v1, v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v2, "id"

    move-object/from16 v3, v22

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-object/from16 v5, v21

    invoke-virtual {v1, v2, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v2, "namespace-uri"

    invoke-virtual {v1, v2, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v5, "function-available"

    move-object/from16 v7, v29

    invoke-virtual {v1, v5, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v5, "element-available"

    invoke-virtual {v1, v5, v7}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v5, "document"

    invoke-virtual {v1, v5, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-object/from16 v3, v20

    invoke-virtual {v1, v5, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v3, "count"

    move-object/from16 v5, v19

    invoke-virtual {v1, v3, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v3, "sum"

    move-object/from16 v5, v18

    invoke-virtual {v1, v3, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v3, "local-name"

    invoke-virtual {v1, v3, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-object/from16 v5, v24

    invoke-virtual {v1, v3, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-virtual {v1, v2, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-virtual {v1, v2, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v2, "substring"

    move-object/from16 v3, v37

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-object/from16 v3, v39

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v2, "substring-after"

    move-object/from16 v3, v35

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v2, "substring-before"

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v2, "normalize-space"

    invoke-virtual {v1, v2, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-virtual {v1, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v2, "system-property"

    invoke-virtual {v1, v2, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v2, "nodeset"

    move-object/from16 v3, v17

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v2, "objectType"

    invoke-virtual {v1, v2, v6}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v2, "cast"

    move-object/from16 v3, v36

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v2, "+"

    move-object/from16 v3, v34

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v4, "-"

    invoke-virtual {v1, v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v5, "*"

    invoke-virtual {v1, v5, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v6, "/"

    invoke-virtual {v1, v6, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v6, "%"

    invoke-virtual {v1, v6, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-object/from16 v3, v31

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-virtual {v1, v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-virtual {v1, v5, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v2, "<"

    move-object/from16 v3, v32

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v4, "<="

    invoke-virtual {v1, v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v5, ">"

    invoke-virtual {v1, v5, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v6, ">="

    invoke-virtual {v1, v6, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-object/from16 v3, v33

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-virtual {v1, v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-virtual {v1, v5, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-virtual {v1, v6, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-object/from16 v3, v38

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-virtual {v1, v4, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-virtual {v1, v5, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-virtual {v1, v6, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v2, "or"

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v2, "and"

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    const-string v2, "u-"

    invoke-virtual {v1, v2, v10}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->addPrimop(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/MethodType;)V

    return-void
.end method

.method private loadExternalStylesheet(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CompilerException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->parse(Lorg/xml/sax/InputSource;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object p0

    return-object p0
.end method

.method private parseTopLevel(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;
    .locals 6

    const-string v0, "XPATH_PARSER_ERR"

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getLineNumber()I

    move-result v1

    const/4 v2, 0x3

    :try_start_0
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_xpathParser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    new-instance v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathLexer;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathLexer;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3, v4}, Lcom/sun/java_cup/internal/runtime/lr_parser;->setScanner(Lcom/sun/java_cup/internal/runtime/Scanner;)V

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_xpathParser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    invoke-virtual {p2, p3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;->parse(Ljava/lang/String;I)Lcom/sun/java_cup/internal/runtime/Symbol;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/sun/java_cup/internal/runtime/Symbol;->value:Ljava/lang/Object;

    check-cast p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {p2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setLineNumber(I)V

    return-object p2

    :cond_0
    new-instance p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {p2, v0, p3, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {p0, v2, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_xsltc:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->debug()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    new-instance p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {p2, v0, p3, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {p0, v2, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :goto_0
    sget-object p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->Dummy:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    return-object p1
.end method


# virtual methods
.method public addParameter(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Param;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->addVariableOrParam(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;)V

    return-void
.end method

.method public addVariable(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Variable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->addVariableOrParam(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;)V

    return-void
.end method

.method public characters([CII)V
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_parentStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    instance-of p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;

    if-eqz p2, :cond_1

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;->setText(Ljava/lang/String;)V

    return-void

    :cond_1
    instance-of p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    if-eqz p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->lastChild()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object p2

    if-eqz p2, :cond_4

    instance-of v1, p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;

    if-eqz v1, :cond_4

    check-cast p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;->isTextElement()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    if-gt p3, v1, :cond_3

    const/4 p3, 0x0

    aget-char p1, p1, p3

    const/16 p3, 0x100

    if-ge p1, p3, :cond_4

    :cond_3
    invoke-virtual {p2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;->setText(Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;

    invoke-direct {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->addElement(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    return-void
.end method

.method public createAST(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V
    .locals 6

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->parseContents(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getImportPrecedence()I

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Text;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getLineNumber()I

    move-result v2

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v4, "ILLEGAL_TEXT_NODE_ERR"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->errorsFound()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->typeCheck(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Type;
    :try_end_0
    .catch Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public elementSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_instructionClasses:Ljava/util/Hashtable;

    const-string v1, "xsl"

    invoke-virtual {p0, p1, v1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_parentStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public errorsFound()Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_errors:Ljava/util/Vector;

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

.method public functionSupported(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->lookupPrimop(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCurrentImportPrecedence()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_currentImportPrecedence:I

    return p0
.end method

.method public getCurrentStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_currentStylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    return-object p0
.end method

.method public getDocumentRoot()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_root:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    return-object p0
.end method

.method public getErrors()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_errors:Ljava/util/Vector;

    return-object p0
.end method

.method public getExcludeResultPrefixes()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_excludeResultPrefixes:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    return-object p0
.end method

.method public getExtensionElementPrefixes()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_extensionElementPrefixes:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    return-object p0
.end method

.method public getNextImportPrecedence()I
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_currentImportPrecedence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_currentImportPrecedence:I

    return v0
.end method

.method public getOutput()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_output:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;

    return-object p0
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getTopLevelStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->getOutputProperties()Ljava/util/Properties;

    move-result-object p0

    return-object p0
.end method

.method public getQName(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;
    .locals 1

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object p0

    return-object p0
.end method

.method public getQName(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;ZZ)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object p0

    return-object p0
.end method

.method public getQName(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;
    .locals 1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object p0

    return-object p0
.end method

.method public getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;
    .locals 1

    if-eqz p1, :cond_3

    const-string v0, ""

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_namespaces:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Dictionary;

    if-nez v0, :cond_1

    .line 17
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_namespaces:Ljava/util/Hashtable;

    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p2, p3, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 20
    :cond_1
    invoke-virtual {v0, p3}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    if-nez p0, :cond_2

    .line 21
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3, p0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p0

    .line 23
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_qNames:Ljava/util/Hashtable;

    invoke-virtual {p1, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    if-nez p1, :cond_4

    .line 24
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_qNames:Ljava/util/Hashtable;

    invoke-virtual {p0, p3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object p1
.end method

.method public getQName(Ljava/lang/String;Z)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;ZZ)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object p0

    return-object p0
.end method

.method public getQNameIgnoreDefaultNs(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;ZZ)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object p0

    return-object p0
.end method

.method public getQNameSafe(Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;
    .locals 5

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, ""

    const-string v3, "xmlns"

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    invoke-virtual {p0, v2, v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v4

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0, v4, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object p0

    return-object p0
.end method

.method public getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    return-object p0
.end method

.method public getTemplate()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_template:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    return-object p0
.end method

.method public getTemplateIndex()I
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_templateIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_templateIndex:I

    return v0
.end method

.method public getTopLevelStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_xsltc:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object p0

    return-object p0
.end method

.method public getUseAttributeSets()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_useAttributeSets:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    return-object p0
.end method

.method public getWarnings()Ljava/util/Vector;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_warnings:Ljava/util/Vector;

    return-object p0
.end method

.method public getXSLTC()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_xsltc:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    return-object p0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_qNames:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_namespaces:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_instructionClasses:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_instructionAttrs:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_variableScope:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_template:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_errors:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_warnings:Ljava/util/Vector;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    invoke-direct {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_symbolTable:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    invoke-direct {v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_xpathParser:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XPathParser;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_currentStylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_output:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_root:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_rootNamespaceDef:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_currentImportPrecedence:I

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initStdClasses()V

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initInstructionAttrs()V

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initExtClasses()V

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->initSymbolTable()V

    const-string v0, "use-attribute-sets"

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    const-string v2, "xsl"

    invoke-virtual {p0, v1, v2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_useAttributeSets:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    const-string v0, "exclude-result-prefixes"

    invoke-virtual {p0, v1, v2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_excludeResultPrefixes:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    const-string v0, "extension-element-prefixes"

    invoke-virtual {p0, v1, v2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_extensionElementPrefixes:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    return-void
.end method

.method public lookupVariable(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_variableScope:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    return-object p0

    :cond_0
    instance-of p1, p0, Ljava/util/Stack;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/VariableBase;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public makeInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;
    .locals 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_instructionClasses:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {v1, p1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setQName(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)V

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_locator:Lorg/xml/sax/Locator;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getLineNumber()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setLineNumber(I)V

    :cond_0
    instance-of p2, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_xsltc:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    move-object p3, p1

    check-cast p3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V

    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->checkForSuperfluousAttributes(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Lorg/xml/sax/Attributes;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p2

    move-object v3, p1

    goto :goto_0

    :catch_1
    move-object v3, p1

    goto :goto_1

    :catch_2
    move-exception p2

    :goto_0
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p3, "INTERNAL_ERR"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    goto/16 :goto_3

    :catch_3
    :goto_1
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p2, "CLASS_NOT_FOUND_ERR"

    invoke-direct {p1, p2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    goto/16 :goto_3

    :cond_2
    if-eqz p1, :cond_5

    const-string p4, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;

    const/4 p4, 0x0

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p2, "UNSUPPORTED_XSL_ERR"

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getLineNumber()I

    move-result p4

    invoke-direct {p1, p2, p4, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;->setErrorMessage(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    iget-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->versionIsOne:Z

    if-eqz p2, :cond_5

    invoke-virtual {p0, v2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    goto :goto_2

    :cond_3
    const-string p4, "http://xml.apache.org/xalan/xsltc"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const-string v1, "UNSUPPORTED_EXT_ERR"

    if-eqz p4, :cond_4

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;

    invoke-direct {v3, p1, p2, p3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getLineNumber()I

    move-result p2

    invoke-direct {p1, v1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;->setErrorMessage(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    goto :goto_2

    :cond_4
    iget-object p4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_xsltc:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    invoke-virtual {p4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->getStylesheet()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    move-result-object p4

    if-eqz p4, :cond_5

    invoke-virtual {p4, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->isExtension(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_parentStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    if-eq p4, v4, :cond_5

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;

    invoke-direct {v3, p1, p2, p3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getLineNumber()I

    move-result p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p4, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {v3, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/UnsupportedElement;->setErrorMessage(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :cond_5
    :goto_2
    if-nez v3, :cond_6

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;

    invoke-direct {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;-><init>()V

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getLineNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setLineNumber(I)V

    goto :goto_4

    :cond_6
    :goto_3
    move-object p1, v3

    :goto_4
    if-eqz p1, :cond_7

    instance-of p0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;

    if-eqz p0, :cond_7

    move-object p0, p1

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/LiteralElement;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setQName(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)V

    :cond_7
    return-object p1
.end method

.method public makeStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CompilerException;
        }
    .end annotation

    const-string v0, ""

    :try_start_0
    instance-of v1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-direct {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;-><init>()V

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setSimplified()V

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->addElement(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttributes()Lorg/xml/sax/Attributes;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setAttributes(Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;)V

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->addPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->setParser(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v0, "NOT_STYLESHEET_ERR"

    invoke-direct {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CompilerException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CompilerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parse(Lorg/xml/sax/InputSource;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;
    .locals 4

    const/4 v0, 0x3

    .line 15
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_xsltc:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->isSecureProcessing()Z

    move-result v2
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    :try_start_1
    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    .line 17
    invoke-virtual {v1, v2, v3}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_4

    :catch_0
    :cond_0
    :try_start_2
    const-string v2, "http://xml.org/sax/features/namespaces"

    .line 18
    invoke-virtual {v1, v2, v3}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 19
    :catch_1
    :try_start_3
    invoke-virtual {v1, v3}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 20
    :goto_0
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 22
    invoke-virtual {p0, v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->parse(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object p0
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xml/sax/SAXParseException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2

    return-object p0

    :catch_2
    move-exception p1

    .line 23
    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 24
    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    goto :goto_1

    .line 25
    :catch_4
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v1, "SAX_PARSER_CONFIG_ERR"

    invoke-direct {p1, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public parse(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;
    .locals 2

    const/4 v0, 0x3

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 2
    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 3
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_root:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/org/apache/xalan/internal/xsltc/compiler/CompilerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 4
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_xsltc:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->debug()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    :cond_0
    new-instance p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 6
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_xsltc:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->debug()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    :cond_1
    new-instance p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 8
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object p2

    .line 9
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_xsltc:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->debug()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    :cond_2
    new-instance p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 13
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_xsltc:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->debug()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :cond_3
    new-instance p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public parseExpression(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<EXPRESSION>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->parseTopLevel(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    return-object p0
.end method

.method public parseExpression(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;
    .locals 1

    .line 2
    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p2

    .line 4
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<EXPRESSION>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->parseTopLevel(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Expression;

    return-object p0
.end method

.method public parsePattern(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<PATTERN>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->parseTopLevel(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    return-object p0
.end method

.method public parsePattern(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;
    .locals 1

    .line 2
    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p2

    .line 4
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<PATTERN>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->parseTopLevel(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Pattern;

    return-object p0
.end method

.method public printErrors()V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_errors:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v3, "COMPILER_ERROR_KEY"

    invoke-direct {v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_errors:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public printWarnings()V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_warnings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v3, "COMPILER_WARNING_KEY"

    invoke-direct {v2, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_warnings:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_target:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, "xml-stylesheet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Ljava/util/StringTokenizer;

    invoke-direct {p1, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    move-object v0, p2

    move-object v1, v0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "href"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getTokenValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v4, "media"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getTokenValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string v4, "title"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getTokenValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v4, "charset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getTokenValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_PImedia:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_5
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_PItitle:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_PImedia:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_6
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_PIcharset:Ljava/lang/String;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_PImedia:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_target:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public removeVariable(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/QName;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_variableScope:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Stack;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_variableScope:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reportError(ILcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_warnings:Ljava/util/Vector;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_errors:Ljava/util/Vector;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_errors:Ljava/util/Vector;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_errors:Ljava/util/Vector;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_errors:Ljava/util/Vector;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setCurrentStylesheet(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_currentStylesheet:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_locator:Lorg/xml/sax/Locator;

    return-void
.end method

.method public setOutput(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_output:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getImportPrecedence()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->getImportPrecedence()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_output:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->getCdata()Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_output:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->mergeOutput(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_output:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->disable()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_output:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;->disable()V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_output:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Output;

    :goto_0
    return-void
.end method

.method public setPIParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_PImedia:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_PItitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_PIcharset:Ljava/lang/String;

    return-void
.end method

.method public setTemplate(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_template:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Template;

    return-void
.end method

.method public setXSLTC(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_xsltc:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startDocument()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_root:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_target:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_prefixMapping:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_parentStack:Ljava/util/Stack;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/16 v0, 0x3a

    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move-object p3, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->makeInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_root:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_prefixMapping:Ljava/util/Hashtable;

    if-eqz p2, :cond_2

    const-string p3, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {p2, p3}, Ljava/util/Hashtable;->containsValue(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_rootNamespaceDef:Z

    goto :goto_2

    :cond_2
    :goto_1
    iput-boolean v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_rootNamespaceDef:Z

    :goto_2
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_root:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    goto :goto_3

    :cond_3
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_parentStack:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->addElement(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setParent(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    :goto_3
    new-instance p2, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;

    invoke-direct {p2, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;-><init>(Lorg/xml/sax/Attributes;)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setAttributes(Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AttributeList;)V

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_prefixMapping:Ljava/util/Hashtable;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;->setPrefixMapping(Ljava/util/Hashtable;)V

    instance-of p2, p1, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->getSymbolTable()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SymbolTable;->setCurrentNode(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V

    move-object p2, p1

    check-cast p2, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;

    invoke-virtual {p2, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Stylesheet;->excludeExtensionPrefixes(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;)V

    :cond_4
    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_prefixMapping:Ljava/util/Hashtable;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_parentStack:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ELEMENT_PARSE_ERR"

    invoke-direct {p0, p2, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_prefixMapping:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_prefixMapping:Ljava/util/Hashtable;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/Parser;->_prefixMapping:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
