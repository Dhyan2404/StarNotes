.class public Lcom/sunia/HTREnginev2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 10

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineConstant$Constant;->GSON:Lcom/google/gson/Gson;

    new-instance v1, Lcom/sunia/HTREnginev2/d$b;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/d$b;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/f;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/util/List;)Z

    move-result v0

    const-string v1, "BBKHelper"

    if-eqz v0, :cond_0

    const-string p0, "handwritingInfoList is empty\uff0c\u5ffd\u7565\u5bfc\u51fa\u70b9\u4f4d"

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/f;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/f$b;

    new-instance v3, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/f$b;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/HTREnginev2/f$a;

    new-instance v5, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/f$a;->b()F

    move-result v6

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/f$a;->c()F

    move-result v7

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/f$a;->a()I

    move-result v4

    invoke-static {v4}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->androidAction2HWRAction(I)I

    move-result v4

    int-to-long v8, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;-><init>(FFJ)V

    invoke-virtual {v3, v5}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->addPoint(Lcom/sunia/HTREnginev2/sdk/RecognizePoint;)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRCommonUtil;->saveTestToolPoints(Ljava/util/List;)Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 9

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineConstant$Constant;->GSON:Lcom/google/gson/Gson;

    new-instance v1, Lcom/sunia/HTREnginev2/d$a;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/d$a;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/e;

    new-instance v2, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-direct {v2}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/e;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/e$a;

    new-instance v4, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/e$a;->b()F

    move-result v5

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/e$a;->c()F

    move-result v6

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/e$a;->a()I

    move-result v3

    invoke-static {v3}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->androidAction2HWRAction(I)I

    move-result v3

    int-to-long v7, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;-><init>(FFJ)V

    invoke-virtual {v2, v4}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->addPoint(Lcom/sunia/HTREnginev2/sdk/RecognizePoint;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BBKHelper"

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRCommonUtil;->saveTestToolPoints(Ljava/util/List;)Ljava/lang/String;

    return-void
.end method
