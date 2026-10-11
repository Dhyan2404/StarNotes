.class public final Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qcloud/core/auth/OAuth2Credentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private accessToken:Ljava/lang/String;

.field private authorizationCode:Ljava/lang/String;

.field private expiresIn:J

.field private openId:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private tokenStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->platform:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->tokenStartTime:J

    return-wide v0
.end method

.method public static synthetic access$300(Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->expiresIn:J

    return-wide v0
.end method

.method public static synthetic access$400(Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->refreshToken:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->openId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->scope:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->authorizationCode:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public accessToken(Ljava/lang/String;)Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->accessToken:Ljava/lang/String;

    return-object p0
.end method

.method public authorizationCode(Ljava/lang/String;)Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->authorizationCode:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/tencent/qcloud/core/auth/OAuth2Credentials;
    .locals 2

    new-instance v0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/qcloud/core/auth/OAuth2Credentials;-><init>(Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;Lcom/tencent/qcloud/core/auth/OAuth2Credentials$1;)V

    return-object v0
.end method

.method public expiresInSeconds(J)Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->expiresIn:J

    return-object p0
.end method

.method public openId(Ljava/lang/String;)Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->openId:Ljava/lang/String;

    return-object p0
.end method

.method public platform(Ljava/lang/String;)Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->platform:Ljava/lang/String;

    return-object p0
.end method

.method public refreshToken(Ljava/lang/String;)Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->refreshToken:Ljava/lang/String;

    return-object p0
.end method

.method public scope(Ljava/lang/String;)Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->scope:Ljava/lang/String;

    return-object p0
.end method

.method public tokenStartTime(J)Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qcloud/core/auth/OAuth2Credentials$Builder;->tokenStartTime:J

    return-object p0
.end method
