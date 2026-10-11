.class public Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;
.super Lcom/tencent/qcloud/core/http/HttpRequest$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qcloud/core/http/QCloudHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/qcloud/core/http/HttpRequest$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private credentialScope:[Lcom/tencent/qcloud/core/auth/STSCredentialScope;

.field private selfSigner:Lcom/tencent/qcloud/core/auth/QCloudSelfSigner;

.field private signInUrl:Z

.field private signProvider:Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;

.field private signerType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->signerType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;)Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->signProvider:Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;)[Lcom/tencent/qcloud/core/auth/STSCredentialScope;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->credentialScope:[Lcom/tencent/qcloud/core/auth/STSCredentialScope;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->signInUrl:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;)Lcom/tencent/qcloud/core/auth/QCloudSelfSigner;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->selfSigner:Lcom/tencent/qcloud/core/auth/QCloudSelfSigner;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    return-object p0
.end method

.method public bridge synthetic body(Lcom/tencent/qcloud/core/http/RequestBodySerializer;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->body(Lcom/tencent/qcloud/core/http/RequestBodySerializer;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public body(Lcom/tencent/qcloud/core/http/RequestBodySerializer;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/RequestBodySerializer;",
            ")",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->body(Lcom/tencent/qcloud/core/http/RequestBodySerializer;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/tencent/qcloud/core/http/HttpRequest;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->build()Lcom/tencent/qcloud/core/http/QCloudHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/tencent/qcloud/core/http/QCloudHttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->prepareBuild()V

    .line 3
    new-instance v0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest;

    invoke-direct {v0, p0}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest;-><init>(Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;)V

    return-object v0
.end method

.method public bridge synthetic contentMD5()Lcom/tencent/qcloud/core/http/HttpRequest$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->contentMD5()Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public contentMD5()Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->contentMD5()Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    return-object p0
.end method

.method public bridge synthetic converter(Lcom/tencent/qcloud/core/http/ResponseBodyConverter;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->converter(Lcom/tencent/qcloud/core/http/ResponseBodyConverter;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public converter(Lcom/tencent/qcloud/core/http/ResponseBodyConverter;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/ResponseBodyConverter<",
            "TT;>;)",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->converter(Lcom/tencent/qcloud/core/http/ResponseBodyConverter;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    return-object p0
.end method

.method public credentialScope([Lcom/tencent/qcloud/core/auth/STSCredentialScope;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/tencent/qcloud/core/auth/STSCredentialScope;",
            ")",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->credentialScope:[Lcom/tencent/qcloud/core/auth/STSCredentialScope;

    return-object p0
.end method

.method public bridge synthetic host(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->host(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public host(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->host(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    return-object p0
.end method

.method public bridge synthetic method(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->method(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public method(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->method(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    return-object p0
.end method

.method public bridge synthetic path(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->path(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public path(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->path(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    return-object p0
.end method

.method public bridge synthetic port(I)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->port(I)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public port(I)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->port(I)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    return-object p0
.end method

.method public bridge synthetic query(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->query(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public query(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->query(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    return-object p0
.end method

.method public bridge synthetic removeHeader(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->removeHeader(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->removeHeader(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    return-object p0
.end method

.method public bridge synthetic scheme(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->scheme(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public scheme(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->scheme(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    return-object p0
.end method

.method public selfSigner(Lcom/tencent/qcloud/core/auth/QCloudSelfSigner;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/auth/QCloudSelfSigner;",
            ")",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->selfSigner:Lcom/tencent/qcloud/core/auth/QCloudSelfSigner;

    return-object p0
.end method

.method public bridge synthetic setUseCache(Z)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->setUseCache(Z)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setUseCache(Z)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->setUseCache(Z)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    return-object p0
.end method

.method public signInUrl(Z)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder<",
            "TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->signInUrl:Z

    return-object p0
.end method

.method public signer(Ljava/lang/String;Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;",
            ")",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->signerType:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->signProvider:Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;

    return-object p0
.end method

.method public bridge synthetic tag(Ljava/lang/Object;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->tag(Ljava/lang/Object;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->tag(Ljava/lang/Object;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    return-object p0
.end method

.method public bridge synthetic url(Ljava/net/URL;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->url(Ljava/net/URL;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public url(Ljava/net/URL;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->url(Ljava/net/URL;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    return-object p0
.end method

.method public bridge synthetic userAgent(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->userAgent(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public userAgent(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->userAgent(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    return-object p0
.end method
