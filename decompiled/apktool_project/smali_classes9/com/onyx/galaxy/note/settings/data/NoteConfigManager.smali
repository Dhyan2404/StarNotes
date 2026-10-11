.class public final Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteConfigManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteConfigManager.kt\ncom/onyx/galaxy/note/settings/data/NoteConfigManager\n+ 2 MMKVUtils.kt\ncom/onyx/android/sdk/data/utils/MMKVUtils\n*L\n1#1,256:1\n323#2:257\n312#2:258\n*S KotlinDebug\n*F\n+ 1 NoteConfigManager.kt\ncom/onyx/galaxy/note/settings/data/NoteConfigManager\n*L\n148#1:257\n148#1:258\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0008\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008M\u0010NJ\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u0007\u001a\u00020\u0005J\u0006\u0010\u0008\u001a\u00020\u0005J\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\u000c\u001a\u00020\u000bJ\u0006\u0010\r\u001a\u00020\u0005J\u0006\u0010\u000e\u001a\u00020\u0005J\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u000fJ\u0006\u0010\u0014\u001a\u00020\u000fJ\u000e\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u000fJ\u0006\u0010\u0017\u001a\u00020\u0005J\u0006\u0010\u0018\u001a\u00020\u0005J\u0006\u0010\u0019\u001a\u00020\u0005J\u0006\u0010\u001a\u001a\u00020\u0005J\u0006\u0010\u001b\u001a\u00020\u0005J\u0006\u0010\u001d\u001a\u00020\u001cJ\u0006\u0010\u001e\u001a\u00020\u0012J\u0006\u0010\u001f\u001a\u00020\u0005J\u0006\u0010 \u001a\u00020\u0005J\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\"0!J\u0018\u0010\'\u001a\u00020\t2\u0006\u0010$\u001a\u00020\u00022\u0008\u0008\u0002\u0010&\u001a\u00020%J-\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020%0*2\u0012\u0010)\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020(\"\u00020\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u0012\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020%0*J\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020%0*J\u0006\u0010/\u001a\u00020\u0005J\u0006\u00100\u001a\u00020\u0005J\u0006\u00101\u001a\u00020\u0005J\u0006\u00102\u001a\u00020\u0005J\u0010\u00105\u001a\u00020\u00022\u0008\u00104\u001a\u0004\u0018\u000103J\u0010\u00106\u001a\u00020\u00022\u0008\u00104\u001a\u0004\u0018\u000103J\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u0002070!J\u0016\u0010;\u001a\u00020\u00122\u0006\u00109\u001a\u00020\u00022\u0006\u0010:\u001a\u00020\u0002J\u000e\u0010<\u001a\u00020\u00022\u0006\u00109\u001a\u00020\u0002J\u0006\u0010>\u001a\u00020=J\u0006\u0010?\u001a\u00020\tJ\u0006\u0010@\u001a\u00020\u0005J\u0010\u0010C\u001a\u00020B2\u0008\u0008\u0001\u0010A\u001a\u00020%J\u0006\u0010D\u001a\u00020\u000fJ\u0006\u0010E\u001a\u00020\u000fJ\u0006\u0010F\u001a\u00020\u000fR\u001b\u0010L\u001a\u00020G8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010K\u00a8\u0006O"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;",
        "",
        "",
        "key",
        "getUserOptionKey",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "getPaperMoveFree",
        "getSlideToAdd",
        "getAutoAppendPage",
        "Lcom/onyx/android/sdk/data/utils/IntOption;",
        "getPronunciation",
        "Lcom/onyx/android/sdk/data/utils/StringListOption;",
        "getFontCheckedDocumentListOption",
        "getGraphConvert",
        "getGraphConvertWithPressure",
        "",
        "getGraphFill",
        "fillColorEnable",
        "",
        "setGraphFill",
        "isEnableStylusSelectText",
        "enable",
        "setEnableStylusSelectText",
        "getEnableInkBeautifyOption",
        "getEnableInkBeautifyTypesetOption",
        "getInkLastBeautifyParamExpandOption",
        "getBackgroundFtsIndexEnabledOption",
        "getUserHwrSearchEnabledOption",
        "Lcom/onyx/android/sdk/data/utils/StringOption;",
        "getLastHwrLangOption",
        "resetLastHwrLangOption",
        "getUserSmartHwrEnabledOption",
        "getUserAiSearchConfirmedOption",
        "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;",
        "Lcom/onyx/galaxy/note/category/data/SearchScope;",
        "getUserSearchScopeOption",
        "clickKey",
        "",
        "defaultValue",
        "getQuicklyClickOption",
        "",
        "keys",
        "",
        "getQuicklyClickMap",
        "([Ljava/lang/String;)Ljava/util/Map;",
        "getStylusQuicklyClickMap",
        "getGestureQuicklyClickMap",
        "stylusFunctionTipsOption",
        "getScreenOnOption",
        "getLongPressOfPageMenuOption",
        "getStatusBarHideOption",
        "",
        "text",
        "getFolderCounterStr",
        "getTagCounterStr",
        "Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;",
        "getPenBoxLocation",
        "typeName",
        "menuName",
        "saveFrequentlyAnnotationMenu",
        "getFrequentlyAnnotationMenu",
        "Lcom/onyx/android/sdk/data/utils/FloatListOption;",
        "getScaleCollection",
        "getScaleCollectionCount",
        "getContainsCoverOption",
        "rawResId",
        "Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;",
        "getPreviewPointsData",
        "isInkBeautifyFeatureEnabled",
        "isAiSearchFeatureEnabled",
        "isSmartHwrFeatureEnabled",
        "Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;",
        "a",
        "Lkotlin/Lazy;",
        "getNoteEditConfigInfo",
        "()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;",
        "noteEditConfigInfo",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNoteConfigManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteConfigManager.kt\ncom/onyx/galaxy/note/settings/data/NoteConfigManager\n+ 2 MMKVUtils.kt\ncom/onyx/android/sdk/data/utils/MMKVUtils\n*L\n1#1,256:1\n323#2:257\n312#2:258\n*S KotlinDebug\n*F\n+ 1 NoteConfigManager.kt\ncom/onyx/galaxy/note/settings/data/NoteConfigManager\n*L\n148#1:257\n148#1:258\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$noteEditConfigInfo$2;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$noteEditConfigInfo$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->a:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getQuicklyClickOption$default(Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;Ljava/lang/String;IILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/IntOption;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getQuicklyClickOption(Ljava/lang/String;I)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAutoAppendPage()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "settings_doc_auto_append_page"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->booleanOption(Ljava/lang/String;Z)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method

.method public final getBackgroundFtsIndexEnabledOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->isBackgroundFtsIndexEnabled()Z

    move-result p0

    const-string v1, "background_fts_index_enabled"

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->booleanOption(Ljava/lang/String;Z)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method

.method public final getContainsCoverOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/utils/BooleanOption;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "settings_contains_cover"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public final getEnableInkBeautifyOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->isFontBeautifyEnable()Z

    move-result p0

    const-string v1, "settings_ink_beautify_enabled"

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->booleanOption(Ljava/lang/String;Z)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method

.method public final getEnableInkBeautifyTypesetOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->isInkBeautifyTypesetEnable()Z

    move-result p0

    const-string v1, "settings_ink_beautify_typeset_enabled"

    invoke-virtual {v0, v1, p0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->booleanOption(Ljava/lang/String;Z)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method

.method public final getFolderCounterStr(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$integer;->folder_name_max_length:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/onyx/android/sdk/extension/StringRuleLengthKt;->getShowLength(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFontCheckedDocumentListOption()Lcom/onyx/android/sdk/data/utils/StringListOption;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/utils/StringListOption;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "settings_font_checked_document_list"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/android/sdk/data/utils/StringListOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/onyx/android/sdk/base/extension/StringList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final getFrequentlyAnnotationMenu(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "typeName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "settings_annotation_menu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public final getGestureQuicklyClickMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "settings_gesture_three_finger_click"

    const-string v1, "settings_gesture_double_click"

    const-string v2, "settings_gesture_two_finger_click"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getQuicklyClickMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getGraphConvert()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getGraphConvert()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method

.method public final getGraphConvertWithPressure()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getGraphConvertWithPressure()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method

.method public final getGraphFill()Z
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getGraphShapeOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;->getFillColorEnable()Z

    move-result p0

    return p0
.end method

.method public final getInkLastBeautifyParamExpandOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "ink_beautify_typeset_param_expand"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->booleanOption(Ljava/lang/String;Z)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method

.method public final getLastHwrLangOption()Lcom/onyx/android/sdk/data/utils/StringOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    sget-object v0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager;

    const-string v1, "hwr"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->getDefaultLangByFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hwr_last_lang"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->stringOption(Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object p0

    return-object p0
.end method

.method public final getLongPressOfPageMenuOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "settings_more_long_press_of_page_menu"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->booleanOption(Ljava/lang/String;Z)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method

.method public final getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->a:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    return-object p0
.end method

.method public final getPaperMoveFree()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "enable_free_move_paper"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->booleanOption(Ljava/lang/String;Z)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method

.method public final getPenBoxLocation()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$getPenBoxLocation$1;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$getPenBoxLocation$1;-><init>()V

    sget-object v2, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$getPenBoxLocation$2;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$getPenBoxLocation$2;

    const-string v3, "settings_pen_box_location"

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;Lkotlin/jvm/functions/Function0;)V

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

.method public final getPronunciation()Lcom/onyx/android/sdk/data/utils/IntOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/PronunciationType;->BRITISH:Lcom/onyx/galaxy/note/settings/data/PronunciationType;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/PronunciationType;->getType()I

    move-result v0

    const-string v1, "settings_doc_pronunciation"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->intOption(Ljava/lang/String;I)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p0

    return-object p0
.end method

.method public final varargs getQuicklyClickMap([Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "keys"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$getQuicklyClickMap$1;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$getQuicklyClickMap$1;

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$getQuicklyClickMap$2;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$getQuicklyClickMap$2;

    invoke-static {p0, p1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMap(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getQuicklyClickOption(Ljava/lang/String;I)Lcom/onyx/android/sdk/data/utils/IntOption;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "clickKey"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->intOption(Ljava/lang/String;I)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p0

    return-object p0
.end method

.method public final getScaleCollection()Lcom/onyx/android/sdk/data/utils/FloatListOption;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getScaleCollection()Lcom/onyx/android/sdk/data/utils/FloatListOption;

    move-result-object p0

    return-object p0
.end method

.method public final getScaleCollectionCount()Lcom/onyx/android/sdk/data/utils/IntOption;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/data/utils/IntOption;

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->scale_collect_max_count:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    const-string v2, "settings_scale_collection_count"

    invoke-direct {p0, v0, v2, v1}, Lcom/onyx/android/sdk/data/utils/IntOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;I)V

    return-object p0
.end method

.method public final getScreenOnOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "settings_more_keep_screen_on"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->booleanOption(Ljava/lang/String;Z)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method

.method public final getSlideToAdd()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "settings_doc_slide_to_add"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->booleanOption(Ljava/lang/String;Z)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method

.method public final getStatusBarHideOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "settings_more_hide_status_bar"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->booleanOption(Ljava/lang/String;Z)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method

.method public final getStylusQuicklyClickMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "settings_stylus_double_click"

    const-string v1, "settings_stylus_primary_click"

    const-string v2, "settings_stylus_secondary_click"

    const-string v3, "settings_stylus_long_press"

    const-string v4, "SETTINGS_STYLUS_PINCH"

    const-string v5, "SETTINGS_STYLUS_SLIDE_DOWN"

    const-string v6, "SETTINGS_STYLUS_SLIDE_UP"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getQuicklyClickMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getTagCounterStr(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$integer;->tag_name_max_length:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/onyx/android/sdk/extension/StringRuleLengthKt;->getShowLength(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getUserAiSearchConfirmedOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ai_search_confirmed"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getUserOptionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->booleanOption(Ljava/lang/String;Z)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method

.method public final getUserHwrSearchEnabledOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "hwr_search_enabled"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getUserOptionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->isHwrSearchEnabled()Z

    move-result p0

    invoke-virtual {v1, v0, p0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->booleanOption(Ljava/lang/String;Z)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method

.method public final getUserOptionKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "key"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->getSyncUserId()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getUserSearchScopeOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onyx/android/sdk/data/utils/JSONObjectOption<",
            "Lcom/onyx/galaxy/note/category/data/SearchScope;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "user_search_scope"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getUserOptionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    sget-object v1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$getUserSearchScopeOption$1;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$getUserSearchScopeOption$1;

    new-instance v2, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    new-instance v3, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$getUserSearchScopeOption$$inlined$objectOption$1;

    invoke-direct {v3}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$getUserSearchScopeOption$$inlined$objectOption$1;-><init>()V

    invoke-direct {v2, v0, p0, v3, v1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Lcom/alibaba/fastjson2/TypeReference;Lkotlin/jvm/functions/Function0;)V

    return-object v2
.end method

.method public final getUserSmartHwrEnabledOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "smart_hwr_enabled"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getUserOptionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->booleanOption(Ljava/lang/String;Z)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method

.method public final isAiSearchFeatureEnabled()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->isAiSearchFeatureEnabled()Z

    move-result p0

    return p0
.end method

.method public final isEnableStylusSelectText()Z
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getEnableStylusSelectTextOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    return p0
.end method

.method public final isInkBeautifyFeatureEnabled()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->isAiSearchFeatureEnabled()Z

    move-result p0

    return p0
.end method

.method public final isSmartHwrFeatureEnabled()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->isSmartHwrFeatureEnabled()Z

    move-result p0

    return p0
.end method

.method public final resetLastHwrLangOption()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->INSTANCE:Lcom/onyx/android/sdk/universal/util/HWREngineManager;

    const-string v1, "hwr"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/util/HWREngineManager;->getDefaultLangByFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getLastHwrLangOption()Lcom/onyx/android/sdk/data/utils/StringOption;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    return-void
.end method

.method public final saveFrequentlyAnnotationMenu(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "typeName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "menuName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "settings_annotation_menu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setEnableStylusSelectText(Z)V
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getEnableStylusSelectTextOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    return-void
.end method

.method public final setGraphFill(Z)V
    .locals 1

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getGraphShapeOption()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$setGraphFill$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager$setGraphFill$1;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->getAndPut(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final stylusFunctionTipsOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    const-string v0, "stylus_function_tips"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->booleanOption(Ljava/lang/String;Z)Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    return-object p0
.end method
