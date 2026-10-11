.class public Lcom/sunia/commonv2/hwr/HWRSimpleRecognizeV2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HWRSimpleRecognizeV2"

.field private static final sExecutorSingleService:Ljava/util/concurrent/ExecutorService;

.field private static final sRecognizeCountInt:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognizeV2;->sExecutorSingleService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognizeV2;->sRecognizeCountInt:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/util/List;Lcom/sunia/commonv2/callback/CoreCommonCallback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognizeV2;->lambda$startRecognize$0(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/util/List;Lcom/sunia/commonv2/callback/CoreCommonCallback;)V

    return-void
.end method

.method private static synthetic lambda$startRecognize$0(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/util/List;Lcom/sunia/commonv2/callback/CoreCommonCallback;)V
    .locals 4

    :try_start_0
    invoke-interface {p0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->obtainParams()Lcom/sunia/HTREnginev2/sdk/Params;

    move-result-object v0

    invoke-interface {v0}, Lcom/sunia/HTREnginev2/sdk/Params;->getMode()I

    move-result v0

    sget-object v1, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->MODE_ECR:Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->getValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "HWRSimpleRecognizeV2"

    if-ne v0, v1, :cond_3

    :try_start_1
    sget-object v0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognizeV2;->sRecognizeCountInt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_2

    invoke-static {p2}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "\u83b7\u53d6\u5230\u7684\u4e66\u5199\u6570\u636e\u4e3a\u7a7a\uff0c\u5ffd\u7565\u8bc6\u522b"

    invoke-static {v2, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Lcom/sunia/commonv2/callback/CoreCommonCallback;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->clearContent()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->addStrokePoints(Ljava/util/List;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e66\u5199\u7b14\u753b strokeID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->setStrokeId(J)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->doPageRecognize(Z)V

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->waitForIdle()V

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->getContent()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u8bc6\u522b\u7ed3\u675f,content="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class p2, Lcom/sunia/commonv2/bean/PartiBean;

    invoke-virtual {p1, p0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/commonv2/bean/PartiBean;

    invoke-interface {p3, p0}, Lcom/sunia/commonv2/callback/CoreCommonCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u4efb\u52a1id\u5df2\u7ecf\u53d8\u66f4\uff0c\u5ffd\u7565\u4efb\u52a1\uff0c\u65e7\u7684\u4efb\u52a1id="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u5f53\u524d\u6700\u65b0\u7684\u4efb\u52a1id="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Recognize that the task id has changed"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string p0, "\u8bc6\u522b\u6a21\u5f0f\u9700\u8981RecognitionMode.MODE_ECR"

    invoke-static {v2, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Recognition Mode is not RecognitionMode.MODE_ECR"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    invoke-interface {p3, p0}, Lcom/sunia/commonv2/callback/CoreCommonCallback;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static startRecognize(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Ljava/util/List;Lcom/sunia/commonv2/callback/CoreCommonCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/sdk/editor/Editor;",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;",
            "Lcom/sunia/commonv2/callback/CoreCommonCallback<",
            "Lcom/sunia/commonv2/bean/PartiBean;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognizeV2;->sRecognizeCountInt:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    sget-object v1, Lcom/sunia/commonv2/hwr/HWRSimpleRecognizeV2;->sExecutorSingleService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sunia/HTREnginev2/ffh;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/sunia/HTREnginev2/ffh;-><init>(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/util/List;Lcom/sunia/commonv2/callback/CoreCommonCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
