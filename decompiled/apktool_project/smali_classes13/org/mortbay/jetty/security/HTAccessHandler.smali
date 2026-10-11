.class public Lorg/mortbay/jetty/security/HTAccessHandler;
.super Lorg/mortbay/jetty/security/SecurityHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/security/HTAccessHandler$b;,
        Lorg/mortbay/jetty/security/HTAccessHandler$a;
    }
.end annotation


# static fields
.field public static r:Lorg/mortbay/log/Logger;

.field public static synthetic s:Ljava/lang/Class;


# instance fields
.field public n:Lorg/mortbay/jetty/Handler;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public transient q:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/mortbay/jetty/security/HTAccessHandler;->s:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.mortbay.jetty.security.HTAccessHandler"

    invoke-static {v0}, Lorg/mortbay/jetty/security/HTAccessHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/security/HTAccessHandler;->s:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->getLogger(Ljava/lang/String;)Lorg/mortbay/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/security/HTAccessHandler;->r:Lorg/mortbay/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mortbay/jetty/security/SecurityHandler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->o:Ljava/lang/String;

    const-string v0, ".htaccess"

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->p:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->q:Ljava/util/HashMap;

    return-void
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

.method public static synthetic g()Lorg/mortbay/log/Logger;
    .locals 1

    sget-object v0, Lorg/mortbay/jetty/security/HTAccessHandler;->r:Lorg/mortbay/log/Logger;

    return-object v0
.end method


# virtual methods
.method public getPrincipal(Ljava/lang/String;Lorg/mortbay/jetty/security/UserRealm;)Ljava/security/Principal;
    .locals 0

    if-nez p2, :cond_0

    new-instance p2, Lorg/mortbay/jetty/security/HTAccessHandler$a;

    invoke-direct {p2, p0, p1}, Lorg/mortbay/jetty/security/HTAccessHandler$a;-><init>(Lorg/mortbay/jetty/security/HTAccessHandler;Ljava/lang/String;)V

    return-object p2

    :cond_0
    invoke-interface {p2, p1}, Lorg/mortbay/jetty/security/UserRealm;->getPrincipal(Ljava/lang/String;)Ljava/security/Principal;

    move-result-object p0

    return-object p0
.end method

.method public getProtegee()Lorg/mortbay/jetty/Handler;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->n:Lorg/mortbay/jetty/Handler;

    return-object p0
.end method

