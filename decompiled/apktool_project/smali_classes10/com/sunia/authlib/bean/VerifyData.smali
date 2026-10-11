.class public Lcom/sunia/authlib/bean/VerifyData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public appid:Ljava/lang/String;

.field public deviceIdType:Lcom/sunia/authlib/bean/DeviceIdType;

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
    sget-object v0, Lcom/sunia/authlib/bean/DeviceIdType;->ANDROID_ID:Lcom/sunia/authlib/bean/DeviceIdType;

    iput-object v0, p0, Lcom/sunia/authlib/bean/VerifyData;->deviceIdType:Lcom/sunia/authlib/bean/DeviceIdType;

    .line 3
    sget-object v0, Lcom/sunia/authlib/bean/URLType;->PROD:Lcom/sunia/authlib/bean/URLType;

    invoke-virtual {v0}, Lcom/sunia/authlib/bean/URLType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sunia/authlib/bean/VerifyData;->urlType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lcom/sunia/authlib/bean/DeviceIdType;->ANDROID_ID:Lcom/sunia/authlib/bean/DeviceIdType;

    iput-object v0, p0, Lcom/sunia/authlib/bean/VerifyData;->deviceIdType:Lcom/sunia/authlib/bean/DeviceIdType;

    .line 6
    sget-object v0, Lcom/sunia/authlib/bean/URLType;->PROD:Lcom/sunia/authlib/bean/URLType;

    invoke-virtual {v0}, Lcom/sunia/authlib/bean/URLType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sunia/authlib/bean/VerifyData;->urlType:I

    .line 7
    iput-object p1, p0, Lcom/sunia/authlib/bean/VerifyData;->appid:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/sunia/authlib/bean/VerifyData;->publicKey:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/sunia/authlib/bean/VerifyData;->savePath:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/sunia/authlib/bean/VerifyData;->offlineStr:Ljava/lang/String;

    return-void
.end method

.method public static native init()V
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/authlib/bean/VerifyData;->appid:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceIdType()Lcom/sunia/authlib/bean/DeviceIdType;
    .locals 0

    iget-object p0, p0, Lcom/sunia/authlib/bean/VerifyData;->deviceIdType:Lcom/sunia/authlib/bean/DeviceIdType;

    return-object p0
.end method

.method public getLastLicenseFlag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/authlib/bean/VerifyData;->lastLicenseFlag:Ljava/lang/String;

    return-object p0
.end method

.method public getOfflineStr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/authlib/bean/VerifyData;->offlineStr:Ljava/lang/String;

    return-object p0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/authlib/bean/VerifyData;->publicKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/authlib/bean/VerifyData;->savePath:Ljava/lang/String;

    return-object p0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/authlib/bean/VerifyData;->appid:Ljava/lang/String;

    return-void
.end method

.method public setDeviceIdType(Lcom/sunia/authlib/bean/DeviceIdType;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/authlib/bean/VerifyData;->deviceIdType:Lcom/sunia/authlib/bean/DeviceIdType;

    return-void
.end method

.method public setLastLicenseFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/authlib/bean/VerifyData;->lastLicenseFlag:Ljava/lang/String;

    return-void
.end method

.method public setOfflineStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/authlib/bean/VerifyData;->offlineStr:Ljava/lang/String;

    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/authlib/bean/VerifyData;->publicKey:Ljava/lang/String;

    return-void
.end method

.method public setSavePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/authlib/bean/VerifyData;->savePath:Ljava/lang/String;

    return-void
.end method

.method public setUrlType(Lcom/sunia/authlib/bean/URLType;)V
    .locals 0

    invoke-virtual {p1}, Lcom/sunia/authlib/bean/URLType;->getValue()I

    move-result p1

    iput p1, p0, Lcom/sunia/authlib/bean/VerifyData;->urlType:I

    return-void
.end method
