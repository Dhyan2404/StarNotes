.class public final Lcom/onyx/galaxy/note/editor/data/ShortcutType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/data/ShortcutType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/data/ShortcutType$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001c\u0010\u0007\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u001c\u0010\n\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u00042\u0006\u0010\t\u001a\u00020\u0008J\u0014\u0010\u000b\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004J\u0016\u0010\u000c\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0002J\u0016\u0010\r\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0002J\u0016\u0010\u000e\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0002R\u001d\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R!\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0013\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/data/ShortcutType$Companion;",
        "",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
        "shortcutType",
        "Lkotlin/Pair;",
        "",
        "",
        "getShortcutModeData",
        "",
        "hasEncryption",
        "getEncryptionData",
        "getNoteModeData",
        "b",
        "a",
        "c",
        "",
        "uselessShortcutTypes",
        "Ljava/util/List;",
        "getUselessShortcutTypes",
        "()Ljava/util/List;",
        "",
        "enableShortcutTypes$delegate",
        "Lkotlin/Lazy;",
        "getEnableShortcutTypes",
        "enableShortcutTypes",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/data/ShortcutType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getRealtimeBeautifyEnabledOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_shortcut_beautify_on_large:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_shortcut_beautify_off_large:I

    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->SHORTCUT_REALTIME_BEAUTIFY:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->getTitleRes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getEditTouchMode$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->isReadingMode()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_shortcut_reading_mode_check:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_shortcut_reading_mode:I

    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->SHORTCUT_READING_MODE:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->getTitleRes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getEditTouchMode$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->isFingerMode()Z

    move-result p0

    if-eqz p0, :cond_0

    sget v0, Lcom/onyx/galaxy/note/R$string;->shortcut_bar_writing_mode_finger:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/onyx/galaxy/note/R$string;->shortcut_bar_writing_mode_pen:I

    :goto_0
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_1

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_shortcut_writing_mode_finger:I

    goto :goto_1

    :cond_1
    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_shortcut_writing_mode_pen:I

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final getEnableShortcutTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->access$getEnableShortcutTypes$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getEncryptionData(Z)Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    sget p0, Lcom/onyx/galaxy/note/R$string;->shortcut_bar_unlock:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/onyx/galaxy/note/R$string;->shortcut_bar_lock:I

    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_1

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->icon_shortcut_unlock:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/onyx/galaxy/note/R$drawable;->icon_shortcut_lock:I

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final getNoteModeData()Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getEditTouchMode$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget-object v2, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->SHORTCUT_NOTE_MODE:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->getTitleRes()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/onyx/galaxy/note/editor/data/ShortcutType$Companion$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v2, p0

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_shortcut_reading_mode_check:I

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_shortcut_writing_mode_finger:I

    goto :goto_0

    :cond_2
    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_shortcut_writing_mode_pen:I

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final getShortcutModeData(Lcom/onyx/galaxy/note/editor/data/ShortcutType;)Lkotlin/Pair;
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShortcutType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shortcutType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShortcutType$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->getTitleRes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->getIconRes()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShortcutType$Companion;->a()Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShortcutType$Companion;->b()Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShortcutType$Companion;->c()Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShortcutType$Companion;->getNoteModeData()Lkotlin/Pair;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getUselessShortcutTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->access$getUselessShortcutTypes$cp()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
