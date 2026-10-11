.class public final Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/event/BaseStatisticsEvent;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u0007\u001a\u00020\u0003H\u00c2\u0003J\t\u0010\u0008\u001a\u00020\u0005H\u00c2\u0003J\u001d\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0014\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0\u000bH\u0016J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u00d6\u0003J\u0008\u0010\u0011\u001a\u00020\u000cH\u0016J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u000cH\u00d6\u0001R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;",
        "Lcom/onyx/android/sdk/event/BaseStatisticsEvent;",
        "settingToggle",
        "Lcom/onyx/android/sdk/data/SettingToggle;",
        "graphFillToggleFrom",
        "Lcom/onyx/android/sdk/data/GraphFillToggleFrom;",
        "(Lcom/onyx/android/sdk/data/SettingToggle;Lcom/onyx/android/sdk/data/GraphFillToggleFrom;)V",
        "component1",
        "component2",
        "copy",
        "dataToMap",
        "",
        "",
        "equals",
        "",
        "other",
        "",
        "getEventId",
        "hashCode",
        "",
        "toString",
        "sdk-statistics_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final graphFillToggleFrom:Lcom/onyx/android/sdk/data/GraphFillToggleFrom;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final settingToggle:Lcom/onyx/android/sdk/data/SettingToggle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/data/SettingToggle;Lcom/onyx/android/sdk/data/GraphFillToggleFrom;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/SettingToggle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/GraphFillToggleFrom;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "settingToggle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphFillToggleFrom"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;->settingToggle:Lcom/onyx/android/sdk/data/SettingToggle;

    iput-object p2, p0, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;->graphFillToggleFrom:Lcom/onyx/android/sdk/data/GraphFillToggleFrom;

    return-void
.end method

.method private final component1()Lcom/onyx/android/sdk/data/SettingToggle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;->settingToggle:Lcom/onyx/android/sdk/data/SettingToggle;

    return-object p0
.end method

.method private final component2()Lcom/onyx/android/sdk/data/GraphFillToggleFrom;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;->graphFillToggleFrom:Lcom/onyx/android/sdk/data/GraphFillToggleFrom;

    return-object p0
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;Lcom/onyx/android/sdk/data/SettingToggle;Lcom/onyx/android/sdk/data/GraphFillToggleFrom;ILjava/lang/Object;)Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;->settingToggle:Lcom/onyx/android/sdk/data/SettingToggle;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;->graphFillToggleFrom:Lcom/onyx/android/sdk/data/GraphFillToggleFrom;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;->copy(Lcom/onyx/android/sdk/data/SettingToggle;Lcom/onyx/android/sdk/data/GraphFillToggleFrom;)Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/onyx/android/sdk/data/SettingToggle;Lcom/onyx/android/sdk/data/GraphFillToggleFrom;)Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/SettingToggle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/GraphFillToggleFrom;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "settingToggle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "graphFillToggleFrom"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;-><init>(Lcom/onyx/android/sdk/data/SettingToggle;Lcom/onyx/android/sdk/data/GraphFillToggleFrom;)V

    return-object p0
.end method

.method public dataToMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;->settingToggle:Lcom/onyx/android/sdk/data/SettingToggle;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "toLowerCase(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "graph_fill_toggle"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;->graphFillToggleFrom:Lcom/onyx/android/sdk/data/GraphFillToggleFrom;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "graph_fill_toggle_from"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;

    iget-object v1, p0, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;->settingToggle:Lcom/onyx/android/sdk/data/SettingToggle;

    iget-object v3, p1, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;->settingToggle:Lcom/onyx/android/sdk/data/SettingToggle;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;->graphFillToggleFrom:Lcom/onyx/android/sdk/data/GraphFillToggleFrom;

    iget-object p1, p1, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;->graphFillToggleFrom:Lcom/onyx/android/sdk/data/GraphFillToggleFrom;

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "note_toolbar_graph_fill_toggle"

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;->settingToggle:Lcom/onyx/android/sdk/data/SettingToggle;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;->graphFillToggleFrom:Lcom/onyx/android/sdk/data/GraphFillToggleFrom;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatisticsNoteToolbarGraphFillToggleEvent(settingToggle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;->settingToggle:Lcom/onyx/android/sdk/data/SettingToggle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", graphFillToggleFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/event/StatisticsNoteToolbarGraphFillToggleEvent;->graphFillToggleFrom:Lcom/onyx/android/sdk/data/GraphFillToggleFrom;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
