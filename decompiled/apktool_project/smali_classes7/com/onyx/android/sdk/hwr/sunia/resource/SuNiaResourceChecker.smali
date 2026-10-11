.class public final Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0008\u001a\u00020\u0004H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceChecker;",
        "Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;",
        "()V",
        "checkResource",
        "",
        "input",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "checkTextResource",
        "isDefaultResourceInstalled",
        "isResourceDownloaded",
        "resource",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
        "isResourceDownloading",
        "sdk-sunia_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceChecker;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceChecker;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceChecker;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceChecker;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceChecker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkExtendResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker$DefaultImpls;->checkExtendResource(Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z

    move-result p0

    return p0
.end method

.method public checkGestureResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker$DefaultImpls;->checkGestureResource(Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z

    move-result p0

    return p0
.end method

.method public checkResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceChecker;->checkTextResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z

    move-result p0

    return p0
.end method

.method public checkShapeResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker$DefaultImpls;->checkShapeResource(Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z

    move-result p0

    return p0
.end method

.method public checkTextResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "input"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->isTextEnable()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getRecognizerType()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerTypeKt;->getEngineType(Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setEngineType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getLang()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setLang(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getContentType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setContentType(Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->isResourceInstalled(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Z

    move-result p0

    return p0
.end method

.method public isDefaultResourceInstalled()Z
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->isDefaultResourceInstalled()Z

    move-result p0

    return p0
.end method

.method public isResourceDownloaded(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/hwr/sunia/data/const/SuniaConstant;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/data/const/SuniaConstant;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/sunia/data/const/SuniaConstant;->getINTERNAL_LANG_LIST()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getLang()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/sunia/resource/SuNiaResourceChecker;->isDefaultResourceInstalled()Z

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->isResourceInstalled(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Z

    move-result p0

    return p0
.end method

.method public isResourceDownloading(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "resource"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->INSTANCE:Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/sunia/utils/SuNiaResource;->isDownloading(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Z

    move-result p0

    return p0
.end method
