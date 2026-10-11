.class public Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x2d0ce7bdd3f033b0L


# instance fields
.field _error:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

.field _node:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;->_error:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;->_node:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;->_node:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    .line 6
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;->_error:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;->_error:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    .line 9
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;->_node:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    .line 10
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {v0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;->_error:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;->_error:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    .line 13
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;->_node:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    .line 14
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;->_error:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    return-void
.end method


# virtual methods
.method public getErrorMsg()Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;->_error:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;->_error:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;->_node:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;->_node:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/SyntaxTreeNode;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TYPE_CHECK_ERR"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;->_error:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string v1, "TYPE_CHECK_UNK_LOC_ERR"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;->_error:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/TypeCheckError;->_error:Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
