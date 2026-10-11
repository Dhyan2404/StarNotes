.class public Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/nbiv2/local/LocalNBIListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "NBIEngineManagerV2"

.field private static instance:Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;


# instance fields
.field private callback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sunia/nbiv2/sdk/NBICallbackV2;",
            ">;"
        }
    .end annotation
.end field

.field private mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

.field private naiResult:Lcom/sunia/commonv2/bean/NAIResult;

.field private nbiAxisPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/nbiv2/sdk/NBIAxisPath;",
            ">;"
        }
    .end annotation
.end field

.field private nbiOutlinePathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/nbiv2/sdk/NBIAxisPath;",
            ">;"
        }
    .end annotation
.end field

.field private showLogDetails:Z

.field private unsupportedRecognizePathMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/sunia/naiv2/sdk/NAIPath;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->unsupportedRecognizePathMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->nbiAxisPathList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->nbiOutlinePathList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->showLogDetails:Z

    const-string v0, "NBIEngineManagerV2"

    const-string v1, "NBIEngineManagerV2 init"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sunia/nbiv2/sdk/NBIEngine;->createInstance()Lcom/sunia/nbiv2/sdk/NBIEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

    return-void
.end method

.method public static synthetic access$000(Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;)Lcom/sunia/nbiv2/sdk/NBIEngine;
    .locals 0

    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->callback:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static getInstance()Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;
    .locals 2

    sget-object v0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->instance:Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

    if-nez v0, :cond_1

    const-class v0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->instance:Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

    invoke-direct {v1}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;-><init>()V

    sput-object v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->instance:Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

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
    sget-object v0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->instance:Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

    return-object v0
.end method

