.class public Lcom/sunia/naiv2/sdk/NAIEngineManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NAIEngineManager"

.field private static instance:Lcom/sunia/naiv2/sdk/NAIEngineManager;


# instance fields
.field private executors:Ljava/util/concurrent/ExecutorService;

.field private mNAIEngine:Lcom/sunia/naiv2/sdk/NAIEngine;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager;->executors:Ljava/util/concurrent/ExecutorService;

    const-string v0, "NAIEngineManager"

    const-string v1, "NAIEngineManager init"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sunia/naiv2/sdk/NAIEngine;->createInstance()Lcom/sunia/naiv2/sdk/NAIEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager;->mNAIEngine:Lcom/sunia/naiv2/sdk/NAIEngine;

    return-void
.end method

.method public static synthetic access$000(Lcom/sunia/naiv2/sdk/NAIEngineManager;)Lcom/sunia/naiv2/sdk/NAIEngine;
    .locals 0

    iget-object p0, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager;->mNAIEngine:Lcom/sunia/naiv2/sdk/NAIEngine;

    return-object p0
.end method

.method public static getInstance()Lcom/sunia/naiv2/sdk/NAIEngineManager;
    .locals 2

    const-string v0, "NAIEngineManager"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sunia/naiv2/sdk/NAIEngineManager;->instance:Lcom/sunia/naiv2/sdk/NAIEngineManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/sunia/naiv2/sdk/NAIEngineManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sunia/naiv2/sdk/NAIEngineManager;->instance:Lcom/sunia/naiv2/sdk/NAIEngineManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sunia/naiv2/sdk/NAIEngineManager;

    invoke-direct {v1}, Lcom/sunia/naiv2/sdk/NAIEngineManager;-><init>()V

    sput-object v1, Lcom/sunia/naiv2/sdk/NAIEngineManager;->instance:Lcom/sunia/naiv2/sdk/NAIEngineManager;

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
    sget-object v0, Lcom/sunia/naiv2/sdk/NAIEngineManager;->instance:Lcom/sunia/naiv2/sdk/NAIEngineManager;

    return-object v0
.end method


# virtual methods
.method public check(Ljava/lang/String;I)Lcom/sunia/commonv2/bean/NAICheckResult;
    .locals 2

    new-instance v0, Lcom/sunia/commonv2/bean/NAICheckResult;

    invoke-direct {v0}, Lcom/sunia/commonv2/bean/NAICheckResult;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngineManager;->isValidate()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager;->mNAIEngine:Lcom/sunia/naiv2/sdk/NAIEngine;

    invoke-virtual {v1, p1, p2}, Lcom/sunia/naiv2/sdk/NAIEngine;->naiSupportLayout(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/sunia/naiv2/sdk/NAIEngineManager$3;

    invoke-direct {v1, p0}, Lcom/sunia/naiv2/sdk/NAIEngineManager$3;-><init>(Lcom/sunia/naiv2/sdk/NAIEngineManager;)V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v0}, Lcom/sunia/commonv2/bean/NAICheckResult;->getResult()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    iget-object p0, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager;->mNAIEngine:Lcom/sunia/naiv2/sdk/NAIEngine;

    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngine;->getErrorInfo()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "nai engine is not validate"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "text is empty"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "NAIEngineManager"

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/sunia/commonv2/exception/NAICheckException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lcom/sunia/commonv2/exception/NAICheckException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/sunia/commonv2/bean/NAICheckResult;->setException(Lcom/sunia/commonv2/exception/NAICheckException;)V

    :goto_0
    return-object v0
.end method

.method public clearPoints()V
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngineManager;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager;->mNAIEngine:Lcom/sunia/naiv2/sdk/NAIEngine;

    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngine;->naiClearPoints()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearPoints result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NAIEngineManager"

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public destroyEngine()V
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngineManager;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager;->mNAIEngine:Lcom/sunia/naiv2/sdk/NAIEngine;

    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngine;->naiDestroyEngine()Z

    :cond_0
    return-void
.end method

