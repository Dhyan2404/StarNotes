.class public Lorg/mortbay/jetty/servlet/DefaultServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/resource/ResourceFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;,
        Lorg/mortbay/jetty/servlet/DefaultServlet$a;
    }
.end annotation


# static fields
.field static synthetic class$org$mortbay$jetty$servlet$ServletHandler:Ljava/lang/Class;


# instance fields
.field private _acceptRanges:Z

.field private _aliases:Z

.field private _bioCache:Lorg/mortbay/jetty/ResourceCache;

.field _cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

.field private _context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

.field private _defaultHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

.field private _dirAllowed:Z

.field private _gzip:Z

.field private _mimeTypes:Lorg/mortbay/jetty/MimeTypes;

.field private _nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

.field private _redirectWelcome:Z

.field private _resourceBase:Lorg/mortbay/resource/Resource;

.field private _servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

.field private _useFileMappedBuffer:Z

.field private _welcomeServlets:Z

.field private _welcomes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_gzip:Z

    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_aliases:Z

    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    return-void
.end method

.method public static synthetic access$000(Lorg/mortbay/jetty/servlet/DefaultServlet;)Lorg/mortbay/jetty/MimeTypes;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/mortbay/jetty/servlet/DefaultServlet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    return p0
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method private getInitBoolean(Ljava/lang/String;Z)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const-string p1, "t"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "T"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "y"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Y"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "1"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_3
    :goto_2
    return p2
.end method

