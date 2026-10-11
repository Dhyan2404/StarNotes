.class public Lorg/mortbay/jetty/security/SecurityHandler;
.super Lorg/mortbay/jetty/handler/HandlerWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;
    }
.end annotation


# static fields
.field public static __NOBODY:Ljava/security/Principal;

.field public static __NO_USER:Ljava/security/Principal;


# instance fields
.field public g:Ljava/lang/String;

.field public h:Lorg/mortbay/jetty/security/UserRealm;

.field public i:[Lorg/mortbay/jetty/security/ConstraintMapping;

.field public j:Lorg/mortbay/jetty/servlet/PathMap;

.field public k:Lorg/mortbay/jetty/security/Authenticator;

.field public l:Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;

.field public m:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mortbay/jetty/security/d;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/d;-><init>()V

    sput-object v0, Lorg/mortbay/jetty/security/SecurityHandler;->__NO_USER:Ljava/security/Principal;

    new-instance v0, Lorg/mortbay/jetty/security/e;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/e;-><init>()V

    sput-object v0, Lorg/mortbay/jetty/security/SecurityHandler;->__NOBODY:Ljava/security/Principal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;-><init>()V

    const-string v0, "BASIC"

    iput-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->g:Ljava/lang/String;

    new-instance v0, Lorg/mortbay/jetty/servlet/PathMap;

    invoke-direct {v0}, Lorg/mortbay/jetty/servlet/PathMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->j:Lorg/mortbay/jetty/servlet/PathMap;

    new-instance v0, Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;-><init>(Lorg/mortbay/jetty/security/SecurityHandler;)V

    iput-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->l:Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->m:Z

    return-void
.end method


# virtual methods
.method public checkSecurityConstraints(Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->j:Lorg/mortbay/jetty/servlet/PathMap;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/servlet/PathMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move-object v3, v2

    :goto_0
    invoke-static {v0}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-static {v0, v4}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move v7, v1

    :goto_1
    invoke-static {v6}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v8

    if-ge v7, v8, :cond_2

    invoke-static {v6, v7}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mortbay/jetty/security/ConstraintMapping;

    invoke-virtual {v8}, Lorg/mortbay/jetty/security/ConstraintMapping;->getMethod()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Lorg/mortbay/jetty/security/ConstraintMapping;->getMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Lorg/mortbay/jetty/Request;->getMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_2

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v8}, Lorg/mortbay/jetty/security/ConstraintMapping;->getConstraint()Lorg/mortbay/jetty/security/Constraint;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v5

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    move-object v6, v3

    iget-object v7, p0, Lorg/mortbay/jetty/security/SecurityHandler;->k:Lorg/mortbay/jetty/security/Authenticator;

    iget-object v8, p0, Lorg/mortbay/jetty/security/SecurityHandler;->h:Lorg/mortbay/jetty/security/UserRealm;

    move-object v5, p0

    move-object v9, p1

    move-object v10, p2

    move-object v11, p3

    invoke-virtual/range {v5 .. v11}, Lorg/mortbay/jetty/security/SecurityHandler;->f(Ljava/lang/Object;Lorg/mortbay/jetty/security/Authenticator;Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Z

    move-result p0

    return p0

    :cond_4
    iget-object p0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->l:Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;

    invoke-virtual {p2, p0}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    const/4 p0, 0x1

    return p0
.end method

.method public doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->k:Lorg/mortbay/jetty/security/Authenticator;

    if-nez v0, :cond_4

    const-string v0, "BASIC"

    iget-object v1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/mortbay/jetty/security/BasicAuthenticator;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/BasicAuthenticator;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->k:Lorg/mortbay/jetty/security/Authenticator;

    goto :goto_0

    :cond_0
    const-string v0, "DIGEST"

    iget-object v1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/mortbay/jetty/security/DigestAuthenticator;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/DigestAuthenticator;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->k:Lorg/mortbay/jetty/security/Authenticator;

    goto :goto_0

    :cond_1
    const-string v0, "CLIENT_CERT"

    iget-object v1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/mortbay/jetty/security/ClientCertAuthenticator;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/ClientCertAuthenticator;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->k:Lorg/mortbay/jetty/security/Authenticator;

    goto :goto_0

    :cond_2
    const-string v0, "FORM"

    iget-object v1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/mortbay/jetty/security/FormAuthenticator;

    invoke-direct {v0}, Lorg/mortbay/jetty/security/FormAuthenticator;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->k:Lorg/mortbay/jetty/security/Authenticator;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unknown Authentication method:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    :cond_4
    :goto_0
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStart()V

    return-void
.end method

.method public final f(Ljava/lang/Object;Lorg/mortbay/jetty/security/Authenticator;Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    move v7, v6

    move v8, v7

    move-object v9, v5

    :goto_0
    invoke-static/range {p1 .. p1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v10

    const-string v11, "*"

    const/4 v12, 0x1

    if-ge v6, v10, :cond_7

    move-object/from16 v10, p1

    invoke-static {v10, v6}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/mortbay/jetty/security/Constraint;

    const/4 v14, -0x1

    if-le v7, v14, :cond_0

    invoke-virtual {v13}, Lorg/mortbay/jetty/security/Constraint;->hasDataConstraint()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v13}, Lorg/mortbay/jetty/security/Constraint;->getDataConstraint()I

    move-result v14

    if-le v14, v7, :cond_1

    invoke-virtual {v13}, Lorg/mortbay/jetty/security/Constraint;->getDataConstraint()I

    move-result v7

    goto :goto_1

    :cond_0
    move v7, v14

    :cond_1
    :goto_1
    if-nez v8, :cond_6

    invoke-virtual {v13}, Lorg/mortbay/jetty/security/Constraint;->getAuthenticate()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v13}, Lorg/mortbay/jetty/security/Constraint;->isAnyRole()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object v9, v11

    goto :goto_4

    :cond_2
    invoke-virtual {v13}, Lorg/mortbay/jetty/security/Constraint;->getRoles()[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    array-length v14, v13

    if-nez v14, :cond_3

    goto :goto_3

    :cond_3
    if-eq v9, v11, :cond_6

    array-length v11, v13

    :goto_2
    add-int/lit8 v12, v11, -0x1

    if-lez v11, :cond_6

    aget-object v11, v13, v12

    invoke-static {v9, v11}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move v11, v12

    goto :goto_2

    :cond_4
    :goto_3
    move v6, v12

    goto :goto_5

    :cond_5
    move v8, v12

    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    move v6, v4

    :goto_5
    const/16 v10, 0x193

    if-eqz v6, :cond_9

    instance-of v6, v0, Lorg/mortbay/jetty/security/FormAuthenticator;

    if-eqz v6, :cond_8

    move-object v6, v0

    check-cast v6, Lorg/mortbay/jetty/security/FormAuthenticator;

    move-object/from16 v13, p4

    invoke-virtual {v6, v13}, Lorg/mortbay/jetty/security/FormAuthenticator;->isLoginOrErrorPage(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    :cond_8
    invoke-virtual {v3, v10}, Lorg/mortbay/jetty/Response;->sendError(I)V

    return v4

    :cond_9
    move-object/from16 v13, p4

    :cond_a
    if-lez v7, :cond_13

    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v6

    invoke-virtual {v6}, Lorg/mortbay/jetty/HttpConnection;->getConnector()Lorg/mortbay/jetty/Connector;

    move-result-object v6

    const-string v14, "?"

    const-string v15, ":"

    const-string v4, "://"

    if-eq v7, v12, :cond_f

    const/4 v12, 0x2

    if-eq v7, v12, :cond_b

    invoke-virtual {v3, v10, v5}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    :goto_6
    const/4 v0, 0x0

    return v0

    :cond_b
    invoke-interface {v6, v2}, Lorg/mortbay/jetty/Connector;->isConfidential(Lorg/mortbay/jetty/Request;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto/16 :goto_9

    :cond_c
    invoke-interface {v6}, Lorg/mortbay/jetty/Connector;->getConfidentialPort()I

    move-result v0

    if-lez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v6}, Lorg/mortbay/jetty/Connector;->getConfidentialScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v6}, Lorg/mortbay/jetty/Connector;->getConfidentialPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getQueryString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lorg/mortbay/jetty/Response;->setContentLength(I)V

    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/Response;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/Response;->sendRedirect(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    invoke-virtual {v3, v10, v5}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    :goto_7
    return v1

    :cond_f
    invoke-interface {v6, v2}, Lorg/mortbay/jetty/Connector;->isIntegral(Lorg/mortbay/jetty/Request;)Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_9

    :cond_10
    invoke-interface {v6}, Lorg/mortbay/jetty/Connector;->getConfidentialPort()I

    move-result v0

    if-lez v0, :cond_12

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v6}, Lorg/mortbay/jetty/Connector;->getIntegralScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v6}, Lorg/mortbay/jetty/Connector;->getIntegralPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getQueryString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_11
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lorg/mortbay/jetty/Response;->setContentLength(I)V

    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/Response;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/Response;->sendRedirect(Ljava/lang/String;)V

    goto :goto_8

    :cond_12
    const/4 v1, 0x0

    invoke-virtual {v3, v10, v5}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    :goto_8
    return v1

    :cond_13
    :goto_9
    if-nez v8, :cond_1d

    if-eqz v9, :cond_1d

    const/16 v4, 0x1f4

    if-nez v1, :cond_14

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " failed - no realm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    const-string v0, "No realm"

    invoke-virtual {v3, v4, v0}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_14
    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getAuthType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16

    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getRemoteUser()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16

    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v4

    if-nez v4, :cond_15

    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getRemoteUser()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v5, v2}, Lorg/mortbay/jetty/security/UserRealm;->authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;

    move-result-object v4

    :cond_15
    move-object v5, v4

    if-nez v5, :cond_18

    if-eqz v0, :cond_18

    invoke-interface/range {p2 .. p6}, Lorg/mortbay/jetty/security/Authenticator;->authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;

    move-result-object v5

    goto :goto_a

    :cond_16
    if-eqz v0, :cond_17

    invoke-interface/range {p2 .. p6}, Lorg/mortbay/jetty/security/Authenticator;->authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;

    move-result-object v5

    goto :goto_a

    :cond_17
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Mis-configured Authenticator for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {p5 .. p5}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    const-string v0, "Configuration error"

    invoke-virtual {v3, v4, v0}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    :cond_18
    :goto_a
    if-nez v5, :cond_19

    const/4 v0, 0x0

    return v0

    :cond_19
    sget-object v0, Lorg/mortbay/jetty/security/SecurityHandler;->__NOBODY:Ljava/security/Principal;

    if-ne v5, v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    if-eq v9, v11, :cond_1e

    invoke-static {v9}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    :goto_b
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1c

    invoke-static {v9, v2}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v5, v0}, Lorg/mortbay/jetty/security/UserRealm;->isUserInRole(Ljava/security/Principal;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_c

    :cond_1b
    move v0, v2

    goto :goto_b

    :cond_1c
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "AUTH FAILURE: incorrect role for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v5}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/util/StringUtil;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    const-string v0, "User not in required role"

    invoke-virtual {v3, v10, v0}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/security/SecurityHandler;->l:Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;

    invoke-virtual {v2, v0}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public getAuthMethod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getAuthenticator()Lorg/mortbay/jetty/security/Authenticator;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->k:Lorg/mortbay/jetty/security/Authenticator;

    return-object p0
.end method

.method public getConstraintMappings()[Lorg/mortbay/jetty/security/ConstraintMapping;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->i:[Lorg/mortbay/jetty/security/ConstraintMapping;

    return-object p0
.end method

.method public getUserRealm()Lorg/mortbay/jetty/security/UserRealm;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->h:Lorg/mortbay/jetty/security/UserRealm;

    return-object p0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    const-string v0, "org.mortbay.jetty.welcome"

    instance-of v1, p2, Lorg/mortbay/jetty/Request;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lorg/mortbay/jetty/Request;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v1

    :goto_0
    instance-of v2, p3, Lorg/mortbay/jetty/Response;

    if-eqz v2, :cond_1

    move-object v2, p3

    check-cast v2, Lorg/mortbay/jetty/Response;

    goto :goto_1

    :cond_1
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v2

    :goto_1
    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v3

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SecurityHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/mortbay/jetty/Request;->setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V

    if-ne p4, v4, :cond_3

    invoke-virtual {p0, p1, v1, v2}, Lorg/mortbay/jetty/security/SecurityHandler;->checkSecurityConstraints(Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1, v4}, Lorg/mortbay/jetty/Request;->setHandled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->h:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz p0, :cond_2

    if-ne p4, v4, :cond_2

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/mortbay/jetty/security/UserRealm;->disassociate(Ljava/security/Principal;)V

    :cond_2
    invoke-virtual {v1, v3}, Lorg/mortbay/jetty/Request;->setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V

    return-void

    :cond_3
    const/4 v5, 0x2

    if-ne p4, v5, :cond_5

    :try_start_1
    iget-boolean v5, p0, Lorg/mortbay/jetty/security/SecurityHandler;->m:Z

    if-eqz v5, :cond_5

    invoke-interface {p2, v0}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {p2, v0}, Ljavax/servlet/ServletRequest;->removeAttribute(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, v2}, Lorg/mortbay/jetty/security/SecurityHandler;->checkSecurityConstraints(Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1, v4}, Lorg/mortbay/jetty/Request;->setHandled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->h:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz p0, :cond_4

    if-ne p4, v4, :cond_4

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/mortbay/jetty/security/UserRealm;->disassociate(Ljava/security/Principal;)V

    :cond_4
    invoke-virtual {v1, v3}, Lorg/mortbay/jetty/Request;->setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V

    return-void

    :cond_5
    :try_start_2
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->k:Lorg/mortbay/jetty/security/Authenticator;

    instance-of v0, v0, Lorg/mortbay/jetty/security/FormAuthenticator;

    if-eqz v0, :cond_7

    const-string v0, "/j_security_check"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p2, p0, Lorg/mortbay/jetty/security/SecurityHandler;->k:Lorg/mortbay/jetty/security/Authenticator;

    invoke-virtual {p0}, Lorg/mortbay/jetty/security/SecurityHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object p3

    invoke-interface {p2, p3, p1, v1, v2}, Lorg/mortbay/jetty/security/Authenticator;->authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;

    invoke-virtual {v1, v4}, Lorg/mortbay/jetty/Request;->setHandled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->h:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz p0, :cond_6

    if-ne p4, v4, :cond_6

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/mortbay/jetty/security/UserRealm;->disassociate(Ljava/security/Principal;)V

    :cond_6
    invoke-virtual {v1, v3}, Lorg/mortbay/jetty/Request;->setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V

    return-void

    :cond_7
    :try_start_3
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    iget-object p0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->h:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz p0, :cond_9

    if-ne p4, v4, :cond_9

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/mortbay/jetty/security/UserRealm;->disassociate(Ljava/security/Principal;)V

    :cond_9
    invoke-virtual {v1, v3}, Lorg/mortbay/jetty/Request;->setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->h:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz p0, :cond_a

    if-ne p4, v4, :cond_a

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object p2

    invoke-interface {p0, p2}, Lorg/mortbay/jetty/security/UserRealm;->disassociate(Ljava/security/Principal;)V

    :cond_a
    invoke-virtual {v1, v3}, Lorg/mortbay/jetty/Request;->setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V

    throw p1
.end method

.method public hasConstraints()Z
    .locals 0

    iget-object p0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->i:[Lorg/mortbay/jetty/security/ConstraintMapping;

    if-eqz p0, :cond_0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCheckWelcomeFiles()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->m:Z

    return p0
.end method

.method public setAuthMethod(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/mortbay/component/AbstractLifeCycle;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Handler started"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->g:Ljava/lang/String;

    return-void
.end method

.method public setAuthenticator(Lorg/mortbay/jetty/security/Authenticator;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->k:Lorg/mortbay/jetty/security/Authenticator;

    return-void
.end method

.method public setCheckWelcomeFiles(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->m:Z

    return-void
.end method

.method public setConstraintMappings([Lorg/mortbay/jetty/security/ConstraintMapping;)V
    .locals 3

    iput-object p1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->i:[Lorg/mortbay/jetty/security/ConstraintMapping;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->i:[Lorg/mortbay/jetty/security/ConstraintMapping;

    iget-object p1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->j:Lorg/mortbay/jetty/servlet/PathMap;

    invoke-virtual {p1}, Lorg/mortbay/jetty/servlet/PathMap;->clear()V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/security/SecurityHandler;->i:[Lorg/mortbay/jetty/security/ConstraintMapping;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->j:Lorg/mortbay/jetty/servlet/PathMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/mortbay/jetty/security/ConstraintMapping;->getPathSpec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->i:[Lorg/mortbay/jetty/security/ConstraintMapping;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->j:Lorg/mortbay/jetty/servlet/PathMap;

    iget-object v2, p0, Lorg/mortbay/jetty/security/SecurityHandler;->i:[Lorg/mortbay/jetty/security/ConstraintMapping;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lorg/mortbay/jetty/security/ConstraintMapping;->getPathSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/mortbay/jetty/servlet/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/SecurityHandler;->h:Lorg/mortbay/jetty/security/UserRealm;

    return-void
.end method
