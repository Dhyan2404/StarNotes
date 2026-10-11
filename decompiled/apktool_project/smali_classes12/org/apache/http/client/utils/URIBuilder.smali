.class public Lorg/apache/http/client/utils/URIBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/String;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/lang/String;

.field public m:Ljava/nio/charset/Charset;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/apache/http/client/utils/URIBuilder;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/http/client/utils/URIBuilder;-><init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/apache/http/client/utils/URIBuilder;-><init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lorg/apache/http/client/utils/URIBuilder;-><init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p0, p2}, Lorg/apache/http/client/utils/URIBuilder;->setCharset(Ljava/nio/charset/Charset;)Lorg/apache/http/client/utils/URIBuilder;

    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/http/client/utils/URIBuilder;->b(Ljava/net/URI;)V

    return-void
.end method

.method public static g(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/http/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_1
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->c:Ljava/lang/String;

    const-string v2, "//"

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->f:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->e:Ljava/lang/String;

    const-string v2, "@"

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->d:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Lorg/apache/http/client/utils/URIBuilder;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_0
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->f:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget v1, p0, Lorg/apache/http/client/utils/URIBuilder;->g:I

    if-ltz v1, :cond_6

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/http/client/utils/URIBuilder;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    :goto_2
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->h:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    invoke-static {v1, v2}, Lorg/apache/http/client/utils/URIBuilder;->g(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->i:Ljava/util/List;

    if-eqz v1, :cond_9

    invoke-virtual {p0, v1}, Lorg/apache/http/client/utils/URIBuilder;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_4
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->j:Ljava/lang/String;

    const-string v2, "?"

    if-eqz v1, :cond_a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    invoke-virtual {p0, v1}, Lorg/apache/http/client/utils/URIBuilder;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_b
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->l:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->l:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/client/utils/URIBuilder;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    :goto_5
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->o:Ljava/lang/String;

    const-string v2, "#"

    if-eqz v1, :cond_d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/http/client/utils/URIBuilder;->o:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_d
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->n:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->n:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/http/client/utils/URIBuilder;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 2

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->j:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->b:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->l:Ljava/lang/String;

    return-object p0
.end method

.method public addParameters(Ljava/util/List;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/apache/http/client/utils/URIBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->j:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->b:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Ljava/net/URI;)V
    .locals 2

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/http/client/utils/URIBuilder;->g:I

    invoke-virtual {p1}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->h:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->m:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/utils/URIBuilder;->h(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->i:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->j:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->m:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_1
    invoke-virtual {p0, v0, v1}, Lorg/apache/http/client/utils/URIBuilder;->i(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->o:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->n:Ljava/lang/String;

    return-void
.end method

.method public build()Ljava/net/URI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Lorg/apache/http/client/utils/URIBuilder;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/http/client/utils/URIBuilder;->m:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    invoke-static {p1, p0}, Lorg/apache/http/client/utils/URLEncodedUtils;->formatSegments(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public clearParameters()Lorg/apache/http/client/utils/URIBuilder;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->j:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/client/utils/URIBuilder;->m:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    invoke-static {p1, p0}, Lorg/apache/http/client/utils/URLEncodedUtils;->e(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/http/client/utils/URIBuilder;->m:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    invoke-static {p1, p0}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/client/utils/URIBuilder;->m:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    invoke-static {p1, p0}, Lorg/apache/http/client/utils/URLEncodedUtils;->f(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/client/utils/URIBuilder;->m:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/client/utils/URIBuilder;->n:Ljava/lang/String;

    return-object p0
.end method

.method public getHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/client/utils/URIBuilder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->i:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/apache/http/client/utils/URIBuilder;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPathSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/apache/http/client/utils/URIBuilder;->i:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPort()I
    .locals 0

    iget p0, p0, Lorg/apache/http/client/utils/URIBuilder;->g:I

    return p0
.end method

.method public getQueryParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/client/utils/URIBuilder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/http/client/utils/URIBuilder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final h(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Lorg/apache/http/client/utils/URLEncodedUtils;->parsePathSegments(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final i(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAbsolute()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/http/client/utils/URIBuilder;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOpaque()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->i:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/apache/http/client/utils/URIBuilder;->h:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPathEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lorg/apache/http/client/utils/URIBuilder;->h:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isQueryEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lorg/apache/http/client/utils/URIBuilder;->j:Ljava/lang/String;

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeQuery()Lorg/apache/http/client/utils/URIBuilder;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->l:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->j:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->m:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public setCustomQuery(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->l:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->j:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->b:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    return-object p0
.end method

.method public setFragment(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->n:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->o:Ljava/lang/String;

    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->f:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->b:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 2

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->j:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->b:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->l:Ljava/lang/String;

    return-object p0
.end method

.method public setParameters(Ljava/util/List;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/apache/http/client/utils/URIBuilder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    :goto_0
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->j:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->b:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->l:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setParameters([Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 4

    .line 8
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    :goto_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 12
    iget-object v3, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->j:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->b:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->l:Ljava/lang/String;

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/apache/http/client/utils/URLEncodedUtils;->i(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/http/client/utils/URIBuilder;->setPathSegments(Ljava/util/List;)Lorg/apache/http/client/utils/URIBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setPathSegments(Ljava/util/List;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/client/utils/URIBuilder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->i:Ljava/util/List;

    .line 5
    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->b:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->h:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setPathSegments([Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->i:Ljava/util/List;

    .line 2
    iput-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->b:Ljava/lang/String;

    .line 3
    iput-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->h:Ljava/lang/String;

    return-object p0
.end method

.method public setPort(I)Lorg/apache/http/client/utils/URIBuilder;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    iput p1, p0, Lorg/apache/http/client/utils/URIBuilder;->g:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->b:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->m:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/client/utils/URIBuilder;->i(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->k:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->l:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->j:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setScheme(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public setUserInfo(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->b:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->c:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/http/client/utils/URIBuilder;->setUserInfo(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/http/client/utils/URIBuilder;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
