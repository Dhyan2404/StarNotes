.class public Lcom/sunia/graphv2/sdk/GraphEngineManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GraphEngineManager"

.field private static instance:Lcom/sunia/graphv2/sdk/GraphEngineManager;


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

.field private localGraphListener:Lcom/sunia/graphv2/local/LocalGraphListenerImpl;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;

    invoke-direct {v0}, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;-><init>()V

    iput-object v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->localGraphListener:Lcom/sunia/graphv2/local/LocalGraphListenerImpl;

    const-string v0, "GraphEngineManager"

    const-string v1, "GraphEngineManager init"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sunia/graphv2/sdk/GraphEngineImpl;

    invoke-direct {v0}, Lcom/sunia/graphv2/sdk/GraphEngineImpl;-><init>()V

    iput-object v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    return-void
.end method

.method public static synthetic a(Lcom/sunia/graphv2/sdk/GraphEngineManager;Landroid/content/Context;Ljava/lang/String;Lcom/sunia/graphv2/sdk/GraphCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sunia/graphv2/sdk/GraphEngineManager;->lambda$start$0(Landroid/content/Context;Ljava/lang/String;Lcom/sunia/graphv2/sdk/GraphCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addTask(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/sunia/graphv2/sdk/GraphEngineManager$1;

    invoke-direct {v2, p0, p1}, Lcom/sunia/graphv2/sdk/GraphEngineManager$1;-><init>(Lcom/sunia/graphv2/sdk/GraphEngineManager;Ljava/lang/Runnable;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getInstance()Lcom/sunia/graphv2/sdk/GraphEngineManager;
    .locals 2

    sget-object v0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->instance:Lcom/sunia/graphv2/sdk/GraphEngineManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sunia/graphv2/sdk/GraphEngineManager;->instance:Lcom/sunia/graphv2/sdk/GraphEngineManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sunia/graphv2/sdk/GraphEngineManager;

    invoke-direct {v1}, Lcom/sunia/graphv2/sdk/GraphEngineManager;-><init>()V

    sput-object v1, Lcom/sunia/graphv2/sdk/GraphEngineManager;->instance:Lcom/sunia/graphv2/sdk/GraphEngineManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->instance:Lcom/sunia/graphv2/sdk/GraphEngineManager;

    return-object v0
.end method

.method private synthetic lambda$start$0(Landroid/content/Context;Ljava/lang/String;Lcom/sunia/graphv2/sdk/GraphCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "GraphEngineManager"

    :try_start_0
    const-string v1, "enter start"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {v1, p1, p2}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphAuthorizeFromFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    iget-object v1, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->localGraphListener:Lcom/sunia/graphv2/local/LocalGraphListenerImpl;

    invoke-interface {p2, v1, v1}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphSetCallback(Lcom/sunia/graphv2/local/LocalGraphListener;Lcom/sunia/graphv2/local/LocalGraphListener;)Z

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallback result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->localGraphListener:Lcom/sunia/graphv2/local/LocalGraphListenerImpl;

    invoke-virtual {p2, p3}, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->setCallback(Lcom/sunia/graphv2/sdk/GraphCallback;)V

    iget-object p2, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p2, p4, p5}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphCreateEngine(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-interface {p2, p1}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphSetDPI(F)Z

    invoke-interface {p3}, Lcom/sunia/graphv2/sdk/GraphCallback;->onLoad()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "\u56fe\u6587\u5f15\u64ce\u521b\u5efa\u5931\u8d25"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "\u8bbe\u7f6e\u56de\u8c03\u5931\u8d25"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "\u9274\u6743\u5931\u8d25"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->localGraphListener:Lcom/sunia/graphv2/local/LocalGraphListenerImpl;

    if-nez p0, :cond_3

    const-string p0, "localGraphListener is null"

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addGraph(Lcom/sunia/commonv2/bean/graph/elements/graph/GraphRequest;)Z
    .locals 2

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineConstant$Constant;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6dfb\u52a0\u56fe\u5f62="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphEngineManager"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0, p1}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphAddNode(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addLine(Lcom/sunia/commonv2/bean/graph/elements/line/LineRequest;)Z
    .locals 2

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineConstant$Constant;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6dfb\u52a0\u7ebf\u6bb5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphEngineManager"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0, p1}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphAddNode(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addRecognizePath(Lcom/sunia/HTREnginev2/sdk/RecognizePath;)Z
    .locals 7

    invoke-static {p1}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [D

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [D

    move v3, v1

    :goto_0
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    iget v5, v4, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    float-to-double v5, v5

    aput-wide v5, v0, v3

    iget v4, v4, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    float-to-double v4, v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0, v0, v2}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphAddLine([D[D)I

    move-result p0

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRUtil;->isInvalidData(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public addUserProperty(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/sunia/commonv2/util/HWRUtil;->isInvalidData(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0, p1, p2, p3}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphSetUserProperty(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphClear()Z

    return-void
.end method

.method public getRecognizePathList()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {v1}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphGetLinesID()[I

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lineIdArray="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GraphEngineManager"

    invoke-static {v3, v2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    aget v4, v1, v3

    iget-object v5, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {v5, v4}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphGetLinePointsCount(I)I

    move-result v5

    invoke-static {v5}, Lcom/sunia/commonv2/util/HWRUtil;->isInvalidData(I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    new-array v6, v5, [D

    new-array v7, v5, [D

    iget-object v8, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {v8, v4, v6, v7}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphGetLinePoints(I[D[D)Z

    new-instance v4, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v2

    :goto_1
    if-ge v8, v5, :cond_1

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v9

    new-instance v10, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    aget-wide v11, v6, v8

    double-to-float v11, v11

    aget-wide v12, v7, v8

    double-to-float v12, v12

    const-wide/16 v13, 0x0

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;-><init>(FFJ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public graphCanPasteNodes()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphCanPasteNodes()Z

    move-result p0

    return p0
.end method

.method public graphCanRedo()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphCanRedo()Z

    move-result p0

    return p0
.end method

.method public graphCanUndo()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphCanUndo()Z

    move-result p0

    return p0
.end method

.method public graphConvertNodeTo(II)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0, p1, p2}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphConvertNodeTo(II)Z

    move-result p0

    return p0
.end method

.method public graphCopyNodes(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/y4h;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/y4h;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0, p1}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphCopyNodes([I)Z

    move-result p0

    return p0
.end method

.method public graphCutNodes(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sunia/HTREnginev2/y4h;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/y4h;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0, p1}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphCutNodes([I)Z

    move-result p0

    return p0
.end method

.method public graphFindNodeFromPoint(DD)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphFindNodeFromPoint(DD)I

    move-result p0

    return p0
.end method

.method public graphGetLineCount()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphGetLineCount()I

    move-result p0

    return p0
.end method

.method public graphGetNodeBoundingBox(I)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0, p1}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphGetNodeBoundingBox(I)[D

    move-result-object p0

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRUtil;->getRectF([D)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public graphGetNodeKind(I)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0, p1}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphGetNodeKind(I)I

    move-result p0

    return p0
.end method

.method public graphGetNodePropertyForGraph(I)Lcom/sunia/commonv2/bean/graph/elements/graph/GraphResponse;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "graphGetNodePropertyForGraph nodeID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphEngineManager"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0, p1}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphGetNodeProperty(I)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    sget-object p1, Lcom/sunia/commonv2/global/HWREngineConstant$Constant;->GSON:Lcom/google/gson/Gson;

    const-class v0, Lcom/sunia/commonv2/bean/graph/elements/graph/GraphResponse;

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/commonv2/bean/graph/elements/graph/GraphResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphGetNodePropertyForGraph="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public graphGetNodePropertyForLine(I)Lcom/sunia/commonv2/bean/graph/elements/line/LineResponse;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "graphGetNodePropertyForLine nodeID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphEngineManager"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0, p1}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphGetNodeProperty(I)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    sget-object p1, Lcom/sunia/commonv2/global/HWREngineConstant$Constant;->GSON:Lcom/google/gson/Gson;

    const-class v0, Lcom/sunia/commonv2/bean/graph/elements/line/LineResponse;

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/commonv2/bean/graph/elements/line/LineResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphGetNodePropertyForLine="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public graphGetNodePropertyForSubTable(I)Lcom/sunia/commonv2/bean/graph/elements/table/ChildrenTable;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "graphGetNodePropertyForSubTable nodeID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphEngineManager"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0, p1}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphGetNodeProperty(I)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    sget-object p1, Lcom/sunia/commonv2/global/HWREngineConstant$Constant;->GSON:Lcom/google/gson/Gson;

    const-class v0, Lcom/sunia/commonv2/bean/graph/elements/table/ChildrenTable;

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/commonv2/bean/graph/elements/table/ChildrenTable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphGetNodePropertyForSubTable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public graphPasteNodes(DD)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphPasteNodes(DD)Z

    move-result p0

    return p0
.end method

.method public graphRecognize()Z
    .locals 1

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphRecognize(I)Z

    move-result p0

    return p0
.end method

.method public graphRedo()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphRedo()Z

    move-result p0

    return p0
.end method

.method public varargs graphRemoveNodes([I)Z
    .locals 1

    invoke-static {p1}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0, p1}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphRemoveNodes([I)Z

    move-result p0

    return p0
.end method

.method public varargs graphRemoveNodesSubItem([I)Z
    .locals 4

    invoke-static {p1}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    aget v2, p1, v1

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphRemoveNode(II)Z

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public graphScaleTo(ILandroid/graphics/RectF;)Z
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "graphScaleTo nodeID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",rectF="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphEngineManager"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    iget p0, p2, Landroid/graphics/RectF;->left:F

    float-to-double v4, p0

    iget p0, p2, Landroid/graphics/RectF;->top:F

    float-to-double v6, p0

    iget p0, p2, Landroid/graphics/RectF;->right:F

    float-to-double v8, p0

    iget p0, p2, Landroid/graphics/RectF;->bottom:F

    float-to-double v10, p0

    move v3, p1

    invoke-interface/range {v2 .. v11}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphScaleTo(IDDDD)Z

    move-result p0

    return p0
.end method

.method public graphSetDebugLevel(I)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0, p1}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphSetDebugLevel(I)V

    return-void
.end method

.method public graphSetLogDir(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0, p1}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphSetLogDir(Ljava/lang/String;)V

    return-void
.end method

.method public graphSupportedConvert(I)[I
    .locals 0

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0, p1}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphSupportedConvert(I)[I

    move-result-object p0

    return-object p0
.end method

.method public graphUndo()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphUndo()Z

    move-result p0

    return p0
.end method

.method public isValidate()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0}, Lcom/sunia/graphv2/sdk/IGraphEngine;->isValidate()Z

    move-result p0

    return p0
.end method

.method public moveNodeList(Ljava/util/List;Lcom/sunia/HTREnginev2/sdk/RecognizePoint;Lcom/sunia/HTREnginev2/sdk/RecognizePoint;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ")Z"
        }
    .end annotation

    move-object v0, p2

    move-object/from16 v1, p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6279\u91cf\u79fb\u52a8\u8282\u70b9,\u6267\u884c\u79fb\u52a8\u64cd\u4f5c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\uff0cstartPoint="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\uff0cendPoint="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GraphEngineManager"

    invoke-static {v4, v2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    iget-object v2, v2, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/sunia/HTREnginev2/y4h;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/y4h;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v3

    iget v4, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    float-to-double v4, v4

    iget v0, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    float-to-double v6, v0

    iget v0, v1, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    float-to-double v8, v0

    iget v0, v1, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    float-to-double v10, v0

    const/4 v12, 0x0

    move-object v0, v2

    move-object v1, v3

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    move v10, v12

    invoke-interface/range {v0 .. v10}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphMoveNodes([IDDDDI)Z

    move-result v0

    return v0
.end method

.method public removeUserProperty(ILjava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/sunia/commonv2/util/HWRUtil;->isInvalidData(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p0, p1, p2}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphRemoveUserProperty(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public saveFillColor(II)Z
    .locals 1

    invoke-static {p1}, Lcom/sunia/commonv2/util/HWRUtil;->isInvalidData(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "GRAPH_FILL_COLOR"

    invoke-virtual {p0, p1, v0, p2}, Lcom/sunia/graphv2/sdk/GraphEngineManager;->addUserProperty(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sunia/graphv2/sdk/GraphCallback;)V
    .locals 7

    invoke-static {p1}, Lcom/sunia/commonv2/util/HWRCommonUtil;->getApplicationContent(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    new-instance p1, Lcom/sunia/HTREnginev2/x4h;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sunia/HTREnginev2/x4h;-><init>(Lcom/sunia/graphv2/sdk/GraphEngineManager;Landroid/content/Context;Ljava/lang/String;Lcom/sunia/graphv2/sdk/GraphCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sunia/graphv2/sdk/GraphEngineManager;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public upNodeList(Ljava/util/List;Lcom/sunia/HTREnginev2/sdk/RecognizePoint;Lcom/sunia/HTREnginev2/sdk/RecognizePoint;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePoint;",
            ")Z"
        }
    .end annotation

    move-object v0, p2

    move-object/from16 v1, p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6279\u91cf\u79fb\u52a8\u8282\u70b9,\u6267\u884c\u62ac\u624b\u64cd\u4f5c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\uff0cstartPoint="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\uff0cendPoint="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GraphEngineManager"

    invoke-static {v4, v2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    iget-object v2, v2, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphEngine:Lcom/sunia/graphv2/sdk/IGraphEngine;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/sunia/HTREnginev2/y4h;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/y4h;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v3

    iget v4, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    float-to-double v4, v4

    iget v0, v0, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    float-to-double v6, v0

    iget v0, v1, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->x:F

    float-to-double v8, v0

    iget v0, v1, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;->y:F

    float-to-double v10, v0

    const/4 v12, 0x1

    move-object v0, v2

    move-object v1, v3

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    move v10, v12

    invoke-interface/range {v0 .. v10}, Lcom/sunia/graphv2/sdk/IGraphEngine;->graphMoveNodes([IDDDDI)Z

    move-result v0

    return v0
.end method
