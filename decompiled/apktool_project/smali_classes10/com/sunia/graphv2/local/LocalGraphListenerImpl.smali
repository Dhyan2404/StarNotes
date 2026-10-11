.class public Lcom/sunia/graphv2/local/LocalGraphListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/graphv2/local/LocalGraphListener;
.implements Lcom/sunia/graphv2/sdk/GraphCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalGraphListenerImpl"


# instance fields
.field private callback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sunia/graphv2/sdk/GraphCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile recognizePathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->recognizePathList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMetrics(Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;)[F
    .locals 1

    iget-object v0, p0, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->callback:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/graphv2/sdk/GraphCallback;

    invoke-interface {p0, p1}, Lcom/sunia/graphv2/sdk/GraphCallback;->getMetrics(Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;)[F

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->callback:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/graphv2/sdk/GraphCallback;

    invoke-interface {p0}, Lcom/sunia/graphv2/sdk/GraphCallback;->onCancel()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->callback:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/graphv2/sdk/GraphCallback;

    invoke-interface {p0, p1}, Lcom/sunia/graphv2/sdk/GraphCallback;->onError(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onGraphRenderCallback(JILjava/lang/String;[FII[FI[F)I
    .locals 12

    new-instance v11, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;

    move-object v0, v11

    move-wide v1, p1

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;-><init>(JILjava/lang/String;[FII[FI[F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGraphRenderCallback: graphRenderBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalGraphListenerImpl"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    invoke-virtual {p0, v11}, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->getMetrics(Lcom/sunia/commonv2/bean/graph/render/GraphRenderBean;)[F

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v0, "onGraphRenderCallback: uiMetrics is null"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    array-length v2, v0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const-string v0, "onGraphRenderCallback: uiMetrics.length!= 2"

    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    aget v1, v0, v3

    aput v1, p10, v3

    const/4 v1, 0x1

    aget v0, v0, v1

    aput v0, p10, v1

    return v1
.end method

.method public onGraphResultCallback(JILjava/lang/String;)V
    .locals 4

    const-string v0, "LocalGraphListenerImpl"

    monitor-enter v0

    :try_start_0
    const-string v1, "LocalGraphListenerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGraphResultCallback: engine="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",resultCode="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",json= "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_1

    :try_start_1
    sget-object p1, Lcom/sunia/commonv2/global/HWREngineConstant$Constant;->GSON:Lcom/google/gson/Gson;

    new-instance p2, Lcom/sunia/graphv2/local/LocalGraphListenerImpl$a;

    invoke-direct {p2, p0}, Lcom/sunia/graphv2/local/LocalGraphListenerImpl$a;-><init>(Lcom/sunia/graphv2/local/LocalGraphListenerImpl;)V

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/commonv2/bean/graph/GraphBaseResponse;

    invoke-static {}, Lcom/sunia/graphv2/sdk/GraphEngineManager;->getInstance()Lcom/sunia/graphv2/sdk/GraphEngineManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sunia/graphv2/sdk/GraphEngineManager;->graphGetLineCount()I

    move-result p2

    iget-object p3, p0, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->recognizePathList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-eq p3, p2, :cond_0

    invoke-static {}, Lcom/sunia/graphv2/sdk/GraphEngineManager;->getInstance()Lcom/sunia/graphv2/sdk/GraphEngineManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sunia/graphv2/sdk/GraphEngineManager;->getRecognizePathList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->recognizePathList:Ljava/util/List;

    :cond_0
    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/graph/GraphBaseResponse;->getRecognizePathList()Ljava/util/List;

    move-result-object p3

    iget-object v1, p0, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->recognizePathList:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string p3, "LocalGraphListenerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphGetLineCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->onResult(Lcom/sunia/commonv2/bean/graph/GraphBaseResponse;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne p3, p1, :cond_2

    :try_start_3
    const-string p1, "LocalGraphListenerImpl"

    const-string p2, "\u56fe\u5f62\u5f15\u64ce\u505c\u6b62"

    invoke-static {p1, p2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :cond_2
    :try_start_5
    const-string p1, "LocalGraphListenerImpl"

    const-string p2, "\u901a\u77e5\u4e1a\u52a1\u65b9\uff0c\u8bc6\u522b\u5931\u8d25"

    invoke-static {p1, p2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->onError(Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_6
    const-string p2, "LocalGraphListenerImpl"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "json\u89e3\u6790\u62a5\u9519="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "LocalGraphListenerImpl"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "json\u89e3\u6790\u62a5\u9519="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->onError(Ljava/lang/Exception;)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public onLoad()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->callback:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/graphv2/sdk/GraphCallback;

    invoke-interface {p0}, Lcom/sunia/graphv2/sdk/GraphCallback;->onLoad()V

    :cond_0
    return-void
.end method

.method public onResult(Lcom/sunia/commonv2/bean/graph/GraphBaseResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->callback:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/graphv2/sdk/GraphCallback;

    invoke-interface {p0, p1}, Lcom/sunia/graphv2/sdk/GraphCallback;->onResult(Lcom/sunia/commonv2/bean/graph/GraphBaseResponse;)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/sunia/graphv2/sdk/GraphCallback;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sunia/graphv2/local/LocalGraphListenerImpl;->callback:Ljava/lang/ref/WeakReference;

    return-void
.end method
