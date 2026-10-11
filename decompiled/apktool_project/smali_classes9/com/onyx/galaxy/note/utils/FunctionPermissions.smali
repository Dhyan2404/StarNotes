.class public final Lcom/onyx/galaxy/note/utils/FunctionPermissions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\u0006\u001a\u00020\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/utils/FunctionPermissions;",
        "",
        "()V",
        "isAiSearchEnabled",
        "",
        "isRealtimeBeautifyEnabled",
        "isSmartHwrEnabled",
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


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/utils/FunctionPermissions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/utils/FunctionPermissions;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/utils/FunctionPermissions;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/utils/FunctionPermissions;->INSTANCE:Lcom/onyx/galaxy/note/utils/FunctionPermissions;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isAiSearchEnabled()Z
    .locals 4

    sget-object p0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->isAiSearchFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager;

    const-string v2, "hwr_search"

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->getEngineByFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isVipRole()Z

    move-result v2

    sget-object v3, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->isEngineActivated(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getUserHwrSearchEnabledOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final isRealtimeBeautifyEnabled()Z
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getRealtimeBeautifyEnabledOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager;

    const-string v1, "ink_beautify"

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->getEngineByFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->getHWREngineActivationState(Ljava/lang/String;)Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;

    move-result-object v2

    invoke-virtual {v1, p0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->isEngineActivated(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;->Companion:Lcom/onyx/android/sdk/data/account/model/HWRActivationModel$Companion;

    invoke-virtual {p0, v2}, Lcom/onyx/android/sdk/data/account/model/HWRActivationModel$Companion;->isTimeExpired(Lcom/onyx/android/sdk/data/account/model/HWRActivationModel;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final isSmartHwrEnabled()Z
    .locals 4

    sget-object p0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->isSmartHwrFeatureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager;

    const-string v2, "hwr_smart"

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->getEngineByFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isVipRole()Z

    move-result v2

    sget-object v3, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->INSTANCE:Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/hwr/service/manager/HWRActivationManager;->isEngineActivated(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getUserSmartHwrEnabledOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
