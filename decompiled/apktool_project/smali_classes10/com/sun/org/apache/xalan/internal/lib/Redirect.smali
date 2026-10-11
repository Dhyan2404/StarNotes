.class public Lcom/sun/org/apache/xalan/internal/lib/Redirect;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_APPEND_OPEN:Z

.field public static final DEFAULT_APPEND_WRITE:Z


# instance fields
.field protected m_formatterListeners:Ljava/util/Hashtable;

.field protected m_outputStreams:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->m_formatterListeners:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->m_outputStreams:Ljava/util/Hashtable;

    return-void
.end method

.method private getFilename(Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getContextNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getTransformer()Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    move-result-object v0

    const-string v1, "select"

    invoke-virtual {p2, v1, p0, v0}, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;->getAttribute(Ljava/lang/String;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "file"

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getTransformer()Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v1

    new-instance v2, Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getNamespaceContext()Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, p2, v3, v4}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;I)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getContextNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-virtual {v2, v1, p0, p2}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->str()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getContextNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getTransformer()Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    move-result-object v1

    invoke-virtual {p2, v0, p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;->getAttribute(Ljava/lang/String;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getContextNode()Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getTransformer()Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    move-result-object v1

    invoke-virtual {p2, v0, p0, v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;->getAttribute(Ljava/lang/String;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    if-nez p0, :cond_3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getTransformer()Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getMsgMgr()Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getContextNode()Lorg/w3c/dom/Node;

    move-result-object p1

    const-string v1, "ER_REDIRECT_COULDNT_GET_FILENAME"

    invoke-virtual {v0, p2, p2, p1, v1}, Lcom/sun/org/apache/xalan/internal/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_3
    return-object p0
.end method

.method private makeFormatterListener(Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;Ljava/lang/String;ZZZ)Lorg/xml/sax/ContentHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getTransformer()Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getOutputTarget()Ljavax/xml/transform/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljavax/xml/transform/Result;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->urlToFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getBaseURLOfSource()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->urlToFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getOutputFormat()Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    move-result-object p5

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {p0, p1, v0, p2, p5}, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->createSerializationHandler(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/io/FileOutputStream;Ljava/io/File;Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;)Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p4, :cond_3

    :try_start_2
    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->m_outputStreams:Ljava/util/Hashtable;

    invoke-virtual {p2, p3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->m_formatterListeners:Ljava/util/Hashtable;

    invoke-virtual {p0, p3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private urlToFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_4

    const-string p0, "file:////"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p0, "file:///"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x6

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p0, "file://"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x5

    if-eqz p0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p0, "file:/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p0, "file:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_0
    return-object p1
.end method


# virtual methods
.method public close(Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->getFilename(Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->m_formatterListeners:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Lorg/xml/sax/ContentHandler;

    :try_start_0
    invoke-interface {p2}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->m_outputStreams:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/OutputStream;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->m_outputStreams:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->m_formatterListeners:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public createSerializationHandler(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Ljava/io/FileOutputStream;Ljava/io/File;Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;)Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance p0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {p0, p2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, p0, p4}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;)Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    move-result-object p0

    return-object p0
.end method

.method public endRedirection(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V
    .locals 0

    return-void
.end method

.method public open(Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->getFilename(Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->m_formatterListeners:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getContextNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getTransformer()Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    move-result-object v1

    const-string v2, "mkdirs"

    invoke-virtual {p2, v2, v0, v1}, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;->getAttribute(Ljava/lang/String;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    const-string v2, "true"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v5

    :goto_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getContextNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getTransformer()Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    move-result-object v7

    const-string v8, "append"

    invoke-virtual {p2, v8, v0, v7}, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;->getAttribute(Ljava/lang/String;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v7, v5

    goto :goto_2

    :cond_3
    move v7, v4

    :goto_2
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v6

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->makeFormatterListener(Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;Ljava/lang/String;ZZZ)Lorg/xml/sax/ContentHandler;

    :cond_4
    return-void
.end method

.method public startRedirection(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lorg/xml/sax/ContentHandler;)V
    .locals 0

    return-void
.end method

.method public write(Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->getFilename(Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->m_formatterListeners:Ljava/util/Hashtable;

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getContextNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getTransformer()Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    move-result-object v2

    const-string v3, "mkdirs"

    invoke-virtual {p2, v3, v0, v2}, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;->getAttribute(Ljava/lang/String;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "yes"

    const-string v3, "true"

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v5, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v1

    :goto_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getContextNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getTransformer()Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    move-result-object v4

    const-string v6, "append"

    invoke-virtual {p2, v6, v0, v4}, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;->getAttribute(Ljava/lang/String;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v6, v1

    goto :goto_2

    :cond_3
    move v6, v8

    :goto_2
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->makeFormatterListener(Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionCall;Ljava/lang/String;ZZZ)Lorg/xml/sax/ContentHandler;

    move-result-object v0

    move v1, v8

    goto :goto_3

    :cond_4
    check-cast v0, Lorg/xml/sax/ContentHandler;

    :goto_3
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getTransformer()Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->startRedirection(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getContextNode()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/extensions/XSLProcessorContext;->getMode()Lcom/sun/org/apache/xml/internal/utils/QName;

    move-result-object p1

    invoke-virtual {v2, p2, v3, p1, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->executeChildTemplates(Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/utils/QName;Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->endRedirection(Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;)V

    if-nez v1, :cond_5

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->m_outputStreams:Ljava/util/Hashtable;

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/OutputStream;

    if-eqz p1, :cond_5

    :try_start_0
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->m_outputStreams:Ljava/util/Hashtable;

    invoke-virtual {p1, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/lib/Redirect;->m_formatterListeners:Ljava/util/Hashtable;

    invoke-virtual {p0, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    :goto_4
    return-void
.end method
