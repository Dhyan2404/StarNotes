.class public final Lcom/onyx/android/sdk/data/account/bean/Device$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/data/account/bean/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0008R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/bean/Device$Companion;",
        "",
        "()V",
        "currentDevice",
        "Lcom/onyx/android/sdk/data/account/bean/Device;",
        "getAndroidId",
        "",
        "context",
        "Landroid/content/Context;",
        "getNavigationBarHeight",
        "",
        "updateCurrentDeviceInfo",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/account/bean/Device$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/SecurityUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/SecurityUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/SecurityUtils;->getAndroidId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNavigationBarHeight()I
    .locals 4

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "navigation_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensSafely(I)I

    move-result p0

    return p0
.end method

.method public final updateCurrentDeviceInfo(Landroid/content/Context;)Lcom/onyx/android/sdk/data/account/bean/Device;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/android/sdk/data/account/bean/Device;->access$getCurrentDevice$cp()Lcom/onyx/android/sdk/data/account/bean/Device;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onyx/android/sdk/data/account/bean/Device;->access$getCurrentDevice$cp()Lcom/onyx/android/sdk/data/account/bean/Device;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/account/bean/Device$Companion;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/account/bean/Device;->setAndroidId(Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/android/sdk/data/account/bean/Device;->access$getCurrentDevice$cp()Lcom/onyx/android/sdk/data/account/bean/Device;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v0, Lcom/onyx/android/sdk/data/account/bean/Device;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/account/bean/Device;-><init>()V

    invoke-static {v0}, Lcom/onyx/android/sdk/data/account/bean/Device;->access$setCurrentDevice$cp(Lcom/onyx/android/sdk/data/account/bean/Device;)V

    invoke-static {}, Lcom/onyx/android/sdk/data/account/bean/Device;->access$getCurrentDevice$cp()Lcom/onyx/android/sdk/data/account/bean/Device;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/account/bean/Device;->setWidth(I)V

    invoke-static {}, Lcom/onyx/android/sdk/data/account/bean/Device;->access$getCurrentDevice$cp()Lcom/onyx/android/sdk/data/account/bean/Device;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/Device;->setHeight(I)V

    invoke-static {}, Lcom/onyx/android/sdk/data/account/bean/Device;->access$getCurrentDevice$cp()Lcom/onyx/android/sdk/data/account/bean/Device;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/Device;->setModel(Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/android/sdk/data/account/bean/Device;->access$getCurrentDevice$cp()Lcom/onyx/android/sdk/data/account/bean/Device;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/Device;->setBrand(Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/android/sdk/data/account/bean/Device;->access$getCurrentDevice$cp()Lcom/onyx/android/sdk/data/account/bean/Device;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/Device;->setVersionInt(I)V

    invoke-static {}, Lcom/onyx/android/sdk/data/account/bean/Device;->access$getCurrentDevice$cp()Lcom/onyx/android/sdk/data/account/bean/Device;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/account/bean/Device;->setVersionRelease(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device fingerprint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onyx/android/sdk/data/account/bean/Device;->access$getCurrentDevice$cp()Lcom/onyx/android/sdk/data/account/bean/Device;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/bean/Device;->getFingerprint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/onyx/android/sdk/data/account/bean/Device;->access$getCurrentDevice$cp()Lcom/onyx/android/sdk/data/account/bean/Device;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/account/bean/Device$Companion;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/account/bean/Device;->setAndroidId(Ljava/lang/String;)V

    invoke-static {}, Lcom/onyx/android/sdk/data/account/bean/Device;->access$getCurrentDevice$cp()Lcom/onyx/android/sdk/data/account/bean/Device;

    move-result-object p0

    return-object p0
.end method
