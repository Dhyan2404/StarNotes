.class public final Lcom/onyx/android/sdk/data/model/v2/NeoAccountBase$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/data/model/v2/NeoAccountBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007J\u0010\u0010\t\u001a\u00020\n2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/model/v2/NeoAccountBase$Companion;",
        "",
        "()V",
        "DELIMITER",
        "",
        "isValid",
        "",
        "account",
        "Lcom/onyx/android/sdk/data/model/v2/NeoAccountBase;",
        "parseInfo",
        "",
        "parseName",
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
    invoke-direct {p0}, Lcom/onyx/android/sdk/data/model/v2/NeoAccountBase$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isValid(Lcom/onyx/android/sdk/data/model/v2/NeoAccountBase;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/model/v2/NeoAccountBase;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/model/v2/NeoAccountBase;->getToken()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final parseInfo(Lcom/onyx/android/sdk/data/model/v2/NeoAccountBase;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/model/v2/NeoAccountBase;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/model/v2/NeoAccountBase;->getInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-class v1, Lcom/onyx/android/sdk/data/model/v2/AccountCommon;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/model/v2/AccountCommon;

    if-eqz p0, :cond_4

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/model/v2/AccountCommon;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/model/v2/NeoAccountBase;->setName(Ljava/lang/String;)V

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/model/v2/AccountCommon;->getOrganization()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/model/v2/NeoAccountBase;->setOrgName(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/model/v2/AccountCommon;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/model/v2/AccountCommon;->getPhone()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/model/v2/NeoAccountBase;->setPhone(Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final parseName(Lcom/onyx/android/sdk/data/model/v2/NeoAccountBase;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/data/model/v2/NeoAccountBase;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/model/v2/NeoAccountBase;->getInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-class v1, Lcom/onyx/android/sdk/data/model/v2/AccountCommon;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/model/v2/AccountCommon;

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/model/v2/AccountCommon;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/data/model/v2/NeoAccountBase;->setName(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
