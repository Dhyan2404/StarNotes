.class public final Lcom/onyx/android/sdk/universal/util/HWREngineManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHWREngineManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWREngineManager.kt\ncom/onyx/android/sdk/universal/util/HWREngineManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,59:1\n1#2:60\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002J\u0016\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\u0002R\u001a\u0010\u0017\u001a\u00020\u00028\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u001c\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u0014R\u001d\u0010#\u001a\u0004\u0018\u00010\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\u0013\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/util/HWREngineManager;",
        "",
        "",
        "functionKey",
        "getEngineByFunction",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "getRecognizerTypeByFunction",
        "getDefaultLangByFunction",
        "engine",
        "getActivateServerByEngineType",
        "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;",
        "hwrBundle",
        "ensureEngineByFunction",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "input",
        "",
        "initHWRInputByEngine",
        "",
        "shouldEnableSegmentFeature",
        "a",
        "Ljava/lang/String;",
        "getDEFAULT_LANG",
        "()Ljava/lang/String;",
        "DEFAULT_LANG",
        "b",
        "Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "getDEFAULT_RECOGNIZER",
        "()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;",
        "DEFAULT_RECOGNIZER",
        "c",
        "HWR_RECOGNIZER_CONFIG_RAW_NAME",
        "Lcom/onyx/android/sdk/universal/ui/data/HwrRecognizerConfig;",
        "d",
        "Lkotlin/Lazy;",
        "()Lcom/onyx/android/sdk/universal/ui/data/HwrRecognizerConfig;",
        "hwrRecognizerConfig",
        "<init>",
        "()V",
        "sdk-universal_overseasRelease"
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
        "SMAP\nHWREngineManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWREngineManager.kt\ncom/onyx/android/sdk/universal/util/HWREngineManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,59:1\n1#2:60\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "hwr_recognizer_config"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager;

    const-string v0, "zh_CN"

    sput-object v0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->a:Ljava/lang/String;

    sget-object v0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->ML:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    sput-object v0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->b:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    sget-object v0, Lcom/onyx/android/sdk/universal/util/HWREngineManager$hwrRecognizerConfig$2;->INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager$hwrRecognizerConfig$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->d:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/universal/ui/data/HwrRecognizerConfig;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->d:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/ui/data/HwrRecognizerConfig;

    return-object p0
.end method

.method public final ensureEngineByFunction(Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "hwrBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->getRecognizerTypeByFunction(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;->getRecognizerManager()Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRRecognizerManager;->getRecognizer(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Lcom/onyx/android/sdk/hwr/service/recognizer/IHWRRecognizer;

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerTypeKt;->getEngineType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getActivateServerByEngineType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "engine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->a()Lcom/onyx/android/sdk/universal/ui/data/HwrRecognizerConfig;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/ui/data/HwrRecognizerConfig;->getActivateServerList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/hwr/data/constant/HWRActivateServer;

    sget-object v3, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->Companion:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType$Companion;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRActivateServer;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType$Companion;->getHwrRecognizerByName(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerTypeKt;->getEngineType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    check-cast v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRActivateServer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/hwr/data/constant/HWRActivateServer;->getServerType()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    return-object v0
.end method

.method public final getDEFAULT_LANG()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getDEFAULT_RECOGNIZER()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->b:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    return-object p0
.end method

.method public final getDefaultLangByFunction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "functionKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->a()Lcom/onyx/android/sdk/universal/ui/data/HwrRecognizerConfig;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/ui/data/HwrRecognizerConfig;->getEngineEntryList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/universal/ui/data/HwrEngineEntry;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/ui/data/HwrEngineEntry;->getFunctionKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    check-cast v1, Lcom/onyx/android/sdk/universal/ui/data/HwrEngineEntry;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/ui/data/HwrEngineEntry;->getDefaultLang()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    sget-object v0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->a:Ljava/lang/String;

    :cond_3
    return-object v0
.end method

.method public final getEngineByFunction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "functionKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->getRecognizerTypeByFunction(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerTypeKt;->getEngineType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getRecognizerTypeByFunction(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "functionKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->a()Lcom/onyx/android/sdk/universal/ui/data/HwrRecognizerConfig;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/ui/data/HwrRecognizerConfig;->getEngineEntryList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/universal/ui/data/HwrEngineEntry;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/ui/data/HwrEngineEntry;->getFunctionKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    check-cast v1, Lcom/onyx/android/sdk/universal/ui/data/HwrEngineEntry;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/ui/data/HwrEngineEntry;->getEngineName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    sget-object p0, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->Companion:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType$Companion;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType$Companion;->getHwrRecognizerByName(Ljava/lang/String;)Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object p0

    return-object p0
.end method

.method public final initHWRInputByEngine(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getRecognizerType()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerTypeKt;->getEngineType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->getActivateServerByEngineType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->setActivateServer(Ljava/lang/String;)V

    return-void
.end method

.method public final shouldEnableSegmentFeature(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "engine"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "GoogleML"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