.method public getNAIResult(Ljava/lang/String;I)Lcom/sunia/commonv2/bean/NAIResult;
    .locals 2

    .line 15
    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngineManager;->isValidate()Z

    move-result v0

    const-string v1, "NAIEngineManager"

    if-nez v0, :cond_0

    .line 16
    new-instance p0, Lcom/sunia/commonv2/bean/NAIResult;

    invoke-direct {p0}, Lcom/sunia/commonv2/bean/NAIResult;-><init>()V

    .line 17
    sget-object p1, Lcom/sunia/commonv2/exception/NAIException;->ZERO:Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {p0, p1}, Lcom/sunia/commonv2/bean/NAIResult;->setException(Lcom/sunia/commonv2/exception/NAIException;)V

    .line 18
    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/NAIResult;->getException()Lcom/sunia/commonv2/exception/NAIException;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 19
    :cond_0
    invoke-static {}, Lcom/sunia/commonv2/util/HWRUtil;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    new-instance p0, Lcom/sunia/commonv2/bean/NAIResult;

    invoke-direct {p0}, Lcom/sunia/commonv2/bean/NAIResult;-><init>()V

    .line 21
    sget-object p1, Lcom/sunia/commonv2/exception/NAIException;->ONE:Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {p0, p1}, Lcom/sunia/commonv2/bean/NAIResult;->setException(Lcom/sunia/commonv2/exception/NAIException;)V

    .line 22
    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/NAIResult;->getException()Lcom/sunia/commonv2/exception/NAIException;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngineManager;->clearPoints()V

    .line 24
    iget-object p0, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager;->mNAIEngine:Lcom/sunia/naiv2/sdk/NAIEngine;

    invoke-virtual {p0, p1, p2}, Lcom/sunia/naiv2/sdk/NAIEngine;->getNAIResult(Ljava/lang/String;I)Lcom/sunia/commonv2/bean/NAIResult;

    move-result-object p0

    .line 25
    invoke-virtual {p0, p2}, Lcom/sunia/commonv2/bean/NAIResult;->setMode(I)V

    return-object p0
.end method

