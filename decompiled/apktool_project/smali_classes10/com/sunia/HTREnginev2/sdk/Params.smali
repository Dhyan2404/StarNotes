.class public interface abstract Lcom/sunia/HTREnginev2/sdk/Params;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createInstance()Lcom/sunia/HTREnginev2/sdk/Params;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/impl_native/ParamsNative;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/impl_native/ParamsNative;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getCalculateParams()Lcom/sunia/HTREnginev2/sdk/CalculateParams;
.end method

.method public abstract getMode()I
.end method

.method public abstract setAssociateDataDir(Ljava/lang/String;)V
.end method

.method public abstract setConfigName(Ljava/lang/String;)V
.end method

.method public abstract setDataDir(Ljava/lang/String;)V
.end method

.method public abstract setKeyValuesConfig(Ljava/lang/String;)V
.end method

.method public abstract setMode(I)V
.end method

.method public abstract setResultAssociational(Z)V
.end method

.method public abstract setResultCalculate(Z)V
.end method

.method public abstract setResultCandidate(Z)V
.end method

.method public abstract setResultCoordinate(Z)V
.end method

.method public abstract setResultPartitionCoordinate(Z)V
.end method

.method public abstract setResultSpanProcessed(Z)V
.end method

.method public abstract setWordSplitTimeLot(J)V
.end method
