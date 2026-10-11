.class public final Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteEditConfigInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteEditConfigInfo.kt\ncom/onyx/galaxy/note/editor/data/NoteEditConfigInfo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,327:1\n1603#2,9:328\n1855#2:337\n1856#2:339\n1612#2:340\n1603#2,9:341\n1855#2:350\n1856#2:352\n1612#2:353\n1549#2:354\n1620#2,3:355\n1855#2,2:358\n1855#2,2:360\n1549#2:362\n1620#2,3:363\n766#2:366\n857#2,2:367\n766#2:369\n857#2,2:370\n1855#2:372\n288#2,2:373\n1856#2:375\n1#3:338\n1#3:351\n*S KotlinDebug\n*F\n+ 1 NoteEditConfigInfo.kt\ncom/onyx/galaxy/note/editor/data/NoteEditConfigInfo\n*L\n149#1:328,9\n149#1:337\n149#1:339\n149#1:340\n154#1:341,9\n154#1:350\n154#1:352\n154#1:353\n167#1:354\n167#1:355,3\n171#1:358,2\n179#1:360,2\n200#1:362\n200#1:363,3\n201#1:366\n201#1:367,2\n202#1:369\n202#1:370,2\n209#1:372\n210#1:373,2\n209#1:375\n149#1:338\n154#1:351\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u0000 m2\u00020\u0001:\u0001mB\u0007\u00a2\u0006\u0004\u0008k\u0010lJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u0002J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\tH\u0002J\u0006\u0010\u000c\u001a\u00020\u0004J\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u0010\u001a\u00020\u000fJ\u0006\u0010\u0011\u001a\u00020\u000fJ\u0006\u0010\u0012\u001a\u00020\u000fJ\u0006\u0010\u0013\u001a\u00020\u000fJ\u0006\u0010\u0015\u001a\u00020\u0014J\u000e\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0014J\u0006\u0010\u0018\u001a\u00020\u0014J\u0006\u0010\u001a\u001a\u00020\u0019J\u000e\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u0019J\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u001dJ\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u001dJ\u0006\u0010 \u001a\u00020\u0006J\u0006\u0010!\u001a\u00020\u0002J\u000e\u0010\"\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010#\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\'\u001a\u00020&2\u0008\u0008\u0001\u0010%\u001a\u00020$J\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020(0\u001dJ\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020(0\u001dJ\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020(0\u001dJ\u0006\u0010,\u001a\u00020(J\u0006\u0010-\u001a\u00020(J\u0006\u0010.\u001a\u00020\u0004J\u0006\u0010/\u001a\u00020\u0004J\u0006\u00100\u001a\u00020\u0004J\u0006\u00101\u001a\u00020\u0004J\u0006\u00102\u001a\u00020\u0004J\u0006\u00103\u001a\u00020\u0004J\u0006\u00104\u001a\u00020(J\u0006\u00105\u001a\u00020\u0004J\u0006\u00106\u001a\u00020\u0004J\u0006\u00107\u001a\u00020\u0004J\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020(0\u001dR\u001b\u0010=\u001a\u0002098FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010:\u001a\u0004\u0008;\u0010<R\u001b\u0010A\u001a\u00020>8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010:\u001a\u0004\u0008?\u0010@R\u0017\u0010G\u001a\u00020B8\u0006\u00a2\u0006\u000c\n\u0004\u0008C\u0010D\u001a\u0004\u0008E\u0010FR\u0017\u0010L\u001a\u00020H8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010I\u001a\u0004\u0008J\u0010KR\u0017\u0010Q\u001a\u00020M8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010N\u001a\u0004\u0008O\u0010PR!\u0010U\u001a\u0008\u0012\u0004\u0012\u00020\u00020\t8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008R\u0010:\u001a\u0004\u0008S\u0010TR!\u0010X\u001a\u0008\u0012\u0004\u0012\u00020\u00060\t8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008V\u0010:\u001a\u0004\u0008W\u0010TR!\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020\u00140\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Y\u0010:\u001a\u0004\u0008C\u0010TR\u0016\u0010^\u001a\u0004\u0018\u00010[8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\\\u0010]R\u0017\u0010d\u001a\u00020_8\u0006\u00a2\u0006\u000c\n\u0004\u0008`\u0010a\u001a\u0004\u0008b\u0010cR\u0017\u0010g\u001a\u00020_8\u0006\u00a2\u0006\u000c\n\u0004\u0008e\u0010a\u001a\u0004\u0008f\u0010cR\u0017\u0010j\u001a\u00020B8\u0006\u00a2\u0006\u000c\n\u0004\u0008h\u0010D\u001a\u0004\u0008i\u0010F\u00a8\u0006n"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;",
        "",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;",
        "shortcutBarData",
        "",
        "e",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;",
        "shapeToolbarData",
        "d",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "b",
        "a",
        "isTabOptionShow",
        "",
        "toggleTabShowOption",
        "Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;",
        "getDocOverViewThumbnailSizeType",
        "toggleDocOverViewThumbnailSize",
        "getExportPagesThumbnailSizeType",
        "toggleExportPagesThumbnailSize",
        "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
        "ensureSelectShapeType",
        "shapeToolType",
        "saveSelectShapeType",
        "ensurePenShapeToolType",
        "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;",
        "ensureDockType",
        "dockType",
        "saveDockType",
        "",
        "getShapeShowList",
        "getShapeHideList",
        "getShapeToolbarData",
        "getShortcutBarData",
        "saveShapeToolbarData",
        "saveShortcutBarData",
        "",
        "rawResId",
        "Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;",
        "getPreviewPointsData",
        "",
        "getTapeNameList",
        "getUnDisplayShapeToolList",
        "getEnableSwitchBrushList",
        "getDefaultSelectShapeTool",
        "getDataRepositoryPath",
        "isDataRepositoryNeedRedirection",
        "isFontBeautifyEnable",
        "isInkBeautifyTypesetEnable",
        "isAiLabEnable",
        "isBackgroundFtsIndexEnabled",
        "isHwrSearchEnabled",
        "getUserManualName",
        "isInkBeautifyFeatureEnabled",
        "isAiSearchFeatureEnabled",
        "isSmartHwrFeatureEnabled",
        "getLanguageList",
        "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;",
        "Lkotlin/Lazy;",
        "getPenProperty",
        "()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;",
        "penProperty",
        "Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;",
        "getLassoProperty",
        "()Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;",
        "lassoProperty",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "c",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "getTabShowOption",
        "()Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "tabShowOption",
        "Lcom/onyx/android/sdk/data/utils/IntOption;",
        "Lcom/onyx/android/sdk/data/utils/IntOption;",
        "getTabCountOption",
        "()Lcom/onyx/android/sdk/data/utils/IntOption;",
        "tabCountOption",
        "Lcom/onyx/android/sdk/data/utils/FloatListOption;",
        "Lcom/onyx/android/sdk/data/utils/FloatListOption;",
        "getScaleCollection",
        "()Lcom/onyx/android/sdk/data/utils/FloatListOption;",
        "scaleCollection",
        "f",
        "getShortcutBarDataOption",
        "()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "shortcutBarDataOption",
        "g",
        "getShapeToolbarDataOption",
        "shapeToolbarDataOption",
        "h",
        "shapeToolTypeOption",
        "Lcom/onyx/galaxy/note/editor/data/EditorConfig;",
        "i",
        "Lcom/onyx/galaxy/note/editor/data/EditorConfig;",
        "editJsonConfig",
        "Lcom/onyx/android/sdk/data/utils/StringOption;",
        "j",
        "Lcom/onyx/android/sdk/data/utils/StringOption;",
        "getDocOverViewThumbnailSizeOption",
        "()Lcom/onyx/android/sdk/data/utils/StringOption;",
        "docOverViewThumbnailSizeOption",
        "k",
        "getExportPagesThumbnailSizeOption",
        "exportPagesThumbnailSizeOption",
        "l",
        "getMagnifierAutoForwardMoveOption",
        "magnifierAutoForwardMoveOption",
        "<init>",
        "()V",
        "Companion",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNoteEditConfigInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteEditConfigInfo.kt\ncom/onyx/galaxy/note/editor/data/NoteEditConfigInfo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,327:1\n1603#2,9:328\n1855#2:337\n1856#2:339\n1612#2:340\n1603#2,9:341\n1855#2:350\n1856#2:352\n1612#2:353\n1549#2:354\n1620#2,3:355\n1855#2,2:358\n1855#2,2:360\n1549#2:362\n1620#2,3:363\n766#2:366\n857#2,2:367\n766#2:369\n857#2,2:370\n1855#2:372\n288#2,2:373\n1856#2:375\n1#3:338\n1#3:351\n*S KotlinDebug\n*F\n+ 1 NoteEditConfigInfo.kt\ncom/onyx/galaxy/note/editor/data/NoteEditConfigInfo\n*L\n149#1:328,9\n149#1:337\n149#1:339\n149#1:340\n154#1:341,9\n154#1:350\n154#1:352\n154#1:353\n167#1:354\n167#1:355,3\n171#1:358,2\n179#1:360,2\n200#1:362\n200#1:363,3\n201#1:366\n201#1:367,2\n202#1:369\n202#1:370,2\n209#1:372\n210#1:373,2\n209#1:375\n149#1:338\n154#1:351\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final m:Ljava/lang/String; = "editor_config"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/onyx/android/sdk/data/utils/IntOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/onyx/android/sdk/data/utils/FloatListOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/galaxy/note/editor/data/EditorConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final j:Lcom/onyx/android/sdk/data/utils/StringOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lcom/onyx/android/sdk/data/utils/StringOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->Companion:Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$penProperty$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$penProperty$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->a:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$lassoProperty$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$lassoProperty$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->b:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/android/sdk/data/utils/BooleanOption;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v3, "ONYX_NOTE_EDIT_TAB_SHOW"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/onyx/android/sdk/data/utils/BooleanOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->c:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    new-instance v0, Lcom/onyx/android/sdk/data/utils/IntOption;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v3, "ONYX_NOTE_EDIT_TAB_COUNT"

    const/4 v5, -0x1

    invoke-direct {v0, v2, v3, v5}, Lcom/onyx/android/sdk/data/utils/IntOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->d:Lcom/onyx/android/sdk/data/utils/IntOption;

    new-instance v0, Lcom/onyx/android/sdk/data/utils/FloatListOption;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v7

    const-string v8, "settings_scale_collection"

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/onyx/android/sdk/data/utils/FloatListOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/FloatList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->e:Lcom/onyx/android/sdk/data/utils/FloatListOption;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$shortcutBarDataOption$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$shortcutBarDataOption$2;-><init>(Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->f:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$shapeToolbarDataOption$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$shapeToolbarDataOption$2;-><init>(Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->g:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$shapeToolTypeOption$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$shapeToolTypeOption$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->h:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/ConfigLoader;->INSTANCE:Lcom/onyx/android/sdk/data/utils/ConfigLoader;

    const-string v2, "editor_config"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/onyx/galaxy/note/editor/data/EditorConfig;

    invoke-virtual {v0, v3, v2}, Lcom/onyx/android/sdk/data/utils/ConfigLoader;->load(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/editor/data/EditorConfig;

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->i:Lcom/onyx/galaxy/note/editor/data/EditorConfig;

    new-instance v0, Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    sget-object v3, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->SMALL:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ONYX_NOTE_DOC_OVER_VIEW_THUMBNAIL_SIZE"

    invoke-direct {v0, v2, v6, v5}, Lcom/onyx/android/sdk/data/utils/StringOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->j:Lcom/onyx/android/sdk/data/utils/StringOption;

    new-instance v0, Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v5, "ONYX_NOTE_EDIT_EXPORT_PAGES_THUMBNAIL_SIZE"

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v5, v3}, Lcom/onyx/android/sdk/data/utils/StringOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->k:Lcom/onyx/android/sdk/data/utils/StringOption;

    new-instance v0, Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "ONYX_NOTE_EDIT_MAGNIFIER_AUTO_FORWARD_MOVE"

    invoke-direct {v0, v1, v2, v4}, Lcom/onyx/android/sdk/data/utils/BooleanOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->l:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    return-void
.end method

.method public static final synthetic access$ensureShapeToolbarDataOption(Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->a()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ensureShortcutBarDataOption(Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->b()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$ensureShapeToolbarDataOption$option$1;

    invoke-direct {v2}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$ensureShapeToolbarDataOption$option$1;-><init>()V

    sget-object v3, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$ensureShapeToolbarDataOption$option$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$ensureShapeToolbarDataOption$option$2;

    const-string v4, "ONYX_NOTE_EDIT_CONFIG_SHAPE_TOOL_LIST_KEY"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->d(Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->put(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final b()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    sget-object v1, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$ensureShortcutBarDataOption$option$1;

    invoke-direct {v2}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$ensureShortcutBarDataOption$option$1;-><init>()V

    sget-object v3, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$ensureShortcutBarDataOption$option$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo$ensureShortcutBarDataOption$option$2;

    const-string v4, "ONYX_NOTE_EDIT_CONFIG_SHORTCUT_BAR_LIST_KEY"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->e(Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->put(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->h:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    return-object p0
.end method

.method public final d(Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;)Z
    .locals 7

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->distinct()V

    sget-object p0, Lcom/onyx/galaxy/note/utils/ShapeToolUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/ShapeToolUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/ShapeToolUtils;->getDefaultValues()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->getDisabledList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->getEnabledList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_3

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    check-cast v4, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    const-class v3, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    if-eqz v4, :cond_8

    sget-object v5, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->getEnabledList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;->getClosestIndex(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Ljava/util/List;)I

    move-result v4

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->getEnabledList()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v4, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/List;ILjava/lang/Object;)V

    sget-object v4, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new tool type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v0, v5}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    sget-object v4, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new tool type do not contain ShapeToolType.entries: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v0, v5}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    return v2
.end method

.method public final e(Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;)Z
    .locals 7

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getCandidateList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getLeftSideList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getRightSideList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShortcutType$Companion;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShortcutType$Companion;->getEnableShortcutTypes()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->getShortcutType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getLeftSideList()Ljava/util/List;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getRightSideList()Ljava/util/List;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getCandidateList()Ljava/util/List;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_5

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->Companion:Lcom/onyx/galaxy/note/editor/data/ShortcutBarData$Companion;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData$Companion;->createDefaultShortcutBarData()Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    move-result-object v0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getLeftSideList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getLeftSideList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getRightSideList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getRightSideList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getCandidateList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->getCandidateList()Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-nez p1, :cond_7

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :cond_7
    :goto_3
    return v2
.end method

.method public final ensureDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v1, "ONYX_NOTE_EDIT_SELECT_DOCK_TYPE"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    const-class v2, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-nez v0, :cond_0

    sget-object v0, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->TOP:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->saveDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    :cond_0
    return-object v0
.end method

.method public final ensurePenShapeToolType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getLastWriteGroupShapeType(I)I

    move-result p0

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeType;->INSTANCE:Lcom/onyx/android/sdk/note/common/data/shape/ShapeType;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeType;->isValid(I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->WRITE_PEN_GROUP:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->INK_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    :goto_0
    return-object p0
.end method

.method public final ensureSelectShapeType()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    return-object p0
.end method

.method public final getDataRepositoryPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->i:Lcom/onyx/galaxy/note/editor/data/EditorConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/EditorConfig;->getWebConfig()Lcom/onyx/galaxy/note/editor/data/WebConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/WebConfig;->getDataRepositoryPath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, "library/material"

    :cond_1
    return-object p0
.end method

.method public final getDefaultSelectShapeTool()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->i:Lcom/onyx/galaxy/note/editor/data/EditorConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/EditorConfig;->getShapeToolConfig()Lcom/onyx/galaxy/note/editor/data/ShapeToolConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolConfig;->getDefaultSelectShapeTool()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->INK_PEN:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public final getDocOverViewThumbnailSizeOption()Lcom/onyx/android/sdk/data/utils/StringOption;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->j:Lcom/onyx/android/sdk/data/utils/StringOption;

    return-object p0
.end method

.method public final getDocOverViewThumbnailSizeType()Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->Companion:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType$Companion;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->j:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/StringOption;->get()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType$Companion;->getTypeByName(Ljava/lang/String;)Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    move-result-object p0

    return-object p0
.end method

.method public final getEnableSwitchBrushList()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->i:Lcom/onyx/galaxy/note/editor/data/EditorConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/EditorConfig;->getShapeToolConfig()Lcom/onyx/galaxy/note/editor/data/ShapeToolConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolConfig;->getEnableSwitchBrushList()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object p0
.end method

.method public final getExportPagesThumbnailSizeOption()Lcom/onyx/android/sdk/data/utils/StringOption;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->k:Lcom/onyx/android/sdk/data/utils/StringOption;

    return-object p0
.end method

.method public final getExportPagesThumbnailSizeType()Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->Companion:Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType$Companion;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->k:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/StringOption;->get()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType$Companion;->getTypeByName(Ljava/lang/String;)Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    move-result-object p0

    return-object p0
.end method

.method public final getLanguageList()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->i:Lcom/onyx/galaxy/note/editor/data/EditorConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/EditorConfig;->getLanguageList()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object p0
.end method

.method public final getLassoProperty()Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->b:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;

    return-object p0
.end method

.method public final getMagnifierAutoForwardMoveOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->l:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    return-object p0
.end method

.method public final getPenProperty()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;

    return-object p0
.end method

.method public final getPreviewPointsData(I)Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/RawResourceUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RawResourceUtil;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/base/utils/RawResourceUtil;->contentOfRawResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-class p1, Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "parseObject(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;

    return-object p0
.end method

.method public final getScaleCollection()Lcom/onyx/android/sdk/data/utils/FloatListOption;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->e:Lcom/onyx/android/sdk/data/utils/FloatListOption;

    return-object p0
.end method

.method public final getShapeHideList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getShapeToolbarData()Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->getDisabledList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;

    invoke-virtual {v2, v1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;->safetyValueOf(Ljava/lang/String;)Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getShapeShowList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getShapeToolbarData()Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;->getEnabledList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->Companion:Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;

    invoke-virtual {v2, v1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType$Companion;->safetyValueOf(Ljava/lang/String;)Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getShapeToolbarData()Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getShapeToolbarDataOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;

    return-object p0
.end method

.method public final getShapeToolbarDataOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->g:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    return-object p0
.end method

.method public final getShortcutBarData()Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getShortcutBarDataOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    return-object p0
.end method

.method public final getShortcutBarDataOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    return-object p0
.end method

.method public final getTabCountOption()Lcom/onyx/android/sdk/data/utils/IntOption;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->d:Lcom/onyx/android/sdk/data/utils/IntOption;

    return-object p0
.end method

.method public final getTabShowOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->c:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    return-object p0
.end method

.method public final getTapeNameList()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->i:Lcom/onyx/galaxy/note/editor/data/EditorConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/EditorConfig;->getTapeList()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object p0
.end method

.method public final getUnDisplayShapeToolList()Ljava/util/List;
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->i:Lcom/onyx/galaxy/note/editor/data/EditorConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/EditorConfig;->getShapeToolConfig()Lcom/onyx/galaxy/note/editor/data/ShapeToolConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/ShapeToolConfig;->getUnDisplayShapeToolList()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object p0
.end method

.method public final getUserManualName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->i:Lcom/onyx/galaxy/note/editor/data/EditorConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/EditorConfig;->getUserManualName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, "user_manual"

    :cond_1
    return-object p0
.end method

.method public final isAiLabEnable()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->i:Lcom/onyx/galaxy/note/editor/data/EditorConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/EditorConfig;->getAiLabEnable()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isAiSearchFeatureEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->i:Lcom/onyx/galaxy/note/editor/data/EditorConfig;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/EditorConfig;->getAiSearchFeatureEnabled()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public final isBackgroundFtsIndexEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->i:Lcom/onyx/galaxy/note/editor/data/EditorConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/EditorConfig;->getEnableBackgroundFtsIndex()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDataRepositoryNeedRedirection()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->i:Lcom/onyx/galaxy/note/editor/data/EditorConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/EditorConfig;->getWebConfig()Lcom/onyx/galaxy/note/editor/data/WebConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/WebConfig;->getDataRepositoryRedirection()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFontBeautifyEnable()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->i:Lcom/onyx/galaxy/note/editor/data/EditorConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/EditorConfig;->getFontBeautifyEnable()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isHwrSearchEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->i:Lcom/onyx/galaxy/note/editor/data/EditorConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/EditorConfig;->getEnableHwrSearch()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isInkBeautifyFeatureEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->i:Lcom/onyx/galaxy/note/editor/data/EditorConfig;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/EditorConfig;->getInkBeautifyFeatureEnabled()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public final isInkBeautifyTypesetEnable()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->i:Lcom/onyx/galaxy/note/editor/data/EditorConfig;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/EditorConfig;->getInkBeautifyTypesetEnable()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSmartHwrFeatureEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->i:Lcom/onyx/galaxy/note/editor/data/EditorConfig;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/EditorConfig;->getSmartHwrFeatureEnabled()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public final isTabOptionShow()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->c:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    return p0
.end method

.method public final saveDockType(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "dockType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ONYX_NOTE_EDIT_SELECT_DOCK_TYPE"

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final saveSelectShapeType(Lcom/onyx/galaxy/note/editor/data/ShapeToolType;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShapeToolType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shapeToolType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->c()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->put(Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->WRITE_PEN_GROUP:Lcom/onyx/galaxy/note/editor/data/ShapeToolType;

    if-ne p1, p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/ShapeToolType;->getShapeType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->saveLastWriteGroupShapeType(I)V

    :cond_0
    return-void
.end method

.method public final saveShapeToolbarData(Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shapeToolbarData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getShapeToolbarDataOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public final saveShortcutBarData(Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shortcutBarData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getShortcutBarDataOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public final toggleDocOverViewThumbnailSize()Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getDocOverViewThumbnailSizeType()Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->switchNext()Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->j:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    return-object v0
.end method

.method public final toggleExportPagesThumbnailSize()Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getExportPagesThumbnailSizeType()Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;->switchNext()Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->k:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    return-object v0
.end method

.method public final toggleTabShowOption()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->c:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->toggle()Z

    return-void
.end method
