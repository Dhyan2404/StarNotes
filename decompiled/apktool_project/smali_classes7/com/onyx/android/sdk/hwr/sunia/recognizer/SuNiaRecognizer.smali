.class public final Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;
.super Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuNiaRecognizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuNiaRecognizer.kt\ncom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,98:1\n1864#2,3:99\n*S KotlinDebug\n*F\n+ 1 SuNiaRecognizer.kt\ncom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer\n*L\n84#1:99,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016R\u0014\u0010\u000f\u001a\u00020\u000c8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;",
        "Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;",
        "",
        "createEditor",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "getRecognizerType",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "input",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;",
        "export",
        "",
        "needActivate",
        "",
        "f",
        "Ljava/lang/String;",
        "TAG",
        "<init>",
        "()V",
        "sdk-sunia_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSuNiaRecognizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuNiaRecognizer.kt\ncom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,98:1\n1864#2,3:99\n*S KotlinDebug\n*F\n+ 1 SuNiaRecognizer.kt\ncom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer\n*L\n84#1:99,3\n*E\n"
    }
.end annotation


# instance fields
.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;-><init>()V

    const-string v0, "SuNiaRecognizer"

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;->f:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p(Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;->f:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public createEditor()V
    .locals 4

    invoke-super {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->createEditor()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->getParams()Lcom/sunia/HTREnginev2/sdk/Params;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->getOpenInput()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget v2, Lcom/sunia/HTREnginev2/sdk/RecognitionMode;->MODE_ECR:I

    invoke-interface {v0, v2}, Lcom/sunia/HTREnginev2/sdk/Params;->setMode(I)V

    sget-object v2, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->getConfigDataDir(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/sunia/HTREnginev2/sdk/Params;->setDataDir(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->getConfigName(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sunia/HTREnginev2/sdk/Params;->setConfigName(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sunia/HTREnginev2/sdk/Params;->setResultCalculate(Z)V

    invoke-interface {v0, v1}, Lcom/sunia/HTREnginev2/sdk/Params;->setResultCoordinate(Z)V

    const-wide/16 v2, 0x1f4

    invoke-interface {v0, v2, v3}, Lcom/sunia/HTREnginev2/sdk/Params;->setWordSplitTimeLot(J)V

    invoke-interface {v0, v1}, Lcom/sunia/HTREnginev2/sdk/Params;->setResultAssociational(Z)V

    invoke-interface {v0, v1}, Lcom/sunia/HTREnginev2/sdk/Params;->setResultCandidate(Z)V

    invoke-interface {v0, v1}, Lcom/sunia/HTREnginev2/sdk/Params;->setResultPartitionCoordinate(Z)V

    invoke-interface {v0, v1}, Lcom/sunia/HTREnginev2/sdk/Params;->setResultSpanProcessed(Z)V

    const-string v1, "enableStrokeId=true;"

    invoke-interface {v0, v1}, Lcom/sunia/HTREnginev2/sdk/Params;->setKeyValuesConfig(Ljava/lang/String;)V

    const-string v1, "enableTextModelAlignmentRelation=true;"

    invoke-interface {v0, v1}, Lcom/sunia/HTREnginev2/sdk/Params;->setKeyValuesConfig(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->getEditor()Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer$createEditor$1;

    invoke-direct {v2, p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer$createEditor$1;-><init>(Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;)V

    invoke-virtual {v1, v2}, Lcom/sunia/HTREnginev2/sdk/editor/Editor;->setRecognizeEngineListener(Lcom/sunia/HTREnginev2/sdk/RecognizeListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->getEditor()Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->open(Lcom/sunia/HTREnginev2/sdk/Params;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "opened: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;->RECOGNIZER_OPEN_FAIL:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;

    const-string v1, "RECOGNIZER_OPEN_FAIL"

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Lcom/onyx/android/sdk/hwr/data/bean/HWRException$ExceptionType;Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0
.end method

.method public export(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->getEditor()Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;-><init>()V

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->toRecognizePaths(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getSourceStrokePointGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaRecognizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incorrect path size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getSourceStrokePointGroups()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;-><init>()V

    return-object p0

    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v4, 0x1

    if-gez v4, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v2, Lcom/sunia/HTREnginev2/sdk/RecognizePath;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/sdk/RecognizePath;->getPoints()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->addStrokePoints(Ljava/util/List;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getSourceStrokePointGroups()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->doPageRecognize(Z)V

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->waitForIdle()V

    sget-object p1, Lcom/sunia/commonv2/global/HWREngineConstant$Constant;->GSON:Lcom/google/gson/Gson;

    invoke-interface {p0}, Lcom/sunia/HTREnginev2/sdk/editor/BaseEditor;->getContent()Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/sunia/commonv2/bean/PartiBean;

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "fromJson(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/sunia/commonv2/bean/PartiBean;

    sget-object p1, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;

    invoke-virtual {p1, p0, v1}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->toHWRConvertBean(Lcom/sunia/commonv2/bean/PartiBean;Ljava/util/HashMap;)Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    move-result-object p0

    return-object p0
.end method

.method public getRecognizerType()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->SUNIA:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    return-object p0
.end method

.method public needActivate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
