.class public Lcom/sunia/HTREnginev2/impl_native/ParamsNative;
.super Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/sdk/Params;


# static fields
.field static TAG:Ljava/lang/String; = "ParamsNative"


# instance fields
.field private calculateParams:Lcom/sunia/HTREnginev2/sdk/CalculateParams;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;-><init>()V

    .line 2
    invoke-static {}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalParamsNative;->createNewParams()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->lHandler:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 4
    iput-wide p1, p0, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->lHandler:J

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/sunia/HTREnginev2/utils/LogUtil;->canLogE()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    sget-object p1, Lcom/sunia/HTREnginev2/impl_native/ParamsNative;->TAG:Ljava/lang/String;

    const-string p2, "invalidate handle"

    invoke-static {p1, p2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    :goto_0
    new-instance p1, Lcom/sunia/HTREnginev2/impl_native/CalculateParamsNative;

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->lHandler:J

    invoke-direct {p1, v0, v1}, Lcom/sunia/HTREnginev2/impl_native/CalculateParamsNative;-><init>(J)V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/impl_native/ParamsNative;->calculateParams:Lcom/sunia/HTREnginev2/sdk/CalculateParams;

    return-void
.end method


# virtual methods
.method public getCalculateParams()Lcom/sunia/HTREnginev2/sdk/CalculateParams;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/impl_native/ParamsNative;->calculateParams:Lcom/sunia/HTREnginev2/sdk/CalculateParams;

    return-object p0
.end method

.method public getMode()I
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->lHandler:J

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalParamsNative;->getMode(J)I

    move-result p0

    return p0
.end method

.method public setAssociateDataDir(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/sunia/HTREnginev2/impl_native/ParamsNative;->TAG:Ljava/lang/String;

    const-string v1, "setAssociateDataDir"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalParamsNative;->setAssociateDataDir(JLjava/lang/String;)V

    return-void
.end method

.method public setConfigName(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalParamsNative;->setConfigName(JLjava/lang/String;)V

    return-void
.end method

.method public setDataDir(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalParamsNative;->setDataDir(JLjava/lang/String;)V

    return-void
.end method

.method public setKeyValuesConfig(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/sunia/HTREnginev2/impl_native/ParamsNative;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setKeyValuesConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalParamsNative;->setKeyValuesConfig(JLjava/lang/String;)V

    return-void
.end method

.method public setMode(I)V
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalParamsNative;->setMode(JI)V

    return-void
.end method

.method public setResultAssociational(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalParamsNative;->setResultAssociational(JZ)V

    return-void
.end method

.method public setResultCalculate(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalParamsNative;->setResultCalculate(JZ)V

    return-void
.end method

.method public setResultCandidate(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalParamsNative;->setResultCandidate(JZ)V

    return-void
.end method

.method public setResultCoordinate(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalParamsNative;->setResultCoordinate(JZ)V

    return-void
.end method

.method public setResultPartitionCoordinate(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalParamsNative;->setResultPartitionCoordinate(JZ)V

    return-void
.end method

.method public setResultSpanProcessed(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalParamsNative;->setResultSpanProcessed(JZ)V

    return-void
.end method

.method public setWordSplitTimeLot(J)V
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->lHandler:J

    invoke-static {v0, v1, p1, p2}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalParamsNative;->setWordSplitTimeLot(JJ)V

    return-void
.end method
