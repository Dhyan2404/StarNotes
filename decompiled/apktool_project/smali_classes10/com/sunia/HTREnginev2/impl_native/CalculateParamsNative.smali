.class public Lcom/sunia/HTREnginev2/impl_native/CalculateParamsNative;
.super Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/sdk/CalculateParams;


# static fields
.field static TAG:Ljava/lang/String; = "CalculateParamsNative"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->lHandler:J

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sunia/HTREnginev2/utils/LogUtil;->canLogE()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sunia/HTREnginev2/impl_native/CalculateParamsNative;->TAG:Ljava/lang/String;

    const-string p1, "invalidate handle"

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public setMathEngineRadianOrDegree(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalParamsNative;->setMathEngineRadianOrDegree(JLjava/lang/String;)V

    return-void
.end method

.method public setMathResultRoundingMode(I)V
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalParamsNative;->setMathResultRoundingMode(JI)V

    return-void
.end method

.method public setMathResultScale(I)V
    .locals 2

    iget-wide v0, p0, Lcom/sunia/HTREnginev2/impl_native/ObjectNativeBase;->lHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/HTREnginev2/impl_native/Local/LocalParamsNative;->setMathResultScale(JI)V

    return-void
.end method
