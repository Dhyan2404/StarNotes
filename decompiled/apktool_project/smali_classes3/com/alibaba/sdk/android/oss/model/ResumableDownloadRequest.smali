.class public Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;
.super Lcom/alibaba/sdk/android/oss/model/OSSRequest;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/alibaba/sdk/android/oss/model/Range;

.field public f:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Boolean;

.field public i:Ljava/lang/String;

.field public j:J

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->h:Ljava/lang/Boolean;

    const-wide/32 v0, 0x40000

    .line 3
    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->j:J

    .line 4
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->c:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->d:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;-><init>()V

    const-wide/32 v0, 0x40000

    .line 8
    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->j:J

    .line 9
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->c:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->d:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->g:Ljava/lang/String;

    .line 12
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->h:Ljava/lang/Boolean;

    .line 13
    iput-object p4, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getCheckPointFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getDownloadToFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getEnableCheckPoint()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->h:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getObjectKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getPartSize()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->j:J

    return-wide v0
.end method

.method public getProgressListener()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->f:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-object p0
.end method

.method public getRange()Lcom/alibaba/sdk/android/oss/model/Range;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->e:Lcom/alibaba/sdk/android/oss/model/Range;

    return-object p0
.end method

.method public getRequestHeader()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->k:Ljava/util/Map;

    return-object p0
.end method

.method public getTempFilePath()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".tmp"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public setCheckPointFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->i:Ljava/lang/String;

    return-void
.end method

.method public setDownloadToFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->g:Ljava/lang/String;

    return-void
.end method

.method public setEnableCheckPoint(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public setPartSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->j:J

    return-void
.end method

.method public setProgressListener(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->f:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    return-void
.end method

.method public setRange(Lcom/alibaba/sdk/android/oss/model/Range;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->e:Lcom/alibaba/sdk/android/oss/model/Range;

    return-void
.end method

.method public setRequestHeader(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;->k:Ljava/util/Map;

    return-void
.end method
