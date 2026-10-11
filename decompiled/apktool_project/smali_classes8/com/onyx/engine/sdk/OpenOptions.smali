.class public Lcom/onyx/engine/sdk/OpenOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private certificate:Ljava/lang/String;

.field private chapterScanOption:Lcom/onyx/engine/sdk/ChapterScanOption;

.field private charsetName:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private drmCallback:Lcom/onyx/engine/sdk/DrmSDK;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field private isDictLookup:Z

.field private password:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private random:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/engine/sdk/OpenOptions;->isDictLookup:Z

    iput-object p1, p0, Lcom/onyx/engine/sdk/OpenOptions;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCertificate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/OpenOptions;->certificate:Ljava/lang/String;

    return-object p0
.end method

.method public getChapterScanOption()Lcom/onyx/engine/sdk/ChapterScanOption;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/OpenOptions;->chapterScanOption:Lcom/onyx/engine/sdk/ChapterScanOption;

    return-object p0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/OpenOptions;->charsetName:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/OpenOptions;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getDrmCallback()Lcom/onyx/engine/sdk/DrmSDK;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/OpenOptions;->drmCallback:Lcom/onyx/engine/sdk/DrmSDK;

    return-object p0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/OpenOptions;->password:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/OpenOptions;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getRandom()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/engine/sdk/OpenOptions;->random:Ljava/lang/String;

    return-object p0
.end method

.method public isDictLookup()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/engine/sdk/OpenOptions;->isDictLookup:Z

    return p0
.end method

.method public setCertificate(Ljava/lang/String;)Lcom/onyx/engine/sdk/OpenOptions;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/OpenOptions;->certificate:Ljava/lang/String;

    return-object p0
.end method

.method public setChapterScanOption(Lcom/onyx/engine/sdk/ChapterScanOption;)Lcom/onyx/engine/sdk/OpenOptions;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/OpenOptions;->chapterScanOption:Lcom/onyx/engine/sdk/ChapterScanOption;

    return-object p0
.end method

.method public setCharsetName(Ljava/lang/String;)Lcom/onyx/engine/sdk/OpenOptions;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/OpenOptions;->charsetName:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/onyx/engine/sdk/OpenOptions;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/OpenOptions;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public setDictLookup(Z)Lcom/onyx/engine/sdk/OpenOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/engine/sdk/OpenOptions;->isDictLookup:Z

    return-object p0
.end method

.method public setDrmCallback(Lcom/onyx/engine/sdk/DrmSDK;)Lcom/onyx/engine/sdk/OpenOptions;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/OpenOptions;->drmCallback:Lcom/onyx/engine/sdk/DrmSDK;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/onyx/engine/sdk/OpenOptions;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/OpenOptions;->password:Ljava/lang/String;

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/onyx/engine/sdk/OpenOptions;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/OpenOptions;->path:Ljava/lang/String;

    return-object p0
.end method

.method public setRandom(Ljava/lang/String;)Lcom/onyx/engine/sdk/OpenOptions;
    .locals 0

    iput-object p1, p0, Lcom/onyx/engine/sdk/OpenOptions;->random:Ljava/lang/String;

    return-object p0
.end method

.method public toJson()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/onyx/engine/sdk/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
