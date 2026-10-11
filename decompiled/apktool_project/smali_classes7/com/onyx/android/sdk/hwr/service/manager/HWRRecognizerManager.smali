.class public final Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHWRRecognizerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRRecognizerManager.kt\ncom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,78:1\n1855#2,2:79\n*S KotlinDebug\n*F\n+ 1 HWRRecognizerManager.kt\ncom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager\n*L\n69#1:79,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008)\u0010*J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0016\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\r\u001a\u00020\u000cJ\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R.\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00040\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R$\u0010\u001c\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\"\u0010(\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010\u001f\u001a\u0004\u0008&\u0010!\"\u0004\u0008\'\u0010#\u00a8\u0006+"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;",
        "",
        "",
        "isRecognizerActivated",
        "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;",
        "getActiveRecognizer",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "recognizerType",
        "getRecognizer",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "input",
        "initRecognizer",
        "",
        "destroyAll",
        "a",
        "",
        "Ljava/util/Map;",
        "getRecognizerMap",
        "()Ljava/util/Map;",
        "setRecognizerMap",
        "(Ljava/util/Map;)V",
        "recognizerMap",
        "b",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "getSelectedRecognizerType",
        "()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "setSelectedRecognizerType",
        "(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V",
        "selectedRecognizerType",
        "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "c",
        "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "getRecognizeScheduler",
        "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;",
        "setRecognizeScheduler",
        "(Lcom/onyx/android/sdk/base/scheduler/RxScheduler;)V",
        "recognizeScheduler",
        "d",
        "getCloudScheduler",
        "setCloudScheduler",
        "cloudScheduler",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHWRRecognizerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRRecognizerManager.kt\ncom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,78:1\n1855#2,2:79\n*S KotlinDebug\n*F\n+ 1 HWRRecognizerManager.kt\ncom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager\n*L\n69#1:79,2\n*E\n"
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
            "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->a:Ljava/util/Map;

    sget-object v0, Lcom/onyx/android/sdk/base/scheduler/RxScheduler;->Companion:Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;

    const-string v2, "HWRThread"

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;->newSingleThreadManager$default(Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;Ljava/lang/String;JILjava/lang/Object;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object v1

    iput-object v1, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->c:Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    const-string v2, "CloudThread"

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;->newSingleThreadManager$default(Lcom/onyx/android/sdk/base/scheduler/RxScheduler$Companion;Ljava/lang/String;JILjava/lang/Object;)Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->d:Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->INSTANCE:Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRFactory;->getRecognizerFactory()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    return-object p0
.end method

.method public final destroyAll()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    invoke-interface {v1}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->destroy()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->b:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    return-void
.end method

.method public final getActiveRecognizer()Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->b:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->getRecognizer(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRException;->Companion:Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;

    const-string v0, "No Activated Recognizer Found"

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRException$Companion;->of(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/bean/HWRException;

    move-result-object p0

    throw p0
.end method

.method public final getCloudScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->d:Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-object p0
.end method

.method public final getRecognizeScheduler()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->c:Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-object p0
.end method

.method public final getRecognizer(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "recognizerType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->needDiscard()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->a(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->b:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    return-object v0
.end method

.method public final getRecognizerMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
            "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->a:Ljava/util/Map;

    return-object p0
.end method

.method public final getSelectedRecognizerType()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->b:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    return-object p0
.end method

.method public final initRecognizer(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "recognizerType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->getRecognizer(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->lifecycle()Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;->INITIALIZED:Lcom/onyx/android/sdk/hwr/data/constant/HWRLifecycle;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->destroy()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->a(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->a:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;->init(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V

    return-object v0
.end method

.method public final isRecognizerActivated()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->b:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setCloudScheduler(Lcom/onyx/android/sdk/base/scheduler/RxScheduler;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->d:Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-void
.end method

.method public final setRecognizeScheduler(Lcom/onyx/android/sdk/base/scheduler/RxScheduler;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/scheduler/RxScheduler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->c:Lcom/onyx/android/sdk/base/scheduler/RxScheduler;

    return-void
.end method

.method public final setRecognizerMap(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
            "Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->a:Ljava/util/Map;

    return-void
.end method

.method public final setSelectedRecognizerType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->b:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    return-void
.end method