.method private onDrawNBIPath(J)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->callback:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "NBIEngineManagerV2"

    if-eqz v0, :cond_0

    const-string p0, "onDrawNBIPath callback is empty"

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/nbiv2/sdk/NBICallbackV2;

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "onDrawNBIPath nbiCallback is empty"

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->nbiAxisPathList:Ljava/util/List;

    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->nbiOutlinePathList:Ljava/util/List;

    invoke-interface {v0, p1, p2, v1, p0}, Lcom/sunia/nbiv2/sdk/NBICallbackV2;->onDrawNBIPath(JLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private resetData()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->nbiAxisPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->nbiOutlinePathList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public clearPoints()V
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->isValidate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngine;->clearPoints()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearPoints result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NBIEngineManagerV2"

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public destroyEngine()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->isValidate()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

    invoke-virtual {v1, v0}, Lcom/sunia/nbiv2/sdk/NBIEngine;->setCallback(Lcom/sunia/nbiv2/local/LocalNBIListener;)Z

    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngine;->destroyBeatifyEngine()V

    :cond_0
    return-void
.end method

.method public doBeautifyTransform(Lcom/sunia/commonv2/bean/NAIResult;J)V
    .locals 8

    .line 11
    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->isValidate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->stop()V

    .line 13
    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->clearPoints()V

    const-string v0, "nai3,doBeautifyTransform start"

    const-string v1, "NBIEngineManagerV2"

    .line 14
    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->naiResult:Lcom/sunia/commonv2/bean/NAIResult;

    .line 16
    iget-object v2, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

    const-wide/16 v4, 0x1

    move-object v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/sunia/nbiv2/sdk/NBIEngine;->doBeautifyTransform(Lcom/sunia/commonv2/bean/NAIResult;JJ)Z

    move-result p0

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nai3,doBeautifyTransform end, result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public doBeautifyTransform(Ljava/util/List;Ljava/util/List;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/naiv2/sdk/NAIPath;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sunia/naiv2/sdk/NAIPath;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->isValidate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->stop()V

    .line 3
    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->clearPoints()V

    .line 4
    invoke-static {p1}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/util/List;)Z

    move-result v0

    const-string v1, "NBIEngineManagerV2"

    if-eqz v0, :cond_1

    const-string v0, "nai3,doBeautifyTransform naiTransformResult is empty"

    .line 5
    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-static {p2}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->unsupportedRecognizePathMap:Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p2, "nai3,doBeautifyTransform start"

    .line 8
    invoke-static {v1, p2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

    const-wide/16 v4, 0x1

    move-object v3, p1

    move-wide v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/sunia/nbiv2/sdk/NBIEngine;->doBeautifyTransform(Ljava/util/List;JJ)Z

    move-result p0

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nai3,doBeautifyTransform end, result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isValidate()Z
    .locals 2

    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

    const/4 v0, 0x0

    const-string v1, "NBIEngineManagerV2"

    if-nez p0, :cond_0

    const-string p0, "isValidate failed, mNBIEngine==null"

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngine;->isValidate()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "isValidate failed, isEngineValid=false"

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public nbiSetAxisOutput(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->isValidate()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

    invoke-virtual {p0, p1}, Lcom/sunia/nbiv2/sdk/NBIEngine;->nbiSetAxisOutput(Z)Z

    move-result p0

    return p0
.end method

.method public nbiSetOutlineOutput(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->isValidate()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

    invoke-virtual {p0, p1}, Lcom/sunia/nbiv2/sdk/NBIEngine;->nbiSetOutlineOutput(Z)Z

    move-result p0

    return p0
.end method

.method public onNBICallback(JJ[D[D[D[B[D[D[BLjava/lang/String;III)V
    .locals 24

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-object/from16 v4, p8

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move/from16 v7, p13

    move/from16 v8, p14

    move/from16 v9, p15

    monitor-enter p0

    :try_start_0
    sget-object v10, Lcom/sunia/nbiv2/sdk/NBIStatus;->HANDING:Lcom/sunia/nbiv2/sdk/NBIStatus;

    invoke-virtual {v10}, Lcom/sunia/nbiv2/sdk/NBIStatus;->getStatus()I

    move-result v10

    const/4 v12, 0x1

    if-ne v9, v10, :cond_4

    array-length v10, v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v13, v10, :cond_1

    aget-byte v15, v4, v13

    if-ne v15, v12, :cond_0

    add-int/lit8 v14, v14, 0x1

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sunia/commonv2/util/HWRCommonUtil;->isWhileList()Z

    move-result v10

    if-nez v10, :cond_3

    iget-boolean v10, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->showLogDetails:Z

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    const-string v10, "NBIEngineManagerV2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "nai4,onNBICallback status: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " index:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",total="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",param="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, ",axish.length="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v15, v4

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",outlineh.length="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v15, v5

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",nbi path size="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    :goto_1
    const-string v10, "NBIEngineManagerV2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "nai4,onNBICallback status: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " index:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",total="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",param="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, ",axish.length="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v15, v4

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",outlineh.length="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v15, v5

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",nbi path size="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",ext="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v10, "NBIEngineManagerV2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "nai4,onNBICallback status: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " index:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",total="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",param="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ",axish.length="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",outlineh.length="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget-object v10, Lcom/sunia/nbiv2/sdk/NBIStatus;->START:Lcom/sunia/nbiv2/sdk/NBIStatus;

    invoke-virtual {v10}, Lcom/sunia/nbiv2/sdk/NBIStatus;->getStatus()I

    move-result v10

    if-ne v9, v10, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->resetData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_5
    :try_start_2
    sget-object v10, Lcom/sunia/nbiv2/sdk/NBIStatus;->HANDING:Lcom/sunia/nbiv2/sdk/NBIStatus;

    invoke-virtual {v10}, Lcom/sunia/nbiv2/sdk/NBIStatus;->getStatus()I

    move-result v10

    if-ne v9, v10, :cond_15

    const-string v2, ";"

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_3
    if-ge v9, v3, :cond_9

    aget-object v13, v2, v9

    invoke-static {v13}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    goto :goto_4

    :cond_6
    const-string v14, "valid="

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v10, "valid="

    invoke-virtual {v13, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const-string v13, "1"

    aget-object v10, v10, v12

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    move v10, v12

    goto :goto_4

    :cond_7
    const/4 v10, 0x0

    :cond_8
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_9
    array-length v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v9, 0x0

    const/4 v15, 0x0

    :goto_5
    const-wide/16 v16, 0x1

    if-ge v9, v2, :cond_11

    aget-wide v11, p7, v9

    double-to-float v11, v11

    aget-wide v3, p5, v9

    double-to-float v3, v3

    aget-wide v7, p6, v9

    double-to-float v4, v7

    add-long v13, v13, v16

    aget-byte v7, p8, v9

    const/4 v8, 0x1

    if-ne v7, v8, :cond_10

    new-instance v15, Lcom/sunia/nbiv2/sdk/NBIAxisPath;

    invoke-direct {v15}, Lcom/sunia/nbiv2/sdk/NBIAxisPath;-><init>()V

    invoke-virtual {v15, v6}, Lcom/sunia/nbiv2/sdk/NBIAxisPath;->setExt(Ljava/lang/String;)V

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v8, :cond_f

    move/from16 p4, v2

    aget-object v2, v7, v12

    invoke-static {v2}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    move-object/from16 p15, v7

    :cond_a
    move/from16 v16, v8

    goto :goto_8

    :cond_b
    move-object/from16 p15, v7

    const-string v7, "relationship="

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "relationship="

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v7, v2

    move/from16 v16, v8

    const/4 v8, 0x2

    if-lt v7, v8, :cond_d

    const/4 v7, 0x1

    aget-object v2, v2, v7

    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v7, v2

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v7, :cond_e

    aget-object v17, v2, v8

    move-object/from16 v18, v2

    iget-object v2, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->naiResult:Lcom/sunia/commonv2/bean/NAIResult;

    invoke-virtual {v2}, Lcom/sunia/commonv2/bean/NAIResult;->getHWRStrokeIdAndHWEIdMap()Ljava/util/Map;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v19, v7

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v15}, Lcom/sunia/nbiv2/sdk/NBIAxisPath;->getAddIdListLong()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v18

    move/from16 v7, v19

    goto :goto_7

    :cond_d
    const-string v2, "NBIEngineManagerV2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Please note that you can\'t find the strokes id\uff0cext="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_8
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, p4

    move-object/from16 v7, p15

    move/from16 v8, v16

    goto/16 :goto_6

    :cond_f
    move/from16 p4, v2

    invoke-virtual {v15, v10}, Lcom/sunia/nbiv2/sdk/NBIAxisPath;->setValidate(Z)V

    iget-object v2, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->nbiAxisPathList:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    move/from16 p4, v2

    :goto_9
    invoke-virtual {v15}, Lcom/sunia/nbiv2/sdk/NBIAxisPath;->getNbiAxisPointList()Ljava/util/List;

    move-result-object v2

    new-instance v7, Lcom/sunia/nbiv2/sdk/NBIAxisPoint;

    move-object/from16 v18, v7

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v11

    move-wide/from16 v22, v13

    invoke-direct/range {v18 .. v23}, Lcom/sunia/nbiv2/sdk/NBIAxisPoint;-><init>(FFFJ)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p4

    move-object/from16 v4, p8

    move/from16 v7, p13

    move/from16 v8, p14

    const/4 v12, 0x1

    goto/16 :goto_5

    :cond_11
    array-length v2, v5

    const/4 v3, 0x0

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v2, :cond_13

    aget-wide v7, p9, v11

    double-to-float v4, v7

    aget-wide v7, p10, v11

    double-to-float v7, v7

    add-long v13, v13, v16

    aget-byte v8, v5, v11

    const/4 v9, 0x1

    if-ne v8, v9, :cond_12

    new-instance v3, Lcom/sunia/nbiv2/sdk/NBIAxisPath;

    invoke-direct {v3}, Lcom/sunia/nbiv2/sdk/NBIAxisPath;-><init>()V

    invoke-virtual {v3, v6}, Lcom/sunia/nbiv2/sdk/NBIAxisPath;->setExt(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Lcom/sunia/nbiv2/sdk/NBIAxisPath;->setValidate(Z)V

    iget-object v8, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->nbiOutlinePathList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-virtual {v3}, Lcom/sunia/nbiv2/sdk/NBIAxisPath;->getNbiAxisPointList()Ljava/util/List;

    move-result-object v8

    new-instance v12, Lcom/sunia/nbiv2/sdk/NBIAxisPoint;

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 p3, v12

    move/from16 p4, v4

    move/from16 p5, v7

    move/from16 p6, v15

    move-wide/from16 p7, v13

    invoke-direct/range {p3 .. p8}, Lcom/sunia/nbiv2/sdk/NBIAxisPoint;-><init>(FFFJ)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_13
    iget-object v2, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/nbiv2/sdk/NBICallbackV2;

    invoke-static {v2}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    move/from16 v3, p13

    move/from16 v4, p14

    invoke-interface {v2, v3, v4}, Lcom/sunia/nbiv2/sdk/NBICallbackV2;->onProgress(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_14
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_15
    :try_start_4
    sget-object v4, Lcom/sunia/nbiv2/sdk/NBIStatus;->FINISHED:Lcom/sunia/nbiv2/sdk/NBIStatus;

    invoke-virtual {v4}, Lcom/sunia/nbiv2/sdk/NBIStatus;->getStatus()I

    move-result v4

    if-ne v9, v4, :cond_16

    iget-object v4, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->nbiOutlinePathList:Ljava/util/List;

    invoke-static {v4}, Lcom/sunia/commonv2/util/HWRUtil;->filterEmptyPointsByNBIAxisPath(Ljava/util/List;)V

    iget-object v4, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->nbiAxisPathList:Ljava/util/List;

    invoke-static {v4}, Lcom/sunia/commonv2/util/HWRUtil;->filterEmptyPointsByNBIAxisPath(Ljava/util/List;)V

    const-string v4, "NBIEngineManagerV2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nai5,nbi finished,nbiAxisPathList.size()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->nbiAxisPathList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",nbiOutlinePathList.size()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->nbiOutlinePathList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->onDrawNBIPath(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    :cond_16
    :try_start_6
    sget-object v4, Lcom/sunia/nbiv2/sdk/NBIStatus;->INVALID_POINTER:Lcom/sunia/nbiv2/sdk/NBIStatus;

    invoke-virtual {v4}, Lcom/sunia/nbiv2/sdk/NBIStatus;->getStatus()I

    move-result v4

    if-ne v9, v4, :cond_18

    const-string v2, "NBIEngineManagerV2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nai INVALID_POINTER\uff0cthis.naiResult.getDataPointer()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->naiResult:Lcom/sunia/commonv2/bean/NAIResult;

    invoke-virtual {v4}, Lcom/sunia/commonv2/bean/NAIResult;->getDataPointer()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->resetData()V

    iget-object v2, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->callback:Ljava/lang/ref/WeakReference;

    invoke-static {v2}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/nbiv2/sdk/NBICallbackV2;

    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INVALID POINTER :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->naiResult:Lcom/sunia/commonv2/bean/NAIResult;

    invoke-virtual {v5}, Lcom/sunia/commonv2/bean/NAIResult;->getDataPointer()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/sunia/nbiv2/sdk/NBICallbackV2;->onError(Ljava/lang/Exception;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_17
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-void

    :cond_18
    :try_start_8
    sget-object v4, Lcom/sunia/nbiv2/sdk/NBIStatus;->EMPTY:Lcom/sunia/nbiv2/sdk/NBIStatus;

    invoke-virtual {v4}, Lcom/sunia/nbiv2/sdk/NBIStatus;->getStatus()I

    move-result v4

    if-ne v9, v4, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->resetData()V

    invoke-direct {v1, v2, v3}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->onDrawNBIPath(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    return-void

    :cond_19
    :try_start_a
    sget-object v2, Lcom/sunia/nbiv2/sdk/NBIStatus;->STOPPED:Lcom/sunia/nbiv2/sdk/NBIStatus;

    invoke-virtual {v2}, Lcom/sunia/nbiv2/sdk/NBIStatus;->getStatus()I

    move-result v2

    if-ne v9, v2, :cond_1b

    invoke-direct/range {p0 .. p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->resetData()V

    iget-object v2, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->callback:Ljava/lang/ref/WeakReference;

    invoke-static {v2}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/nbiv2/sdk/NBICallbackV2;

    invoke-interface {v2}, Lcom/sunia/nbiv2/sdk/NBICallbackV2;->onCancel()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_1a
    :try_start_b
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_b

    :catch_0
    move-exception v0

    move-object v2, v0

    const-string v3, "NBIEngineManagerV2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nbi parse exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->resetData()V

    iget-object v3, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->callback:Ljava/lang/ref/WeakReference;

    invoke-static {v3}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/nbiv2/sdk/NBICallbackV2;

    invoke-interface {v3, v2}, Lcom/sunia/nbiv2/sdk/NBICallbackV2;->onError(Ljava/lang/Exception;)V

    :cond_1b
    monitor-exit p0

    return-void

    :goto_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v2
.end method

.method public setParameters(ILcom/sunia/nbiv2/sdk/NBIParameter;)Z
    .locals 8

    .line 2
    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->isValidate()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x14

    new-array v0, v0, [I

    aput v1, v0, v1

    .line 3
    invoke-virtual {p2}, Lcom/sunia/nbiv2/sdk/NBIParameter;->getContinuity()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    invoke-virtual {p2}, Lcom/sunia/nbiv2/sdk/NBIParameter;->getCursive()I

    move-result v3

    const/4 v4, 0x3

    aput v3, v0, v4

    const/4 v3, 0x4

    aput v1, v0, v3

    .line 4
    invoke-virtual {p2}, Lcom/sunia/nbiv2/sdk/NBIParameter;->getLightBrush()I

    move-result v1

    const/4 v5, 0x5

    aput v1, v0, v5

    const/4 v1, 0x6

    aput v4, v0, v1

    invoke-virtual {p2}, Lcom/sunia/nbiv2/sdk/NBIParameter;->getWidth()I

    move-result v4

    const/4 v6, 0x7

    aput v4, v0, v6

    const/16 v4, 0x8

    aput v3, v0, v4

    .line 5
    invoke-virtual {p2}, Lcom/sunia/nbiv2/sdk/NBIParameter;->getBrushTexture()I

    move-result v3

    const/16 v7, 0x9

    aput v3, v0, v7

    const/16 v3, 0xa

    aput v5, v0, v3

    invoke-virtual {p2}, Lcom/sunia/nbiv2/sdk/NBIParameter;->getFeiBai()I

    move-result v3

    const/16 v5, 0xb

    aput v3, v0, v5

    const/16 v3, 0xc

    aput v1, v0, v3

    .line 6
    invoke-virtual {p2}, Lcom/sunia/nbiv2/sdk/NBIParameter;->getYiYang()I

    move-result v1

    const/16 v3, 0xd

    aput v1, v0, v3

    const/16 v1, 0xe

    aput v6, v0, v1

    invoke-virtual {p2}, Lcom/sunia/nbiv2/sdk/NBIParameter;->getSmooth()I

    move-result v1

    const/16 v3, 0xf

    aput v1, v0, v3

    const/16 v1, 0x10

    aput v4, v0, v1

    sub-int/2addr p1, v2

    const/16 v1, 0x11

    aput p1, v0, v1

    const/16 p1, 0x12

    aput v7, v0, p1

    invoke-virtual {p2}, Lcom/sunia/nbiv2/sdk/NBIParameter;->getAutoSmooth()I

    move-result p1

    const/16 p2, 0x13

    aput p1, v0, p2

    .line 7
    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

    invoke-virtual {p0, v0}, Lcom/sunia/nbiv2/sdk/NBIEngine;->setParameters([I)Z

    move-result p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setParameters result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",para="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NBIEngineManagerV2"

    invoke-static {p2, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public setParameters(Lcom/sunia/nbiv2/sdk/NBIParameter;)Z
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->setParameters(ILcom/sunia/nbiv2/sdk/NBIParameter;)Z

    move-result p0

    return p0
.end method

.method public showLogDetails()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->showLogDetails:Z

    return-void
.end method

.method public start(Landroid/content/Context;Ljava/lang/String;ILcom/sunia/nbiv2/sdk/NBIParameter;Lcom/sunia/nbiv2/sdk/NBICallbackV2;)V
    .locals 8

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->callback:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance v0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2$1;-><init>(Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;Landroid/content/Context;Ljava/lang/String;ILcom/sunia/nbiv2/sdk/NBIParameter;Lcom/sunia/nbiv2/sdk/NBICallbackV2;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public start(Landroid/content/Context;Ljava/lang/String;Lcom/sunia/nbiv2/sdk/NBIParameter;Lcom/sunia/nbiv2/sdk/NBICallbackV2;)V
    .locals 6

    const/4 v3, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->start(Landroid/content/Context;Ljava/lang/String;ILcom/sunia/nbiv2/sdk/NBIParameter;Lcom/sunia/nbiv2/sdk/NBICallbackV2;)V

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->isValidate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngine;->stopBeautify()V

    return-void
.end method
