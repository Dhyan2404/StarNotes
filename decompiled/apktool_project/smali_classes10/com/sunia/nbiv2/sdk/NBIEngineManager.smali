.class public Lcom/sunia/nbiv2/sdk/NBIEngineManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/nbiv2/local/LocalNBIListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "NBIEngineManager"

.field private static instance:Lcom/sunia/nbiv2/sdk/NBIEngineManager;


# instance fields
.field private callback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sunia/nbiv2/sdk/NBICallback;",
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
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;"
        }
    .end annotation
.end field

.field private unsupportedNBIAxisPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/nbiv2/sdk/NBIAxisPath;",
            ">;"
        }
    .end annotation
.end field

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

    iput-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->unsupportedRecognizePathMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->nbiAxisPathList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->unsupportedNBIAxisPathList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->nbiOutlinePathList:Ljava/util/List;

    const-string v0, "NBIEngineManager"

    const-string v1, "NBIEngineManager init"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sunia/nbiv2/sdk/NBIEngine;->createInstance()Lcom/sunia/nbiv2/sdk/NBIEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

    return-void
.end method

.method public static synthetic access$000(Lcom/sunia/nbiv2/sdk/NBIEngineManager;)Lcom/sunia/nbiv2/sdk/NBIEngine;
    .locals 0

    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sunia/nbiv2/sdk/NBIEngineManager;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->callback:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static getInstance()Lcom/sunia/nbiv2/sdk/NBIEngineManager;
    .locals 2

    sget-object v0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->instance:Lcom/sunia/nbiv2/sdk/NBIEngineManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->instance:Lcom/sunia/nbiv2/sdk/NBIEngineManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;

    invoke-direct {v1}, Lcom/sunia/nbiv2/sdk/NBIEngineManager;-><init>()V

    sput-object v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->instance:Lcom/sunia/nbiv2/sdk/NBIEngineManager;

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
    sget-object v0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->instance:Lcom/sunia/nbiv2/sdk/NBIEngineManager;

    return-object v0
.end method

