.class public final Lcom/onyx/android/sdk/data/SettingToggleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "getSettingToggle",
        "Lcom/onyx/android/sdk/data/SettingToggle;",
        "enable",
        "",
        "sdk-statistics_overseasRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getSettingToggle(Z)Lcom/onyx/android/sdk/data/SettingToggle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/data/SettingToggle;->OPEN:Lcom/onyx/android/sdk/data/SettingToggle;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/data/SettingToggle;->CLOSE:Lcom/onyx/android/sdk/data/SettingToggle;

    :goto_0
    return-object p0
.end method