.method public getNAIResult(Ljava/util/List;I)Lcom/sunia/commonv2/bean/NAIResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;I)",
            "Lcom/sunia/commonv2/bean/NAIResult;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngineManager;->isValidate()Z

    move-result v0

    const-string v1, "NAIEngineManager"

    if-nez v0, :cond_0

    .line 2
    new-instance p0, Lcom/sunia/commonv2/bean/NAIResult;

    invoke-direct {p0}, Lcom/sunia/commonv2/bean/NAIResult;-><init>()V

    .line 3
    sget-object p1, Lcom/sunia/commonv2/exception/NAIException;->ZERO:Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {p0, p1}, Lcom/sunia/commonv2/bean/NAIResult;->setException(Lcom/sunia/commonv2/exception/NAIException;)V

    .line 4
    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/NAIResult;->getException()Lcom/sunia/commonv2/exception/NAIException;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 5
    :cond_0
    invoke-static {}, Lcom/sunia/commonv2/util/HWRUtil;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance p0, Lcom/sunia/commonv2/bean/NAIResult;

    invoke-direct {p0}, Lcom/sunia/commonv2/bean/NAIResult;-><init>()V

    .line 7
    sget-object p1, Lcom/sunia/commonv2/exception/NAIException;->ONE:Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {p0, p1}, Lcom/sunia/commonv2/bean/NAIResult;->setException(Lcom/sunia/commonv2/exception/NAIException;)V

    .line 8
    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/NAIResult;->getException()Lcom/sunia/commonv2/exception/NAIException;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngineManager;->clearPoints()V

    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    .line 12
    iget-object v2, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager;->mNAIEngine:Lcom/sunia/naiv2/sdk/NAIEngine;

    invoke-virtual {v2, v1}, Lcom/sunia/naiv2/sdk/NAIEngine;->addRecognizePath(Lcom/sunia/HTREnginev2/sdk/RecognizePath;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget-object p0, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager;->mNAIEngine:Lcom/sunia/naiv2/sdk/NAIEngine;

    invoke-virtual {p0, p2}, Lcom/sunia/naiv2/sdk/NAIEngine;->getNAIResult(I)Lcom/sunia/commonv2/bean/NAIResult;

    move-result-object p0

    .line 14
    invoke-virtual {p0, p2}, Lcom/sunia/commonv2/bean/NAIResult;->setMode(I)V

    return-object p0
.end method

.method public getNAIResultForGraphic(Ljava/util/List;II)Lcom/sunia/commonv2/bean/NAIResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;II)",
            "Lcom/sunia/commonv2/bean/NAIResult;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngineManager;->isValidate()Z

    move-result v0

    const-string v1, "NAIEngineManager"

    if-nez v0, :cond_0

    new-instance p0, Lcom/sunia/commonv2/bean/NAIResult;

    invoke-direct {p0}, Lcom/sunia/commonv2/bean/NAIResult;-><init>()V

    sget-object p1, Lcom/sunia/commonv2/exception/NAIException;->ZERO:Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {p0, p1}, Lcom/sunia/commonv2/bean/NAIResult;->setException(Lcom/sunia/commonv2/exception/NAIException;)V

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/NAIResult;->getException()Lcom/sunia/commonv2/exception/NAIException;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sunia/commonv2/util/HWRUtil;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/sunia/commonv2/bean/NAIResult;

    invoke-direct {p0}, Lcom/sunia/commonv2/bean/NAIResult;-><init>()V

    sget-object p1, Lcom/sunia/commonv2/exception/NAIException;->ONE:Lcom/sunia/commonv2/exception/NAIException;

    invoke-virtual {p0, p1}, Lcom/sunia/commonv2/bean/NAIResult;->setException(Lcom/sunia/commonv2/exception/NAIException;)V

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/NAIResult;->getException()Lcom/sunia/commonv2/exception/NAIException;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngineManager;->clearPoints()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    iget-object v2, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager;->mNAIEngine:Lcom/sunia/naiv2/sdk/NAIEngine;

    invoke-virtual {v2, v1}, Lcom/sunia/naiv2/sdk/NAIEngine;->addRecognizePath(Lcom/sunia/HTREnginev2/sdk/RecognizePath;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager;->mNAIEngine:Lcom/sunia/naiv2/sdk/NAIEngine;

    invoke-virtual {p0, p2, p3}, Lcom/sunia/naiv2/sdk/NAIEngine;->getNAIResultForGraphic(II)Lcom/sunia/commonv2/bean/NAIResult;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sunia/commonv2/bean/NAIResult;->setMode(I)V

    invoke-virtual {p0, p3}, Lcom/sunia/commonv2/bean/NAIResult;->setFormulaMode(I)V

    return-object p0
.end method

.method public isValidate()Z
    .locals 2

    iget-object p0, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager;->mNAIEngine:Lcom/sunia/naiv2/sdk/NAIEngine;

    const/4 v0, 0x0

    const-string v1, "NAIEngineManager"

    if-nez p0, :cond_0

    const-string p0, "isValidate failed, mNAIEngine==null"

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngine;->naiEngineValid()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "isValidate failed, naiEngineValid=false"

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public naiResetConfig()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngineManager;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager;->mNAIEngine:Lcom/sunia/naiv2/sdk/NAIEngine;

    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngine;->naiResetConfig()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public naiSetConfig(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngineManager;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/naiv2/sdk/NAIEngineManager;->mNAIEngine:Lcom/sunia/naiv2/sdk/NAIEngine;

    invoke-virtual {p0, p1}, Lcom/sunia/naiv2/sdk/NAIEngine;->naiSetConfig(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sunia/naiv2/sdk/NAICallback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/sunia/naiv2/sdk/NAICallback;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    .line 1
    iget-object v8, v1, Lcom/sunia/naiv2/sdk/NAIEngineManager;->executors:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/sunia/naiv2/sdk/NAIEngineManager$1;

    move-object v0, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sunia/naiv2/sdk/NAIEngineManager$1;-><init>(Lcom/sunia/naiv2/sdk/NAIEngineManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sunia/naiv2/sdk/NAICallback;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sunia/naiv2/sdk/NAICallback;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/sunia/naiv2/sdk/NAICallback;",
            "Z)V"
        }
    .end annotation

    move-object v1, p0

    .line 2
    iget-object v9, v1, Lcom/sunia/naiv2/sdk/NAIEngineManager;->executors:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lcom/sunia/naiv2/sdk/NAIEngineManager$2;

    move-object v0, v10

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/sunia/naiv2/sdk/NAIEngineManager$2;-><init>(Lcom/sunia/naiv2/sdk/NAIEngineManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/sunia/naiv2/sdk/NAICallback;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
