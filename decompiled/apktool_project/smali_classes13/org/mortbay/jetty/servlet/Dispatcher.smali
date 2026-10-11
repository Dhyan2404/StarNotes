.class public Lorg/mortbay/jetty/servlet/Dispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/RequestDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/servlet/Dispatcher$b;,
        Lorg/mortbay/jetty/servlet/Dispatcher$a;
    }
.end annotation


# static fields
.field public static final __FORWARD_CONTEXT_PATH:Ljava/lang/String; = "javax.servlet.forward.context_path"

.field public static final __FORWARD_JETTY:Ljava/lang/String; = "org.mortbay.jetty.forwarded"

.field public static final __FORWARD_PATH_INFO:Ljava/lang/String; = "javax.servlet.forward.path_info"

.field public static final __FORWARD_PREFIX:Ljava/lang/String; = "javax.servlet.forward."

.field public static final __FORWARD_QUERY_STRING:Ljava/lang/String; = "javax.servlet.forward.query_string"

.field public static final __FORWARD_REQUEST_URI:Ljava/lang/String; = "javax.servlet.forward.request_uri"

.field public static final __FORWARD_SERVLET_PATH:Ljava/lang/String; = "javax.servlet.forward.servlet_path"

.field public static final __INCLUDE_CONTEXT_PATH:Ljava/lang/String; = "javax.servlet.include.context_path"

.field public static final __INCLUDE_JETTY:Ljava/lang/String; = "org.mortbay.jetty.included"

.field public static final __INCLUDE_PATH_INFO:Ljava/lang/String; = "javax.servlet.include.path_info"

.field public static final __INCLUDE_PREFIX:Ljava/lang/String; = "javax.servlet.include."

.field public static final __INCLUDE_QUERY_STRING:Ljava/lang/String; = "javax.servlet.include.query_string"

.field public static final __INCLUDE_REQUEST_URI:Ljava/lang/String; = "javax.servlet.include.request_uri"

.field public static final __INCLUDE_SERVLET_PATH:Ljava/lang/String; = "javax.servlet.include.servlet_path"

.field public static final __JSP_FILE:Ljava/lang/String; = "org.apache.catalina.jsp_file"


# instance fields
.field public a:Lorg/mortbay/jetty/handler/ContextHandler;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/handler/ContextHandler;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    .line 8
    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/handler/ContextHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    .line 3
    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->d:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lorg/mortbay/jetty/servlet/Dispatcher;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static type(Ljava/lang/String;)I
    .locals 1

    const-string v0, "request"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "forward"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-string v0, "include"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const-string v0, "error"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x8

    return p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public error(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, v0}, Lorg/mortbay/jetty/servlet/Dispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;I)V

    return-void
.end method

.method public forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/mortbay/jetty/servlet/Dispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;I)V

    return-void
.end method

