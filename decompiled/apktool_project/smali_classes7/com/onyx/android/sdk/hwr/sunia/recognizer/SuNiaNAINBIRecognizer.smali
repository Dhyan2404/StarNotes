.class public final Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;
.super Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSuNiaNAINBIRecognizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuNiaNAINBIRecognizer.kt\ncom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,136:1\n1855#2,2:137\n1855#2,2:139\n*S KotlinDebug\n*F\n+ 1 SuNiaNAINBIRecognizer.kt\ncom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer\n*L\n95#1:137,2\n105#1:139,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008(\u0010)J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016J\u0008\u0010\t\u001a\u00020\u0004H\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000c2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0002R(\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0014\u0010\'\u001a\u00020$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006*"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;",
        "Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "input",
        "",
        "open",
        "createEditor",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "getRecognizerType",
        "clear",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;",
        "export",
        "Lio/reactivex/rxjava3/core/Observable;",
        "exportObservable",
        "Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;",
        "b",
        "Lio/reactivex/rxjava3/subjects/BehaviorSubject;",
        "f",
        "Lio/reactivex/rxjava3/subjects/BehaviorSubject;",
        "getSubject",
        "()Lio/reactivex/rxjava3/subjects/BehaviorSubject;",
        "setSubject",
        "(Lio/reactivex/rxjava3/subjects/BehaviorSubject;)V",
        "subject",
        "",
        "g",
        "I",
        "getMode",
        "()I",
        "setMode",
        "(I)V",
        "mode",
        "Lcom/sunia/naiv2/sdk/NAICallback;",
        "h",
        "Lcom/sunia/naiv2/sdk/NAICallback;",
        "naiCallback",
        "Lcom/sunia/nbiv2/sdk/NBICallbackV2;",
        "i",
        "Lcom/sunia/nbiv2/sdk/NBICallbackV2;",
        "drawNBIPathCallback",
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
        "SMAP\nSuNiaNAINBIRecognizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SuNiaNAINBIRecognizer.kt\ncom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,136:1\n1855#2,2:137\n1855#2,2:139\n*S KotlinDebug\n*F\n+ 1 SuNiaNAINBIRecognizer.kt\ncom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer\n*L\n95#1:137,2\n105#1:139,2\n*E\n"
    }
.end annotation


# instance fields
.field public f:Lio/reactivex/rxjava3/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/BehaviorSubject<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:I

.field public final h:Lcom/sunia/naiv2/sdk/NAICallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/sunia/nbiv2/sdk/NBICallbackV2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;-><init>()V

    invoke-static {}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->create()Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;->f:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    new-instance v0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer$naiCallback$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer$naiCallback$1;-><init>(Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;->h:Lcom/sunia/naiv2/sdk/NAICallback;

    new-instance v0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer$drawNBIPathCallback$1;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer$drawNBIPathCallback$1;-><init>(Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;->i:Lcom/sunia/nbiv2/sdk/NBICallbackV2;

    return-void
.end method

.method public static final synthetic access$getDrawNBIPathCallback$p(Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;)Lcom/sunia/nbiv2/sdk/NBICallbackV2;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;->i:Lcom/sunia/nbiv2/sdk/NBICallbackV2;

    return-object p0
.end method

.method public static final synthetic access$getNaiParameterSingleBean(Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;)Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;->b()Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->getOpenInput()Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getArgJson()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-class v1, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;

    sget-object v0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer$getNaiParameterSingleBean$1;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer$getNaiParameterSingleBean$1;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/hwr/sunia/data/bean/SuNiaNBIParamSet;

    return-object p0
.end method

.method public clear()V
    .locals 0

    invoke-static {}, Lcom/sunia/naiv2/sdk/NAIEngineManager;->getInstance()Lcom/sunia/naiv2/sdk/NAIEngineManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/naiv2/sdk/NAIEngineManager;->clearPoints()V

    return-void
.end method

.method public createEditor()V
    .locals 0

    return-void
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

    invoke-static {}, Lcom/sunia/naiv2/sdk/NAIEngineManager;->getInstance()Lcom/sunia/naiv2/sdk/NAIEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sunia/naiv2/sdk/NAIEngineManager;->clearPoints()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "export mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/sunia/naiv2/sdk/NAIEngineManager;->getInstance()Lcom/sunia/naiv2/sdk/NAIEngineManager;

    move-result-object v2

    sget-object v4, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getPointerEvents()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaHWRUtils;->toRecognizePaths(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;->g:I

    invoke-virtual {v2, p1, p0}, Lcom/sunia/naiv2/sdk/NAIEngineManager;->getNAIResult(Ljava/util/List;I)Lcom/sunia/commonv2/bean/NAIResult;

    move-result-object p0

    const-string p1, "getNAIResult(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/NAIResult;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->getInstance()Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, p0, v4, v5}, Lcom/sunia/nbiv2/sdk/NBIEngineManagerV2;->doBeautifyTransform(Lcom/sunia/commonv2/bean/NAIResult;J)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "export: success: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sunia/commonv2/bean/NAIResult;->isSuccess()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, p1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;-><init>()V

    return-object p0
.end method

.method public exportObservable(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lio/reactivex/rxjava3/subjects/BehaviorSubject;->create()Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;->f:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;->export(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;->f:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    return-object p0
.end method

.method public final getMode()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;->g:I

    return p0
.end method

.method public getRecognizerType()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->SUNIA_NAI_NBI:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    return-object p0
.end method

.method public final getSubject()Lio/reactivex/rxjava3/subjects/BehaviorSubject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/subjects/BehaviorSubject<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;->f:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    return-object p0
.end method

.method public open(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 10
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaBaseRecognizer;->setOpenInput(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getLang()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FileUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileUtils;

    const-string v2, "nai/strokes"

    const-string v3, "hdb"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/utils/FileUtils;->getAssetFiles$default(Lcom/onyx/android/sdk/base/utils/FileUtils;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "open(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sunia/naiv2/sdk/NAIEngineManager;->getInstance()Lcom/sunia/naiv2/sdk/NAIEngineManager;

    move-result-object v2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/sunia/commonv2/module/CommonModule;->getCommonModule()Lcom/sunia/commonv2/module/ICommonModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/sunia/commonv2/module/ICommonModule;->getAuthorizeFile()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nai/conf/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".conf"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;->h:Lcom/sunia/naiv2/sdk/NAICallback;

    move-object v7, v9

    invoke-virtual/range {v2 .. v8}, Lcom/sunia/naiv2/sdk/NAIEngineManager;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sunia/naiv2/sdk/NAICallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    invoke-static {p1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :cond_2
    throw p0
.end method

.method public final setMode(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;->g:I

    return-void
.end method

.method public final setSubject(Lio/reactivex/rxjava3/subjects/BehaviorSubject;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/subjects/BehaviorSubject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/BehaviorSubject<",
            "Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/sunia/recognizer/SuNiaNAINBIRecognizer;->f:Lio/reactivex/rxjava3/subjects/BehaviorSubject;

    return-void
.end method
