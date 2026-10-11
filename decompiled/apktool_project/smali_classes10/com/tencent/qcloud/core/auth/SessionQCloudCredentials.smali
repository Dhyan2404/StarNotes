.class public Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;
.implements Lcom/tencent/qcloud/core/auth/QCloudRawCredentials;


# instance fields
.field private final expiredTime:J

.field private final secretId:Ljava/lang/String;

.field private final secretKey:Ljava/lang/String;

.field private final startTime:J

.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/tencent/qcloud/core/http/HttpConfiguration;->getDeviceTimeWithOffset()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    cmp-long v0, p4, p6

    if-gez v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->secretId:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->secretKey:Ljava/lang/String;

    .line 5
    iput-wide p4, p0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->startTime:J

    .line 6
    iput-wide p6, p0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->expiredTime:J

    .line 7
    iput-object p3, p0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->token:Ljava/lang/String;

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "beginTime must be less than expiredTime."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "token cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "secretKey cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "secretId cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 13
    iput-object p1, p0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->secretId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->secretKey:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->token:Ljava/lang/String;

    .line 16
    invoke-static {p4}, Lcom/tencent/qcloud/core/auth/Utils;->parseKeyTimes(Ljava/lang/String;)[J

    move-result-object p1

    const/4 p2, 0x0

    .line 17
    aget-wide p2, p1, p2

    iput-wide p2, p0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->startTime:J

    const/4 p2, 0x1

    .line 18
    aget-wide p1, p1, p2

    iput-wide p1, p0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->expiredTime:J

    return-void

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keyTime cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "token cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "secretKey cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "secretId cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getKeyTime(JJ)Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/tencent/qcloud/core/auth/Utils;->handleTimeAccuracy(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Lcom/tencent/qcloud/core/auth/Utils;->handleTimeAccuracy(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSignKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p2, p1}, Lcom/tencent/qcloud/core/auth/Utils;->hmacSha1(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/qcloud/core/auth/Utils;->encodeHex([B)[C

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getExpiredTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->expiredTime:J

    return-wide v0
.end method

.method public getKeyTime()Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->startTime:J

    invoke-static {v1, v2}, Lcom/tencent/qcloud/core/auth/Utils;->handleTimeAccuracy(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->expiredTime:J

    invoke-static {v1, v2}, Lcom/tencent/qcloud/core/auth/Utils;->handleTimeAccuracy(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSecretId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->secretId:Ljava/lang/String;

    return-object p0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->secretKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSignKey()Ljava/lang/String;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->secretKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->getKeyTime()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->getSignKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->startTime:J

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->token:Ljava/lang/String;

    return-object p0
.end method

.method public isValid()Z
    .locals 6

    invoke-static {}, Lcom/tencent/qcloud/core/http/HttpConfiguration;->getDeviceTimeWithOffset()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;->expiredTime:J

    const-wide/16 v4, 0x3c

    sub-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