.method public forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "javax.servlet.forward.request_uri"

    .line 2
    instance-of v4, v1, Lorg/mortbay/jetty/Request;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lorg/mortbay/jetty/Request;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v4

    .line 3
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->resetBuffer()V

    const-string v5, "org.apache.catalina.jsp_file"

    .line 4
    invoke-interface {v1, v5}, Ljavax/servlet/ServletRequest;->removeAttribute(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getServletPath()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getQueryString()Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getAttributes()Lorg/mortbay/util/Attributes;

    move-result-object v10

    .line 11
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getParameters()Lorg/mortbay/util/MultiMap;

    move-result-object v11

    .line 12
    :try_start_0
    iget-object v12, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->e:Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 13
    iget-object v0, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    check-cast v1, Ljavax/servlet/http/HttpServletRequest;

    move-object/from16 v3, p2

    check-cast v3, Ljavax/servlet/http/HttpServletResponse;

    invoke-virtual {v0, v12, v1, v3, v2}, Lorg/mortbay/jetty/handler/ContextHandler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    move-object v2, v7

    goto/16 :goto_b

    .line 14
    :cond_1
    iget-object v12, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz v12, :cond_c

    .line 15
    :try_start_1
    new-instance v13, Lorg/mortbay/util/MultiMap;

    invoke-direct {v13}, Lorg/mortbay/util/MultiMap;-><init>()V

    .line 16
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/ServletRequest;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v11, :cond_2

    .line 17
    :try_start_2
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getParameterNames()Ljava/util/Enumeration;

    .line 18
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getParameters()Lorg/mortbay/util/MultiMap;

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    :cond_2
    if-eqz v11, :cond_6

    .line 19
    :try_start_3
    invoke-virtual {v11}, Ljava/util/AbstractMap;->size()I

    move-result v15

    if-lez v15, :cond_6

    .line 20
    invoke-virtual {v11}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v16, 0x0

    .line 21
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 22
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 23
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v14, v18

    check-cast v14, Ljava/lang/String;

    .line 24
    invoke-virtual {v13, v14}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v18, :cond_3

    const/16 v16, 0x1

    :cond_3
    move-object/from16 v18, v11

    .line 25
    :try_start_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v17, v15

    const/4 v15, 0x0

    .line 26
    :goto_2
    invoke-static {v11}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v2

    if-ge v15, v2, :cond_4

    .line 27
    invoke-static {v11, v15}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_4
    move/from16 v2, p3

    move-object/from16 v15, v17

    move-object/from16 v11, v18

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v7

    move-object/from16 v11, v18

    goto/16 :goto_e

    :cond_5
    move-object/from16 v18, v11

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v18, v11

    goto/16 :goto_d

    :cond_6
    move-object/from16 v18, v11

    const/16 v16, 0x0

    :goto_3
    if-eqz v9, :cond_b

    .line 28
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-lez v2, :cond_b

    const-string v2, "&"

    if-eqz v16, :cond_a

    .line 29
    :try_start_6
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 30
    new-instance v14, Lorg/mortbay/util/MultiMap;

    invoke-direct {v14}, Lorg/mortbay/util/MultiMap;-><init>()V

    .line 31
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/ServletRequest;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v15

    invoke-static {v9, v14, v15}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    .line 32
    new-instance v15, Lorg/mortbay/util/MultiMap;

    invoke-direct {v15}, Lorg/mortbay/util/MultiMap;-><init>()V

    .line 33
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/ServletRequest;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v15, v1}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v14}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 35
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/String;

    .line 38
    invoke-virtual {v15, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 39
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v19, v7

    move-object/from16 v16, v15

    const/4 v15, 0x0

    .line 40
    :goto_5
    :try_start_7
    invoke-static {v14}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v7

    if-ge v15, v7, :cond_8

    .line 41
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v20, v1

    const-string v1, "="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v14, v15}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v20

    goto :goto_5

    :cond_7
    move-object/from16 v19, v7

    move-object/from16 v16, v15

    :cond_8
    move-object/from16 v15, v16

    move-object/from16 v1, v17

    move-object/from16 v7, v19

    goto :goto_4

    :cond_9
    move-object/from16 v19, v7

    .line 42
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_a
    move-object/from16 v19, v7

    .line 43
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    move-object v12, v1

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v19, v7

    goto :goto_8

    :cond_b
    move-object/from16 v19, v7

    .line 44
    :goto_7
    invoke-virtual {v4, v13}, Lorg/mortbay/jetty/Request;->setParameters(Lorg/mortbay/util/MultiMap;)V

    .line 45
    invoke-virtual {v4, v12}, Lorg/mortbay/jetty/Request;->setQueryString(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v11, v18

    goto :goto_9

    :catchall_3
    move-exception v0

    :goto_8
    move-object/from16 v11, v18

    goto/16 :goto_c

    :catchall_4
    move-exception v0

    move-object/from16 v19, v7

    goto/16 :goto_c

    :cond_c
    move-object/from16 v19, v7

    .line 46
    :goto_9
    :try_start_8
    new-instance v1, Lorg/mortbay/jetty/servlet/Dispatcher$a;

    invoke-direct {v1, v0, v10}, Lorg/mortbay/jetty/servlet/Dispatcher$a;-><init>(Lorg/mortbay/jetty/servlet/Dispatcher;Lorg/mortbay/util/Attributes;)V

    .line 47
    invoke-interface {v10, v3}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_d

    const-string v2, "javax.servlet.forward.path_info"

    .line 48
    invoke-interface {v10, v2}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lorg/mortbay/jetty/servlet/Dispatcher$a;->i:Ljava/lang/String;

    const-string v2, "javax.servlet.forward.query_string"

    .line 49
    invoke-interface {v10, v2}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lorg/mortbay/jetty/servlet/Dispatcher$a;->j:Ljava/lang/String;

    .line 50
    invoke-interface {v10, v3}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lorg/mortbay/jetty/servlet/Dispatcher$a;->f:Ljava/lang/String;

    const-string v2, "javax.servlet.forward.context_path"

    .line 51
    invoke-interface {v10, v2}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lorg/mortbay/jetty/servlet/Dispatcher$a;->g:Ljava/lang/String;

    const-string v2, "javax.servlet.forward.servlet_path"

    .line 52
    invoke-interface {v10, v2}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lorg/mortbay/jetty/servlet/Dispatcher$a;->h:Ljava/lang/String;

    move-object/from16 v2, v19

    goto :goto_a

    .line 53
    :cond_d
    iput-object v8, v1, Lorg/mortbay/jetty/servlet/Dispatcher$a;->i:Ljava/lang/String;

    .line 54
    iput-object v9, v1, Lorg/mortbay/jetty/servlet/Dispatcher$a;->j:Ljava/lang/String;

    .line 55
    iput-object v5, v1, Lorg/mortbay/jetty/servlet/Dispatcher$a;->f:Ljava/lang/String;

    .line 56
    iput-object v6, v1, Lorg/mortbay/jetty/servlet/Dispatcher$a;->g:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-object/from16 v2, v19

    .line 57
    :try_start_9
    iput-object v2, v1, Lorg/mortbay/jetty/servlet/Dispatcher$a;->h:Ljava/lang/String;

    .line 58
    :goto_a
    iget-object v3, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lorg/mortbay/jetty/Request;->setRequestURI(Ljava/lang/String;)V

    .line 59
    iget-object v3, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/mortbay/jetty/Request;->setContextPath(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v4, v1}, Lorg/mortbay/jetty/Request;->setAttributes(Lorg/mortbay/util/Attributes;)V

    .line 61
    invoke-virtual {v4, v12}, Lorg/mortbay/jetty/Request;->setQueryString(Ljava/lang/String;)V

    .line 62
    iget-object v1, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->c:Ljava/lang/String;

    move-object/from16 v3, p1

    check-cast v3, Ljavax/servlet/http/HttpServletRequest;

    move-object/from16 v7, p2

    check-cast v7, Ljavax/servlet/http/HttpServletResponse;

    move/from16 v12, p3

    invoke-virtual {v1, v0, v3, v7, v12}, Lorg/mortbay/jetty/handler/ContextHandler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    .line 63
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Response;->isWriting()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v0, :cond_e

    .line 64
    :try_start_a
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_b

    .line 65
    :catch_0
    :try_start_b
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_b

    .line 66
    :cond_e
    :try_start_c
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_b

    .line 67
    :catch_1
    :try_start_d
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 68
    :goto_b
    invoke-virtual {v4, v5}, Lorg/mortbay/jetty/Request;->setRequestURI(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v4, v6}, Lorg/mortbay/jetty/Request;->setContextPath(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v4, v2}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v4, v8}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v4, v10}, Lorg/mortbay/jetty/Request;->setAttributes(Lorg/mortbay/util/Attributes;)V

    .line 73
    invoke-virtual {v4, v11}, Lorg/mortbay/jetty/Request;->setParameters(Lorg/mortbay/util/MultiMap;)V

    .line 74
    invoke-virtual {v4, v9}, Lorg/mortbay/jetty/Request;->setQueryString(Ljava/lang/String;)V

    return-void

    :catchall_5
    move-exception v0

    goto :goto_e

    :catchall_6
    move-exception v0

    :goto_c
    move-object/from16 v2, v19

    goto :goto_e

    :catchall_7
    move-exception v0

    :goto_d
    move-object v2, v7

    .line 75
    :goto_e
    invoke-virtual {v4, v5}, Lorg/mortbay/jetty/Request;->setRequestURI(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v4, v6}, Lorg/mortbay/jetty/Request;->setContextPath(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v4, v2}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v4, v8}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v4, v10}, Lorg/mortbay/jetty/Request;->setAttributes(Lorg/mortbay/util/Attributes;)V

    .line 80
    invoke-virtual {v4, v11}, Lorg/mortbay/jetty/Request;->setParameters(Lorg/mortbay/util/MultiMap;)V

    .line 81
    invoke-virtual {v4, v9}, Lorg/mortbay/jetty/Request;->setQueryString(Ljava/lang/String;)V

    throw v0
