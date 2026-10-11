.class public Lcom/huawei/stylus/penengine/HwPenEngineManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "HwPenEngineManager"

.field public static final b:Ljava/lang/String; = "com.huawei.penkit.impl.KitManager"

.field public static c:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/huawei/penkit/impl/KitManager;)Ljava/util/Optional;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/penkit/impl/KitManager;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/huawei/stylus/penengine/VersionInfo;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/huawei/penkit/impl/KitManager;->getVersionInfo()Lcom/huawei/stylus/penengine/version/IVersionInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Lcom/huawei/stylus/penengine/VersionInfo;

    invoke-direct {v0, p0}, Lcom/huawei/stylus/penengine/VersionInfo;-><init>(Lcom/huawei/stylus/penengine/version/IVersionInfo;)V

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static getApiLevel()I
    .locals 1

    sget v0, Lcom/huawei/stylus/penengine/HwPenEngineManager;->c:I

    return v0
.end method

.method public static isApiLevelCompatible(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    invoke-static {}, Lcom/huawei/stylus/penengine/HwPenEngineManager;->getApiLevel()I

    move-result v1

    if-lt v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEngineRuntimeAvailable(Landroid/content/Context;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/huawei/stylus/penengine/VersionInfo;->isKitRuntimeAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    :try_start_0
    const-string v1, "com.huawei.penkit.impl.KitManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v1, Lcom/huawei/penkit/impl/KitManager;

    invoke-direct {v1, p0}, Lcom/huawei/penkit/impl/KitManager;-><init>(Landroid/content/Context;)V

    :try_start_1
    invoke-static {v1}, Lcom/huawei/stylus/penengine/HwPenEngineManager;->a(Lcom/huawei/penkit/impl/KitManager;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/huawei/stylus/penengine/VersionInfo;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p0}, Lcom/huawei/stylus/penengine/VersionInfo;->getApiLevel()I

    move-result v0

    sput v0, Lcom/huawei/stylus/penengine/HwPenEngineManager;->c:I

    invoke-virtual {p0}, Lcom/huawei/stylus/penengine/VersionInfo;->isAllCompatible()Z

    move-result p0

    return p0

    :catch_0
    sget-object p0, Lcom/huawei/stylus/penengine/HwPenEngineManager;->a:Ljava/lang/String;

    const-string v1, "KitManager NoSuchElement"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_1
    sget-object p0, Lcom/huawei/stylus/penengine/HwPenEngineManager;->a:Ljava/lang/String;

    const-string v1, "KitManager is unavailable"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSupportEink(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/huawei/stylus/penengine/HwPenEngineManager;->isEngineRuntimeAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/huawei/stylus/penengine/HwPenEngineManager;->isApiLevelCompatible(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "com.huawei.penkit.impl.KitManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/huawei/penkit/impl/KitManager;

    invoke-direct {v0, p0}, Lcom/huawei/penkit/impl/KitManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/huawei/penkit/impl/KitManager;->isSupportEink()Z

    move-result p0

    return p0

    :catch_0
    sget-object p0, Lcom/huawei/stylus/penengine/HwPenEngineManager;->a:Ljava/lang/String;

    const-string v0, "KitManager is unavailable"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method public static isSupportFeature(Landroid/content/Context;I)Z
    .locals 0

    invoke-static {p0}, Lcom/huawei/stylus/penengine/HwPenEngineManager;->isEngineRuntimeAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/huawei/stylus/penengine/HwPenEngineManager;->isApiLevelCompatible(I)Z

    move-result p0

    return p0
.end method
