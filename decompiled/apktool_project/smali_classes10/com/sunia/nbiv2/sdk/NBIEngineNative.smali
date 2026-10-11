.class public Lcom/sunia/nbiv2/sdk/NBIEngineNative;
.super Lcom/sunia/nbiv2/sdk/NBIEngine;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NBIEngineNative"


# instance fields
.field private mContext:Landroid/app/Application;

.field private mHandler:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sunia/nbiv2/sdk/NBIEngine;-><init>()V

    return-void
.end method

.method private createEngine(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "createEngine"

    const-string v1, "NBIEngineNative"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->mContext:Landroid/app/Application;

    invoke-static {v0, p1}, Lcom/sunia/nbiv2/local/LocalEngineNative;->nbiAuthorizeFromFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to find corresponding module, authentication failed"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "nbi\u83b7\u53d6\u6388\u6743\u5931\u8d25\uff0c\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->mContext:Landroid/app/Application;

    invoke-static {v0, p1}, Lcom/sunia/nbiv2/local/LocalEngineNative;->nbiAuthorizeFromFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "nbi\u83b7\u53d6\u6388\u6743\u91cd\u8bd5\u6210\u529f"

    invoke-static {v1, v2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "naiAuthorizeFromFile error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sunia/nbiv2/local/LocalEngineNative;->nbiGetLastErrorString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\r,certifyFilePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/sunia/nbiv2/local/LocalEngineNative;->nbiCreateEngine()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->mHandler:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nbi\u5f15\u64ce\u521b\u5efa\u5931\u8d25:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->getErrorInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method


# virtual methods
.method public addStrokePoints(Lcom/sunia/naiv2/sdk/NAIPath;)I
    .locals 8

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    new-array v4, v0, [D

    new-array v5, v0, [D

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    iget v2, v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    float-to-double v2, v2

    aput-wide v2, v4, v1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    iget v2, v2, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    float-to-double v2, v2

    aput-wide v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->mHandler:J

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getIdInt()I

    move-result v6

    invoke-virtual {p1}, Lcom/sunia/naiv2/sdk/NAIPath;->getGroupId()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/sunia/nbiv2/local/LocalEngineNative;->nbiAddLine(J[D[DII)I

    move-result v1

    if-gtz v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "nbi,addLine strokeId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NBIEngineNative"

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public clearPoints()Z
    .locals 2

    iget-wide v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/nbiv2/local/LocalEngineNative;->nbiClearPoints(J)Z

    move-result p0

    return p0
.end method

.method public destroyBeatifyEngine()V
    .locals 2

    const-string v0, "NBIEngineNative"

    const-string v1, "destroyBeatifyEngine"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/nbiv2/local/LocalEngineNative;->nbiDestroyEngine(J)V

    return-void
.end method

.method public doBeautifyTransform(Lcom/sunia/commonv2/bean/NAIResult;JJ)Z
    .locals 9

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->nbiSetAxisOutput(Z)Z

    .line 7
    iget-wide v1, p0, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->mHandler:J

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/NAIResult;->getDataPointer()J

    move-result-wide v3

    move-wide v5, p2

    move-wide v7, p4

    invoke-static/range {v1 .. v8}, Lcom/sunia/nbiv2/local/LocalEngineNative;->nbiTransformPointer(JJJJ)Z

    move-result p0

    return p0
.end method

.method public doBeautifyTransform(Ljava/util/List;JJ)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/naiv2/sdk/NAIPath;",
            ">;JJ)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->nbiSetAxisOutput(Z)Z

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/naiv2/sdk/NAIPath;

    .line 3
    invoke-virtual {p0, v0}, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->addStrokePoints(Lcom/sunia/naiv2/sdk/NAIPath;)I

    move-result v1

    int-to-long v1, v1

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->setStrokeId(J)V

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v3, p0, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->mHandler:J

    move-wide v5, p2

    move-wide v7, p4

    invoke-static/range {v3 .. v8}, Lcom/sunia/nbiv2/local/LocalEngineNative;->nbiTransform(JJJ)Z

    move-result p0

    return p0
.end method

.method public getErrorInfo()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sunia/nbiv2/local/LocalEngineNative;->nbiGetLastErrorString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isValidate()Z
    .locals 2

    iget-wide v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/nbiv2/local/LocalEngineNative;->nbiEngineValid(J)Z

    move-result p0

    return p0
.end method

.method public nbiSetAxisOutput(Z)Z
    .locals 2

    iget-wide v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/nbiv2/local/LocalEngineNative;->nbiSetAxisOutput(JZ)Z

    move-result p0

    return p0
.end method

.method public nbiSetOutlineOutput(Z)Z
    .locals 2

    iget-wide v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/nbiv2/local/LocalEngineNative;->nbiSetOutlineOutput(JZ)Z

    move-result p0

    return p0
.end method

.method public setCallback(Lcom/sunia/nbiv2/local/LocalNBIListener;)Z
    .locals 2

    iget-wide v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/nbiv2/local/LocalEngineNative;->nbiSetCallback(JLcom/sunia/nbiv2/local/LocalNBIListener;)Z

    move-result p0

    return p0
.end method

.method public setParameters([I)Z
    .locals 2

    iget-wide v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/nbiv2/local/LocalEngineNative;->nbiSetParameters(J[I)Z

    move-result p0

    return p0
.end method

.method public start(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "NBIEngineNative"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sunia/commonv2/util/HWRCommonUtil;->getApplicationContent(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->mContext:Landroid/app/Application;

    iget-wide v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lcom/sunia/nbiv2/local/LocalEngineNative;->nbiStopTransform(J)V

    iget-wide v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/nbiv2/local/LocalEngineNative;->nbiDestroyEngine(J)V

    iput-wide v2, p0, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->mHandler:J

    :cond_0
    invoke-direct {p0, p2}, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->createEngine(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public stopBeautify()V
    .locals 2

    iget-wide v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineNative;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/nbiv2/local/LocalEngineNative;->nbiStopTransform(J)V

    return-void
.end method
