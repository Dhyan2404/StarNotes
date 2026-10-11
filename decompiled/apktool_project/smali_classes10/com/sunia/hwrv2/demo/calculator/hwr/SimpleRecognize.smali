.class public Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleRecognize"

.field private static editor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

.field private static sApplication:Landroid/app/Application;

.field private static sHandler:Landroid/os/Handler;

.field private static final sRecognizeCountInt:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->sRecognizeCountInt:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sunia/commonv2/callback/HWRCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->lambda$startRecognize$1(Lcom/sunia/commonv2/callback/HWRCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic b(Lcom/sunia/commonv2/callback/HWRCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->lambda$startRecognize$3(Lcom/sunia/commonv2/callback/HWRCallback;)V

    return-void
.end method

.method public static synthetic c(Lcom/sunia/commonv2/callback/HWRCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->lambda$startRecognize$2(Lcom/sunia/commonv2/callback/HWRCallback;)V

    return-void
.end method

.method public static calculate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->editor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/o1;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object v0, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->editor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    invoke-interface {v0, p0}, Lcom/sunia/HTREnginev2/sdk/editor/CalculateEditor;->calculate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/sunia/commonv2/callback/HWRCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->lambda$startRecognize$0(Lcom/sunia/commonv2/callback/HWRCallback;)V

    return-void
.end method

.method public static synthetic e(Lcom/sunia/commonv2/callback/HWRCallback;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->lambda$startRecognize$5(Lcom/sunia/commonv2/callback/HWRCallback;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static enableMathDotConvertMultiplication(Z)V
    .locals 4

    sget-object v0, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->editor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/o1;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->editor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    invoke-interface {v0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->obtainParams()Lcom/sunia/HTREnginev2/sdk/Params;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string v2, "true"

    goto :goto_0

    :cond_1
    const-string v2, "false"

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "enableMathDotConvertMultiplication=%s;"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sunia/HTREnginev2/sdk/Params;->setKeyValuesConfig(Ljava/lang/String;)V

    invoke-interface {v0, p0}, Lcom/sunia/HTREnginev2/sdk/Params;->setResultCalculate(Z)V

    sget-object p0, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->editor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    invoke-interface {p0, v0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->updateParams(Lcom/sunia/HTREnginev2/sdk/Params;)Z

    return-void
.end method

.method public static synthetic f(Lcom/sunia/commonv2/callback/HWRCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->lambda$startRecognize$4(Lcom/sunia/commonv2/callback/HWRCallback;)V

    return-void
.end method

.method public static synthetic g(Lcom/sunia/commonv2/callback/HWRCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->lambda$startRecognize$6(Lcom/sunia/commonv2/callback/HWRCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static getEditor()Lcom/sunia/HTREnginev2/sdk/editor/Editor;
    .locals 1

    sget-object v0, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->editor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    return-object v0
.end method

.method public static getResult(Ljava/lang/String;F)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "groupcandidates"

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "words"

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "candidates"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_0
    const-string v3, "correct_rates"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_2

    if-ge v4, v2, :cond_2

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v5

    float-to-double v7, p1

    cmpl-double v3, v5, v7

    if-ltz v3, :cond_1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SimpleRecognize"

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-ge p0, v2, :cond_3

    const-string p0, ""

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method public static synthetic h(ILcom/sunia/commonv2/callback/HWRCallback;Lcom/sunia/HTREnginev2/g;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->lambda$startRecognize$7(ILcom/sunia/commonv2/callback/HWRCallback;Lcom/sunia/HTREnginev2/g;Ljava/util/List;)V

    return-void
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1

    sput-object p0, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->sApplication:Landroid/app/Application;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method private static synthetic lambda$startRecognize$0(Lcom/sunia/commonv2/callback/HWRCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lcom/sunia/commonv2/callback/HWRCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$startRecognize$1(Lcom/sunia/commonv2/callback/HWRCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/sunia/commonv2/callback/HWRCallback;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic lambda$startRecognize$2(Lcom/sunia/commonv2/callback/HWRCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lcom/sunia/commonv2/callback/HWRCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$startRecognize$3(Lcom/sunia/commonv2/callback/HWRCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lcom/sunia/commonv2/callback/HWRCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$startRecognize$4(Lcom/sunia/commonv2/callback/HWRCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lcom/sunia/commonv2/callback/HWRCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$startRecognize$5(Lcom/sunia/commonv2/callback/HWRCallback;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Lcom/sunia/commonv2/callback/HWRCallback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$startRecognize$6(Lcom/sunia/commonv2/callback/HWRCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/sunia/commonv2/callback/HWRCallback;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic lambda$startRecognize$7(ILcom/sunia/commonv2/callback/HWRCallback;Lcom/sunia/HTREnginev2/g;Ljava/util/List;)V
    .locals 3

    const-string v0, "SimpleRecognize"

    :try_start_0
    sget-object v1, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->editor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->obtainParams()Lcom/sunia/HTREnginev2/sdk/Params;

    move-result-object v1

    invoke-interface {v1}, Lcom/sunia/HTREnginev2/sdk/Params;->getMode()I

    move-result v1

    sget-object v2, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->MODE_ECR:Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->sRecognizeCountInt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v1, p0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u4efb\u52a1id\u5df2\u7ecf\u53d8\u66f4\uff0c\u5ffd\u7565\u4efb\u52a1\uff0c\u65e7\u7684\u4efb\u52a1id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\uff0c\u5f53\u524d\u6700\u65b0\u7684\u4efb\u52a1id="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->sHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sunia/HTREnginev2/psm;

    invoke-direct {p2, p1}, Lcom/sunia/HTREnginev2/psm;-><init>(Lcom/sunia/commonv2/callback/HWRCallback;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/g;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->sHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sunia/HTREnginev2/qsm;

    invoke-direct {p2, p1}, Lcom/sunia/HTREnginev2/qsm;-><init>(Lcom/sunia/commonv2/callback/HWRCallback;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-static {p3}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "\u83b7\u53d6\u5230\u7684\u4e66\u5199\u6570\u636e\u4e3a\u7a7a\uff0c\u5ffd\u7565\u8bc6\u522b"

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->sHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sunia/HTREnginev2/rsm;

    invoke-direct {p2, p1}, Lcom/sunia/HTREnginev2/rsm;-><init>(Lcom/sunia/commonv2/callback/HWRCallback;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    sget-object p0, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->editor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->clearContent()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object p3

    sget-object v1, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->editor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    invoke-interface {v1, p3}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->addStrokePoints(Ljava/util/List;)I

    move-result p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e66\u5199\u7b14\u753b strokeID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v1, p3

    invoke-virtual {p2, v1, v2}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->setStrokeId(J)V

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->editor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    const/4 p2, 0x1

    invoke-interface {p0, p2}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->doPageRecognize(Z)V

    sget-object p0, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->editor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->waitForIdle()V

    sget-object p0, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->editor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->getContent()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u8bc6\u522b\u7ed3\u675f,content="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->getResult(Ljava/lang/String;F)Ljava/util/List;

    move-result-object p2

    sget-object p3, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sunia/HTREnginev2/ssm;

    invoke-direct {v1, p1, p0, p2}, Lcom/sunia/HTREnginev2/ssm;-><init>(Lcom/sunia/commonv2/callback/HWRCallback;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    const-string p0, "\u8bc6\u522b\u6a21\u5f0f\u9700\u8981RecognitionMode.MODE_ECR"

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/Exception;

    const-string p2, "Recognition Mode is not RecognitionMode.MODE_ECR"

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string p0, "editor==null"

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/Exception;

    const-string p2, "Engine is not available"

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u8bc6\u522b\u5f02\u5e38,Exception="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->sHandler:Landroid/os/Handler;

    new-instance p3, Lcom/sunia/HTREnginev2/tsm;

    invoke-direct {p3, p1, p0}, Lcom/sunia/HTREnginev2/tsm;-><init>(Lcom/sunia/commonv2/callback/HWRCallback;Ljava/lang/Exception;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public static setCalculateParams(Ljava/lang/String;II)V
    .locals 2

    sget-object v0, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->editor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/o1;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->editor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    invoke-interface {v0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->obtainParams()Lcom/sunia/HTREnginev2/sdk/Params;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sunia/HTREnginev2/sdk/Params;->setResultCalculate(Z)V

    invoke-interface {v0}, Lcom/sunia/HTREnginev2/sdk/Params;->getCalculateParams()Lcom/sunia/HTREnginev2/sdk/CalculateParams;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/sunia/HTREnginev2/sdk/CalculateParams;->setMathEngineRadianOrDegree(Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lcom/sunia/HTREnginev2/sdk/CalculateParams;->setMathResultRoundingMode(I)V

    invoke-interface {v1, p2}, Lcom/sunia/HTREnginev2/sdk/CalculateParams;->setMathResultScale(I)V

    sget-object p0, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->editor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    invoke-interface {p0, v0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->updateParams(Lcom/sunia/HTREnginev2/sdk/Params;)Z

    return-void
.end method

.method public static setEditor(Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V
    .locals 0

    sput-object p0, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->editor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    return-void
.end method

.method public static startRecognize(Ljava/util/List;Lcom/sunia/HTREnginev2/g;Lcom/sunia/commonv2/callback/HWRCallback;Ljava/util/concurrent/ExecutorService;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;",
            "Lcom/sunia/HTREnginev2/g;",
            "Lcom/sunia/commonv2/callback/HWRCallback;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p2

    sget-object v0, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->sRecognizeCountInt:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/util/List;)Z

    move-result v3

    const-string v4, "SimpleRecognize"

    if-eqz v3, :cond_0

    const-string v0, "\u83b7\u53d6\u5230\u7684\u4e66\u5199\u6570\u636e\u4e3a\u7a7a\uff0c\u5ffd\u7565\u8bc6\u522b"

    invoke-static {v4, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->sHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sunia/HTREnginev2/usm;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/usm;-><init>(Lcom/sunia/commonv2/callback/HWRCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sunia/HTREnginev2/p1;

    new-instance v7, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-direct {v7}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;-><init>()V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/sunia/HTREnginev2/p1;->getPoints()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sunia/HTREnginev2/s1;

    new-instance v10, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    invoke-virtual {v9}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v11

    invoke-virtual {v9}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v12

    invoke-virtual {v9}, Lcom/sunia/HTREnginev2/s1;->a()J

    move-result-wide v13

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;-><init>(FFJ)V

    if-nez v8, :cond_2

    invoke-virtual {v10}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->down()Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v2

    if-ne v8, v9, :cond_3

    invoke-virtual {v10}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->up()Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->move()Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    :goto_1
    invoke-virtual {v7, v10}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->addPoint(Lcom/sunia/HTREnginev2/sdk/RecognizePoint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/sunia/HTREnginev2/vsm;

    move-object/from16 v4, p1

    invoke-direct {v2, v0, v1, v4, v3}, Lcom/sunia/HTREnginev2/vsm;-><init>(ILcom/sunia/commonv2/callback/HWRCallback;Lcom/sunia/HTREnginev2/g;Ljava/util/List;)V

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6784\u5efa\u8bc6\u522b\u6570\u636e\u5f02\u5e38,Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sunia/HTREnginev2/wsm;

    invoke-direct {v3, v1, v0}, Lcom/sunia/HTREnginev2/wsm;-><init>(Lcom/sunia/commonv2/callback/HWRCallback;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