.method public final h(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    :cond_0
    return-void
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    instance-of v4, v2, Lorg/mortbay/jetty/Request;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Lorg/mortbay/jetty/Request;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v4

    :goto_0
    instance-of v5, v3, Lorg/mortbay/jetty/Response;

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Lorg/mortbay/jetty/Response;

    goto :goto_1

    :cond_1
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v5

    :goto_1
    sget-object v6, Lorg/mortbay/jetty/security/HTAccessHandler;->r:Lorg/mortbay/log/Logger;

    invoke-interface {v6}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    sget-object v6, Lorg/mortbay/jetty/security/HTAccessHandler;->r:Lorg/mortbay/log/Logger;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "HTAccessHandler pathInContext="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v7, v7}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const-string v6, "Authorization"

    invoke-interface {v2, v6}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_3

    const/16 v10, 0x20

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    sget-object v10, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-static {v6, v10}, Lorg/mortbay/jetty/security/B64Code;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v10, 0x3a

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    invoke-virtual {v6, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    add-int/2addr v10, v9

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    sget-object v10, Lorg/mortbay/jetty/security/HTAccessHandler;->r:Lorg/mortbay/log/Logger;

    invoke-interface {v10}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lorg/mortbay/jetty/security/HTAccessHandler;->r:Lorg/mortbay/log/Logger;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "User="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, ", password="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, "******************************"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12, v7, v7}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    move-object v6, v7

    move-object v11, v6

    :cond_4
    :goto_2
    :try_start_0
    const-string v10, "/"

    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v1

    goto :goto_3

    :cond_5
    invoke-static/range {p1 .. p1}, Lorg/mortbay/util/URIUtil;->parentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_3
    if-eqz v10, :cond_8

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v13, v0, Lorg/mortbay/jetty/security/HTAccessHandler;->p:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/security/HTAccessHandler;->getProtegee()Lorg/mortbay/jetty/Handler;

    move-result-object v13

    check-cast v13, Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v13, v12}, Lorg/mortbay/jetty/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v12

    sget-object v13, Lorg/mortbay/jetty/security/HTAccessHandler;->r:Lorg/mortbay/log/Logger;

    invoke-interface {v13}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    sget-object v13, Lorg/mortbay/jetty/security/HTAccessHandler;->r:Lorg/mortbay/log/Logger;

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "directory="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v15, " resource="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14, v7, v7}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v12}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v10}, Lorg/mortbay/util/URIUtil;->parentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_8
    move-object v12, v7

    :goto_4
    if-nez v12, :cond_a

    iget-object v10, v0, Lorg/mortbay/jetty/security/HTAccessHandler;->o:Ljava/lang/String;

    if-eqz v10, :cond_a

    invoke-static {v10}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v12

    invoke-virtual {v12}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v12}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_9
    move v10, v8

    goto :goto_5

    :cond_a
    move v10, v9

    :goto_5
    if-nez v12, :cond_b

    goto :goto_6

    :cond_b
    move v8, v10

    :goto_6
    iget-object v10, v0, Lorg/mortbay/jetty/security/HTAccessHandler;->p:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    const/16 v13, 0x193

    if-nez v10, :cond_19

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v14, v0, Lorg/mortbay/jetty/security/HTAccessHandler;->p:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v14, "~"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_19

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v14, v0, Lorg/mortbay/jetty/security/HTAccessHandler;->p:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v14, ".bak"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    goto/16 :goto_8

    :cond_c
    if-eqz v8, :cond_18

    sget-object v8, Lorg/mortbay/jetty/security/HTAccessHandler;->r:Lorg/mortbay/log/Logger;

    invoke-interface {v8}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_d

    sget-object v8, Lorg/mortbay/jetty/security/HTAccessHandler;->r:Lorg/mortbay/log/Logger;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "HTACCESS="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10, v7, v7}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iget-object v8, v0, Lorg/mortbay/jetty/security/HTAccessHandler;->q:Ljava/util/HashMap;

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mortbay/jetty/security/HTAccessHandler$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v8, :cond_e

    :try_start_1
    invoke-virtual {v8}, Lorg/mortbay/jetty/security/HTAccessHandler$b;->d()J

    move-result-wide v14

    invoke-virtual {v12}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v16

    cmp-long v10, v14, v16

    if-eqz v10, :cond_10

    :cond_e
    new-instance v10, Lorg/mortbay/jetty/security/HTAccessHandler$b;

    invoke-direct {v10, v12}, Lorg/mortbay/jetty/security/HTAccessHandler$b;-><init>(Lorg/mortbay/resource/Resource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v8, v0, Lorg/mortbay/jetty/security/HTAccessHandler;->q:Ljava/util/HashMap;

    invoke-virtual {v8, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lorg/mortbay/jetty/security/HTAccessHandler;->r:Lorg/mortbay/log/Logger;

    invoke-interface {v8}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_f

    sget-object v8, Lorg/mortbay/jetty/security/HTAccessHandler;->r:Lorg/mortbay/log/Logger;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "HTCache loaded "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12, v7, v7}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_f
    move-object v8, v10

    :cond_10
    :try_start_3
    invoke-virtual {v8}, Lorg/mortbay/jetty/security/HTAccessHandler$b;->n()Z

    move-result v10

    if-eqz v10, :cond_11

    sget-object v0, Lorg/mortbay/jetty/security/HTAccessHandler;->r:Lorg/mortbay/log/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Mis-configured htaccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7, v7}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v13}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    invoke-virtual {v4, v9}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    return-void

    :cond_11
    invoke-virtual {v8}, Lorg/mortbay/jetty/security/HTAccessHandler$b;->e()Ljava/util/HashMap;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v12

    if-lez v12, :cond_12

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    invoke-virtual/range {p0 .. p4}, Lorg/mortbay/jetty/security/HTAccessHandler;->h(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    return-void

    :cond_12
    invoke-virtual {v8}, Lorg/mortbay/jetty/security/HTAccessHandler$b;->g()I

    move-result v10

    const-string v12, ""

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v12, v14}, Lorg/mortbay/jetty/security/HTAccessHandler$b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    sget-object v14, Lorg/mortbay/jetty/security/HTAccessHandler;->r:Lorg/mortbay/log/Logger;

    invoke-interface {v14}, Lorg/mortbay/log/Logger;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_13

    sget-object v14, Lorg/mortbay/jetty/security/HTAccessHandler;->r:Lorg/mortbay/log/Logger;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "IPValid = "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v13, v7, v7}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13
    if-ne v12, v9, :cond_14

    if-nez v10, :cond_14

    invoke-virtual/range {p0 .. p4}, Lorg/mortbay/jetty/security/HTAccessHandler;->h(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    return-void

    :cond_14
    if-nez v12, :cond_15

    if-ne v10, v9, :cond_15

    const/16 v10, 0x193

    invoke-interface {v3, v10}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    invoke-virtual {v4, v9}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    return-void

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/security/SecurityHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v10

    invoke-virtual {v8, v11, v6, v10, v4}, Lorg/mortbay/jetty/security/HTAccessHandler$b;->b(Ljava/lang/String;Ljava/lang/String;Lorg/mortbay/jetty/security/UserRealm;Lorg/mortbay/jetty/Request;)Z

    move-result v6

    if-nez v6, :cond_16

    sget-object v0, Lorg/mortbay/jetty/security/HTAccessHandler;->r:Lorg/mortbay/log/Logger;

    const-string v1, "Auth Failed"

    invoke-interface {v0, v1, v7, v7}, Lorg/mortbay/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "WWW-Authenticate"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "basic realm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Lorg/mortbay/jetty/security/HTAccessHandler$b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x191

    invoke-interface {v3, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    invoke-virtual {v5}, Lorg/mortbay/jetty/Response;->complete()V

    invoke-virtual {v4, v9}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    return-void

    :cond_16
    if-eqz v11, :cond_17

    const-string v5, "BASIC"

    invoke-virtual {v4, v5}, Lorg/mortbay/jetty/Request;->setAuthType(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/security/SecurityHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v5

    invoke-virtual {v0, v11, v5}, Lorg/mortbay/jetty/security/HTAccessHandler;->getPrincipal(Ljava/lang/String;Lorg/mortbay/jetty/security/UserRealm;)Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_17
    move-object v7, v8

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v7, v10

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v7, v8

    goto :goto_9

    :cond_18
    :goto_7
    :try_start_4
    invoke-virtual/range {p0 .. p4}, Lorg/mortbay/jetty/security/HTAccessHandler;->h(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    goto :goto_a

    :cond_19
    :goto_8
    move v0, v13

    invoke-interface {v3, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    invoke-virtual {v4, v9}, Lorg/mortbay/jetty/Request;->setHandled(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception v0

    :goto_9
    sget-object v1, Lorg/mortbay/jetty/security/HTAccessHandler;->r:Lorg/mortbay/log/Logger;

    const-string v2, "Exception"

    invoke-interface {v1, v2, v0}, Lorg/mortbay/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v7, :cond_1a

    const/16 v0, 0x1f4

    invoke-interface {v3, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    invoke-virtual {v4, v9}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    :cond_1a
    :goto_a
    return-void
.end method

.method public setAccessFile(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ".htaccess"

    iput-object p1, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->p:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->p:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setDefault(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->o:Ljava/lang/String;

    return-void
.end method

.method public setProtegee(Lorg/mortbay/jetty/Handler;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/HTAccessHandler;->n:Lorg/mortbay/jetty/Handler;

    return-void
.end method
