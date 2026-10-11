.class public Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HWRSimpleRecognize"

.field private static volatile sEditor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

.field private static volatile sEditorException:Ljava/lang/Exception;

.field private static volatile sEngine:Lcom/sunia/HTREnginev2/sdk/Engine;

.field private static final sExecutorSingleService:Ljava/util/concurrent/ExecutorService;

.field private static sRecognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

.field private static volatile sTaskId:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sExecutorSingleService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sTaskId:J

    const/4 v0, 0x0

    sput-object v0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sEditorException:Ljava/lang/Exception;

    new-instance v0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$1;

    invoke-direct {v0}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$1;-><init>()V

    sput-object v0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sRecognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/commonv2/callback/CoreCommonCallback;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->lambda$startRecognize$0(Ljava/util/List;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/commonv2/callback/CoreCommonCallback;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$000()Lcom/sunia/HTREnginev2/sdk/editor/Editor;
    .locals 1

    sget-object v0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sEditor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    return-object v0
.end method

.method public static synthetic access$002(Lcom/sunia/HTREnginev2/sdk/editor/Editor;)Lcom/sunia/HTREnginev2/sdk/editor/Editor;
    .locals 0

    sput-object p0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sEditor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    return-object p0
.end method

.method public static synthetic access$100()Lcom/sunia/HTREnginev2/sdk/RecognizeListener;
    .locals 1

    sget-object v0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sRecognizeListener:Lcom/sunia/HTREnginev2/sdk/RecognizeListener;

    return-object v0
.end method

.method public static synthetic access$202(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 0

    sput-object p0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sEditorException:Ljava/lang/Exception;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/sunia/commonv2/bean/ConfigBean;)V
    .locals 0

    invoke-static {p0}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->createEditor(Lcom/sunia/commonv2/bean/ConfigBean;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/sunia/commonv2/bean/ConfigBean;)Z
    .locals 0

    invoke-static {p0}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->updateEditor(Lcom/sunia/commonv2/bean/ConfigBean;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$502(Lcom/sunia/HTREnginev2/sdk/Engine;)Lcom/sunia/HTREnginev2/sdk/Engine;
    .locals 0

    sput-object p0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sEngine:Lcom/sunia/HTREnginev2/sdk/Engine;

    return-object p0
.end method

.method private static createEditor(Lcom/sunia/commonv2/bean/ConfigBean;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createEditor,configBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HWRSimpleRecognize"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$3;

    invoke-direct {v0, p0}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$3;-><init>(Lcom/sunia/commonv2/bean/ConfigBean;)V

    invoke-static {v0}, Lcom/sunia/commonv2/hwr/HWRHelper;->authorize(Lcom/sunia/commonv2/callback/IHWRAuthorResultCallback;)V

    return-void
.end method

.method private static initEditor(Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/commonv2/callback/CoreCommonCallback;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/commonv2/bean/ConfigBean;",
            "Lcom/sunia/commonv2/callback/CoreCommonCallback<",
            "Lcom/sunia/commonv2/bean/HWRSimpleResult;",
            ">;I)Z"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sget-object v2, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sEditor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-instance v4, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$2;

    invoke-direct {v4, v0, p0}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize$2;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sunia/commonv2/bean/ConfigBean;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    const-string v4, "HWRSimpleRecognize"

    monitor-enter v4

    :try_start_0
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "HWRSimpleRecognize"

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sEditorException:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    if-ge p2, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "editor\u521d\u59cb\u5316\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HWRSimpleRecognize"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->release()V

    add-int/2addr p2, v3

    invoke-static {p0, p1, p2}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->initEditor(Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/commonv2/callback/CoreCommonCallback;I)Z

    move-result p0

    return p0

    :cond_1
    sget-object p0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sEditorException:Ljava/lang/Exception;

    invoke-interface {p1, p0}, Lcom/sunia/commonv2/callback/CoreCommonCallback;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_2
    sget-object p0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sEditor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->obtainParams()Lcom/sunia/HTREnginev2/sdk/Params;

    move-result-object p0

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/sdk/Params;->getMode()I

    move-result p0

    sget-object p2, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->MODE_ECR:Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->getValue()I

    move-result p2

    if-eq p0, p2, :cond_3

    const-string p0, "HWRSimpleRecognize"

    const-string p2, "\u8bc6\u522b\u6a21\u5f0f\u9700\u8981RecognitionMode.MODE_ECR"

    invoke-static {p0, p2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p2, "Recognition Mode is not RecognitionMode.MODE_ECR"

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/sunia/commonv2/callback/CoreCommonCallback;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    const-string p0, "HWRSimpleRecognize"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "editor\u51c6\u5907\u5b8c\u6210:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4

    const-string p2, "createEditor"

    goto :goto_1

    :cond_4
    const-string p2, "updateEditor"

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static synthetic lambda$startRecognize$0(Ljava/util/List;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/commonv2/callback/CoreCommonCallback;Ljava/util/List;)V
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "\u5f15\u64ce\u521d\u59cb\u5316\u5931\u8d25\uff0c\u5ffd\u7565\u672c\u6b21\u4efb\u52a1"

    const-string v3, "\u4efb\u52a1\u7ed3\u675f"

    const-string v4, "\u6570\u636e\u5206\u6790\u7ed3\u675f"

    const-string v5, "\u4fdd\u5b58\u70b9\u4f4d\u5730\u5740="

    const-string v6, "temConfigBean="

    const-string v7, "\u6570\u636e\u5206\u6790\u5f00\u59cb\uff1a\u4efb\u52a1id="

    const-string v8, "HWRSimpleRecognize"

    sget-wide v9, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sTaskId:J

    const-wide/16 v11, 0x1

    add-long/2addr v11, v9

    sput-wide v11, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sTaskId:J

    const-string v11, ""

    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u4efb\u52a1\u5f00\u59cb"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sunia/HTREnginev2/utils/LogUtil;->canLogD()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v12

    move-object/from16 v13, p0

    invoke-static {v12, v13}, Lcom/sunia/commonv2/util/HWRCommonUtil;->saveTestToolPoints(Lcom/sunia/commonv2/module/ICommonModule;Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u4fdd\u5b58\u70b9\u4f4d\u5730\u5740\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v12, 0x0

    invoke-static {v1, v2, v12}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->initEditor(Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/commonv2/callback/CoreCommonCallback;I)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-static {v8, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/lang/Exception;

    invoke-direct {v12, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v12}, Lcom/sunia/commonv2/callback/CoreCommonCallback;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    invoke-static/range {p3 .. p3}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/util/List;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v13, "tempRecognizePathList\u4e3a\u7a7a\uff0c\u5ffd\u7565\u672c\u6b21\u4efb\u52a1"

    if-eqz v0, :cond_2

    :try_start_2
    invoke-static {v8, v13}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    const-string v12, "\u70b9\u4f4d\u6570\u636e\u4e3a\u7a7a1\uff0c\u5ffd\u7565\u672c\u6b21\u4efb\u52a1"

    invoke-direct {v0, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lcom/sunia/commonv2/callback/CoreCommonCallback;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-virtual {v14}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v14

    invoke-static {v14}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/util/List;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v12, 0x1

    :cond_4
    if-nez v12, :cond_5

    invoke-static {v8, v13}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    const-string v12, "\u70b9\u4f4d\u6570\u636e\u4e3a\u7a7a2\uff0c\u5ffd\u7565\u672c\u6b21\u4efb\u52a1"

    invoke-direct {v0, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lcom/sunia/commonv2/callback/CoreCommonCallback;->onError(Ljava/lang/Throwable;)V

    :cond_5
    sget-object v0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sEditor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    invoke-interface {v0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->clearContent()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    sget-object v13, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sEditor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    invoke-virtual {v12}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->addStrokePoints(Ljava/util/List;)I

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u4e66\u5199\u7b14\u753b strokeID: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, -0x1

    if-ne v13, v14, :cond_6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u6dfb\u52a0\u7b14\u753b\u5931\u8d25 strokeID: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",path.getPoints().size()="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->setStrokeId(J)V

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sEditor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    const/4 v12, 0x1

    invoke-interface {v0, v12}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->doPageRecognize(Z)V

    sget-object v0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sEditor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    invoke-interface {v0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->getContent()Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u4fdd\u5b58\u8bc6\u522b\u7ed3\u679c\uff0c\u5904\u7406\u524d\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRSimpleResultUtil;->getResult(Ljava/lang/String;)Lcom/sunia/commonv2/bean/HWRSimpleResult;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u4fdd\u5b58\u8bc6\u522b\u7ed3\u679c\uff0c\u5904\u7406\u540e\uff1a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v13, Lcom/google/gson/Gson;

    invoke-direct {v13}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v13, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lcom/sunia/commonv2/callback/CoreCommonCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u4efb\u52a1\u5f02\u5e38:tempTaskId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ",temConfigBean="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static/range {p2 .. p2}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v0, "callback\u4e3a\u7a7a\uff0c\u5ffd\u7565\u56de\u8c03\u901a\u77e5"

    invoke-static {v8, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-interface {v2, v0}, Lcom/sunia/commonv2/callback/CoreCommonCallback;->onError(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static release()V
    .locals 2

    const-string v0, "HWRSimpleRecognize"

    const-string v1, "release Editor an Engine"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sEditor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    sget-object v1, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sEngine:Lcom/sunia/HTREnginev2/sdk/Engine;

    invoke-static {v0, v1}, Lcom/sunia/commonv2/hwr/HWRHelper;->release(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Lcom/sunia/HTREnginev2/sdk/Engine;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sEditor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    sput-object v0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sEngine:Lcom/sunia/HTREnginev2/sdk/Engine;

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public static startRecognize(Lcom/sunia/commonv2/bean/ConfigBean;Ljava/util/List;Lcom/sunia/commonv2/callback/CoreCommonCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/commonv2/bean/ConfigBean;",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;",
            "Lcom/sunia/commonv2/callback/CoreCommonCallback<",
            "Lcom/sunia/commonv2/bean/HWRSimpleResult;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sunia/commonv2/bean/ConfigBean;

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/ConfigBean;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/ConfigBean;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/ConfigBean;->getShowName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/sunia/commonv2/bean/ConfigBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->clone()Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sExecutorSingleService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sunia/HTREnginev2/efh;

    invoke-direct {v2, p1, v0, p2, p0}, Lcom/sunia/HTREnginev2/efh;-><init>(Ljava/util/List;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/commonv2/callback/CoreCommonCallback;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static updateEditor(Lcom/sunia/commonv2/bean/ConfigBean;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEditor,configBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HWRSimpleRecognize"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->sEditor:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    invoke-static {v0, p0}, Lcom/sunia/commonv2/hwr/HWRHelper;->updateEditor(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Lcom/sunia/commonv2/bean/ConfigBean;)Z

    move-result p0

    return p0
.end method
