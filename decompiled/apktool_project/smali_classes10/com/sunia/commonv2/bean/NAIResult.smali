.class public Lcom/sunia/commonv2/bean/NAIResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dataPointer:J

.field private exception:Lcom/sunia/commonv2/exception/NAIException;

.field private formulaMode:I

.field private mHWRStrokeIdAndHWEIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sunia/commonv2/bean/NAIResult;->dataPointer:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sunia/commonv2/bean/NAIResult;->mHWRStrokeIdAndHWEIdMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getDataPointer()J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/commonv2/bean/NAIResult;->dataPointer:J

    return-wide v0
.end method

.method public getException()Lcom/sunia/commonv2/exception/NAIException;
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/NAIResult;->exception:Lcom/sunia/commonv2/exception/NAIException;

    return-object p0
.end method

.method public getFormulaMode()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/NAIResult;->formulaMode:I

    return p0
.end method

.method public getHWRStrokeIdAndHWEIdMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sunia/commonv2/bean/NAIResult;->mHWRStrokeIdAndHWEIdMap:Ljava/util/Map;

    return-object p0
.end method

.method public getMode()I
    .locals 0

    iget p0, p0, Lcom/sunia/commonv2/bean/NAIResult;->mode:I

    return p0
.end method

.method public isSuccess()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/commonv2/bean/NAIResult;->exception:Lcom/sunia/commonv2/exception/NAIException;

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setDataPointer(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sunia/commonv2/bean/NAIResult;->dataPointer:J

    return-void
.end method

.method public setException(Lcom/sunia/commonv2/exception/NAIException;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/commonv2/bean/NAIResult;->exception:Lcom/sunia/commonv2/exception/NAIException;

    return-void
.end method

.method public setFormulaMode(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/NAIResult;->formulaMode:I

    return-void
.end method

.method public setHWRStrokeIdAndHWEIdMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/commonv2/bean/NAIResult;->mHWRStrokeIdAndHWEIdMap:Ljava/util/Map;

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/sunia/commonv2/bean/NAIResult;->mode:I

    return-void
.end method