.method private onDrawNBIPath(J)V
    .locals 8

    iget-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->callback:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sunia/nbiv2/sdk/NBICallback;

    invoke-static {v1}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->unsupportedNBIAxisPathList:Ljava/util/List;

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->unsupportedRecognizePathMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->unsupportedRecognizePathMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/naiv2/sdk/NAIPath;

    new-instance v4, Lcom/sunia/nbiv2/sdk/NBIAxisPath;

    invoke-direct {v4}, Lcom/sunia/nbiv2/sdk/NBIAxisPath;-><init>()V

    invoke-virtual {v4}, Lcom/sunia/nbiv2/sdk/NBIAxisPath;->getAddIdListLong()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->unsupportedNBIAxisPathList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v4, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->nbiAxisPathList:Ljava/util/List;

    iget-object v5, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->nbiOutlinePathList:Ljava/util/List;

    iget-object v6, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->unsupportedNBIAxisPathList:Ljava/util/List;

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/sunia/nbiv2/sdk/NBICallback;->onDrawNBIPath(JLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private resetData()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->nbiAxisPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->unsupportedNBIAxisPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->nbiOutlinePathList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public clearPoints()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->unsupportedRecognizePathMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->isValidate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngine;->clearPoints()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearPoints result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NBIEngineManager"

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public destroyEngine()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->isValidate()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

    invoke-virtual {v1, v0}, Lcom/sunia/nbiv2/sdk/NBIEngine;->setCallback(Lcom/sunia/nbiv2/local/LocalNBIListener;)Z

    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngine;->destroyBeatifyEngine()V

    :cond_0
    return-void
.end method

.method public doBeautifyTransform(Lcom/sunia/commonv2/bean/NAIResult;J)V
    .locals 8

    .line 11
    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->isValidate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->stop()V

    .line 13
    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->clearPoints()V

    const-string v0, "nai3,doBeautifyTransform start"

    const-string v1, "NBIEngineManager"

    .line 14
    invoke-static {v1, v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->naiResult:Lcom/sunia/commonv2/bean/NAIResult;

    .line 16
    iget-object v2, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

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
    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->isValidate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->stop()V

    .line 3
    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->clearPoints()V

    .line 4
    invoke-static {p1}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/util/List;)Z

    move-result v0

    const-string v1, "NBIEngineManager"

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
    iget-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->unsupportedRecognizePathMap:Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p2, "nai3,doBeautifyTransform start"

    .line 8
    invoke-static {v1, p2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

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

    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

    const/4 v0, 0x0

    const-string v1, "NBIEngineManager"

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

    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->isValidate()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

    invoke-virtual {p0, p1}, Lcom/sunia/nbiv2/sdk/NBIEngine;->nbiSetAxisOutput(Z)Z

    move-result p0

    return p0
.end method

.method public nbiSetOutlineOutput(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->isValidate()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

    invoke-virtual {p0, p1}, Lcom/sunia/nbiv2/sdk/NBIEngine;->nbiSetOutlineOutput(Z)Z

    move-result p0

    return p0
.end method

.method public onNBICallback(JJ[D[D[D[B[D[D[BLjava/lang/String;III)V
    .locals 22

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-object/from16 v0, p8

    move-object/from16 v4, p11

    move-object/from16 v5, p12

    move/from16 v6, p13

    move/from16 v7, p14

    move/from16 v8, p15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nai4,onNBICallback status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " index:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",total="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",param="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ",axish.length="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",outlineh.length="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "NBIEngineManager"

    invoke-static {v10, v9}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    sget-object v9, Lcom/sunia/nbiv2/sdk/NBIStatus;->START:Lcom/sunia/nbiv2/sdk/NBIStatus;

    invoke-virtual {v9}, Lcom/sunia/nbiv2/sdk/NBIStatus;->getStatus()I

    move-result v9

    if-ne v8, v9, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->resetData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    sget-object v9, Lcom/sunia/nbiv2/sdk/NBIStatus;->HANDING:Lcom/sunia/nbiv2/sdk/NBIStatus;

    invoke-virtual {v9}, Lcom/sunia/nbiv2/sdk/NBIStatus;->getStatus()I

    move-result v9

    if-ne v8, v9, :cond_f

    array-length v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    const/4 v15, 0x1

    if-ge v11, v2, :cond_b

    aget-wide v3, p7, v11

    double-to-float v3, v3

    aget-wide v13, p5, v11

    double-to-float v4, v13

    aget-wide v13, p6, v11

    double-to-float v13, v13

    const-wide/16 v16, 0x1

    add-long v8, v8, v16

    aget-byte v14, v0, v11

    if-ne v14, v15, :cond_a

    new-instance v12, Lcom/sunia/nbiv2/sdk/NBIAxisPath;

    invoke-direct {v12}, Lcom/sunia/nbiv2/sdk/NBIAxisPath;-><init>()V

    invoke-virtual {v12, v5}, Lcom/sunia/nbiv2/sdk/NBIAxisPath;->setExt(Ljava/lang/String;)V

    const-string v14, ";"

    invoke-virtual {v5, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v10, v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_1
    if-ge v15, v10, :cond_8

    aget-object v0, v14, v15

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    move/from16 p2, v2

    move/from16 v17, v10

    move-object/from16 p3, v14

    goto/16 :goto_4

    :cond_1
    move/from16 p2, v2

    const-string v2, "relationship="

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "relationship="

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move/from16 v17, v10

    array-length v10, v2

    move-object/from16 p3, v14

    const/4 v14, 0x2

    if-lt v10, v14, :cond_3

    const/4 v10, 0x1

    aget-object v2, v2, v10

    const-string v10, ","

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v10, v2

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v10, :cond_5

    aget-object v18, v2, v14

    move-object/from16 v19, v2

    iget-object v2, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->naiResult:Lcom/sunia/commonv2/bean/NAIResult;

    invoke-virtual {v2}, Lcom/sunia/commonv2/bean/NAIResult;->getHWRStrokeIdAndHWEIdMap()Ljava/util/Map;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v20, v10

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v12}, Lcom/sunia/nbiv2/sdk/NBIAxisPath;->getAddIdListLong()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v19

    move/from16 v10, v20

    goto :goto_2

    :cond_3
    const-string v2, "NBIEngineManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Please note that you can\'t find the strokes id\uff0cext="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move/from16 v17, v10

    move-object/from16 p3, v14

    :cond_5
    :goto_3
    const-string v2, "valid="

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "valid="

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    const/4 v10, 0x1

    aget-object v0, v0, v10

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v16, 0x1

    goto :goto_4

    :cond_6
    const/16 v16, 0x0

    :cond_7
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, p2

    move-object/from16 v14, p3

    move-object/from16 v0, p8

    move/from16 v10, v17

    goto/16 :goto_1

    :cond_8
    move/from16 p2, v2

    if-eqz v16, :cond_9

    iget-object v0, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->nbiAxisPathList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    iget-object v0, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->unsupportedNBIAxisPathList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    move/from16 p2, v2

    :goto_5
    invoke-virtual {v12}, Lcom/sunia/nbiv2/sdk/NBIAxisPath;->getNbiAxisPointList()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/sunia/nbiv2/sdk/NBIAxisPoint;

    move-object/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v13

    move/from16 v19, v3

    move-wide/from16 v20, v8

    invoke-direct/range {v16 .. v21}, Lcom/sunia/nbiv2/sdk/NBIAxisPoint;-><init>(FFFJ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p2

    move-object/from16 v0, p8

    move-object/from16 v4, p11

    goto/16 :goto_0

    :cond_b
    move-object v0, v4

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v2, :cond_d

    aget-wide v4, p9, v10

    double-to-float v4, v4

    aget-wide v11, p10, v10

    double-to-float v5, v11

    const-wide/16 v11, 0x1

    add-long/2addr v8, v11

    aget-byte v13, v0, v10

    const/4 v14, 0x1

    if-ne v13, v14, :cond_c

    new-instance v3, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;-><init>()V

    iget-object v13, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->nbiOutlinePathList:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    new-instance v13, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;

    invoke-direct {v13, v4, v5, v8, v9}, Lcom/sunia/HTREnginev2/sdk/RecognizePoint;-><init>(FFJ)V

    invoke-virtual {v3, v13}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->addPoint(Lcom/sunia/HTREnginev2/sdk/RecognizePoint;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_d
    iget-object v0, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->nbiOutlinePathList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/nbiv2/sdk/NBICallback;

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0, v6, v7}, Lcom/sunia/nbiv2/sdk/NBICallback;->onProgress(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_e
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_f
    :try_start_4
    sget-object v0, Lcom/sunia/nbiv2/sdk/NBIStatus;->FINISHED:Lcom/sunia/nbiv2/sdk/NBIStatus;

    invoke-virtual {v0}, Lcom/sunia/nbiv2/sdk/NBIStatus;->getStatus()I

    move-result v0

    if-ne v8, v0, :cond_10

    iget-object v0, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->nbiOutlinePathList:Ljava/util/List;

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->filterEmptyPoints(Ljava/util/List;)V

    iget-object v0, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->nbiAxisPathList:Ljava/util/List;

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->filterEmptyPointsByNBIAxisPath(Ljava/util/List;)V

    const-string v0, "NBIEngineManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nai5,nbi finished,nbiAxisPathList.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->nbiAxisPathList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",nbiOutlinePathList.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->nbiOutlinePathList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->onDrawNBIPath(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    :cond_10
    :try_start_6
    sget-object v0, Lcom/sunia/nbiv2/sdk/NBIStatus;->INVALID_POINTER:Lcom/sunia/nbiv2/sdk/NBIStatus;

    invoke-virtual {v0}, Lcom/sunia/nbiv2/sdk/NBIStatus;->getStatus()I

    move-result v0

    if-ne v8, v0, :cond_12

    const-string v0, "NBIEngineManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nai INVALID_POINTER\uff0cthis.naiResult.getDataPointer()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->naiResult:Lcom/sunia/commonv2/bean/NAIResult;

    invoke-virtual {v3}, Lcom/sunia/commonv2/bean/NAIResult;->getDataPointer()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->resetData()V

    iget-object v0, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->callback:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/nbiv2/sdk/NBICallback;

    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INVALID POINTER :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->naiResult:Lcom/sunia/commonv2/bean/NAIResult;

    invoke-virtual {v4}, Lcom/sunia/commonv2/bean/NAIResult;->getDataPointer()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/sunia/nbiv2/sdk/NBICallback;->onError(Ljava/lang/Exception;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_11
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-void

    :cond_12
    :try_start_8
    sget-object v0, Lcom/sunia/nbiv2/sdk/NBIStatus;->EMPTY:Lcom/sunia/nbiv2/sdk/NBIStatus;

    invoke-virtual {v0}, Lcom/sunia/nbiv2/sdk/NBIStatus;->getStatus()I

    move-result v0

    if-ne v8, v0, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->resetData()V

    invoke-direct {v1, v2, v3}, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->onDrawNBIPath(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    return-void

    :cond_13
    :try_start_a
    sget-object v0, Lcom/sunia/nbiv2/sdk/NBIStatus;->STOPPED:Lcom/sunia/nbiv2/sdk/NBIStatus;

    invoke-virtual {v0}, Lcom/sunia/nbiv2/sdk/NBIStatus;->getStatus()I

    move-result v0

    if-ne v8, v0, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->resetData()V

    iget-object v0, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->callback:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/nbiv2/sdk/NBICallback;

    invoke-interface {v0}, Lcom/sunia/nbiv2/sdk/NBICallback;->onCancel()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_14
    :try_start_b
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    const-string v2, "NBIEngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nbi parse exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->resetData()V

    iget-object v2, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->callback:Ljava/lang/ref/WeakReference;

    invoke-static {v2}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v1, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/nbiv2/sdk/NBICallback;

    invoke-interface {v2, v0}, Lcom/sunia/nbiv2/sdk/NBICallback;->onError(Ljava/lang/Exception;)V

    :cond_15
    monitor-exit p0

    return-void

    :goto_7
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0
.end method

.method public setParameters(Lcom/sunia/nbiv2/sdk/NBIParameter;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->isValidate()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x14

    new-array v0, v0, [I

    aput v1, v0, v1

    invoke-virtual {p1}, Lcom/sunia/nbiv2/sdk/NBIParameter;->getContinuity()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v2, 0x2

    aput v3, v0, v2

    invoke-virtual {p1}, Lcom/sunia/nbiv2/sdk/NBIParameter;->getCursive()I

    move-result v3

    const/4 v4, 0x3

    aput v3, v0, v4

    const/4 v3, 0x4

    aput v2, v0, v3

    invoke-virtual {p1}, Lcom/sunia/nbiv2/sdk/NBIParameter;->getLightBrush()I

    move-result v2

    const/4 v5, 0x5

    aput v2, v0, v5

    const/4 v2, 0x6

    aput v4, v0, v2

    invoke-virtual {p1}, Lcom/sunia/nbiv2/sdk/NBIParameter;->getWidth()I

    move-result v6

    const/4 v7, 0x7

    aput v6, v0, v7

    const/16 v6, 0x8

    aput v3, v0, v6

    invoke-virtual {p1}, Lcom/sunia/nbiv2/sdk/NBIParameter;->getBrushTexture()I

    move-result v3

    const/16 v8, 0x9

    aput v3, v0, v8

    const/16 v3, 0xa

    aput v5, v0, v3

    invoke-virtual {p1}, Lcom/sunia/nbiv2/sdk/NBIParameter;->getFeiBai()I

    move-result v3

    const/16 v5, 0xb

    aput v3, v0, v5

    const/16 v3, 0xc

    aput v2, v0, v3

    invoke-virtual {p1}, Lcom/sunia/nbiv2/sdk/NBIParameter;->getYiYang()I

    move-result v2

    const/16 v3, 0xd

    aput v2, v0, v3

    const/16 v2, 0xe

    aput v7, v0, v2

    invoke-virtual {p1}, Lcom/sunia/nbiv2/sdk/NBIParameter;->getSmooth()I

    move-result p1

    const/16 v2, 0xf

    aput p1, v0, v2

    const/16 p1, 0x10

    aput v6, v0, p1

    const/16 p1, 0x11

    aput v4, v0, p1

    const/16 p1, 0x12

    aput v8, v0, p1

    const/16 p1, 0x13

    aput v1, v0, p1

    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

    invoke-virtual {p0, v0}, Lcom/sunia/nbiv2/sdk/NBIEngine;->setParameters([I)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setParameters result: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",para="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NBIEngineManager"

    invoke-static {v0, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public start(Landroid/content/Context;Ljava/lang/String;Lcom/sunia/nbiv2/sdk/NBIParameter;Lcom/sunia/nbiv2/sdk/NBICallback;)V
    .locals 7

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->callback:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/sunia/nbiv2/sdk/NBIEngineManager$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sunia/nbiv2/sdk/NBIEngineManager$1;-><init>(Lcom/sunia/nbiv2/sdk/NBIEngineManager;Landroid/content/Context;Ljava/lang/String;Lcom/sunia/nbiv2/sdk/NBIParameter;Lcom/sunia/nbiv2/sdk/NBICallback;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->isValidate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sunia/nbiv2/sdk/NBIEngineManager;->mNBIEngine:Lcom/sunia/nbiv2/sdk/NBIEngine;

    invoke-virtual {p0}, Lcom/sunia/nbiv2/sdk/NBIEngine;->stopBeautify()V

    return-void
.end method
