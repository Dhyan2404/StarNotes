.class public Lcom/hihonor/android/magicx/app/penengine/HnPenEngineManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "HnPenEngineManager"

.field public static final b:Ljava/lang/String; = "com.hihonor.penkit.impl.KitManager"


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

.method public static a(Lcom/hihonor/penkit/impl/KitManager;)Ljava/util/Optional;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hihonor/penkit/impl/KitManager;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/sunia/HTREnginev2/z0o;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/hihonor/penkit/impl/KitManager;->getVersionInfo()Lcom/hihonor/stylus/penengine/version/IVersionInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Lcom/sunia/HTREnginev2/z0o;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/z0o;-><init>(Lcom/hihonor/stylus/penengine/version/IVersionInfo;)V

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
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
    invoke-static {p0}, Lcom/sunia/HTREnginev2/z0o;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    :try_start_0
    const-string v1, "com.hihonor.penkit.impl.KitManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/hihonor/penkit/impl/KitManager;

    invoke-direct {v1, p0}, Lcom/hihonor/penkit/impl/KitManager;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/hihonor/android/magicx/app/penengine/HnPenEngineManager;->a(Lcom/hihonor/penkit/impl/KitManager;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-static {v1}, Lcom/hihonor/android/magicx/app/penengine/HnPenEngineManager;->a(Lcom/hihonor/penkit/impl/KitManager;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/z0o;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z0o;->b()Z

    move-result p0

    return p0

    :catch_0
    sget-object p0, Lcom/hihonor/android/magicx/app/penengine/HnPenEngineManager;->a:Ljava/lang/String;

    const-string v1, "KitManager is unavailable"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSupportDoubleClick(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "com.hihonor.penkit.impl.KitManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/hihonor/penkit/impl/KitManager;

    invoke-direct {v0, p0}, Lcom/hihonor/penkit/impl/KitManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/hihonor/penkit/impl/KitManager;->isSupportDoubleClick()Z

    move-result p0

    return p0

    :catch_0
    sget-object p0, Lcom/hihonor/android/magicx/app/penengine/HnPenEngineManager;->a:Ljava/lang/String;

    const-string v1, "KitManager is unavailable"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
