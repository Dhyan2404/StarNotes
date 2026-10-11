.class public Lcom/tencent/qcloud/track/cls/ClsSessionCredentials;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final expiredTime:J

.field private final secretId:Ljava/lang/String;

.field private final secretKey:Ljava/lang/String;

.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Lcom/tencent/qcloud/track/cls/ClsSessionCredentials;->secretId:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/qcloud/track/cls/ClsSessionCredentials;->secretKey:Ljava/lang/String;

    iput-wide p4, p0, Lcom/tencent/qcloud/track/cls/ClsSessionCredentials;->expiredTime:J

    iput-object p3, p0, Lcom/tencent/qcloud/track/cls/ClsSessionCredentials;->token:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "token cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "secretKey cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "secretId cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getExpiredTime()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/track/cls/ClsSessionCredentials;->expiredTime:J

    return-wide v0
.end method

.method public getSecretId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/track/cls/ClsSessionCredentials;->secretId:Ljava/lang/String;

    return-object p0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/track/cls/ClsSessionCredentials;->secretKey:Ljava/lang/String;

    return-object p0
.end method

.method public getToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/track/cls/ClsSessionCredentials;->token:Ljava/lang/String;

    return-object p0
.end method

.method public isValid()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/qcloud/track/cls/ClsSessionCredentials;->expiredTime:J

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
