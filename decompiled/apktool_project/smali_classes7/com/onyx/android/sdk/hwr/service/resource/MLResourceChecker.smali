.class public final Lcom/onyx/android/sdk/hwr/service/resource/MLResourceChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\t\u001a\u00020\u0004H\u0016J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000eH\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/onyx/android/sdk/hwr/service/resource/MLResourceChecker;",
        "Lcom/onyx/android/sdk/hwr/service/resource/IHWRResourceChecker;",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;",
        "input",
        "",
        "checkResource",
        "checkTextResource",
        "checkGestureResource",
        "checkShapeResource",
        "isDefaultResourceInstalled",
        "Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;",
        "resource",
        "isResourceDownloaded",
        "isResourceDownloading",
        "",
        "contentType",
        "lang",
        "a",
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/hwr/service/resource/MLResourceChecker;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/hwr/service/resource/MLResourceChecker;

    invoke-direct {v0}, Lcom/onyx/android/sdk/hwr/service/resource/MLResourceChecker;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/hwr/service/resource/MLResourceChecker;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/resource/MLResourceChecker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    new-instance p0, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->setLang(Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/hwr/service/util/MLResource;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/util/MLResource;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/hwr/service/util/MLResource;->isResourceInstalled(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Z

    move-result p0

    return p0
.end method

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
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->isGestureEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "Gesture"

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getLang()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/hwr/service/resource/MLResourceChecker;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public checkResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getRecognizerType()Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;->ML_MIXED:Lcom/onyx/android/sdk/hwr/data/constant/HWRRecognizerType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/resource/MLResourceChecker;->checkTextResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/resource/MLResourceChecker;->checkGestureResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/resource/MLResourceChecker;->checkShapeResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getLang()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/hwr/service/resource/MLResourceChecker;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public checkShapeResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->isShapeEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "Shape"

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getLang()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/hwr/service/resource/MLResourceChecker;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public checkTextResource(Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->isTextEnable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "Text"

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;->getLang()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/hwr/service/resource/MLResourceChecker;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isDefaultResourceInstalled()Z
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/hwr/service/util/MLResource;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/util/MLResource;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/util/MLResource;->isDefaultResourceInstalled()Z

    move-result p0

    return p0
.end method

.method public isResourceDownloaded(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "resource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/hwr/service/util/MLResource;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/util/MLResource;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/hwr/service/util/MLResource;->getINTERNAL_LANG_LIST()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/hwr/service/resource/MLResourceChecker;->isDefaultResourceInstalled()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/hwr/service/util/MLResource;->isResourceInstalled(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Z

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

    sget-object p0, Lcom/onyx/android/sdk/hwr/service/util/MLResource;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/util/MLResource;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/hwr/service/util/MLResource;->isDownloading(Lcom/onyx/android/sdk/hwr/data/bean/HWRResource;)Z

    move-result p0

    return p0
.end method