.method private getInitInt(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    return p2
.end method

.method private getWelcomeFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    iget-boolean v3, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v3, v2}, Lorg/mortbay/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_defaultHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

    if-eq v3, v4, :cond_2

    move-object v1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const-string v0, "EXCEPTION "

    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/mortbay/component/AbstractLifeCycle;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/mortbay/component/AbstractLifeCycle;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    invoke-super {p0}, Ljavax/servlet/GenericServlet;->destroy()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v0, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    invoke-super {p0}, Ljavax/servlet/GenericServlet;->destroy()V

    throw v0

    :catchall_1
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    :try_start_3
    invoke-static {v0, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/mortbay/component/AbstractLifeCycle;->stop()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v1

    :try_start_5
    invoke-static {v0, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :goto_2
    return-void

    :goto_3
    invoke-super {p0}, Ljavax/servlet/GenericServlet;->destroy()V

    throw v0

    :goto_4
    :try_start_6
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/mortbay/component/AbstractLifeCycle;->stop()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_2
    :goto_5
    invoke-super {p0}, Ljavax/servlet/GenericServlet;->destroy()V

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v2

    :try_start_7
    invoke-static {v0, v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_5

    :goto_6
    throw v1

    :goto_7
    invoke-super {p0}, Ljavax/servlet/GenericServlet;->destroy()V

    throw v0
.end method

.method public doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    const-string v1, "org.mortbay.jetty.included"

    invoke-interface {v2, v1}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "javax.servlet.include.servlet_path"

    invoke-interface {v2, v4}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "javax.servlet.include.path_info"

    invoke-interface {v2, v5}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v4, :cond_0

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v5

    :cond_0
    :goto_0
    move-object v7, v3

    goto :goto_1

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Range"

    invoke-interface {v2, v6}, Ljavax/servlet/http/HttpServletRequest;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    move-object v7, v6

    :goto_1
    invoke-static {v4, v5}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v9, "gzip"

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v6, :cond_3

    iget-boolean v6, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_gzip:Z

    if-eqz v6, :cond_3

    if-nez v7, :cond_3

    if-nez v5, :cond_3

    const-string v6, "Accept-Encoding"

    invoke-interface {v2, v6}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_3

    move v6, v10

    goto :goto_2

    :cond_3
    move v6, v11

    :goto_2
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v12

    invoke-virtual {v12}, Lorg/mortbay/jetty/HttpConnection;->getConnector()Lorg/mortbay/jetty/Connector;

    move-result-object v12

    instance-of v12, v12, Lorg/mortbay/jetty/nio/NIOConnector;

    if-eqz v12, :cond_4

    iget-object v12, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    goto :goto_3

    :cond_4
    iget-object v12, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    :goto_3
    if-eqz v6, :cond_9

    :try_start_0
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v14, ".gz"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v14, :cond_7

    :try_start_1
    invoke-virtual {v14}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v14}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_5

    goto :goto_4

    :cond_5
    if-eqz v12, :cond_6

    invoke-virtual {v12, v13, v14}, Lorg/mortbay/jetty/ResourceCache;->lookup(Ljava/lang/String;Lorg/mortbay/resource/Resource;)Lorg/mortbay/jetty/ResourceCache$Content;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v13
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v16, v6

    move-object v6, v3

    move-object v3, v13

    move/from16 v13, v16

    goto :goto_6

    :cond_6
    move v13, v6

    move-object v6, v3

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v12, v14

    goto/16 :goto_14

    :catch_0
    move-exception v0

    move-object v10, v3

    move-object v3, v14

    goto/16 :goto_11

    :cond_7
    :goto_4
    move-object v6, v3

    move v13, v11

    :goto_5
    move-object v3, v14

    :goto_6
    if-eqz v3, :cond_8

    :try_start_2
    invoke-virtual {v3}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v3}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_a

    :cond_8
    move v13, v11

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v12, v3

    goto/16 :goto_14

    :catch_1
    move-exception v0

    move-object v10, v3

    goto/16 :goto_11

    :cond_9
    move v13, v6

    move-object v6, v3

    :cond_a
    :goto_7
    if-nez v13, :cond_d

    if-nez v12, :cond_b

    invoke-virtual {v0, v4}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v3

    goto :goto_8

    :cond_b
    invoke-virtual {v12, v4, v0}, Lorg/mortbay/jetty/ResourceCache;->lookup(Ljava/lang/String;Lorg/mortbay/resource/ResourceFactory;)Lorg/mortbay/jetty/ResourceCache$Content;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-interface {v6}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v3

    goto :goto_8

    :cond_c
    invoke-virtual {v0, v4}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v12, v3

    move-object v3, v6

    goto/16 :goto_14

    :catch_2
    move-exception v0

    move-object v10, v6

    goto/16 :goto_11

    :cond_d
    :goto_8
    move-object v12, v3

    move-object v3, v6

    :try_start_3
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_f

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "resource="

    invoke-virtual {v6, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    if-eqz v3, :cond_e

    const-string v14, " content"

    goto :goto_9

    :cond_e
    const-string v14, ""

    :goto_9
    invoke-virtual {v6, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_f
    if-eqz v12, :cond_23

    invoke-virtual {v12}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v6

    if-nez v6, :cond_10

    goto/16 :goto_e

    :cond_10
    invoke-virtual {v12}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    const-string v14, "?"

    if-nez v6, :cond_17

    if-eqz v5, :cond_12

    :try_start_4
    iget-boolean v5, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_aliases:Z

    if-eqz v5, :cond_12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v10, :cond_12

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-virtual {v4, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_11

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_11
    iget-object v0, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_12
    if-nez v3, :cond_13

    new-instance v5, Lorg/mortbay/jetty/servlet/DefaultServlet$a;

    invoke-direct {v5, v0, v12}, Lorg/mortbay/jetty/servlet/DefaultServlet$a;-><init>(Lorg/mortbay/jetty/servlet/DefaultServlet;Lorg/mortbay/resource/Resource;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-object v10, v5

    goto :goto_a

    :cond_13
    move-object v10, v3

    :goto_a
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v0, v2, v8, v12, v10}, Lorg/mortbay/jetty/servlet/DefaultServlet;->passConditionalHeaders(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/resource/Resource;Lorg/mortbay/jetty/HttpContent;)Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_14
    if-eqz v13, :cond_15

    const-string v3, "Content-Encoding"

    invoke-interface {v8, v3, v9}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v3, v4}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-interface {v8, v3}, Ljavax/servlet/ServletResponse;->setContentType(Ljava/lang/String;)V

    :cond_15
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v12

    move-object v6, v10

    invoke-virtual/range {v1 .. v7}, Lorg/mortbay/jetty/servlet/DefaultServlet;->sendData(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;ZLorg/mortbay/resource/Resource;Lorg/mortbay/jetty/HttpContent;Ljava/util/Enumeration;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_16
    move-object v3, v10

    goto/16 :goto_f

    :catchall_3
    move-exception v0

    goto/16 :goto_13

    :catch_3
    move-exception v0

    goto/16 :goto_10

    :cond_17
    if-eqz v5, :cond_20

    :try_start_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v10, :cond_18

    const-string v5, "org.mortbay.jetty.nullPathInfo"

    invoke-interface {v2, v5}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_18

    goto/16 :goto_c

    :cond_18
    invoke-direct {v0, v4}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getWelcomeFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1c

    iget-boolean v4, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    if-eqz v4, :cond_1a

    invoke-interface {v8, v11}, Ljavax/servlet/ServletResponse;->setContentLength(I)V

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_19

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_19
    iget-object v0, v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_1a
    invoke-interface {v2, v5}, Ljavax/servlet/ServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0, v2, v8}, Ljavax/servlet/RequestDispatcher;->include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto/16 :goto_f

    :cond_1b
    const-string v1, "org.mortbay.jetty.welcome"

    invoke-interface {v2, v1, v5}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2, v8}, Ljavax/servlet/RequestDispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_f

    :cond_1c
    new-instance v5, Lorg/mortbay/jetty/servlet/DefaultServlet$a;

    invoke-direct {v5, v0, v12}, Lorg/mortbay/jetty/servlet/DefaultServlet$a;-><init>(Lorg/mortbay/jetty/servlet/DefaultServlet;Lorg/mortbay/resource/Resource;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v0, v2, v8, v12, v5}, Lorg/mortbay/jetty/servlet/DefaultServlet;->passConditionalHeaders(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/resource/Resource;Lorg/mortbay/jetty/HttpContent;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_1d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v10, :cond_1e

    goto :goto_b

    :cond_1e
    move v10, v11

    :goto_b
    invoke-virtual {v0, v2, v8, v12, v10}, Lorg/mortbay/jetty/servlet/DefaultServlet;->sendDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/resource/Resource;Z)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_1f
    move-object v3, v5

    goto :goto_f

    :catchall_4
    move-exception v0

    move-object v3, v5

    goto/16 :goto_14

    :catch_4
    move-exception v0

    move-object v10, v5

    goto :goto_10

    :cond_20
    :goto_c
    :try_start_8
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x2f

    if-gez v1, :cond_21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_d

    :cond_21
    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    :goto_d
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_22

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_22
    invoke-interface {v8, v11}, Ljavax/servlet/ServletResponse;->setContentLength(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto :goto_f

    :cond_23
    :goto_e
    const/16 v0, 0x194

    invoke-interface {v8, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :cond_24
    :goto_f
    if-eqz v3, :cond_25

    invoke-interface {v3}, Lorg/mortbay/jetty/HttpContent;->release()V

    goto :goto_12

    :cond_25
    if-eqz v12, :cond_28

    invoke-virtual {v12}, Lorg/mortbay/resource/Resource;->release()V

    goto :goto_12

    :catchall_5
    move-exception v0

    goto :goto_14

    :catch_5
    move-exception v0

    move-object v10, v3

    :goto_10
    move-object v3, v12

    :goto_11
    :try_start_9
    const-string v1, "EXCEPTION "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-interface {v8, v1, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :cond_26
    if-eqz v10, :cond_27

    invoke-interface {v10}, Lorg/mortbay/jetty/HttpContent;->release()V

    goto :goto_12

    :cond_27
    if-eqz v3, :cond_28

    invoke-virtual {v3}, Lorg/mortbay/resource/Resource;->release()V

    :cond_28
    :goto_12
    return-void

    :catchall_6
    move-exception v0

    move-object v12, v3

    :goto_13
    move-object v3, v10

    :goto_14
    if-nez v3, :cond_29

    if-eqz v12, :cond_2a

    invoke-virtual {v12}, Lorg/mortbay/resource/Resource;->release()V

    goto :goto_15

    :cond_29
    invoke-interface {v3}, Lorg/mortbay/jetty/HttpContent;->release()V

    :cond_2a
    :goto_15
    throw v0
.end method

.method public doPost(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/servlet/DefaultServlet;->doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-void
.end method

.method public doTrace(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0x195

    invoke-interface {p2, p0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    return-void
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "org.mortbay.jetty.servlet.Default."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Ljavax/servlet/GenericServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    .locals 2

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/mortbay/resource/Resource;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-boolean p0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_aliases:Z

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Aliased resource: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, "=="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/mortbay/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    :cond_1
    return-object v1

    :cond_2
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "RESOURCE="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, p1

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-static {p0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    move-object p1, v1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public init()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/UnavailableException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->getMimeTypes()Lorg/mortbay/jetty/MimeTypes;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->getWelcomeFiles()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "index.jsp"

    const-string v2, "index.html"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    :cond_0
    const-string v1, "acceptRanges"

    iget-boolean v2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    invoke-direct {p0, v1, v2}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    const-string v1, "dirAllowed"

    iget-boolean v2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    invoke-direct {p0, v1, v2}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    const-string v1, "welcomeServlets"

    iget-boolean v2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    invoke-direct {p0, v1, v2}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    const-string v1, "redirectWelcome"

    iget-boolean v2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    invoke-direct {p0, v1, v2}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    const-string v1, "gzip"

    iget-boolean v2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_gzip:Z

    invoke-direct {p0, v1, v2}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_gzip:Z

    const-string v1, "aliases"

    iget-boolean v2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_aliases:Z

    invoke-direct {p0, v1, v2}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_aliases:Z

    if-nez v1, :cond_2

    invoke-static {}, Lorg/mortbay/resource/FileResource;->getCheckAliases()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Alias checking disabled"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_aliases:Z

    if-eqz v1, :cond_3

    const-string v1, "Aliases are enabled"

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;)V

    :cond_3
    const-string v0, "useFileMappedBuffer"

    iget-boolean v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    invoke-direct {p0, v0, v1}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    const-string v0, "relativeResourceBase"

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, "EXCEPTION "

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/mortbay/jetty/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v3

    iput-object v3, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/mortbay/resource/Resource;

    goto :goto_1

    :cond_4
    new-instance v0, Ljavax/servlet/UnavailableException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No base resourceBase for relativeResourceBase in"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-static {v2, p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljavax/servlet/UnavailableException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    const-string v3, "resourceBase"

    invoke-virtual {p0, v3}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_7

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljavax/servlet/UnavailableException;

    const-string v0, "resourceBase & relativeResourceBase"

    invoke-direct {p0, v0}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    if-eqz v3, :cond_8

    :try_start_1
    invoke-static {v3}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/mortbay/resource/Resource;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-static {v2, p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljavax/servlet/UnavailableException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    const-string v0, "cacheControl"

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v3, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v3, v0}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    :cond_9
    :try_start_2
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/mortbay/resource/Resource;

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/mortbay/resource/Resource;

    :cond_a
    const-string v0, "cacheType"

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "maxCacheSize"

    const/4 v3, -0x2

    invoke-direct {p0, v1, v3}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitInt(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "maxCachedFileSize"

    invoke-direct {p0, v4, v3}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "maxCachedFiles"

    invoke-direct {p0, v5, v3}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v6, "both"

    const/4 v7, -0x1

    if-eqz v0, :cond_b

    :try_start_3
    const-string v8, "nio"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    :cond_b
    if-eq v1, v3, :cond_c

    if-lez v1, :cond_10

    :cond_c
    new-instance v8, Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    iget-object v9, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    invoke-direct {v8, p0, v9}, Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;-><init>(Lorg/mortbay/jetty/servlet/DefaultServlet;Lorg/mortbay/jetty/MimeTypes;)V

    iput-object v8, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    if-lez v1, :cond_d

    invoke-virtual {v8, v1}, Lorg/mortbay/jetty/ResourceCache;->setMaxCacheSize(I)V

    :cond_d
    if-lt v4, v7, :cond_e

    iget-object v8, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    invoke-virtual {v8, v4}, Lorg/mortbay/jetty/ResourceCache;->setMaxCachedFileSize(I)V

    :cond_e
    if-lt v5, v7, :cond_f

    iget-object v8, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    invoke-virtual {v8, v5}, Lorg/mortbay/jetty/ResourceCache;->setMaxCachedFiles(I)V

    :cond_f
    iget-object v8, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    invoke-virtual {v8}, Lorg/mortbay/component/AbstractLifeCycle;->start()V

    :cond_10
    const-string v8, "bio"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_11
    if-eq v1, v3, :cond_12

    if-lez v1, :cond_16

    :cond_12
    new-instance v0, Lorg/mortbay/jetty/ResourceCache;

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    invoke-direct {v0, v3}, Lorg/mortbay/jetty/ResourceCache;-><init>(Lorg/mortbay/jetty/MimeTypes;)V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    if-lez v1, :cond_13

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/ResourceCache;->setMaxCacheSize(I)V

    :cond_13
    if-lt v4, v7, :cond_14

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    invoke-virtual {v0, v4}, Lorg/mortbay/jetty/ResourceCache;->setMaxCachedFileSize(I)V

    :cond_14
    if-lt v5, v7, :cond_15

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    invoke-virtual {v0, v5}, Lorg/mortbay/jetty/ResourceCache;->setMaxCachedFiles(I)V

    :cond_15
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    invoke-virtual {v0}, Lorg/mortbay/component/AbstractLifeCycle;->start()V

    :cond_16
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    if-nez v0, :cond_17

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_17
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/servlet/DefaultServlet;->class$org$mortbay$jetty$servlet$ServletHandler:Ljava/lang/Class;

    if-nez v1, :cond_18

    const-string v1, "org.mortbay.jetty.servlet.ServletHandler"

    invoke-static {v1}, Lorg/mortbay/jetty/servlet/DefaultServlet;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/servlet/DefaultServlet;->class$org$mortbay$jetty$servlet$ServletHandler:Ljava/lang/Class;

    :cond_18
    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/mortbay/jetty/Handler;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/ServletHandler;

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v0

    array-length v1, v0

    :goto_4
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1a

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->getServletInstance()Ljavax/servlet/Servlet;

    move-result-object v1

    if-ne v1, p0, :cond_19

    aget-object v1, v0, v2

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_defaultHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

    :cond_19
    move v1, v2

    goto :goto_4

    :cond_1a
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "resource base = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/mortbay/resource/Resource;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_1b
    return-void

    :catch_2
    move-exception p0

    invoke-static {v2, p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljavax/servlet/UnavailableException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public passConditionalHeaders(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/resource/Resource;Lorg/mortbay/jetty/HttpContent;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "If-Modified-Since"

    :try_start_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1, p0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x3e8

    if-eqz v0, :cond_1

    const/16 v6, 0x130

    if-eqz p4, :cond_0

    invoke-interface {p4}, Lorg/mortbay/jetty/HttpContent;->getLastModified()Lorg/mortbay/io/Buffer;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljavax/servlet/ServletResponse;->reset()V

    invoke-interface {p2, v6}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    invoke-interface {p2}, Ljavax/servlet/ServletResponse;->flushBuffer()V

    return v3

    :cond_0
    invoke-interface {p1, p0}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long p0, v7, v1

    if-eqz p0, :cond_1

    invoke-virtual {p3}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v9

    div-long/2addr v9, v4

    div-long/2addr v7, v4

    cmp-long p0, v9, v7

    if-gtz p0, :cond_1

    invoke-interface {p2}, Ljavax/servlet/ServletResponse;->reset()V

    invoke-interface {p2, v6}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    invoke-interface {p2}, Ljavax/servlet/ServletResponse;->flushBuffer()V

    return v3

    :cond_1
    const-string p0, "If-Unmodified-Since"

    invoke-interface {p1, p0}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide p0

    cmp-long p4, p0, v1

    if-eqz p4, :cond_2

    invoke-virtual {p3}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide p3

    div-long/2addr p3, v4

    div-long/2addr p0, v4

    cmp-long p0, p3, p0

    if-lez p0, :cond_2

    const/16 p0, 0x19c

    invoke-interface {p2, p0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_2
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-interface {p2}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0x190

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    :cond_3
    throw p0
.end method

.method public sendData(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;ZLorg/mortbay/resource/Resource;Lorg/mortbay/jetty/HttpContent;Ljava/util/Enumeration;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    if-nez v2, :cond_0

    invoke-virtual/range {p4 .. p4}, Lorg/mortbay/resource/Resource;->length()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    invoke-interface/range {p5 .. p5}, Lorg/mortbay/jetty/HttpContent;->getContentLength()J

    move-result-wide v4

    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v6, Lorg/mortbay/io/WriterOutputStream;

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/mortbay/io/WriterOutputStream;-><init>(Ljava/io/Writer;)V

    :goto_1
    if-eqz v3, :cond_d

    invoke-interface/range {p6 .. p6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_d

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-gez v9, :cond_1

    goto/16 :goto_9

    :cond_1
    invoke-static {v3, v4, v5}, Lorg/mortbay/jetty/InclusiveByteRange;->satisfiableRanges(Ljava/util/Enumeration;J)Ljava/util/List;

    move-result-object v3

    const-string v9, "Content-Range"

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    const/16 v11, 0xce

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-ne v10, v12, :cond_3

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mortbay/jetty/InclusiveByteRange;

    invoke-virtual {v3, v4, v5}, Lorg/mortbay/jetty/InclusiveByteRange;->getSize(J)J

    move-result-wide v7

    invoke-virtual {v0, v1, v2, v7, v8}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/jetty/HttpContent;J)V

    invoke-interface {v1, v11}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    invoke-virtual {v3, v4, v5}, Lorg/mortbay/jetty/InclusiveByteRange;->toHeaderRangeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v9, v0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lorg/mortbay/jetty/InclusiveByteRange;->getFirst(J)J

    move-result-wide v0

    move-object/from16 p0, p4

    move-object/from16 p1, v6

    move-wide/from16 p2, v0

    move-wide/from16 p4, v7

    invoke-virtual/range {p0 .. p5}, Lorg/mortbay/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    return-void

    :cond_3
    const-wide/16 v9, -0x1

    invoke-virtual {v0, v1, v2, v9, v10}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/jetty/HttpContent;J)V

    invoke-interface/range {p5 .. p5}, Lorg/mortbay/jetty/HttpContent;->getContentType()Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/mortbay/util/MultiPartOutputStream;

    invoke-direct {v2, v6}, Lorg/mortbay/util/MultiPartOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v1, v11}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    const-string v6, "Request-Range"

    move-object/from16 v9, p1

    invoke-interface {v9, v6}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v6, "multipart/x-byteranges; boundary="

    goto :goto_2

    :cond_4
    const-string v6, "multipart/byteranges; boundary="

    :goto_2
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lorg/mortbay/util/MultiPartOutputStream;->getBoundary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljavax/servlet/ServletResponse;->setContentType(Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    move v10, v13

    move v11, v10

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    const/4 v14, 0x2

    if-ge v10, v12, :cond_6

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/mortbay/jetty/InclusiveByteRange;

    invoke-virtual {v12, v4, v5}, Lorg/mortbay/jetty/InclusiveByteRange;->toHeaderRangeString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v9, v10

    int-to-long v7, v11

    if-lez v10, :cond_5

    move v11, v14

    goto :goto_4

    :cond_5
    move v11, v13

    :goto_4
    add-int/2addr v11, v14

    invoke-virtual {v2}, Lorg/mortbay/util/MultiPartOutputStream;->getBoundary()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v11, v15

    add-int/2addr v11, v14

    add-int/lit8 v11, v11, 0xc

    add-int/2addr v11, v14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v11, v15

    add-int/2addr v11, v14

    add-int/lit8 v11, v11, 0xd

    add-int/2addr v11, v14

    aget-object v15, v9, v10

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v11, v15

    add-int/2addr v11, v14

    add-int/2addr v11, v14

    int-to-long v14, v11

    invoke-virtual {v12, v4, v5}, Lorg/mortbay/jetty/InclusiveByteRange;->getLast(J)J

    move-result-wide v16

    invoke-virtual {v12, v4, v5}, Lorg/mortbay/jetty/InclusiveByteRange;->getFirst(J)J

    move-result-wide v11

    sub-long v16, v16, v11

    add-long v14, v14, v16

    const-wide/16 v11, 0x1

    add-long/2addr v14, v11

    add-long/2addr v7, v14

    long-to-int v11, v7

    add-int/lit8 v10, v10, 0x1

    const-wide/16 v7, 0x0

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lorg/mortbay/util/MultiPartOutputStream;->getBoundary()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    add-int/2addr v7, v14

    add-int/2addr v7, v14

    add-int/2addr v11, v7

    invoke-interface {v1, v11}, Ljavax/servlet/ServletResponse;->setContentLength(I)V

    const-wide/16 v7, 0x0

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_a

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/InclusiveByteRange;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Content-Range: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v11, v9, v13

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v0, v10}, Lorg/mortbay/util/MultiPartOutputStream;->startPart(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lorg/mortbay/jetty/InclusiveByteRange;->getFirst(J)J

    move-result-wide v16

    invoke-virtual {v1, v4, v5}, Lorg/mortbay/jetty/InclusiveByteRange;->getSize(J)J

    move-result-wide v10

    if-eqz v6, :cond_9

    cmp-long v1, v16, v7

    if-gez v1, :cond_7

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    invoke-virtual/range {p4 .. p4}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const-wide/16 v7, 0x0

    :cond_7
    cmp-long v1, v7, v16

    if-gez v1, :cond_8

    sub-long v7, v16, v7

    invoke-virtual {v6, v7, v8}, Ljava/io/InputStream;->skip(J)J

    goto :goto_6

    :cond_8
    move-wide/from16 v16, v7

    :goto_6
    invoke-static {v6, v2, v10, v11}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    add-long v7, v16, v10

    goto :goto_7

    :cond_9
    move-object/from16 v14, p4

    move-object v15, v2

    move-wide/from16 v18, v10

    invoke-virtual/range {v14 .. v19}, Lorg/mortbay/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_b
    invoke-virtual {v2}, Lorg/mortbay/util/MultiPartOutputStream;->close()V

    goto/16 :goto_a

    :cond_c
    :goto_8
    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/jetty/HttpContent;J)V

    const/16 v0, 0x1a0

    invoke-interface {v1, v0}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    invoke-static {v4, v5}, Lorg/mortbay/jetty/InclusiveByteRange;->to416HeaderRangeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v9, v0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    move-object/from16 p0, p4

    move-object/from16 p1, v6

    move-wide/from16 p2, v0

    move-wide/from16 p4, v4

    invoke-virtual/range {p0 .. p5}, Lorg/mortbay/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    return-void

    :cond_d
    :goto_9
    if-eqz p3, :cond_e

    const-wide/16 v0, 0x0

    move-object/from16 p0, p4

    move-object/from16 p1, v6

    move-wide/from16 p2, v0

    move-wide/from16 p4, v4

    invoke-virtual/range {p0 .. p5}, Lorg/mortbay/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto :goto_a

    :cond_e
    instance-of v3, v6, Lorg/mortbay/jetty/HttpConnection$Output;

    if-eqz v3, :cond_11

    instance-of v3, v1, Lorg/mortbay/jetty/Response;

    if-eqz v3, :cond_f

    check-cast v1, Lorg/mortbay/jetty/Response;

    invoke-virtual {v1}, Lorg/mortbay/jetty/Response;->getHttpFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeOptionHeaders(Lorg/mortbay/jetty/HttpFields;)V

    check-cast v6, Lorg/mortbay/jetty/HttpConnection$Output;

    invoke-virtual {v6, v2}, Lorg/mortbay/jetty/HttpConnection$Output;->sendContent(Ljava/lang/Object;)V

    goto :goto_a

    :cond_f
    invoke-interface/range {p5 .. p5}, Lorg/mortbay/jetty/HttpContent;->getBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/jetty/HttpContent;J)V

    check-cast v6, Lorg/mortbay/jetty/HttpConnection$Output;

    invoke-interface/range {p5 .. p5}, Lorg/mortbay/jetty/HttpContent;->getBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/mortbay/jetty/HttpConnection$Output;->sendContent(Ljava/lang/Object;)V

    goto :goto_a

    :cond_10
    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/jetty/HttpContent;J)V

    const-wide/16 v0, 0x0

    move-object/from16 p0, p4

    move-object/from16 p1, v6

    move-wide/from16 p2, v0

    move-wide/from16 p4, v4

    invoke-virtual/range {p0 .. p5}, Lorg/mortbay/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto :goto_a

    :cond_11
    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/jetty/HttpContent;J)V

    const-wide/16 v0, 0x0

    move-object/from16 p0, p4

    move-object/from16 p1, v6

    move-wide/from16 p2, v0

    move-wide/from16 p4, v4

    invoke-virtual/range {p0 .. p5}, Lorg/mortbay/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    :goto_a
    return-void
.end method

.method public sendDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/resource/Resource;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean p0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    const/16 v0, 0x193

    if-nez p0, :cond_0

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object p0

    const-string p1, "/"

    invoke-static {p0, p1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0, p4}, Lorg/mortbay/resource/Resource;->getListHTML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "No directory"

    invoke-interface {p2, v0, p0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "UTF-8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const-string p1, "text/html; charset=UTF-8"

    invoke-interface {p2, p1}, Ljavax/servlet/ServletResponse;->setContentType(Ljava/lang/String;)V

    array-length p1, p0

    invoke-interface {p2, p1}, Ljavax/servlet/ServletResponse;->setContentLength(I)V

    invoke-interface {p2}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/jetty/HttpContent;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getContentType()Lorg/mortbay/io/Buffer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljavax/servlet/ServletResponse;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getContentType()Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/servlet/ServletResponse;->setContentType(Ljava/lang/String;)V

    :cond_0
    instance-of v0, p1, Lorg/mortbay/jetty/Response;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_4

    check-cast p1, Lorg/mortbay/jetty/Response;

    invoke-virtual {p1}, Lorg/mortbay/jetty/Response;->getHttpFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getLastModified()Lorg/mortbay/io/Buffer;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lorg/mortbay/jetty/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getLastModified()Lorg/mortbay/io/Buffer;

    move-result-object v4

    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v5

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-eqz p2, :cond_2

    sget-object p2, Lorg/mortbay/jetty/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, p2, v3, v4}, Lorg/mortbay/jetty/HttpFields;->putDateField(Lorg/mortbay/io/Buffer;J)V

    :cond_2
    :goto_0
    cmp-long p2, p3, v1

    if-eqz p2, :cond_3

    invoke-virtual {p1, p3, p4}, Lorg/mortbay/jetty/Response;->setLongContentLength(J)V

    :cond_3
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeOptionHeaders(Lorg/mortbay/jetty/HttpFields;)V

    goto :goto_2

    :cond_4
    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-ltz p2, :cond_5

    const-string p2, "Last-Modified"

    invoke-interface {p1, p2, v3, v4}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    :cond_5
    cmp-long p2, p3, v1

    if-eqz p2, :cond_7

    const-wide/32 v0, 0x7fffffff

    cmp-long p2, p3, v0

    if-gez p2, :cond_6

    long-to-int p2, p3

    invoke-interface {p1, p2}, Ljavax/servlet/ServletResponse;->setContentLength(I)V

    goto :goto_1

    :cond_6
    const-string p2, "Content-Length"

    invoke-static {p3, p4}, Lorg/mortbay/util/TypeUtil;->toString(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeOptionHeaders(Ljavax/servlet/http/HttpServletResponse;)V

    :goto_2
    return-void
.end method

.method public writeOptionHeaders(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    if-eqz v0, :cond_0

    const-string v0, "Accept-Ranges"

    const-string v1, "bytes"

    .line 6
    invoke-interface {p1, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    if-eqz p0, :cond_1

    const-string v0, "Cache-Control"

    .line 8
    invoke-virtual {p0}, Lorg/mortbay/io/AbstractBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public writeOptionHeaders(Lorg/mortbay/jetty/HttpFields;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->ACCEPT_RANGES_BUFFER:Lorg/mortbay/io/Buffer;

    sget-object v1, Lorg/mortbay/jetty/HttpHeaderValues;->BYTES_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p1, v0, v1}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    if-eqz p0, :cond_1

    .line 4
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE_CONTROL_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p1, v0, p0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    :cond_1
    return-void
.end method
