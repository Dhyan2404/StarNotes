.class public Lorg/mortbay/jetty/security/DigestAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mortbay/jetty/security/Authenticator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/security/DigestAuthenticator$a;
    }
.end annotation


# instance fields
.field protected maxNonceAge:J

.field protected nonceSecret:J

.field protected useStale:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->maxNonceAge:J

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->nonceSecret:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->useStale:Z

    return-void
.end method


# virtual methods
.method public authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "Authorization"

    invoke-virtual {p3, p2}, Lorg/mortbay/jetty/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_12

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Credentials: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lorg/mortbay/util/QuotedStringTokenizer;

    const-string v3, "=, "

    const/4 v4, 0x1

    invoke-direct {v2, p2, v3, v4, v0}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance p2, Lorg/mortbay/jetty/security/DigestAuthenticator$a;

    invoke-virtual {p3}, Lorg/mortbay/jetty/Request;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Lorg/mortbay/jetty/security/DigestAuthenticator$a;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    move-object v5, v3

    :cond_1
    :goto_0
    invoke-virtual {v2}, Lorg/mortbay/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v2}, Lorg/mortbay/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v4, :cond_2

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_1

    :cond_2
    move v7, v0

    :goto_1
    const/16 v8, 0x20

    if-eq v7, v8, :cond_1

    const/16 v8, 0x2c

    if-eq v7, v8, :cond_d

    const/16 v8, 0x3d

    if-eq v7, v8, :cond_b

    if-eqz v5, :cond_c

    const-string v3, "username"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-object v6, p2, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->b:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v3, "realm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object v6, p2, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->c:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v3, "nonce"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput-object v6, p2, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->d:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string v3, "nc"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iput-object v6, p2, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->e:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string v3, "cnonce"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iput-object v6, p2, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->f:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const-string v3, "qop"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iput-object v6, p2, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->g:Ljava/lang/String;

    goto :goto_2

    :cond_8
    const-string v3, "uri"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iput-object v6, p2, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->h:Ljava/lang/String;

    goto :goto_2

    :cond_9
    const-string v3, "response"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    iput-object v6, p2, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->i:Ljava/lang/String;

    :cond_a
    :goto_2
    move-object v5, v1

    goto :goto_3

    :cond_b
    move-object v5, v3

    :cond_c
    :goto_3
    move-object v3, v6

    goto :goto_0

    :cond_d
    move-object v5, v1

    goto/16 :goto_0

    :cond_e
    iget-object v2, p2, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->d:Ljava/lang/String;

    invoke-virtual {p0, v2, p3}, Lorg/mortbay/jetty/security/DigestAuthenticator;->checkNonce(Ljava/lang/String;Lorg/mortbay/jetty/Request;)I

    move-result v2

    if-lez v2, :cond_f

    iget-object v1, p2, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->b:Ljava/lang/String;

    invoke-interface {p1, v1, p2, p3}, Lorg/mortbay/jetty/security/UserRealm;->authenticate(Ljava/lang/String;Ljava/lang/Object;Lorg/mortbay/jetty/Request;)Ljava/security/Principal;

    move-result-object v1

    goto :goto_4

    :cond_f
    if-nez v2, :cond_10

    move v0, v4

    :cond_10
    :goto_4
    if-nez v1, :cond_11

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "AUTH FAILURE: user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p2, p2, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->b:Ljava/lang/String;

    invoke-static {p2}, Lorg/mortbay/util/StringUtil;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    const-string p2, "DIGEST"

    invoke-virtual {p3, p2}, Lorg/mortbay/jetty/Request;->setAuthType(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lorg/mortbay/jetty/Request;->setUserPrincipal(Ljava/security/Principal;)V

    :cond_12
    :goto_5
    if-nez v1, :cond_13

    if-eqz p4, :cond_13

    invoke-virtual {p0, p1, p3, p4, v0}, Lorg/mortbay/jetty/security/DigestAuthenticator;->sendChallenge(Lorg/mortbay/jetty/security/UserRealm;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Z)V

    :cond_13
    return-object v1
.end method

.method public checkNonce(Ljava/lang/String;Lorg/mortbay/jetty/Request;)I
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/jetty/security/B64Code;->decode([C)[B

    move-result-object v3

    array-length v0, v3

    const/16 v4, 0x18

    if-eq v0, v4, :cond_0

    return v2

    :cond_0
    iget-wide v4, v1, Lorg/mortbay/jetty/security/DigestAuthenticator;->nonceSecret:J

    const/16 v6, 0x10

    new-array v0, v6, [B

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static {v3, v8, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v11, v8

    const-wide/16 v12, 0x0

    :goto_0
    if-ge v11, v7, :cond_1

    add-int/lit8 v14, v11, 0x8

    const-wide/16 v15, 0xff

    and-long v9, v4, v15

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v0, v14

    shr-long/2addr v4, v7

    shl-long v9, v12, v7

    rsub-int/lit8 v12, v11, 0x7

    aget-byte v12, v3, v12

    int-to-long v12, v12

    and-long/2addr v12, v15

    add-long/2addr v12, v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/mortbay/jetty/Request;->getTimeStamp()J

    move-result-wide v4

    sub-long/2addr v4, v12

    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "age="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :try_start_1
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v7, v0, v8, v6}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_1
    move v7, v8

    :goto_2
    if-ge v7, v6, :cond_4

    add-int/lit8 v9, v7, 0x8

    aget-byte v9, v3, v9

    aget-byte v10, v0, v7

    if-eq v9, v10, :cond_3

    return v2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    iget-wide v0, v1, Lorg/mortbay/jetty/security/DigestAuthenticator;->maxNonceAge:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-wide/16 v2, 0x0

    cmp-long v6, v0, v2

    if-lez v6, :cond_6

    cmp-long v2, v4, v2

    if-ltz v2, :cond_5

    cmp-long v0, v4, v0

    if-lez v0, :cond_6

    :cond_5
    return v8

    :cond_6
    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    return v2
.end method

.method public getAuthMethod()Ljava/lang/String;
    .locals 0

    const-string p0, "DIGEST"

    return-object p0
.end method

.method public getMaxNonceAge()J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->maxNonceAge:J

    return-wide v0
.end method

.method public getNonceSecret()J
    .locals 2

    iget-wide v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->nonceSecret:J

    return-wide v0
.end method

.method public getUseStale()Z
    .locals 0

    iget-boolean p0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->useStale:Z

    return p0
.end method

.method public newNonce(Lorg/mortbay/jetty/Request;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p1}, Lorg/mortbay/jetty/Request;->getTimeStamp()J

    move-result-wide v0

    iget-wide p0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->nonceSecret:J

    const/16 v2, 0x18

    new-array v2, v2, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    const-wide/16 v6, 0xff

    and-long v8, v0, v6

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v2, v4

    shr-long/2addr v0, v5

    add-int/lit8 v8, v4, 0x8

    and-long/2addr v6, p0

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v2, v8

    shr-long/2addr p0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p0, "MD5"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/MessageDigest;->reset()V

    const/16 p1, 0x10

    invoke-virtual {p0, v2, v3, p1}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_1
    array-length p1, p0

    if-ge v3, p1, :cond_2

    add-int/lit8 p1, v3, 0x8

    aget-byte v0, p0, v3

    aput-byte v0, v2, p1

    const/16 p1, 0x17

    if-ne v3, p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    new-instance p0, Ljava/lang/String;

    invoke-static {v2}, Lorg/mortbay/jetty/security/B64Code;->encode([B)[C

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public sendChallenge(Lorg/mortbay/jetty/security/UserRealm;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "/"

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Digest realm=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/mortbay/jetty/security/UserRealm;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\", domain=\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\", nonce=\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/security/DigestAuthenticator;->newNonce(Lorg/mortbay/jetty/Request;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\", algorithm=MD5, qop=\"auth\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean p0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->useStale:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string p1, " stale="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WWW-Authenticate"

    invoke-virtual {p3, p1, p0}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x191

    invoke-virtual {p3, p0}, Lorg/mortbay/jetty/Response;->sendError(I)V

    return-void
.end method

.method public setMaxNonceAge(J)V
    .locals 0

    iput-wide p1, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->maxNonceAge:J

    return-void
.end method

.method public setNonceSecret(J)V
    .locals 0

    iput-wide p1, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->nonceSecret:J

    return-void
.end method

.method public setUseStale(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mortbay/jetty/security/DigestAuthenticator;->useStale:Z

    return-void
.end method
