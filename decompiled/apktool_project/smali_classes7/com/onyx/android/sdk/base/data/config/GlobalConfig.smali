.class public final Lcom/onyx/android/sdk/base/data/config/GlobalConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0008J\u0010\u0010\t\u001a\u00020\n2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\u000cJ\u0006\u0010\u000e\u001a\u00020\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/base/data/config/GlobalConfig;",
        "",
        "()V",
        "GLOBAL_CONFIG_RAW_NAME",
        "",
        "globalConfigBean",
        "Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;",
        "getInternalRecognizerLangList",
        "",
        "init",
        "",
        "isDefaultFilterByDocTypes",
        "",
        "isShareResourceEnable",
        "isStorageManagerEnable",
        "sdk-base_release"
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
.field public static final GLOBAL_CONFIG_RAW_NAME:Ljava/lang/String; = "global_config"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/onyx/android/sdk/base/data/config/GlobalConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static globalConfigBean:Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/base/data/config/GlobalConfig;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/data/config/GlobalConfig;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/base/data/config/GlobalConfig;->INSTANCE:Lcom/onyx/android/sdk/base/data/config/GlobalConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInternalRecognizerLangList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/data/config/GlobalConfig;->globalConfigBean:Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;->getInternalRecognizerLangList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final init(Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p1, Lcom/onyx/android/sdk/base/data/config/GlobalConfig;->globalConfigBean:Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;

    return-void
.end method

.method public final isDefaultFilterByDocTypes()Z
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/base/data/config/GlobalConfig;->globalConfigBean:Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;->getFilterByDocTypes()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public final isShareResourceEnable()Z
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/base/data/config/GlobalConfig;->globalConfigBean:Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;->getShareResourceEnable()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isStorageManagerEnable()Z
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/base/data/config/GlobalConfig;->globalConfigBean:Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/config/GlobalConfigBean;->getStorageManagerEnable()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
