.class public Lcom/tencent/qcloud/core/http/QCloudHttpRequest;
.super Lcom/tencent/qcloud/core/http/HttpRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/qcloud/core/http/HttpRequest<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final credentialScope:[Lcom/tencent/qcloud/core/auth/STSCredentialScope;

.field private selfSigner:Lcom/tencent/qcloud/core/auth/QCloudSelfSigner;

.field private final signInUrl:Z

.field private final signProvider:Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;

.field private final signerType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/tencent/qcloud/core/http/HttpRequest;-><init>(Lcom/tencent/qcloud/core/http/HttpRequest$Builder;)V

    invoke-static {p1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->access$000(Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest;->signerType:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->access$100(Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;)Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest;->signProvider:Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;

    invoke-static {p1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->access$200(Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;)[Lcom/tencent/qcloud/core/auth/STSCredentialScope;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest;->credentialScope:[Lcom/tencent/qcloud/core/auth/STSCredentialScope;

    invoke-static {p1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->access$300(Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest;->signInUrl:Z

    invoke-static {p1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->access$400(Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;)Lcom/tencent/qcloud/core/auth/QCloudSelfSigner;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest;->selfSigner:Lcom/tencent/qcloud/core/auth/QCloudSelfSigner;

    return-void
.end method

.method private shouldCalculateAuth()Z
    .locals 1

    const-string v0, "Authorization"

    invoke-virtual {p0, v0}, Lcom/tencent/qcloud/core/http/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/qcloud/core/util/QCloudStringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getCredentialScope()[Lcom/tencent/qcloud/core/auth/STSCredentialScope;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest;->credentialScope:[Lcom/tencent/qcloud/core/auth/STSCredentialScope;

    return-object p0
.end method

.method public getQCloudSelfSigner()Lcom/tencent/qcloud/core/auth/QCloudSelfSigner;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest;->selfSigner:Lcom/tencent/qcloud/core/auth/QCloudSelfSigner;

    return-object p0
.end method

.method public getQCloudSigner()Lcom/tencent/qcloud/core/auth/QCloudSigner;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest;->signerType:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest;->shouldCalculateAuth()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest;->signerType:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/qcloud/core/auth/SignerFactory;->getSigner(Ljava/lang/String;)Lcom/tencent/qcloud/core/auth/QCloudSigner;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    new-instance v1, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t get signer for type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest;->signerType:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/tencent/qcloud/core/common/QCloudAuthenticationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSignProvider()Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest;->signProvider:Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;

    return-object p0
.end method

.method public isSignInUrl()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest;->signInUrl:Z

    return p0
.end method
