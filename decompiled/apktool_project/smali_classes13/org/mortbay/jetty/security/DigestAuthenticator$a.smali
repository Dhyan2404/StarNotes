.class public Lorg/mortbay/jetty/security/DigestAuthenticator$a;
.super Lorg/mortbay/jetty/security/Credential;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/security/DigestAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/mortbay/jetty/security/Credential;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->f:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->g:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->h:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->i:Ljava/lang/String;

    iput-object p1, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    instance-of v2, p1, Lorg/mortbay/jetty/security/Credential$MD5;

    const/16 v3, 0x3a

    if-eqz v2, :cond_1

    check-cast p1, Lorg/mortbay/jetty/security/Credential$MD5;

    invoke-virtual {p1}, Lorg/mortbay/jetty/security/Credential$MD5;->getDigest()[B

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->b:Ljava/lang/String;

    sget-object v2, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update(B)V

    iget-object p1, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update(B)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    :goto_1
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    iget-object v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->a:Ljava/lang/String;

    sget-object v2, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update(B)V

    iget-object v0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/16 v4, 0x10

    invoke-static {p1, v4}, Lorg/mortbay/util/TypeUtil;->toString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update(B)V

    iget-object p1, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update(B)V

    iget-object p1, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->e:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update(B)V

    iget-object p1, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->f:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update(B)V

    iget-object p1, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->g:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update(B)V

    invoke-static {v0, v4}, Lorg/mortbay/util/TypeUtil;->toString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1, v4}, Lorg/mortbay/util/TypeUtil;->toString([BI)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->i:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/jetty/security/DigestAuthenticator$a;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
