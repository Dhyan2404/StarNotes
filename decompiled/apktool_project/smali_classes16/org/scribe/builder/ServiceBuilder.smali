.class public Lorg/scribe/builder/ServiceBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lorg/scribe/builder/api/Api;

.field public e:Ljava/lang/String;

.field public f:Lorg/scribe/model/SignatureType;

.field public g:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "oob"

    iput-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->c:Ljava/lang/String;

    sget-object v0, Lorg/scribe/model/SignatureType;->Header:Lorg/scribe/model/SignatureType;

    iput-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->f:Lorg/scribe/model/SignatureType;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->g:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lorg/scribe/builder/api/Api;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/scribe/builder/api/Api;",
            ">;)",
            "Lorg/scribe/builder/api/Api;"
        }
    .end annotation

    const-string p0, "Api class cannot be null"

    invoke-static {p1, p0}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/scribe/builder/api/Api;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/scribe/exceptions/OAuthException;

    const-string v0, "Error while creating the Api object"

    invoke-direct {p1, v0, p0}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public apiKey(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1

    const-string v0, "Invalid Api key"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public apiSecret(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1

    const-string v0, "Invalid Api secret"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lorg/scribe/oauth/OAuthService;
    .locals 9

    iget-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->d:Lorg/scribe/builder/api/Api;

    const-string v1, "You must specify a valid api through the provider() method"

    invoke-static {v0, v1}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->a:Ljava/lang/String;

    const-string v1, "You must provide an api key"

    invoke-static {v0, v1}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->b:Ljava/lang/String;

    const-string v1, "You must provide an api secret"

    invoke-static {v0, v1}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->d:Lorg/scribe/builder/api/Api;

    new-instance v8, Lorg/scribe/model/OAuthConfig;

    iget-object v2, p0, Lorg/scribe/builder/ServiceBuilder;->a:Ljava/lang/String;

    iget-object v3, p0, Lorg/scribe/builder/ServiceBuilder;->b:Ljava/lang/String;

    iget-object v4, p0, Lorg/scribe/builder/ServiceBuilder;->c:Ljava/lang/String;

    iget-object v5, p0, Lorg/scribe/builder/ServiceBuilder;->f:Lorg/scribe/model/SignatureType;

    iget-object v6, p0, Lorg/scribe/builder/ServiceBuilder;->e:Ljava/lang/String;

    iget-object v7, p0, Lorg/scribe/builder/ServiceBuilder;->g:Ljava/io/OutputStream;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lorg/scribe/model/OAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/scribe/model/SignatureType;Ljava/lang/String;Ljava/io/OutputStream;)V

    invoke-interface {v0, v8}, Lorg/scribe/builder/api/Api;->createService(Lorg/scribe/model/OAuthConfig;)Lorg/scribe/oauth/OAuthService;

    move-result-object p0

    return-object p0
.end method

.method public callback(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1

    const-string v0, "Callback can\'t be null"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public debug()Lorg/scribe/builder/ServiceBuilder;
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/scribe/builder/ServiceBuilder;->debugStream(Ljava/io/OutputStream;)Lorg/scribe/builder/ServiceBuilder;

    return-object p0
.end method

.method public debugStream(Ljava/io/OutputStream;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1

    const-string v0, "debug stream can\'t be null"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->g:Ljava/io/OutputStream;

    return-object p0
.end method

.method public provider(Ljava/lang/Class;)Lorg/scribe/builder/ServiceBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/scribe/builder/api/Api;",
            ">;)",
            "Lorg/scribe/builder/ServiceBuilder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/scribe/builder/ServiceBuilder;->a(Ljava/lang/Class;)Lorg/scribe/builder/api/Api;

    move-result-object p1

    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->d:Lorg/scribe/builder/api/Api;

    return-object p0
.end method

.method public provider(Lorg/scribe/builder/api/Api;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1

    const-string v0, "Api cannot be null"

    .line 2
    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->d:Lorg/scribe/builder/api/Api;

    return-object p0
.end method

.method public scope(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1

    const-string v0, "Invalid OAuth scope"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public signatureType(Lorg/scribe/model/SignatureType;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1

    const-string v0, "Signature type can\'t be null"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->f:Lorg/scribe/model/SignatureType;

    return-object p0
.end method
