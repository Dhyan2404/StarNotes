.class public Lcom/tencent/cos/xml/common/VersionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static sdkName:Ljava/lang/String; = null

.field public static versionCode:I = -0x1

.field public static versionName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQuicUserAgent()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/tencent/cos/xml/common/VersionInfo;->getSdkName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/cos/xml/common/VersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s-android-quic-sdk-%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/common/VersionInfo;->sdkName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cos-base"

    sput-object v0, Lcom/tencent/cos/xml/common/VersionInfo;->sdkName:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/tencent/cos/xml/common/VersionInfo;->sdkName:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/tencent/cos/xml/common/VersionInfo;->getSdkName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/cos/xml/common/VersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s-android-sdk-%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionCode()I
    .locals 2

    sget v0, Lcom/tencent/cos/xml/common/VersionInfo;->versionCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0xc6f2

    sput v0, Lcom/tencent/cos/xml/common/VersionInfo;->versionCode:I

    :cond_0
    sget v0, Lcom/tencent/cos/xml/common/VersionInfo;->versionCode:I

    return v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/cos/xml/common/VersionInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "5.9.30"

    sput-object v0, Lcom/tencent/cos/xml/common/VersionInfo;->versionName:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/tencent/cos/xml/common/VersionInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method
