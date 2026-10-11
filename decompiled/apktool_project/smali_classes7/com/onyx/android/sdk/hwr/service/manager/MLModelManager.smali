.class public final Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010%\n\u0002\u0008\u000e\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u001d\u0010\u0008\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u0006*\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0004J\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00040\rJ\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u0004J\u000e\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u0004R\u001a\u0010\u0017\u001a\u00020\u00128\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u001a\u001a\u00020\u00128\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0014\u001a\u0004\u0008\u0019\u0010\u0016R\u001a\u0010\u001d\u001a\u00020\u00128\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0014\u001a\u0004\u0008\u001c\u0010\u0016R#\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u001e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R#\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u001e8\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010 \u001a\u0004\u0008%\u0010\"R#\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u001e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\'\u0010 \u001a\u0004\u0008(\u0010\"\u00a8\u0006,"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;",
        "",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
        "resource",
        "Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;",
        "selectModel",
        "T",
        "Lcom/google/android/gms/tasks/Task;",
        "execute",
        "(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;",
        "model",
        "",
        "isModelDownloaded",
        "",
        "getDownloadedModels",
        "",
        "downloadModel",
        "deleteModel",
        "",
        "a",
        "Ljava/lang/String;",
        "getKEY_SHAPE",
        "()Ljava/lang/String;",
        "KEY_SHAPE",
        "b",
        "getKEY_DRAW",
        "KEY_DRAW",
        "c",
        "getKEY_EMOJI",
        "KEY_EMOJI",
        "",
        "d",
        "Ljava/util/Map;",
        "getLangUnrelatedModelMap",
        "()Ljava/util/Map;",
        "langUnrelatedModelMap",
        "e",
        "getTextModelMap",
        "textModelMap",
        "f",
        "getGestureModelMap",
        "gestureModelMap",
        "<init>",
        "()V",
        "sdk-hwr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;

    const-string v0, "Shape"

    sput-object v0, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->a:Ljava/lang/String;

    const-string v1, "Draw"

    sput-object v1, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->b:Ljava/lang/String;

    const-string v2, "Emoji"

    sput-object v2, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->c:Ljava/lang/String;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v3, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->d:Ljava/util/Map;

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v4, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->e:Ljava/util/Map;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v5, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->f:Ljava/util/Map;

    const-string v6, "zxx-Zsym-x-shapes"

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "zxx-Zsym-x-autodraw"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "zxx-Zsye-x-emoji"

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "zh-Hani-CN"

    const-string v1, "zh_CN"

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "zh-Hani-TW"

    const-string v2, "zh_TW"

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "en-US"

    const-string v3, "en_US"

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ja"

    const-string v6, "ja_JP"

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ko"

    const-string v7, "ko_KR"

    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ru"

    const-string v8, "ru_RU"

    invoke-interface {v4, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "de"

    const-string v9, "de_DE"

    invoke-interface {v4, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fr"

    const-string v10, "fr_FR"

    invoke-interface {v4, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "it"

    const-string v11, "it_IT"

    invoke-interface {v4, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pt"

    const-string v12, "pt_PT"

    invoke-interface {v4, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "es"

    const-string v13, "es_ES"

    invoke-interface {v4, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "zh-Hani-CN-x-gesture"

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "zh-Hani-TW-x-gesture"

    invoke-interface {v5, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "en-US-x-gesture"

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ja-x-gesture"

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ko-x-gesture"

    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ru-x-gesture"

    invoke-interface {v5, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "de-x-gesture"

    invoke-interface {v5, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fr-x-gesture"

    invoke-interface {v5, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "it-x-gesture"

    invoke-interface {v5, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pt-x-gesture"

    invoke-interface {v5, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "es-x-gesture"

    invoke-interface {v5, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final deleteModel(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)V
    .locals 1
    .param p1    # Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/mlkit/common/model/RemoteModelManager;->getInstance()Lcom/google/mlkit/common/model/RemoteModelManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mlkit/common/model/RemoteModelManager;->deleteDownloadedModel(Lcom/google/mlkit/common/model/RemoteModel;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const-string v0, "deleteDownloadedModel(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->execute(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    return-void
.end method

.method public final downloadModel(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)V
    .locals 2
    .param p1    # Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/mlkit/common/model/RemoteModelManager;->getInstance()Lcom/google/mlkit/common/model/RemoteModelManager;

    move-result-object v0

    new-instance v1, Lcom/google/mlkit/common/model/DownloadConditions$Builder;

    invoke-direct {v1}, Lcom/google/mlkit/common/model/DownloadConditions$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/mlkit/common/model/DownloadConditions$Builder;->build()Lcom/google/mlkit/common/model/DownloadConditions;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/mlkit/common/model/RemoteModelManager;->download(Lcom/google/mlkit/common/model/RemoteModel;Lcom/google/mlkit/common/model/DownloadConditions;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const-string v0, "download(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->execute(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    return-void
.end method

.method public final execute(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x3c

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1, p0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getDownloadedModels()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/google/mlkit/common/model/RemoteModelManager;->getInstance()Lcom/google/mlkit/common/model/RemoteModelManager;

    move-result-object v0

    const-class v1, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    invoke-virtual {v0, v1}, Lcom/google/mlkit/common/model/RemoteModelManager;->getDownloadedModels(Ljava/lang/Class;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const-string v1, "getDownloadedModels(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->execute(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "execute(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getGestureModelMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->f:Ljava/util/Map;

    return-object p0
.end method

.method public final getKEY_DRAW()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getKEY_EMOJI()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getKEY_SHAPE()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getLangUnrelatedModelMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->d:Ljava/util/Map;

    return-object p0
.end method

.method public final getTextModelMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->e:Ljava/util/Map;

    return-object p0
.end method

.method public final isModelDownloaded(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;)Z
    .locals 1
    .param p1    # Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/mlkit/common/model/RemoteModelManager;->getInstance()Lcom/google/mlkit/common/model/RemoteModelManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/mlkit/common/model/RemoteModelManager;->isModelDownloaded(Lcom/google/mlkit/common/model/RemoteModel;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const-string v0, "isModelDownloaded(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->execute(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "execute(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final selectModel(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "resource"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getContentType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Shape"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->d:Ljava/util/Map;

    sget-object v0, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->b:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Drawing"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->d:Ljava/util/Map;

    sget-object v0, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->b:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Emoji"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->d:Ljava/util/Map;

    sget-object v0, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->c:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getLang()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Gesture"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/onyx/android/sdk/hwr/service/manager/MLModelManager;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getLang()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_4
    if-eqz p0, :cond_5

    invoke-static {p0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;->fromLanguageTag(Ljava/lang/String;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;->builder(Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModelIdentifier;)Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel$Builder;->build()Lcom/google/mlkit/vision/digitalink/DigitalInkRecognitionModel;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_5
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string p1, "Resource Not Found"

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0
.end method
