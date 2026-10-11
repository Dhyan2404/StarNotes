.class public final Lcom/onyx/galaxy/note/common/data/AppConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/common/data/AppConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00040\u0006H\u0002J\u000e\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00040\rH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\'\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00040\u00068FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR!\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\r8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0012\u001a\u0004\u0018\u00010\u00138FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u000b\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/common/data/AppConfig$Companion;",
        "",
        "()V",
        "ACCOUNT_CONFIG_RAW_NAME",
        "",
        "AUTH_LOGIN_TYPE_MAP",
        "",
        "",
        "getAUTH_LOGIN_TYPE_MAP",
        "()Ljava/util/Map;",
        "AUTH_LOGIN_TYPE_MAP$delegate",
        "Lkotlin/Lazy;",
        "DEFAULT_CHANNEL_AUTH",
        "",
        "getDEFAULT_CHANNEL_AUTH",
        "()Ljava/util/List;",
        "DEFAULT_CHANNEL_AUTH$delegate",
        "MMKV_AUTH_KEY",
        "accountConfig",
        "Lcom/onyx/galaxy/note/account/data/AccountConfig;",
        "getAccountConfig",
        "()Lcom/onyx/galaxy/note/account/data/AccountConfig;",
        "accountConfig$delegate",
        "generateAuthByLoginTypeMap",
        "generateDefaultChannelAuth",
        "note_overseasRelease"
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
    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/data/AppConfig$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$generateAuthByLoginTypeMap(Lcom/onyx/galaxy/note/common/data/AppConfig$Companion;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/data/AppConfig$Companion;->generateAuthByLoginTypeMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$generateDefaultChannelAuth(Lcom/onyx/galaxy/note/common/data/AppConfig$Companion;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/data/AppConfig$Companion;->generateDefaultChannelAuth()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final generateAuthByLoginTypeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/account/bean/LoginType;->INSTANCE:Lcom/onyx/android/sdk/data/account/bean/LoginType;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/AppConfig$Companion;->getAccountConfig()Lcom/onyx/galaxy/note/account/data/AccountConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/data/AccountConfig;->getLoginTypes()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/account/bean/LoginType;->getLoginMapByNames(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final generateDefaultChannelAuth()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/AppConfig$Companion;->getAccountConfig()Lcom/onyx/galaxy/note/account/data/AccountConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/account/data/AccountConfig;->getLoginTypes()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final getAUTH_LOGIN_TYPE_MAP()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/common/data/AppConfig;->access$getAUTH_LOGIN_TYPE_MAP$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public final getAccountConfig()Lcom/onyx/galaxy/note/account/data/AccountConfig;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/common/data/AppConfig;->access$getAccountConfig$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/account/data/AccountConfig;

    return-object p0
.end method

.method public final getDEFAULT_CHANNEL_AUTH()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/common/data/AppConfig;->access$getDEFAULT_CHANNEL_AUTH$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
