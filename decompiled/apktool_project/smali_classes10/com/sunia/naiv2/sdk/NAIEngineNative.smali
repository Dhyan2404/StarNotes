.class public Lcom/sunia/naiv2/sdk/NAIEngineNative;
.super Lcom/sunia/naiv2/sdk/NAIEngine;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NAIEngineNative"

.field private static sFontInputStreamList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/app/Application;

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

.field private mHandler:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->sFontInputStreamList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sunia/naiv2/sdk/NAIEngine;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHWRStrokeIdAndHWEIdMap:Ljava/util/Map;

    return-void
.end method

.method private naiAddFont([B)Z
    .locals 0

    invoke-static {p1}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiAddFont([B)Z

    move-result p0

    return p0
.end method

.method private naiClearFonts()Z
    .locals 0

    invoke-static {}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiClearFonts()Z

    move-result p0

    return p0
.end method

.method private naiSetAAssetManager(Landroid/content/res/AssetManager;)Z
    .locals 0

    invoke-static {p1}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiSetAAssetManager(Landroid/content/res/AssetManager;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addRecognizePath(Lcom/sunia/HTREnginev2/sdk/RecognizePath;)I
    .locals 7

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    new-array v3, v1, [D

    new-array v4, v1, [D

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    iget v5, v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    float-to-double v5, v5

    aput-wide v5, v3, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    iget v5, v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    float-to-double v5, v5

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHandler:J

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getIdInt()I

    move-result v2

    invoke-static {v0, v1, v3, v4, v2}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiAddLine(J[D[DI)I

    move-result v2

    int-to-long v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->setStrokeId(J)V

    iget-object p0, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHWRStrokeIdAndHWEIdMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getId()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    const-string p1, "NAIEngineNative"

    if-gez p0, :cond_1

    const-string p0, "\u8bf7\u6ce8\u610f\uff0c\u6dfb\u52a0\u5230nai\u7684RecognizePath\u9700\u8981\u8bbe\u7f6e\u624b\u5199\u7684\u7b14\u753bid\uff0c\u5426\u5219\u4f1a\u4e22\u5931\u4e0d\u652f\u6301nai\u5b57\u4f53\u7684\u6e32\u67d3"

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-gtz v2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "strokeId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "naiAddLineResult="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",arrayX="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",arrayY="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v2
.end method

.method public getErrorInfo()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiGetLastErrorString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNAIResult(I)Lcom/sunia/commonv2/bean/NAIResult;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiLayout(JI)I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNaiTransformResult,naiLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NAIEngineNative"

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u6ce8\u610f\uff0cnai\u8f6c\u6362\u5931\u8d25\uff0cgetErrorInfo()="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngineNative;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    new-instance p1, Lcom/sunia/commonv2/bean/NAIResult;

    invoke-direct {p1}, Lcom/sunia/commonv2/bean/NAIResult;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/NAIResult;->getHWRStrokeIdAndHWEIdMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 6
    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/NAIResult;->getHWRStrokeIdAndHWEIdMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHWRStrokeIdAndHWEIdMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    sget-object v2, Lcom/sunia/commonv2/exception/NAIException;->NEGATIVE6:Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {v2}, Lcom/sunia/commonv2/exception/NAIException;->getCode()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 8
    sget-object v0, Lcom/sunia/commonv2/exception/NAIException;->NEGATIVE6:Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {p1, v0}, Lcom/sunia/commonv2/bean/NAIResult;->setException(Lcom/sunia/commonv2/exception/NAIException;)V

    goto :goto_0

    .line 9
    :cond_2
    sget-object v2, Lcom/sunia/commonv2/exception/NAIException;->NEGATIVE7:Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {v2}, Lcom/sunia/commonv2/exception/NAIException;->getCode()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 10
    sget-object v0, Lcom/sunia/commonv2/exception/NAIException;->NEGATIVE7:Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {p1, v0}, Lcom/sunia/commonv2/bean/NAIResult;->setException(Lcom/sunia/commonv2/exception/NAIException;)V

    .line 11
    :goto_0
    iget-wide v2, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHandler:J

    invoke-static {v2, v3}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiGetLines(J)J

    move-result-wide v2

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dataPointer="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, v2, v3}, Lcom/sunia/commonv2/bean/NAIResult;->setDataPointer(J)V

    return-object p1

    .line 14
    :cond_3
    new-instance v1, Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngineNative;->getErrorInfo()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/sunia/commonv2/exception/NAIException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sunia/commonv2/bean/NAIResult;->setException(Lcom/sunia/commonv2/exception/NAIException;)V

    return-object p1
.end method

.method public getNAIResult(Ljava/lang/String;I)Lcom/sunia/commonv2/bean/NAIResult;
    .locals 3

    .line 15
    iget-wide v0, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHandler:J

    invoke-static {v0, v1, p1, p2}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiLayoutText(JLjava/lang/String;I)I

    move-result p1

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNaiTransformResult,naiLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NAIEngineNative"

    invoke-static {v0, p2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bf7\u6ce8\u610f\uff0cnai\u8f6c\u6362\u5931\u8d25\uff0cgetErrorInfo()="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngineNative;->getErrorInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_0
    new-instance p2, Lcom/sunia/commonv2/bean/NAIResult;

    invoke-direct {p2}, Lcom/sunia/commonv2/bean/NAIResult;-><init>()V

    .line 19
    invoke-virtual {p2}, Lcom/sunia/commonv2/bean/NAIResult;->getHWRStrokeIdAndHWEIdMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 20
    invoke-virtual {p2}, Lcom/sunia/commonv2/bean/NAIResult;->getHWRStrokeIdAndHWEIdMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHWRStrokeIdAndHWEIdMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-nez p1, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    sget-object v1, Lcom/sunia/commonv2/exception/NAIException;->NEGATIVE6:Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {v1}, Lcom/sunia/commonv2/exception/NAIException;->getCode()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 22
    sget-object p1, Lcom/sunia/commonv2/exception/NAIException;->NEGATIVE6:Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {p2, p1}, Lcom/sunia/commonv2/bean/NAIResult;->setException(Lcom/sunia/commonv2/exception/NAIException;)V

    goto :goto_0

    .line 23
    :cond_2
    sget-object v1, Lcom/sunia/commonv2/exception/NAIException;->NEGATIVE7:Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {v1}, Lcom/sunia/commonv2/exception/NAIException;->getCode()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 24
    sget-object p1, Lcom/sunia/commonv2/exception/NAIException;->NEGATIVE7:Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {p2, p1}, Lcom/sunia/commonv2/bean/NAIResult;->setException(Lcom/sunia/commonv2/exception/NAIException;)V

    .line 25
    :goto_0
    iget-wide p0, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHandler:J

    invoke-static {p0, p1}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiGetLines(J)J

    move-result-wide p0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataPointer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2, p0, p1}, Lcom/sunia/commonv2/bean/NAIResult;->setDataPointer(J)V

    return-object p2

    .line 28
    :cond_3
    new-instance v0, Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngineNative;->getErrorInfo()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/sunia/commonv2/exception/NAIException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/sunia/commonv2/bean/NAIResult;->setException(Lcom/sunia/commonv2/exception/NAIException;)V

    return-object p2
.end method

.method public getNAIResultForGraphic(II)Lcom/sunia/commonv2/bean/NAIResult;
    .locals 3

    iget-wide v0, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHandler:J

    invoke-static {v0, v1, p1, p2}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiLayoutGraphic(JII)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNaiTransformResult,naiLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",textMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",formulaMode="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NAIEngineNative"

    invoke-static {p2, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bf7\u6ce8\u610f\uff0cnai\u8f6c\u6362\u5931\u8d25\uff0cgetErrorInfo()="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngineNative;->getErrorInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lcom/sunia/commonv2/bean/NAIResult;

    invoke-direct {p1}, Lcom/sunia/commonv2/bean/NAIResult;-><init>()V

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/NAIResult;->getHWRStrokeIdAndHWEIdMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/NAIResult;->getHWRStrokeIdAndHWEIdMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHWRStrokeIdAndHWEIdMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sunia/commonv2/exception/NAIException;->NEGATIVE6:Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {v1}, Lcom/sunia/commonv2/exception/NAIException;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/sunia/commonv2/exception/NAIException;->NEGATIVE6:Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {p1, v0}, Lcom/sunia/commonv2/bean/NAIResult;->setException(Lcom/sunia/commonv2/exception/NAIException;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/sunia/commonv2/exception/NAIException;->NEGATIVE7:Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {v1}, Lcom/sunia/commonv2/exception/NAIException;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/sunia/commonv2/exception/NAIException;->NEGATIVE7:Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {p1, v0}, Lcom/sunia/commonv2/bean/NAIResult;->setException(Lcom/sunia/commonv2/exception/NAIException;)V

    :goto_0
    iget-wide v0, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiGetLines(J)J

    move-result-wide v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataPointer="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/sunia/commonv2/bean/NAIResult;->setDataPointer(J)V

    return-object p1

    :cond_3
    new-instance p2, Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngineNative;->getErrorInfo()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0}, Lcom/sunia/commonv2/exception/NAIException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/sunia/commonv2/bean/NAIResult;->setException(Lcom/sunia/commonv2/exception/NAIException;)V

    return-object p1
.end method

.method public naiClearPoints()Z
    .locals 2

    iget-object v0, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHWRStrokeIdAndHWEIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-wide v0, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiClearPoints(J)Z

    move-result p0

    return p0
.end method

.method public naiDestroyEngine()Z
    .locals 2

    const-string v0, "NAIEngineNative"

    const-string v1, "naiDestroyEngine"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiDestroyEngine(J)V

    const/4 p0, 0x1

    return p0
.end method

.method public naiEngineValid()Z
    .locals 2

    iget-wide v0, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiEngineValid(J)Z

    move-result p0

    return p0
.end method

.method public naiRemoveLines([I)Z
    .locals 2

    iget-wide v0, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiRemoveLines(J[I)Z

    move-result p0

    return p0
.end method

.method public naiResetConfig()Z
    .locals 2

    iget-wide v0, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHandler:J

    invoke-static {v0, v1}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiResetConfig(J)Z

    move-result p0

    return p0
.end method

.method public naiSetConfig(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mContext:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sunia/naiv2/sdk/NAIEngineNative;->naiSetAAssetManager(Landroid/content/res/AssetManager;)Z

    iget-wide v0, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHandler:J

    invoke-static {v0, v1, p1}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiSetConfig(JLjava/lang/String;)Z

    return-void
.end method

.method public naiSupportLayout(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHandler:J

    invoke-static {v0, v1, p1, p2}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiSupportLayout(JLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;Z)Z"
        }
    .end annotation

    const-string v0, "start"

    const-string v1, "NAIEngineNative"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sunia/commonv2/util/HWRCommonUtil;->getApplicationContent(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mContext:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sunia/naiv2/sdk/NAIEngineNative;->naiSetAAssetManager(Landroid/content/res/AssetManager;)Z

    iget-wide v2, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHandler:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    invoke-static {v2, v3}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiDestroyEngine(J)V

    iput-wide v4, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHandler:J

    :cond_0
    iget-object p1, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mContext:Landroid/app/Application;

    invoke-static {p1, p2, p2}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiAuthorizeFromFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngineNative;->getErrorInfo()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unable to find corresponding module, authentication failed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "nai\u83b7\u53d6\u6388\u6743\u5931\u8d25\uff0c\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p1, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mContext:Landroid/app/Application;

    invoke-static {p1, p2, p2}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiAuthorizeFromFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string v0, "nai\u83b7\u53d6\u6388\u6743\u91cd\u8bd5\u6210\u529f"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "naiAuthorizeFromFile error="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiGetLastErrorString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r,certifyFilePath="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    invoke-static {p3, p4}, Lcom/sunia/naiv2/local/LocalEngineNative;->naiCreateEngine(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHandler:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "naiCreateEngine result="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHandler:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ",dataDir="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",configName="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",getErrorInfo="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngineNative;->getErrorInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide p1, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHandler:J

    cmp-long p1, p1, v4

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "naiCreateEngine result failed="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/sunia/naiv2/sdk/NAIEngineNative;->mHandler:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    if-eqz p6, :cond_4

    const-string p1, "\u5f3a\u5236\u6e05\u9664\u5b57\u4f531"

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u5f3a\u5236\u6e05\u9664\u5b57\u4f532"

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u5f3a\u5236\u6e05\u9664\u5b57\u4f533"

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u5f3a\u5236\u6e05\u9664\u5b57\u4f534"

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/sunia/naiv2/sdk/NAIEngineNative;->sFontInputStreamList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/sunia/naiv2/sdk/NAIEngineNative;->naiClearFonts()Z

    :cond_4
    sget-object p1, Lcom/sunia/naiv2/sdk/NAIEngineNative;->sFontInputStreamList:Ljava/util/List;

    invoke-static {p1}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/util/List;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u4e0d\u662f\u7b2c\u4e00\u6b21\u542f\u52a8nai\uff0c\u5b57\u4f53\u6587\u4ef6\u5df2\u7ecf\u5b58\u5728\uff0c\u4e4b\u524d\u52a0\u8f7d\u7684\u5b57\u4f53\u6570\u91cf="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/sunia/naiv2/sdk/NAIEngineNative;->sFontInputStreamList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :cond_5
    const-string p1, "\u7b2c\u4e00\u6b21\u521d\u59cb\u5316\u5b57\u4f53"

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p5}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p0, "please add nai font"

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fontInputStreamList.size()="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/InputStream;

    invoke-static {p3}, Lcom/sunia/commonv2/util/HWRUtil;->readAssetsFileToByte(Ljava/io/InputStream;)[B

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/sunia/naiv2/sdk/NAIEngineNative;->naiAddFont([B)Z

    move-result p3

    if-eqz p3, :cond_7

    sget-object p3, Lcom/sunia/naiv2/sdk/NAIEngineNative;->sFontInputStreamList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "naiAddFont is false,getErrorInfo()="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngineNative;->getErrorInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_8
    const-string p0, "\u5b57\u4f53\u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method
