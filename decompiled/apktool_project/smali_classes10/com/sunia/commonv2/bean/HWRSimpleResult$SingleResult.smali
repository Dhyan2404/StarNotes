.class public Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/commonv2/bean/HWRSimpleResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleResult"
.end annotation


# instance fields
.field private candidate:Ljava/lang/String;

.field private correctRate:D

.field private validityCorrectRates:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;->candidate:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;->correctRate:D

    return-void
.end method


# virtual methods
.method public getCandidate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;->candidate:Ljava/lang/String;

    return-object p0
.end method

.method public getCorrectRate()D
    .locals 2

    iget-wide v0, p0, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;->correctRate:D

    return-wide v0
.end method

.method public getValidityCorrectRates()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;->validityCorrectRates:I

    return p0
.end method

.method public setCandidate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;->candidate:Ljava/lang/String;

    return-void
.end method

.method public setCorrectRate(D)V
    .locals 0

    iput-wide p1, p0, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;->correctRate:D

    return-void
.end method

.method public setValidityCorrectRates(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;->validityCorrectRates:I

    return-void
.end method
