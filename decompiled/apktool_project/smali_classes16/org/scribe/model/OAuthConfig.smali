.class public Lorg/scribe/model/OAuthConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lorg/scribe/model/SignatureType;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/scribe/model/OAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/scribe/model/SignatureType;Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/scribe/model/SignatureType;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/scribe/model/OAuthConfig;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lorg/scribe/model/OAuthConfig;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lorg/scribe/model/OAuthConfig;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lorg/scribe/model/OAuthConfig;->d:Lorg/scribe/model/SignatureType;

    .line 7
    iput-object p5, p0, Lorg/scribe/model/OAuthConfig;->e:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lorg/scribe/model/OAuthConfig;->f:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/scribe/model/OAuthConfig;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getApiSecret()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/scribe/model/OAuthConfig;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getCallback()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/scribe/model/OAuthConfig;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getScope()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/scribe/model/OAuthConfig;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getSignatureType()Lorg/scribe/model/SignatureType;
    .locals 0

    iget-object p0, p0, Lorg/scribe/model/OAuthConfig;->d:Lorg/scribe/model/SignatureType;

    return-object p0
.end method

.method public hasScope()Z
    .locals 0

    iget-object p0, p0, Lorg/scribe/model/OAuthConfig;->e:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/scribe/model/OAuthConfig;->f:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object p0, p0, Lorg/scribe/model/OAuthConfig;->f:Ljava/io/OutputStream;

    const-string v0, "UTF8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "there were problems while writing to the debug stream"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
