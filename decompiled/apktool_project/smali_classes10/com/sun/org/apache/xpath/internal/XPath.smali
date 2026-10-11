.class public Lcom/sun/org/apache/xpath/internal/XPath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/sun/org/apache/xpath/internal/ExpressionOwner;


# static fields
.field private static final DEBUG_MATCHES:Z = false

.field public static final MATCH:I = 0x1

.field public static final MATCH_SCORE_NODETEST:D = -0.5

.field public static final MATCH_SCORE_NONE:D = -Infinity

.field public static final MATCH_SCORE_NSWILD:D = -0.25

.field public static final MATCH_SCORE_OTHER:D = 0.5

.field public static final MATCH_SCORE_QNAME:D = 0.0

.field public static final SELECT:I = 0x0

.field static final serialVersionUID:J = 0x372f57bff437e299L


# instance fields
.field private transient m_funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

.field private m_mainExp:Lcom/sun/org/apache/xpath/internal/Expression;

.field m_patternString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPath;->m_funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    .line 31
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/XPath;->setExpression(Lcom/sun/org/apache/xpath/internal/Expression;)V

    .line 32
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/XPath;->initFunctionTable()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPath;->m_funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    .line 3
    invoke-direct {p0}, Lcom/sun/org/apache/xpath/internal/XPath;->initFunctionTable()V

    if-nez p5, :cond_0

    .line 4
    new-instance p5, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;

    invoke-direct {p5}, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;-><init>()V

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPath;->m_patternString:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;

    invoke-direct {v0, p5, p2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;-><init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;)V

    .line 7
    new-instance v1, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;

    iget-object v2, p0, Lcom/sun/org/apache/xpath/internal/XPath;->m_funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    invoke-direct {v1, p5, p2, v2}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;-><init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;)V

    if-nez p4, :cond_1

    .line 8
    invoke-virtual {v0, v1, p1, p3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->initXPath(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    goto :goto_0

    :cond_1
    const/4 p5, 0x1

    if-ne p5, p4, :cond_3

    .line 9
    invoke-virtual {v0, v1, p1, p3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->initMatchPattern(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    :goto_0
    const/4 p1, 0x0

    .line 10
    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compile(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/XPath;->setExpression(Lcom/sun/org/apache/xpath/internal/Expression;)V

    if-eqz p2, :cond_2

    .line 12
    instance-of p0, p2, Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    if-eqz p0, :cond_2

    .line 13
    check-cast p2, Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    :cond_2
    return-void

    .line 14
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ER_CANNOT_DEAL_XPATH_TYPE"

    invoke-static {p2, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p6, p0, Lcom/sun/org/apache/xpath/internal/XPath;->m_funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    if-nez p5, :cond_0

    .line 17
    new-instance p5, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;

    invoke-direct {p5}, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;-><init>()V

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPath;->m_patternString:Ljava/lang/String;

    .line 19
    new-instance p6, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;

    invoke-direct {p6, p5, p2}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;-><init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;)V

    .line 20
    new-instance v0, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;

    iget-object v1, p0, Lcom/sun/org/apache/xpath/internal/XPath;->m_funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    invoke-direct {v0, p5, p2, v1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;-><init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;)V

    if-nez p4, :cond_1

    .line 21
    invoke-virtual {p6, v0, p1, p3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->initXPath(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    goto :goto_0

    :cond_1
    const/4 p5, 0x1

    if-ne p5, p4, :cond_3

    .line 22
    invoke-virtual {p6, v0, p1, p3}, Lcom/sun/org/apache/xpath/internal/compiler/XPathParser;->initMatchPattern(Lcom/sun/org/apache/xpath/internal/compiler/Compiler;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    :goto_0
    const/4 p1, 0x0

    .line 23
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/compiler/Compiler;->compile(I)Lcom/sun/org/apache/xpath/internal/Expression;

    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/XPath;->setExpression(Lcom/sun/org/apache/xpath/internal/Expression;)V

    if-eqz p2, :cond_2

    .line 25
    instance-of p0, p2, Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    if-eqz p0, :cond_2

    .line 26
    check-cast p2, Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    :cond_2
    return-void

    .line 27
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ER_CANNOT_DEAL_XPATH_TYPE"

    invoke-static {p2, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initFunctionTable()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPath;->m_funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    return-void
.end method


# virtual methods
.method public assertion(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p0, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bool(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1, p3}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushNamespaceContext(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    invoke-virtual {p1, p2, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNodeAndExpression(II)V

    :try_start_0
    iget-object p2, p0, Lcom/sun/org/apache/xpath/internal/XPath;->m_mainExp:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->bool(Lcom/sun/org/apache/xpath/internal/XPathContext;)Z

    move-result p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popNamespaceContext()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNodeAndExpression()V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p2

    :goto_0
    :try_start_1
    instance-of p3, p2, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    if-eqz p3, :cond_0

    check-cast p2, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-virtual {p2}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string p3, "ER_XPATH_ERROR"

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_2
    new-instance v0, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPath;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    invoke-direct {v0, p3, p0, p2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_1

    :cond_3
    throw v0

    :catch_1
    move-exception p2

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPath;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0, p2}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popNamespaceContext()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNodeAndExpression()V

    const/4 p0, 0x0

    return p0

    :cond_4
    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popNamespaceContext()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNodeAndExpression()V

    throw p0
.end method

.method public callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V
    .locals 0

    iget-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPath;->m_mainExp:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-interface {p1, p0, p2}, Lcom/sun/org/apache/xpath/internal/XPathVisitable;->callVisitors(Lcom/sun/org/apache/xpath/internal/ExpressionOwner;Lcom/sun/org/apache/xpath/internal/XPathVisitor;)V

    return-void
.end method

.method public error(Lcom/sun/org/apache/xpath/internal/XPathContext;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p3, p4}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p3, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    invoke-direct {p3, p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p2, p3}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p1

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; file "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; line "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; column "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1, p3}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushNamespaceContext(Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)V

    .line 3
    invoke-virtual {p1, p2, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNodeAndExpression(II)V

    const/4 p2, 0x0

    .line 4
    :try_start_0
    iget-object p3, p0, Lcom/sun/org/apache/xpath/internal/XPath;->m_mainExp:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p3, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p2
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popNamespaceContext()V

    .line 6
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNodeAndExpression()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p3

    .line 7
    :goto_1
    :try_start_1
    instance-of v0, p3, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    if-eqz v0, :cond_0

    .line 8
    check-cast p3, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-virtual {p3}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object p3

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v0, "ER_XPATH_ERROR"

    .line 11
    invoke-static {v0, p2}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 12
    :cond_2
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPath;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    invoke-direct {v1, v0, p0, p3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V

    .line 13
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 14
    invoke-interface {p0, v1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_0

    .line 15
    :cond_3
    throw v1

    :catch_1
    move-exception p3

    .line 16
    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/XPath;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 17
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 18
    invoke-interface {p0, p3}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V

    goto :goto_0

    :goto_2
    return-object p2

    .line 19
    :cond_4
    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :goto_3
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popNamespaceContext()V

    .line 21
    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNodeAndExpression()V

    .line 22
    throw p0
.end method

.method public execute(Lcom/sun/org/apache/xpath/internal/XPathContext;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPath;->m_mainExp:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xpath/internal/Expression;->fixupVariables(Ljava/util/Vector;I)V

    return-void
.end method

.method public getExpression()Lcom/sun/org/apache/xpath/internal/Expression;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPath;->m_mainExp:Lcom/sun/org/apache/xpath/internal/Expression;

    return-object p0
.end method

.method public getLocator()Ljavax/xml/transform/SourceLocator;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPath;->m_mainExp:Lcom/sun/org/apache/xpath/internal/Expression;

    return-object p0
.end method

.method public getMatchScore(Lcom/sun/org/apache/xpath/internal/XPathContext;I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentNode(I)V

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xpath/internal/XPathContext;->pushCurrentExpressionNode(I)V

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPath;->m_mainExp:Lcom/sun/org/apache/xpath/internal/Expression;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xpath/internal/Expression;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->num()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentExpressionNode()V

    return-wide v0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentNode()V

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->popCurrentExpressionNode()V

    throw p0
.end method

.method public getPatternString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xpath/internal/XPath;->m_patternString:Ljava/lang/String;

    return-object p0
.end method

.method public setExpression(Lcom/sun/org/apache/xpath/internal/Expression;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xpath/internal/XPath;->m_mainExp:Lcom/sun/org/apache/xpath/internal/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprGetParent()Lcom/sun/org/apache/xpath/internal/ExpressionNode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xpath/internal/Expression;->exprSetParent(Lcom/sun/org/apache/xpath/internal/ExpressionNode;)V

    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/xpath/internal/XPath;->m_mainExp:Lcom/sun/org/apache/xpath/internal/Expression;

    return-void
.end method

.method public warn(Lcom/sun/org/apache/xpath/internal/XPathContext;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p3, p4}, Lcom/sun/org/apache/xpath/internal/res/XPATHMessages;->createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p3, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xml/internal/utils/SAXSourceLocator;

    invoke-direct {p3, p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p2, p3}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    :cond_0
    return-void
.end method
