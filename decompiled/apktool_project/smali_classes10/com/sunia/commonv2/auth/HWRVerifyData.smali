.class public Lcom/sunia/commonv2/auth/HWRVerifyData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public appid:Ljava/lang/String;

.field public deviceIdType:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

.field private lastLicenseFlag:Ljava/lang/String;

.field public offlineStr:Ljava/lang/String;

.field public publicKey:Ljava/lang/String;

.field public savePath:Ljava/lang/String;

.field public urlType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->ANDROID_ID:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    iput-object v0, p0, Lcom/sunia/commonv2/auth/HWRVerifyData;->deviceIdType:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    .line 3
    sget-object v0, Lcom/sunia/commonv2/auth/HWRURLType;->PROD:Lcom/sunia/commonv2/auth/HWRURLType;

    invoke-virtual {v0}, Lcom/sunia/commonv2/auth/HWRURLType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sunia/commonv2/auth/HWRVerifyData;->urlType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lcom/sunia/commonv2/auth/HWRDeviceIdType;->ANDROID_ID:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    iput-object v0, p0, Lcom/sunia/commonv2/auth/HWRVerifyData;->deviceIdType:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    .line 6
    sget-object v0, Lcom/sunia/commonv2/auth/HWRURLType;->PROD:Lcom/sunia/commonv2/auth/HWRURLType;

    invoke-virtual {v0}, Lcom/sunia/commonv2/auth/HWRURLType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sunia/commonv2/auth/HWRVerifyData;->urlType:I

    .line 7
    iput-object p1, p0, Lcom/sunia/commonv2/auth/HWRVerifyData;->appid:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/sunia/commonv2/auth/HWRVerifyData;->publicKey:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/sunia/commonv2/auth/HWRVerifyData;->savePath:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/sunia/commonv2/auth/HWRVerifyData;->offlineStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/auth/HWRVerifyData;->appid:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceIdType()Lcom/sunia/commonv2/auth/HWRDeviceIdType;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/auth/HWRVerifyData;->deviceIdType:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    return-object p0
.end method

.method public getLastLicenseFlag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/auth/HWRVerifyData;->lastLicenseFlag:Ljava/lang/String;

    return-object p0
.end method

.method public getOfflineStr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/auth/HWRVerifyData;->offlineStr:Ljava/lang/String;

    return-object p0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/auth/HWRVerifyData;->publicKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/auth/HWRVerifyData;->savePath:Ljava/lang/String;

    return-object p0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/auth/HWRVerifyData;->appid:Ljava/lang/String;

    return-void
.end method

.method public setDeviceIdType(Lcom/sunia/commonv2/auth/HWRDeviceIdType;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/auth/HWRVerifyData;->deviceIdType:Lcom/sunia/commonv2/auth/HWRDeviceIdType;

    return-void
.end method

.method public setLastLicenseFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/auth/HWRVerifyData;->lastLicenseFlag:Ljava/lang/String;

    return-void
.end method

.method public setOfflineStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/auth/HWRVerifyData;->offlineStr:Ljava/lang/String;

    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/auth/HWRVerifyData;->publicKey:Ljava/lang/String;

    return-void
.end method

.method public setSavePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/auth/HWRVerifyData;->savePath:Ljava/lang/String;

    return-void
.end method

.method public setUrlType(Lcom/sunia/commonv2/auth/HWRURLType;)V
    .locals 0

    invoke-virtual {p1}, Lcom/sunia/commonv2/auth/HWRURLType;->getValue()I

    move-result p1

    iput p1, p0, Lcom/sunia/commonv2/auth/HWRVerifyData;->urlType:I

    return-void
.end method
