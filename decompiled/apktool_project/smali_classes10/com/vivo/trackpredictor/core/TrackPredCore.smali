.class public Lcom/vivo/trackpredictor/core/TrackPredCore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/trackpredictor/core/TrackPredCore$SingleHolder;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private pred:Lcom/vivo/trackpredictor/utils/HwPoint;

.field private res:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, ""

    :try_start_0
    const-string v1, "track_prediction"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "load native library successfully!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to load native library: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "trackPredictionSDK"

    .line 3
    iput-object v0, p0, Lcom/vivo/trackpredictor/core/TrackPredCore;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 4
    iput-object v0, p0, Lcom/vivo/trackpredictor/core/TrackPredCore;->res:[F

    .line 5
    new-instance v0, Lcom/vivo/trackpredictor/utils/HwPoint;

    invoke-direct {v0}, Lcom/vivo/trackpredictor/utils/HwPoint;-><init>()V

    iput-object v0, p0, Lcom/vivo/trackpredictor/core/TrackPredCore;->pred:Lcom/vivo/trackpredictor/utils/HwPoint;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vivo/trackpredictor/core/TrackPredCore$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vivo/trackpredictor/core/TrackPredCore;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/vivo/trackpredictor/core/TrackPredCore;
    .locals 1

    sget-object v0, Lcom/vivo/trackpredictor/core/TrackPredCore$SingleHolder;->instance:Lcom/vivo/trackpredictor/core/TrackPredCore;

    return-object v0
.end method

.method private native initial(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native predict(IFFIFI)[F
.end method


# virtual methods
.method public doPredict(Lcom/vivo/trackpredictor/utils/HwPoint;I)Lcom/vivo/trackpredictor/utils/HwPoint;
    .locals 8

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 16
    iget-object p2, p0, Lcom/vivo/trackpredictor/core/TrackPredCore;->pred:Lcom/vivo/trackpredictor/utils/HwPoint;

    invoke-virtual {p1}, Lcom/vivo/trackpredictor/utils/HwPoint;->getPointX()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/vivo/trackpredictor/utils/HwPoint;->setPointX(F)V

    .line 17
    iget-object p2, p0, Lcom/vivo/trackpredictor/core/TrackPredCore;->pred:Lcom/vivo/trackpredictor/utils/HwPoint;

    invoke-virtual {p1}, Lcom/vivo/trackpredictor/utils/HwPoint;->getPointY()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/vivo/trackpredictor/utils/HwPoint;->setPointY(F)V

    .line 18
    iget-object p0, p0, Lcom/vivo/trackpredictor/core/TrackPredCore;->pred:Lcom/vivo/trackpredictor/utils/HwPoint;

    return-object p0

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/vivo/trackpredictor/utils/HwPoint;->getPointX()F

    move-result v3

    .line 20
    invoke-virtual {p1}, Lcom/vivo/trackpredictor/utils/HwPoint;->getPointY()F

    move-result v4

    .line 21
    invoke-virtual {p1}, Lcom/vivo/trackpredictor/utils/HwPoint;->getPointPressure()F

    move-result v6

    .line 22
    invoke-virtual {p1}, Lcom/vivo/trackpredictor/utils/HwPoint;->getPointTime()I

    move-result v2

    .line 23
    invoke-virtual {p1}, Lcom/vivo/trackpredictor/utils/HwPoint;->getActionCode()I

    move-result v5

    move-object v1, p0

    move v7, p2

    .line 24
    invoke-direct/range {v1 .. v7}, Lcom/vivo/trackpredictor/core/TrackPredCore;->predict(IFFIFI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/trackpredictor/core/TrackPredCore;->res:[F

    .line 25
    iget-object p2, p0, Lcom/vivo/trackpredictor/core/TrackPredCore;->pred:Lcom/vivo/trackpredictor/utils/HwPoint;

    const/4 v1, 0x0

    aget p1, p1, v1

    invoke-virtual {p2, p1}, Lcom/vivo/trackpredictor/utils/HwPoint;->setPointX(F)V

    .line 26
    iget-object p1, p0, Lcom/vivo/trackpredictor/core/TrackPredCore;->pred:Lcom/vivo/trackpredictor/utils/HwPoint;

    iget-object p2, p0, Lcom/vivo/trackpredictor/core/TrackPredCore;->res:[F

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Lcom/vivo/trackpredictor/utils/HwPoint;->setPointY(F)V

    .line 27
    iget-object p0, p0, Lcom/vivo/trackpredictor/core/TrackPredCore;->pred:Lcom/vivo/trackpredictor/utils/HwPoint;

    return-object p0
.end method

.method public doPredict(Ljava/util/List;I)Lcom/vivo/trackpredictor/utils/HwPoint;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vivo/trackpredictor/utils/HwPoint;",
            ">;I)",
            "Lcom/vivo/trackpredictor/utils/HwPoint;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vivo/trackpredictor/utils/HwPoint;

    .line 2
    iget-object p2, p0, Lcom/vivo/trackpredictor/core/TrackPredCore;->pred:Lcom/vivo/trackpredictor/utils/HwPoint;

    invoke-virtual {p1}, Lcom/vivo/trackpredictor/utils/HwPoint;->getPointX()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/vivo/trackpredictor/utils/HwPoint;->setPointX(F)V

    .line 3
    iget-object p2, p0, Lcom/vivo/trackpredictor/core/TrackPredCore;->pred:Lcom/vivo/trackpredictor/utils/HwPoint;

    invoke-virtual {p1}, Lcom/vivo/trackpredictor/utils/HwPoint;->getPointY()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/vivo/trackpredictor/utils/HwPoint;->setPointY(F)V

    .line 4
    iget-object p0, p0, Lcom/vivo/trackpredictor/core/TrackPredCore;->pred:Lcom/vivo/trackpredictor/utils/HwPoint;

    return-object p0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vivo/trackpredictor/utils/HwPoint;

    .line 7
    invoke-virtual {v3}, Lcom/vivo/trackpredictor/utils/HwPoint;->getPointX()F

    move-result v6

    .line 8
    invoke-virtual {v3}, Lcom/vivo/trackpredictor/utils/HwPoint;->getPointY()F

    move-result v7

    .line 9
    invoke-virtual {v3}, Lcom/vivo/trackpredictor/utils/HwPoint;->getPointPressure()F

    move-result v9

    .line 10
    invoke-virtual {v3}, Lcom/vivo/trackpredictor/utils/HwPoint;->getPointTime()I

    move-result v5

    .line 11
    invoke-virtual {v3}, Lcom/vivo/trackpredictor/utils/HwPoint;->getActionCode()I

    move-result v8

    move-object v4, p0

    move v10, p2

    .line 12
    invoke-direct/range {v4 .. v10}, Lcom/vivo/trackpredictor/core/TrackPredCore;->predict(IFFIFI)[F

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/trackpredictor/core/TrackPredCore;->res:[F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/vivo/trackpredictor/core/TrackPredCore;->pred:Lcom/vivo/trackpredictor/utils/HwPoint;

    iget-object p2, p0, Lcom/vivo/trackpredictor/core/TrackPredCore;->res:[F

    aget p2, p2, v1

    invoke-virtual {p1, p2}, Lcom/vivo/trackpredictor/utils/HwPoint;->setPointX(F)V

    .line 14
    iget-object p1, p0, Lcom/vivo/trackpredictor/core/TrackPredCore;->pred:Lcom/vivo/trackpredictor/utils/HwPoint;

    iget-object p2, p0, Lcom/vivo/trackpredictor/core/TrackPredCore;->res:[F

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Lcom/vivo/trackpredictor/utils/HwPoint;->setPointY(F)V

    .line 15
    iget-object p0, p0, Lcom/vivo/trackpredictor/core/TrackPredCore;->pred:Lcom/vivo/trackpredictor/utils/HwPoint;

    return-object p0
.end method

.method public init(Landroid/content/Context;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "optparam1130_best.cfg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "optparam240_12.cfg"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-static {p1, v2, v0}, Lcom/vivo/trackpredictor/utils/CommonUtils;->copyAssetResource2File(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1, v3}, Lcom/vivo/trackpredictor/utils/CommonUtils;->copyAssetResource2File(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-direct {p0, v0, v3}, Lcom/vivo/trackpredictor/core/TrackPredCore;->initial(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/vivo/trackpredictor/core/TrackPredCore;->TAG:Ljava/lang/String;

    const-string p1, "init: Initial Successfully!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/vivo/trackpredictor/core/TrackPredCore;->TAG:Ljava/lang/String;

    const-string p1, "init: Initial Failed!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public native release()V
.end method
