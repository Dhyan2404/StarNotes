.class public Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;
.super Ljava/applet/Applet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x40198c0413738adeL


# instance fields
.field private final PARAM_documentURL:Ljava/lang/String;

.field private final PARAM_styleURL:Ljava/lang/String;

.field private transient m_attrNameToSet:Ljava/lang/String;

.field private transient m_attrValueToSet:Ljava/lang/String;

.field private transient m_callThread:Ljava/lang/Thread;

.field private m_codeBase:Ljava/net/URL;

.field private m_documentBase:Ljava/net/URL;

.field private m_documentURL:Ljava/lang/String;

.field private m_documentURLOfCached:Ljava/lang/String;

.field private transient m_elemIdToModify:Ljava/lang/String;

.field private transient m_htmlText:Ljava/lang/String;

.field private transient m_nameOfIDAttrOfElemToModify:Ljava/lang/String;

.field transient m_parameters:Ljava/util/Hashtable;

.field private transient m_sourceText:Ljava/lang/String;

.field private m_styleURL:Ljava/lang/String;

.field private m_styleURLOfCached:Ljava/lang/String;

.field transient m_tfactory:Ljavax/xml/transform/TransformerFactory;

.field private m_treeURL:Ljava/lang/String;

.field private transient m_trustedAgent:Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;

.field private transient m_trustedWorker:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/applet/Applet;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_tfactory:Ljavax/xml/transform/TransformerFactory;

    const-string v1, "styleURL"

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->PARAM_styleURL:Ljava/lang/String;

    const-string v1, "documentURL"

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->PARAM_documentURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_styleURLOfCached:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_documentURLOfCached:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_codeBase:Ljava/net/URL;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_treeURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_documentBase:Ljava/net/URL;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_callThread:Ljava/lang/Thread;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_trustedAgent:Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_trustedWorker:Ljava/lang/Thread;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_htmlText:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_sourceText:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_nameOfIDAttrOfElemToModify:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_elemIdToModify:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_attrNameToSet:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_attrValueToSet:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_trustedWorker:Ljava/lang/Thread;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_htmlText:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_sourceText:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->getSource()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->processTransformation()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_callThread:Ljava/lang/Thread;

    return-object p0
.end method

