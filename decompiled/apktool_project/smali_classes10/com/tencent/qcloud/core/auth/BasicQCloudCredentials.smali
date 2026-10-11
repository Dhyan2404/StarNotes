.class public Lcom/tencent/qcloud/core/auth/BasicQCloudCredentials;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qcloud/core/auth/QCloudLifecycleCredentials;
.implements Lcom/tencent/qcloud/core/auth/QCloudRawCredentials;


# instance fields
.field private final keyTime:Ljava/lang/String;

.field private final secretId:Ljava/lang/String;

.field private final secretKey:Ljava/lang/String;

.field private final signKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    cmp-long v0, p4, p6

    if-gez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/tencent/qcloud/core/auth/BasicQCloudCredentials;->secretId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/tencent/qcloud/core/auth/BasicQCloudCredentials;->secretKey:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/tencent/qcloud/core/auth/BasicQCloudCredentials;->signKey:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4, p5}, Lcom/tencent/qcloud/core/auth/Utils;->handleTimeAccuracy(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p6, p7}, Lcom/tencent/qcloud/core/auth/Utils;->handleTimeAccuracy(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qcloud/core/auth/BasicQCloudCredentials;->keyTime:Ljava/lang/String;

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "beginTime must be less than expiredTime."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "signKey cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "secretKey cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "secretId cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 11
    iput-object p1, p0, Lcom/tencent/qcloud/core/auth/BasicQCloudCredentials;->secretId:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/tencent/qcloud/core/auth/BasicQCloudCredentials;->secretKey:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/tencent/qcloud/core/auth/BasicQCloudCredentials;->signKey:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/tencent/qcloud/core/auth/BasicQCloudCredentials;->keyTime:Ljava/lang/String;

    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keyTime cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "signKey cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "secretKey cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "secretId cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getKeyTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/BasicQCloudCredentials;->keyTime:Ljava/lang/String;

    return-object p0
.end method

.method public getSecretId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/BasicQCloudCredentials;->secretId:Ljava/lang/String;

    return-object p0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/BasicQCloudCredentials;->secretKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSignKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/BasicQCloudCredentials;->signKey:Ljava/lang/String;

    return-object p0
.end method

.method public isValid()Z
    .locals 8

    invoke-static {}, Lcom/tencent/qcloud/core/http/HttpConfiguration;->getDeviceTimeWithOffset()J

    move-result-wide v0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/BasicQCloudCredentials;->keyTime:Ljava/lang/String;

    invoke-static {p0}, Lcom/tencent/qcloud/core/auth/Utils;->parseKeyTimes(Ljava/lang/String;)[J

    move-result-object p0

    const/4 v2, 0x0

    aget-wide v3, p0, v2

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    const-wide/16 v6, 0x3c

    sub-long/2addr v4, v6

    cmp-long p0, v0, v4

    if-gez p0, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method
