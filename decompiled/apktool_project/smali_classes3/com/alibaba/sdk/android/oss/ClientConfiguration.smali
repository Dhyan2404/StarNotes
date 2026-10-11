.class public Lcom/alibaba/sdk/android/oss/ClientConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final o:I = 0x2


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:J

.field public e:I

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->a:I

    const v0, 0xea60

    iput v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->b:I

    iput v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->c:I

    const-wide/32 v0, 0x500000

    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->d:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->f:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->k:Z

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->m:Z

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->n:Z

    return-void
.end method

.method public static getDefaultConf()Lcom/alibaba/sdk/android/oss/ClientConfiguration;
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getConnectionTimeout()I
    .locals 0

    iget p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->c:I

    return p0
.end method

.method public getCustomCnameExcludeList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->f:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCustomUserMark()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getIpWithHeader()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->l:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxConcurrentRequest()I
    .locals 0

    iget p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->a:I

    return p0
.end method

.method public getMaxErrorRetry()I
    .locals 0

    iget p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->e:I

    return p0
.end method

.method public getMaxLogSize()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->d:J

    return-wide v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getProxyPort()I
    .locals 0

    iget p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->h:I

    return p0
.end method

.method public getSocketTimeout()I
    .locals 0

    iget p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->b:I

    return p0
.end method

.method public isCheckCRC64()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->k:Z

    return p0
.end method

.method public isCustomPathPrefixEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->n:Z

    return p0
.end method

.method public isHttpDnsEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->j:Z

    return p0
.end method

.method public isPathStyleAccessEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->m:Z

    return p0
.end method

.method public setCheckCRC64(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->k:Z

    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->c:I

    return-void
.end method

.method public setCustomCnameExcludeList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cname exclude list should not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCustomPathPrefixEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->n:Z

    return-void
.end method

.method public setHttpDnsEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->j:Z

    return-void
.end method

.method public setIpWithHeader(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->l:Ljava/lang/String;

    return-void
.end method

.method public setMaxConcurrentRequest(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->a:I

    return-void
.end method

.method public setMaxErrorRetry(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->e:I

    return-void
.end method

.method public setMaxLogSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->d:J

    return-void
.end method

.method public setPathStyleAccessEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->m:Z

    return-void
.end method

.method public setProxyHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->g:Ljava/lang/String;

    return-void
.end method

.method public setProxyPort(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->h:I

    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->b:I

    return-void
.end method

.method public setUserAgentMark(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->i:Ljava/lang/String;

    return-void
.end method