.method private getSource()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    const-string v2, ""

    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_documentBase:Ljava/net/URL;

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_treeURL:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_tfactory:Ljavax/xml/transform/TransformerFactory;

    monitor-enter v4
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_tfactory:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p0

    new-instance v5, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v5, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processTransformation()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const-string v0, "Waiting for Transformer and Parser to finish loading and JITing..."

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->showStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_tfactory:Ljavax/xml/transform/TransformerFactory;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    const-string v2, "Begin Transformation..."

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->showStatus(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/net/URL;

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_codeBase:Ljava/net/URL;

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_documentURL:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    new-instance v4, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/net/URL;

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_codeBase:Ljava/net/URL;

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_styleURL:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    new-instance v5, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_tfactory:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v2, v5}, Ljavax/xml/transform/TransformerFactory;->newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;

    move-result-object v2

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_parameters:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_parameters:Ljava/util/Hashtable;

    invoke-virtual {v7, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljavax/xml/transform/Transformer;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "Transformation Done!"

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->showStatus(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_tfactory:Ljavax/xml/transform/TransformerFactory;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_trustedWorker:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_trustedWorker:Ljava/lang/Thread;

    :cond_0
    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_styleURLOfCached:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_documentURLOfCached:Ljava/lang/String;

    return-void
.end method

.method public escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3c

    if-ne v3, v2, :cond_0

    const-string v2, "&lt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_0
    const/16 v3, 0x3e

    if-ne v3, v2, :cond_1

    const-string v2, "&gt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0x26

    if-ne v3, v2, :cond_2

    const-string v2, "&amp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const v3, 0xd800

    if-gt v3, v2, :cond_5

    const v4, 0xdc00

    if-ge v2, v4, :cond_5

    add-int/lit8 v1, v1, 0x1

    const-string v5, "ER_INVALID_UTF16_SURROGATE"

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-gt v4, v6, :cond_3

    const v7, 0xe000

    if-ge v6, v7, :cond_3

    sub-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v6

    sub-int/2addr v2, v4

    const/high16 v3, 0x10000

    add-int/2addr v2, v3

    const-string v3, "&#x"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public freeCache()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_styleURLOfCached:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_documentURLOfCached:Ljava/lang/String;

    return-void
.end method

.method public getAppletInfo()Ljava/lang/String;
    .locals 0

    const-string p0, "Name: XSLTProcessorApplet\r\nAuthor: Scott Boag"

    return-object p0
.end method

.method public getHtmlText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_trustedAgent:Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;->m_getData:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_callThread:Ljava/lang/Thread;

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_callThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_htmlText:Ljava/lang/String;

    return-object p0
.end method

.method public getParameterInfo()[[Ljava/lang/String;
    .locals 3

    const/4 p0, 0x2

    new-array p0, p0, [[Ljava/lang/String;

    const-string v0, "URL to an XSL stylesheet"

    const-string v1, "styleURL"

    const-string v2, "String"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string v0, "documentURL"

    const-string v1, "URL to an XML document"

    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    return-object p0
.end method

.method public getResultTreeAsText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->getHtmlText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSourceTreeAsText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_documentURL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->getTreeAsText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStyleTreeAsText()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_styleURL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->getTreeAsText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTreeAsText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_treeURL:Ljava/lang/String;

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_trustedAgent:Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;->m_getData:Z

    iput-boolean v0, p1, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;->m_getSource:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_callThread:Ljava/lang/Thread;

    :try_start_0
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_callThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_sourceText:Ljava/lang/String;

    return-object p0
.end method

.method public init()V
    .locals 2

    const-string v0, "styleURL"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_parameters:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->setStyleURL(Ljava/lang/String;)V

    :cond_0
    const-string v0, "documentURL"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->setDocumentURL(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->getCodeBase()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_codeBase:Ljava/net/URL;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->getDocumentBase()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_documentBase:Ljava/net/URL;

    const/16 v0, 0x140

    const/16 v1, 0xf0

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->resize(II)V

    return-void
.end method

.method public paint(Ljava/awt/Graphics;)V
    .locals 0

    return-void
.end method

.method public setDocumentURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_documentURL:Ljava/lang/String;

    return-void
.end method

.method public setStyleSheetAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_nameOfIDAttrOfElemToModify:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_elemIdToModify:Ljava/lang/String;

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_attrNameToSet:Ljava/lang/String;

    iput-object p4, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_attrValueToSet:Ljava/lang/String;

    return-void
.end method

.method public setStyleURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_styleURL:Ljava/lang/String;

    return-void
.end method

.method public setStylesheetParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_parameters:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public start()V
    .locals 6

    new-instance v0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;-><init>(Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_trustedAgent:Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_trustedAgent:Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet$TrustedAgent;

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_trustedWorker:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_tfactory:Ljavax/xml/transform/TransformerFactory;

    const-string v0, "Causing Transformer and Parser to Load and JIT..."

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->showStatus(Ljava/lang/String;)V

    new-instance v0, Ljava/io/StringReader;

    const-string v1, "<?xml version=\'1.0\'?><foo/>"

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/StringReader;

    const-string v2, "<?xml version=\'1.0\'?><xsl:stylesheet xmlns:xsl=\'http://www.w3.org/1999/XSL/Transform\' version=\'1.0\'><xsl:template match=\'foo\'><out/></xsl:template></xsl:stylesheet>"

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_tfactory:Ljavax/xml/transform/TransformerFactory;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_tfactory:Ljavax/xml/transform/TransformerFactory;

    new-instance v5, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v5, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v4, v5}, Ljavax/xml/transform/TransformerFactory;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v1

    invoke-interface {v1}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    new-instance v4, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v4, v0}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v4, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Primed the pump!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "Ready to go!"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->showStatus(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Could not prime the pump!"

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->showStatus(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Could not prime the pump!"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_trustedWorker:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_trustedWorker:Ljava/lang/Thread;

    :cond_0
    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_styleURLOfCached:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_documentURLOfCached:Ljava/lang/String;

    return-void
.end method

.method public transformToHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_documentURL:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_styleURL:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->getHtmlText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transformToHtml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_documentURL:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->m_styleURL:Ljava/lang/String;

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/client/XSLTProcessorApplet;->getHtmlText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
