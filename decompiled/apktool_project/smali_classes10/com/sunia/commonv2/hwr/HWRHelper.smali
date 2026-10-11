.class public Lcom/sunia/commonv2/hwr/HWRHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HWRHelper"

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

    sput-object v0, Lcom/sunia/commonv2/hwr/HWRHelper;->cacheEngineMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sunia/commonv2/hwr/HWRHelper;->cacheEditorMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/sunia/commonv2/hwr/HWRHelper;->cacheEngineMap:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$100()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/sunia/commonv2/hwr/HWRHelper;->cacheEditorMap:Ljava/util/Map;

    return-object v0
.end method

.method public static authorize(Lcom/sunia/commonv2/callback/IHWRAuthorResultCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/sunia/commonv2/hwr/AuthHelper;->authorize(Lcom/sunia/commonv2/callback/IHWRAuthorResultCallback;)V

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

.method public static createEditor(Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "HWRHelper"

    .line 1
    invoke-static {v0, p0, p1, p2}, Lcom/sunia/commonv2/hwr/HWRHelper;->createEditor(Ljava/lang/String;Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V

    return-void
.end method

.method public static createEditor(Lcom/sunia/HTREnginev2/sdk/Engine;Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V
    .locals 3

    const-string v0, "HWRHelper"

    const-string v1, "createEditor"

    .line 3
    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_5

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/sdk/Engine;->isValidate()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "create Editor Exception,engine.isValidate() is false"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x2

    invoke-interface {p3, v1, p1, p0}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onError(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/lang/Exception;)V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/sunia/HTREnginev2/sdk/Params;->createInstance()Lcom/sunia/HTREnginev2/sdk/Params;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "create Editor Exception,Params is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x3

    invoke-interface {p3, v1, p1, p0}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onError(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/lang/Exception;)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/sdk/Engine;->createEditor(Lcom/sunia/HTREnginev2/sdk/Params;)Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    move-result-object p0

    if-nez p0, :cond_2

    .line 9
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "create Editor Exception,editor is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x4

    invoke-interface {p3, v1, p1, p0}, Lcom/sunia/HTREnginev2/sdk/RecognizeListener;->onError(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/lang/Exception;)V

    return-void

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;->getValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/sdk/Params;->setMode(I)V

    .line 11
    invoke-virtual {p2}, Lcom/sunia/commonv2/bean/ConfigBean;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/sdk/Params;->setDataDir(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Lcom/sunia/commonv2/bean/ConfigBean;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/sdk/Params;->setConfigName(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 13
    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/sdk/Params;->setResultCalculate(Z)V

    const/4 p1, 0x1

    .line 14
    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/sdk/Params;->setResultCoordinate(Z)V

    const-wide/16 v1, 0x1f4

    .line 15
    invoke-interface {v0, v1, v2}, Lcom/sunia/HTREnginev2/sdk/Params;->setWordSplitTimeLot(J)V

    .line 16
    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/sdk/Params;->setResultAssociational(Z)V

    .line 17
    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/sdk/Params;->setResultCandidate(Z)V

    .line 18
    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/sdk/Params;->setResultPartitionCoordinate(Z)V

    .line 19
    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/sdk/Params;->setResultSpanProcessed(Z)V

    .line 20
    invoke-static {}, Lcom/sunia/commonv2/hwr/HWRHelper;->buildParamsStr()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sunia/HTREnginev2/sdk/Params;->setKeyValuesConfig(Ljava/lang/String;)V

    .line 21
    new-instance p1, Lcom/sunia/commonv2/hwr/HWRHelper$3;

    invoke-direct {p1, p3}, Lcom/sunia/commonv2/hwr/HWRHelper$3;-><init>(Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->setRecognizeEngineListener(Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V

    .line 22
    invoke-interface {p0, v0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->open(Lcom/sunia/HTREnginev2/sdk/Params;)Z

    return-void

    .line 23
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "parameter recognizeListener is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "parameter configBean is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "parameter engine is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createEditor(Ljava/lang/String;Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/sunia/commonv2/hwr/HWRHelper$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sunia/commonv2/hwr/HWRHelper$1;-><init>(Ljava/lang/String;Lcom/sunia/HTREnginev2/sdk/ERecognitionMode;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V

    invoke-static {v0}, Lcom/sunia/commonv2/hwr/HWRHelper;->authorize(Lcom/sunia/commonv2/callback/IHWRAuthorResultCallback;)V

    return-void
.end method

.method public static createEngine(Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;)V
    .locals 9

    sget-object v0, Lcom/sunia/commonv2/global/HWREngineVariable;->sEngineVersion:Lcom/sunia/commonv2/enum2/EEngineVersion;

    sget-object v1, Lcom/sunia/commonv2/enum2/EEngineVersion;->v521:Lcom/sunia/commonv2/enum2/EEngineVersion;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/sunia/commonv2/module/ICommonModule;->getApplication()Landroid/app/Application;

    move-result-object v1

    sget-object v2, Lcom/sunia/commonv2/global/HWREngineVariable;->appId:Ljava/lang/String;

    sget-object v3, Lcom/sunia/commonv2/global/HWREngineVariable;->publicKey:Ljava/lang/String;

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/sunia/commonv2/module/ICommonModule;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/sunia/commonv2/module/ICommonModule;->getAuthorizeFile()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sunia/commonv2/global/HWREngineVariable;->offlineStr:Ljava/lang/String;

    const-string v7, ""

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/sunia/HTREnginev2/sdk/Engine;->createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/sunia/HTREnginev2/sdk/Engine;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/sunia/commonv2/module/ICommonModule;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v1

    invoke-interface {v1}, Lcom/sunia/commonv2/module/ICommonModule;->getAuthorizeFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/sdk/Engine;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sunia/HTREnginev2/sdk/Engine;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/sunia/commonv2/hwr/HWRHelper$2;

    invoke-direct {v1, p0}, Lcom/sunia/commonv2/hwr/HWRHelper$2;-><init>(Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;)V

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/sdk/Engine;->setInitializeCallback(Lcom/sunia/HTREnginev2/sdk/EngineAuthenticateCallback;)V

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object p0

    invoke-interface {p0}, Lcom/sunia/commonv2/module/ICommonModule;->getEngineLogDir()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sunia/HTREnginev2/sdk/Engine;->setLogDir(Ljava/lang/String;)V

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object p0

    invoke-interface {p0}, Lcom/sunia/commonv2/module/ICommonModule;->getAndroidLogLevel()I

    move-result p0

    invoke-static {p0}, Lcom/sunia/commonv2/util/HWRUtil;->andLogLevel2EngineLogLevel(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sunia/HTREnginev2/sdk/Engine;->setDebugLevel(I)V

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/sdk/Engine;->start()V

    return-void
.end method

.method public static getAssociate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "type"

    const-string v2, "associationalWord"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "HWRHelper"

    invoke-static {v1, p0}, Lcom/sunia/HTREnginev2/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultConfigBean()Lcom/sunia/commonv2/bean/ConfigBean;
    .locals 2

    new-instance v0, Lcom/sunia/commonv2/bean/ConfigBean;

    invoke-direct {v0}, Lcom/sunia/commonv2/bean/ConfigBean;-><init>()V

    const-string v1, "math/conf/math_calculator/"

    invoke-virtual {v0, v1}, Lcom/sunia/commonv2/bean/ConfigBean;->setFilePath(Ljava/lang/String;)V

    const-string v1, "math_calculator.conf"

    invoke-virtual {v0, v1}, Lcom/sunia/commonv2/bean/ConfigBean;->setFileName(Ljava/lang/String;)V

    const-string v1, "math_calculator"

    invoke-virtual {v0, v1}, Lcom/sunia/commonv2/bean/ConfigBean;->setShowName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static release(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Lcom/sunia/HTREnginev2/sdk/Engine;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sunia/commonv2/hwr/HWRHelper;->releaseEditor(Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V

    .line 2
    invoke-static {p1}, Lcom/sunia/commonv2/hwr/HWRHelper;->releaseEngine(Lcom/sunia/HTREnginev2/sdk/Engine;)V

    return-void
.end method

.method public static release(Ljava/lang/String;)V
    .locals 2

    .line 3
    sget-object v0, Lcom/sunia/commonv2/hwr/HWRHelper;->cacheEditorMap:Ljava/util/Map;

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

    invoke-static {v0}, Lcom/sunia/commonv2/hwr/HWRHelper;->releaseEditor(Lcom/sunia/HTREnginev2/sdk/editor/Editor;)V

    .line 6
    :cond_0
    sget-object v0, Lcom/sunia/commonv2/hwr/HWRHelper;->cacheEngineMap:Ljava/util/Map;

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

    invoke-static {p0}, Lcom/sunia/commonv2/hwr/HWRHelper;->releaseEngine(Lcom/sunia/HTREnginev2/sdk/Engine;)V

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

    const-string v0, "HWRHelper"

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

    const-string v0, "HWRHelper"

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
    invoke-static {p0, v0}, Lcom/sunia/commonv2/hwr/HWRHelper;->updateEditor(Lcom/sunia/HTREnginev2/sdk/editor/Editor;Lcom/sunia/HTREnginev2/sdk/Params;)Z

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
