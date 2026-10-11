.class public Lcom/sun/org/apache/xpath/internal/XPathException;
.super Ljavax/xml/transform/TransformerException;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x3b2b2be100e6764bL


# instance fields
.field protected m_exception:Ljava/lang/Exception;

.field m_styleNode:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPathException;->m_styleNode:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPathException;->m_styleNode:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p2}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xpath/internal/XPathException;->getStylesheetNode(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/XPathException;->setStylesheetNode(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPathException;->m_styleNode:Ljava/lang/Object;

    .line 14
    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/XPathException;->m_exception:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    .line 8
    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/XPathException;->m_styleNode:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Node;Ljava/lang/Exception;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    .line 10
    iput-object p2, p0, Lcom/sun/org/apache/xpath/internal/XPathException;->m_styleNode:Ljava/lang/Object;

    .line 11
    iput-object p3, p0, Lcom/sun/org/apache/xpath/internal/XPathException;->m_exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathException;->m_exception:Ljava/lang/Exception;

    return-object p0
.end method

.method public getExpressionOwner(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)Lcom/sun/org/apache/xpath/internal/ExpressionNode;
    .locals 0

    invoke-interface {p1}, Lcom/sun/org/apache/xpath/internal/ExpressionNode;->exprGetParent()Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    instance-of p1, p0, Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xpath/internal/ExpressionNode;->exprGetParent()Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathException;->m_exception:Ljava/lang/Exception;

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    instance-of v1, p0, Ljavax/xml/transform/TransformerException;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v1

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, ""

    :goto_2
    return-object v0
.end method

.method public getStylesheetNode()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathException;->m_styleNode:Ljava/lang/Object;

    return-object p0
.end method

.method public getStylesheetNode(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)Lorg/w3c/dom/Node;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/XPathException;->getExpressionOwner(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    instance-of p1, p0, Lorg/w3c/dom/Node;

    if-eqz p1, :cond_0

    .line 4
    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 2
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Ljavax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathException;->m_exception:Ljava/lang/Exception;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_3

    if-eqz p0, :cond_3

    const-string v1, "---------"

    .line 4
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 6
    instance-of v1, p0, Ljavax/xml/transform/TransformerException;

    if-eqz v1, :cond_2

    .line 7
    move-object v1, p0

    check-cast v1, Ljavax/xml/transform/TransformerException;

    .line 8
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v1

    if-ne p0, v1, :cond_1

    goto :goto_2

    :cond_1
    move-object p0, v1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 4

    if-nez p1, :cond_0

    .line 9
    new-instance p1, Ljava/io/PrintWriter;

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 10
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Ljavax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 11
    :try_start_1
    const-class v2, Ljava/lang/Throwable;

    const-string v3, "getCause"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    goto :goto_0

    :catch_1
    move v2, v1

    :goto_0
    if-nez v2, :cond_3

    .line 12
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPathException;->m_exception:Ljava/lang/Exception;

    :goto_1
    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    if-eqz p0, :cond_3

    const-string v2, "---------"

    .line 13
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    :try_start_2
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string v2, "Could not print stack trace..."

    .line 15
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    :goto_2
    instance-of v2, p0, Ljavax/xml/transform/TransformerException;

    if-eqz v2, :cond_2

    .line 17
    move-object v2, p0

    check-cast v2, Ljavax/xml/transform/TransformerException;

    .line 18
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v2

    if-ne p0, v2, :cond_1

    goto :goto_4

    :cond_1
    move-object p0, v2

    goto :goto_3

    :cond_2
    move-object p0, v0

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_4
    return-void
.end method

.method public setStylesheetNode(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPathException;->m_styleNode:Ljava/lang/Object;

    return-void
.end method
