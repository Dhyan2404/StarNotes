.class public Lcom/sunia/commonv2/hwr/v2/HWRHelperV2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HWRHelperV2"

.field private static cacheEditorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sunia/HTREnginev2/sdk/editor/Editor;",
            ">;>;"
        }
    .end annotation
.end field

.field private static cacheEngineMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sunia/HTREnginev2/sdk/Engine;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2;->cacheEngineMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2;->cacheEditorMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authorizeAndCreateEngine(Ljava/lang/String;Ljava/lang/String;Lcom/sunia/commonv2/auth/HWRURLType;Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/sunia/commonv2/module/ICommonModule;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isHWRDemo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sunia/commonv2/auth/HWRURLType;->TEST:Lcom/sunia/commonv2/auth/HWRURLType;

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "test url type not support"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string v0, ""

    new-instance v1, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2$1;

    invoke-direct {v1, p3}, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2$1;-><init>(Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;)V

    invoke-static {p0, p1, v0, p2, v1}, Lcom/sunia/commonv2/hwr/v2/AuthHelperV2;->authorizeV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sunia/commonv2/auth/HWRURLType;Lcom/sunia/commonv2/callback/IHWRAuthorResultCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "-100"

    invoke-interface {p3, p0, p1}, Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;->onError(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static buildParamsStr()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableNgram=true;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "enablePostProcess=true;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "enableTextMergeWord=true;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "enableMathCoveringPosition=true;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "enableMathDotConvertMultiplication=false;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v1

    invoke-interface {v1}, Lcom/sunia/commonv2/module/ICommonModule;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "dpi=%f;"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createEditor(Lcom/sunia/HTREnginev2/sdk/Engine;Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V
    .locals 3

    const-string v0, "HWRHelperV2"

    const-string v1, "createEditor"

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_5

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sdk/Engine;->isValidate()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "create Editor Exception,engine.isValidate() is false"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x2

    invoke-interface {p3, v1, p1, p0}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onError(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/lang/Exception;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sunia/HTREnginev2/sdk/Params;->createInstance()Lcom/sunia/HTREnginev2/sdk/Params;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "create Editor Exception,Params is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x3

    invoke-interface {p3, v1, p1, p0}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onError(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/lang/Exception;)V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/sdk/Engine;->createEditor(Lcom/sunia/HTREnginev2/sdk/Params;)Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    move-result-object p0

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "create Editor Exception,editor is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x4

    invoke-interface {p3, v1, p1, p0}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onError(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/lang/Exception;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->getValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/sdk/Params;->setMode(I)V

    invoke-virtual {p2}, Lcom/sunia/commonv2/bean/ConfigBean;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/sdk/Params;->setDataDir(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sunia/commonv2/bean/ConfigBean;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/sdk/Params;->setConfigName(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/sdk/Params;->setResultCalculate(Z)V

    const/4 p1, 0x1

    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/sdk/Params;->setResultCoordinate(Z)V

    const-wide/16 v1, 0x1f4

    invoke-interface {v0, v1, v2}, Lcom/sunia/HTREnginev2/sdk/Params;->setWordSplitTimeLot(J)V

    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/sdk/Params;->setResultAssociational(Z)V

    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/sdk/Params;->setResultCandidate(Z)V

    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/sdk/Params;->setResultPartitionCoordinate(Z)V

    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/sdk/Params;->setResultSpanProcessed(Z)V

    invoke-static {}, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2;->buildParamsStr()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/sdk/Params;->setKeyValuesConfig(Ljava/lang/String;)V

    new-instance p1, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2$2;

    invoke-direct {p1, p3}, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2$2;-><init>(Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->setRecognizeEngineListener(Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V

    invoke-interface {p0, v0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->open(Lcom/sunia/HTREnginev2/sdk/Params;)Z

    return-void

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "parameter recognizeListener is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "parameter configBean is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "parameter engine is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static release(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Lcom/sunia/HTREnginev2/sdk/Engine;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2;->releaseEditor(Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V

    .line 2
    invoke-static {p1}, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2;->releaseEngine(Lcom/sunia/HTREnginev2/sdk/Engine;)V

    return-void
.end method

.method public static release(Ljava/lang/String;)V
    .locals 2

    .line 3
    sget-object v0, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2;->cacheEditorMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-static {v0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    invoke-static {v0}, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2;->releaseEditor(Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V

    .line 6
    :cond_0
    sget-object v0, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2;->cacheEngineMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 7
    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRUtil;->isNotEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/sdk/Engine;

    invoke-static {p0}, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2;->releaseEngine(Lcom/sunia/HTREnginev2/sdk/Engine;)V

    :cond_1
    return-void
.end method

.method public static releaseEditor(Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V
    .locals 1

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->editorPause()V

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "HWRHelperV2"

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static releaseEngine(Lcom/sunia/HTREnginev2/sdk/Engine;)V
    .locals 1

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sdk/Engine;->stopEngine()V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sdk/Engine;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "HWRHelperV2"

    invoke-static {v0, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static updateEditor(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Lcom/sunia/HTREnginev2/sdk/Params;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->updateParams(Lcom/sunia/HTREnginev2/sdk/Params;)Z

    move-result p0

    return p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "parameter params is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "parameter engine is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static updateEditor(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Lcom/sunia/commonv2/bean/ConfigBean;)Z
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->obtainParams()Lcom/sunia/HTREnginev2/sdk/Params;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/ConfigBean;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sunia/HTREnginev2/sdk/Params;->setDataDir(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/sunia/commonv2/bean/ConfigBean;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/sdk/Params;->setConfigName(Ljava/lang/String;)V

    .line 4
    invoke-static {p0, v0}, Lcom/sunia/commonv2/hwr/v2/HWRHelperV2;->updateEditor(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Lcom/sunia/HTREnginev2/sdk/Params;)Z

    move-result p0

    return p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "parameter configBean is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "parameter engine is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
