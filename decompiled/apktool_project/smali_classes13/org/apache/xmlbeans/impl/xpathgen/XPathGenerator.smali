.class public Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static countTextTokens(Lorg/apache/xmlbeans/XmlCursor;)I
    .locals 6

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstContentToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-virtual {v1}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->isEnd()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->isText()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p0, v0}, Lorg/apache/xmlbeans/XmlCursor;->comparePosition(Lorg/apache/xmlbeans/XmlCursor;)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->isStart()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toEndToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    :cond_4
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    return v2

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_6

    :try_start_2
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw v1
.end method

.method private static generateInternal(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerationException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->isStartdoc()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/XmlCursor;->isAtSamePositionAs(Lorg/apache/xmlbeans/XmlCursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "."

    return-object p0

    :cond_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    :try_start_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    :cond_2
    return-object p0

    :cond_3
    :try_start_1
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    invoke-interface {p0, v0}, Lorg/apache/xmlbeans/XmlCursor;->toChild(Ljavax/xml/namespace/QName;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v2

    :cond_4
    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/XmlCursor;->isAtSamePositionAs(Lorg/apache/xmlbeans/XmlCursor;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v3, v4

    goto :goto_0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    :goto_0
    invoke-interface {p0, v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling(Ljavax/xml/namespace/QName;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    :cond_6
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateInternal(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2f

    new-instance v1, Ljava/lang/StringBuilder;

    if-ne v4, v2, :cond_7

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, p2}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->qnameToString(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, p2}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->qnameToString(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5b

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_8
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Must have at least one child with name: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_9

    :try_start_4
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_2
    throw p1
.end method

.method public static generateXPath(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerationException;
        }
    .end annotation

    if-eqz p0, :cond_8

    if-eqz p2, :cond_7

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->currentTokenType()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/XmlCursor;->isAtSamePositionAs(Lorg/apache/xmlbeans/XmlCursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "."

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateInternal(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/@xmlns"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/@xmlns:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot generate XPath for cursor position: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlCursor$TokenType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateInternal(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x40

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, p2}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->qnameToString(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->countTextTokens(Lorg/apache/xmlbeans/XmlCursor;)I

    move-result v0

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateInternal(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object p0

    if-nez v0, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/text()"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/text()[position()="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateInternal(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null namespace context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/XmlException;
        }
    .end annotation

    new-instance p0, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator$1;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator$1;-><init>()V

    sget-object v0, Lorg/apache/xmlbeans/XmlObject;->Factory:Lorg/apache/xmlbeans/impl/schema/XmlObjectFactory;

    const-string v1, "<root>\n<ns:a xmlns:ns=\"http://a.com\"><b foo=\"value\">text1<c/>text2<c/>text3<c>text</c>text4</b></ns:a>\n</root>"

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/impl/schema/XmlObjectFactory;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstContentToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstContentToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstChild()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x0

    invoke-static {v0, v2, p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateXPath(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextSibling()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, v2, p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateXPath(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlTokenSource;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateXPath(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateXPath(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstContentToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateXPath(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toPrevToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateXPath(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateXPath(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toFirstAttribute()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateXPath(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toParent()Z

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateXPath(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->push()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, v2, p0}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerator;->generateXPath(Lorg/apache/xmlbeans/XmlCursor;Lorg/apache/xmlbeans/XmlCursor;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->pop()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_4
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_7
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
.end method

.method private static qnameToString(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/NamespaceContext;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerationException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x3a

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {p1, p0}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p1, v1}, Ljavax/xml/namespace/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not use default prefix in XPath for URI: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not obtain a prefix for URI: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/xpathgen/XPathGenerationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
