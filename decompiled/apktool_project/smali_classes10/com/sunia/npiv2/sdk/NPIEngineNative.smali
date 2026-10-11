.class public Lcom/sunia/npiv2/sdk/NPIEngineNative;
.super Lcom/sunia/npiv2/sdk/NPIEngine;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NPIEngineNative"


# instance fields
.field private mContext:Landroid/app/Application;

.field private mHandler:J

.field private mIsValid:Z

.field private startTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/sunia/npiv2/sdk/NPIEngine;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/npiv2/sdk/NPIEngineNative;->mIsValid:Z

    invoke-static {p1}, Lcom/sunia/commonv2/util/HWRCommonUtil;->getApplicationContent(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/sunia/npiv2/sdk/NPIEngineNative;->mContext:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public getNpiTransformResult()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-wide v1, p0, Lcom/sunia/npiv2/sdk/NPIEngineNative;->mHandler:J

    invoke-static {v1, v2}, Lcom/sunia/npiv2/local/LocalEngineNative;->npiGetLineCount(J)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    iget-wide v4, p0, Lcom/sunia/npiv2/sdk/NPIEngineNative;->mHandler:J

    invoke-static {v4, v5, v3}, Lcom/sunia/npiv2/local/LocalEngineNative;->npiGetLinePointsCount(JI)I

    move-result v4

    new-array v5, v4, [D

    new-array v6, v4, [D

    iget-wide v7, p0, Lcom/sunia/npiv2/sdk/NPIEngineNative;->mHandler:J

    invoke-static {v7, v8, v3, v5, v6}, Lcom/sunia/npiv2/local/LocalEngineNative;->npiGetLinePoints(JI[D[D)I

    new-instance v7, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-direct {v7}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7, v8}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->setPoints(Ljava/util/ArrayList;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v2

    :goto_1
    if-ge v7, v4, :cond_2

    new-instance v9, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    invoke-direct {v9}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;-><init>()V

    aget-wide v10, v5, v7

    double-to-float v10, v10

    iput v10, v9, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    aget-wide v10, v6, v7

    double-to-float v10, v10

    iput v10, v9, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    if-nez v7, :cond_0

    invoke-virtual {v9}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->down()Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    goto :goto_2

    :cond_0
    add-int/lit8 v10, v4, -0x1

    if-ne v3, v10, :cond_1

    invoke-virtual {v9}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->up()Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    goto :goto_2

    :cond_1
    invoke-virtual {v9}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->move()Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    :goto_2
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public npiCreateEngine()J
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lcom/sunia/npiv2/local/LocalEngineNative;->npiCreateEngine(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sunia/npiv2/sdk/NPIEngineNative;->mHandler:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "npiCreateEngine result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sunia/npiv2/sdk/NPIEngineNative;->mHandler:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NPIEngineNative"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sunia/npiv2/sdk/NPIEngineNative;->mHandler:J

    return-wide v0
.end method

.method public npiDestroyEngine()Z
    .locals 2

    iget-wide v0, p0, Lcom/sunia/npiv2/sdk/NPIEngineNative;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/npiv2/local/LocalEngineNative;->npiDestroyEngine(J)Z

    move-result p0

    return p0
.end method

.method public npiEngineValid()Z
    .locals 2

    iget-wide v0, p0, Lcom/sunia/npiv2/sdk/NPIEngineNative;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/npiv2/local/LocalEngineNative;->npiEngineValid(J)Z

    move-result p0

    return p0
.end method

.method public npiExtractFromData([B)Z
    .locals 2

    iget-wide v0, p0, Lcom/sunia/npiv2/sdk/NPIEngineNative;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/npiv2/local/LocalEngineNative;->npiExtractFromData(J[B)Z

    move-result p0

    return p0
.end method

.method public npiExtractFromFile(Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Lcom/sunia/npiv2/sdk/NPIEngineNative;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/npiv2/local/LocalEngineNative;->npiExtractFromFile(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public npiExtractFromObject(Landroid/media/Image;)Z
    .locals 2

    iget-wide v0, p0, Lcom/sunia/npiv2/sdk/NPIEngineNative;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/npiv2/local/LocalEngineNative;->npiExtractFromObject(JLandroid/media/Image;)Z

    move-result p0

    return p0
.end method

.method public npiGetLineCount()I
    .locals 2

    iget-wide v0, p0, Lcom/sunia/npiv2/sdk/NPIEngineNative;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/npiv2/local/LocalEngineNative;->npiGetLineCount(J)I

    move-result p0

    return p0
.end method

.method public npiGetLinePoints(I[D[D)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public npiGetLinePointsCount(I)I
    .locals 2

    iget-wide v0, p0, Lcom/sunia/npiv2/sdk/NPIEngineNative;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/npiv2/local/LocalEngineNative;->npiGetLinePointsCount(JI)I

    move-result p0

    return p0
.end method