.end method

.method public include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lorg/mortbay/jetty/Request;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mortbay/jetty/Request;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    :goto_0
    const-string v1, "org.apache.catalina.jsp_file"

    invoke-interface {p1, v1}, Ljavax/servlet/ServletRequest;->removeAttribute(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getAttributes()Lorg/mortbay/util/Attributes;

    move-result-object v1

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getParameters()Lorg/mortbay/util/MultiMap;

    move-result-object v2

    :try_start_0
    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpConnection;->include()V

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->e:Ljava/lang/String;

    const/4 v4, 0x4

    if-eqz v3, :cond_1

    iget-object p0, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    invoke-virtual {p0, v3, p1, p2, v4}, Lorg/mortbay/jetty/handler/ContextHandler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    goto/16 :goto_2

    :cond_1
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->d:Ljava/lang/String;

    if-eqz v3, :cond_4

    new-instance v5, Lorg/mortbay/util/MultiMap;

    invoke-direct {v5}, Lorg/mortbay/util/MultiMap;-><init>()V

    invoke-interface {p1}, Ljavax/servlet/ServletRequest;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    move-result v6

    if-lez v6, :cond_3

    invoke-virtual {v2}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    const/4 v9, 0x0

    :goto_1
    invoke-static {v7}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v10

    if-ge v9, v10, :cond_2

    invoke-static {v7, v9}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v5}, Lorg/mortbay/jetty/Request;->setParameters(Lorg/mortbay/util/MultiMap;)V

    :cond_4
    new-instance v5, Lorg/mortbay/jetty/servlet/Dispatcher$b;

    invoke-direct {v5, p0, v1}, Lorg/mortbay/jetty/servlet/Dispatcher$b;-><init>(Lorg/mortbay/jetty/servlet/Dispatcher;Lorg/mortbay/util/Attributes;)V

    iget-object v6, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->b:Ljava/lang/String;

    iput-object v6, v5, Lorg/mortbay/jetty/servlet/Dispatcher$b;->f:Ljava/lang/String;

    iget-object v6, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v6}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/mortbay/jetty/servlet/Dispatcher$b;->g:Ljava/lang/String;

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/mortbay/jetty/servlet/Dispatcher$b;->h:Ljava/lang/String;

    iget-object v6, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->c:Ljava/lang/String;

    iput-object v6, v5, Lorg/mortbay/jetty/servlet/Dispatcher$b;->i:Ljava/lang/String;

    iput-object v3, v5, Lorg/mortbay/jetty/servlet/Dispatcher$b;->j:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/mortbay/jetty/Request;->setAttributes(Lorg/mortbay/util/Attributes;)V

    iget-object v3, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->a:Lorg/mortbay/jetty/handler/ContextHandler;

    iget-object v5, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->e:Ljava/lang/String;

    if-nez v5, :cond_5

    iget-object v5, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->c:Ljava/lang/String;

    :cond_5
    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    invoke-virtual {v3, v5, p1, p2, v4}, Lorg/mortbay/jetty/handler/ContextHandler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Request;->setAttributes(Lorg/mortbay/util/Attributes;)V

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpConnection;->included()V

    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/Request;->setParameters(Lorg/mortbay/util/MultiMap;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Request;->setAttributes(Lorg/mortbay/util/Attributes;)V

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->included()V

    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/Request;->setParameters(Lorg/mortbay/util/MultiMap;)V

    throw p0
.end method
