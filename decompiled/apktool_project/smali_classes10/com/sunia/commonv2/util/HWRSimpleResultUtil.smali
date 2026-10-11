.class public Lcom/sunia/commonv2/util/HWRSimpleResultUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMathVerticalResult(Lcom/sunia/commonv2/bean/PartiBean;Lcom/sunia/commonv2/bean/HWRSimpleResult;)V
    .locals 6

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/PartiBean;->getGroupcandidates()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/PartiBean;->getGroupCorrectRates()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;

    invoke-direct {v3}, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;-><init>()V

    invoke-virtual {v3, v2}, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;->setCandidate(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;->setCorrectRate(D)V

    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/HWRSimpleResult;->getSingleResultList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getResult(Ljava/lang/String;)Lcom/sunia/commonv2/bean/HWRSimpleResult;
    .locals 7

    const-string v0, "HWRSimpleResult"

    :try_start_0
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/sunia/commonv2/bean/PartiBean;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/commonv2/bean/PartiBean;

    new-instance v3, Lcom/sunia/commonv2/bean/HWRSimpleResult;

    invoke-virtual {v2}, Lcom/sunia/commonv2/bean/PartiBean;->getResultCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Lcom/sunia/commonv2/bean/PartiBean;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/sunia/commonv2/bean/HWRSimpleResult;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    sget-object p0, Lcom/sunia/commonv2/util/HWRModelPredictionUtil;->MATH_VERTICAL:Lcom/sunia/commonv2/bean/ConfigBean;

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/ConfigBean;->getShowName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Lcom/sunia/commonv2/bean/PartiBean;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v2, v3}, Lcom/sunia/commonv2/util/HWRSimpleResultUtil;->getMathVerticalResult(Lcom/sunia/commonv2/bean/PartiBean;Lcom/sunia/commonv2/bean/HWRSimpleResult;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/sunia/commonv2/bean/PartiBean;->getWords()Ljava/util/List;

    move-result-object p0

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/commonv2/bean/PartieWords;

    invoke-virtual {v4}, Lcom/sunia/commonv2/bean/PartieWords;->getCandidates()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Lcom/sunia/commonv2/util/HWRSimpleResultUtil;->initSingleResultList(Lcom/sunia/commonv2/bean/HWRSimpleResult;I)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/commonv2/bean/PartieWords;

    invoke-virtual {v5}, Lcom/sunia/commonv2/bean/PartieWords;->getCandidates()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sunia/commonv2/bean/PartieWords;->getCorrect_rates()Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v6, v5}, Lcom/sunia/commonv2/util/HWRSimpleResultUtil;->mergeResult(Lcom/sunia/commonv2/bean/HWRSimpleResult;Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/sunia/commonv2/util/HWRSimpleResultUtil;->setCorrectRate(Lcom/sunia/commonv2/bean/HWRSimpleResult;)V

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hwrSimpleResult="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSingleResultList="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sunia/commonv2/bean/HWRSimpleResult;->getSingleResultList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static initSingleResultList(Lcom/sunia/commonv2/bean/HWRSimpleResult;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/HWRSimpleResult;->getSingleResultList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;

    invoke-direct {v2}, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static mergeResult(Lcom/sunia/commonv2/bean/HWRSimpleResult;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/commonv2/bean/HWRSimpleResult;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/HWRSimpleResult;->getSingleResultList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;->getCandidate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;->setCandidate(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;->getCorrectRate()D

    move-result-wide v4

    add-double/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;->setCorrectRate(D)V

    invoke-virtual {v1}, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;->getValidityCorrectRates()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;->setValidityCorrectRates(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static setCorrectRate(Lcom/sunia/commonv2/bean/HWRSimpleResult;)V
    .locals 6

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/HWRSimpleResult;->getSingleResultList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;

    invoke-virtual {v0}, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;->getValidityCorrectRates()I

    move-result v1

    int-to-double v1, v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    invoke-virtual {v0, v3, v4}, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;->setCorrectRate(D)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;->getCorrectRate()D

    move-result-wide v3

    div-double/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/sunia/commonv2/bean/HWRSimpleResult$SingleResult;->setCorrectRate(D)V

    goto :goto_0

    :cond_1
    return-void
.end method
