.class public Lorg/apache/http/client/config/RequestConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/client/config/RequestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Z

.field public b:Lorg/apache/http/HttpHost;

.field public c:Ljava/net/InetAddress;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:Z

.field public k:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->f:Z

    const/16 v1, 0x32

    iput v1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->i:I

    iput-boolean v0, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->g:Z

    iput-boolean v0, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->j:Z

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->m:I

    iput v1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->n:I

    iput v1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->o:I

    iput-boolean v0, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->p:Z

    iput-boolean v0, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->q:Z

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/http/client/config/RequestConfig;
    .locals 21

    move-object/from16 v0, p0

    new-instance v19, Lorg/apache/http/client/config/RequestConfig;

    move-object/from16 v1, v19

    iget-boolean v2, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->a:Z

    iget-object v3, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->b:Lorg/apache/http/HttpHost;

    iget-object v4, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->c:Ljava/net/InetAddress;

    iget-boolean v5, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->d:Z

    iget-object v6, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->e:Ljava/lang/String;

    iget-boolean v7, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->f:Z

    iget-boolean v8, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->g:Z

    iget-boolean v9, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->h:Z

    iget v10, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->i:I

    iget-boolean v11, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->j:Z

    iget-object v12, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->k:Ljava/util/Collection;

    iget-object v13, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->l:Ljava/util/Collection;

    iget v14, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->m:I

    iget v15, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->n:I

    move-object/from16 v20, v1

    iget v1, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->o:I

    move/from16 v16, v1

    iget-boolean v1, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->p:Z

    move/from16 v17, v1

    iget-boolean v0, v0, Lorg/apache/http/client/config/RequestConfig$Builder;->q:Z

    move/from16 v18, v0

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lorg/apache/http/client/config/RequestConfig;-><init>(ZLorg/apache/http/HttpHost;Ljava/net/InetAddress;ZLjava/lang/String;ZZZIZLjava/util/Collection;Ljava/util/Collection;IIIZZ)V

    return-object v19
.end method

.method public setAuthenticationEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->j:Z

    return-object p0
.end method

.method public setCircularRedirectsAllowed(Z)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->h:Z

    return-object p0
.end method

.method public setConnectTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->n:I

    return-object p0
.end method

.method public setConnectionRequestTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->m:I

    return-object p0
.end method

.method public setContentCompressionEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->p:Z

    return-object p0
.end method

.method public setCookieSpec(Ljava/lang/String;)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setDecompressionEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->p:Z

    return-object p0
.end method

.method public setExpectContinueEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->a:Z

    return-object p0
.end method

.method public setLocalAddress(Ljava/net/InetAddress;)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->c:Ljava/net/InetAddress;

    return-object p0
.end method

.method public setMaxRedirects(I)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->i:I

    return-object p0
.end method

.method public setNormalizeUri(Z)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->q:Z

    return-object p0
.end method

.method public setProxy(Lorg/apache/http/HttpHost;)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->b:Lorg/apache/http/HttpHost;

    return-object p0
.end method

.method public setProxyPreferredAuthSchemes(Ljava/util/Collection;)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/client/config/RequestConfig$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->l:Ljava/util/Collection;

    return-object p0
.end method

.method public setRedirectsEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->f:Z

    return-object p0
.end method

.method public setRelativeRedirectsAllowed(Z)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->g:Z

    return-object p0
.end method

.method public setSocketTimeout(I)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->o:I

    return-object p0
.end method

.method public setStaleConnectionCheckEnabled(Z)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->d:Z

    return-object p0
.end method

.method public setTargetPreferredAuthSchemes(Ljava/util/Collection;)Lorg/apache/http/client/config/RequestConfig$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/client/config/RequestConfig$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/http/client/config/RequestConfig$Builder;->k:Ljava/util/Collection;

    return-object p0
.end method
