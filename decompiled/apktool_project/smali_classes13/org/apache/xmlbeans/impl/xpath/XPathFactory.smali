.class public Lorg/apache/xmlbeans/impl/xpath/XPathFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final USE_SAXON:I = 0x4

.field private static final USE_XMLBEANS:I = 0x1

.field private static final _xmlbeansPathCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/apache/xmlbeans/impl/xpath/Path;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;->_xmlbeansPathCache:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compilePath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;->getCompiledPath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/xpath/Path;

    return-object p0
.end method

.method public static declared-synchronized compileQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;
    .locals 1

    const-class v0, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;->getCompiledQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/xpath/XQuery;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static cursorExecQuery(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlCursor;
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;->getCompiledQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/xpath/XQuery;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lorg/apache/xmlbeans/impl/xpath/XQuery;->cursorExecute(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlCursor;

    move-result-object p0

    return-object p0
.end method

.method public static getCompiledPath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/xpath/Path;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;->getCurrentNodeVar(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;->getCompiledPath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xpath/Path;

    move-result-object p0

    return-object p0
.end method

.method public static getCompiledPath(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;Ljava/lang/String;)Lorg/apache/xmlbeans/impl/xpath/Path;
    .locals 6

    .line 3
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->isXPathUseSaxon()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/XmlOptions;->isXPathUseXmlBeans()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    :goto_0
    and-int/lit8 v0, p1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 5
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 6
    :goto_1
    sget-object v4, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    and-int/2addr p1, v1

    if-eqz p1, :cond_3

    .line 7
    :try_start_0
    sget-object v1, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;->_xmlbeansPathCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/apache/xmlbeans/impl/xpath/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 9
    :goto_3
    sget-object p1, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 10
    throw p0

    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    .line 11
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v2

    :cond_5
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 12
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    if-eqz p1, :cond_7

    .line 13
    :try_start_1
    sget-object v1, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;->_xmlbeansPathCache:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_6

    .line 14
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xmlbeans/impl/xpath/Path;

    move-object v2, v1

    :cond_6
    if-nez v2, :cond_7

    .line 15
    invoke-static {p0, p2, v3}, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;->getCompiledPathXmlBeans(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/xpath/Path;

    move-result-object v2

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_7
    :goto_5
    if-nez v2, :cond_8

    if-eqz v0, :cond_8

    .line 16
    invoke-static {p0, p2, v3}, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;->getCompiledPathSaxon(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/xpath/Path;

    move-result-object v2

    :cond_8
    if-nez v2, :cond_b

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_9

    const-string p1, " Trying XmlBeans path engine..."

    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    if-eqz v0, :cond_a

    const-string p1, " Trying Saxon path engine..."

    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " FAILED on "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    :goto_6
    sget-object p1, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 22
    throw p0

    .line 23
    :cond_b
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v2
.end method

.method public static getCompiledPathSaxon(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/xpath/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/xmlbeans/impl/xpath/Path;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xpath/XPath;->compileXPath(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/xpath/XPath;
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "0"

    const-string v1, "$xmlbeans!ns_boundary"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPath;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXPath;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

.method private static getCompiledPathXmlBeans(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/xpath/Path;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/xmlbeans/impl/xpath/Path;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPath;

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xpath/XPath;->compileXPath(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/xpath/XPath;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xmlbeans/impl/xpath/xmlbeans/XmlbeansXPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/impl/xpath/XPath;)V

    sget-object p1, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;->_xmlbeansPathCache:Ljava/util/Map;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized getCompiledQuery(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/xpath/XQuery;
    .locals 4

    const-class v0, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p2}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p2

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-static {p0, p1, v1}, Lorg/apache/xmlbeans/impl/xpath/XPath;->compileXPath(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/xpath/XPath;
    :try_end_1
    .catch Lorg/apache/xmlbeans/impl/xpath/XPath$XPathCompileException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "$xmlbeans!ns_boundary"

    const-string v3, "0"

    .line 5
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :catchall_0
    move-exception p0

    const-string p1, "$xmlbeans!ns_boundary"

    const-string p2, "0"

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    throw p0

    :catch_0
    const-string v2, "$xmlbeans!ns_boundary"

    const-string v3, "0"

    .line 7
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 8
    :goto_1
    new-instance v2, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, p0, p1, v1, p2}, Lorg/apache/xmlbeans/impl/xpath/saxon/SaxonXQuery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lorg/apache/xmlbeans/XmlOptions;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v2

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getCompiledQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/xpath/XQuery;
    .locals 2

    const-class v0, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;->getCurrentNodeVar(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;->getCompiledQuery(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/xpath/XQuery;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getCurrentNodeVar(Lorg/apache/xmlbeans/XmlOptions;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/XmlOptions;->getXqueryCurrentNodeVar()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Omit the \'$\' prefix for the current node variable"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "this"

    :goto_0
    return-object p0
.end method

.method public static objectExecQuery(Lorg/apache/xmlbeans/impl/store/Cur;Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/xpath/XPathFactory;->getCompiledQuery(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/impl/xpath/XQuery;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lorg/apache/xmlbeans/impl/xpath/XQuery;->objectExecute(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method
