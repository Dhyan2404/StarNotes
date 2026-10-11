.class public Lcom/sunia/HTREnginev2/impl_native/Local/LocalParamsNative;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalEngineNative;->loadNativeLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native createNewParams()J
.end method

.method public static native getMode(J)I
.end method

.method public static native setAssociateDataDir(JLjava/lang/String;)V
.end method

.method public static native setConfigName(JLjava/lang/String;)V
.end method

.method public static native setDataDir(JLjava/lang/String;)V
.end method

.method public static native setKeyValuesConfig(JLjava/lang/String;)V
.end method

.method public static native setMathEngineRadianOrDegree(JLjava/lang/String;)V
.end method

.method public static native setMathResultRoundingMode(JI)V
.end method

.method public static native setMathResultScale(JI)V
.end method

.method public static native setMode(JI)V
.end method

.method public static native setResultAssociational(JZ)V
.end method

.method public static native setResultCalculate(JZ)V
.end method

.method public static native setResultCandidate(JZ)V
.end method

.method public static native setResultCoordinate(JZ)V
.end method

.method public static native setResultPartitionCoordinate(JZ)V
.end method

.method public static native setResultSpanProcessed(JZ)V
.end method

.method public static native setWordSplitTimeLot(JJ)V
.end method
