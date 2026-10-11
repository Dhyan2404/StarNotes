package com.onyx.galaxy.note.settings.data;

import androidx.annotation.RawRes;
import androidx.lifecycle.SavedStateHandle;
import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.TypeReference;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.RawResourceUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.data.FunctionKey;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.data.utils.FloatListOption;
import com.onyx.android.sdk.data.utils.IntOption;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.data.utils.StringListOption;
import com.onyx.android.sdk.data.utils.StringOption;
import com.onyx.android.sdk.extension.StringRuleLengthKt;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeAttr;
import com.onyx.android.sdk.universal.editor.config.QuicklyFunTypeConst;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.util.HWREngineManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.SearchScope;
import com.onyx.galaxy.note.editor.data.NoteEditConfigInfo;
import com.onyx.galaxy.note.editor.data.PenBoxLocationModel;
import com.onyx.galaxy.note.editor.data.PreviewTouchDataBean;
import com.onyx.galaxy.note.settings.p047ui.SettingsActivity;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010$\n\u0002\b\b\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bM\u0010NJ\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\u0007\u001a\u00020\u0005J\u0006\u0010\b\u001a\u00020\u0005J\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\f\u001a\u00020\u000bJ\u0006\u0010\r\u001a\u00020\u0005J\u0006\u0010\u000e\u001a\u00020\u0005J\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u000fJ\u0006\u0010\u0014\u001a\u00020\u000fJ\u000e\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u000fJ\u0006\u0010\u0017\u001a\u00020\u0005J\u0006\u0010\u0018\u001a\u00020\u0005J\u0006\u0010\u0019\u001a\u00020\u0005J\u0006\u0010\u001a\u001a\u00020\u0005J\u0006\u0010\u001b\u001a\u00020\u0005J\u0006\u0010\u001d\u001a\u00020\u001cJ\u0006\u0010\u001e\u001a\u00020\u0012J\u0006\u0010\u001f\u001a\u00020\u0005J\u0006\u0010 \u001a\u00020\u0005J\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0!J\u0018\u0010'\u001a\u00020\t2\u0006\u0010$\u001a\u00020\u00022\b\b\u0002\u0010&\u001a\u00020%J-\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020%0*2\u0012\u0010)\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020(\"\u00020\u0002¢\u0006\u0004\b+\u0010,J\u0012\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020%0*J\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020%0*J\u0006\u0010/\u001a\u00020\u0005J\u0006\u00100\u001a\u00020\u0005J\u0006\u00101\u001a\u00020\u0005J\u0006\u00102\u001a\u00020\u0005J\u0010\u00105\u001a\u00020\u00022\b\u00104\u001a\u0004\u0018\u000103J\u0010\u00106\u001a\u00020\u00022\b\u00104\u001a\u0004\u0018\u000103J\f\u00108\u001a\b\u0012\u0004\u0012\u0002070!J\u0016\u0010;\u001a\u00020\u00122\u0006\u00109\u001a\u00020\u00022\u0006\u0010:\u001a\u00020\u0002J\u000e\u0010<\u001a\u00020\u00022\u0006\u00109\u001a\u00020\u0002J\u0006\u0010>\u001a\u00020=J\u0006\u0010?\u001a\u00020\tJ\u0006\u0010@\u001a\u00020\u0005J\u0010\u0010C\u001a\u00020B2\b\b\u0001\u0010A\u001a\u00020%J\u0006\u0010D\u001a\u00020\u000fJ\u0006\u0010E\u001a\u00020\u000fJ\u0006\u0010F\u001a\u00020\u000fR\u001b\u0010L\u001a\u00020G8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K¨\u0006O"}, m61528d2 = {"Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;", "", "", "key", "getUserOptionKey", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "getPaperMoveFree", "getSlideToAdd", "getAutoAppendPage", "Lcom/onyx/android/sdk/data/utils/IntOption;", "getPronunciation", "Lcom/onyx/android/sdk/data/utils/StringListOption;", "getFontCheckedDocumentListOption", "getGraphConvert", "getGraphConvertWithPressure", "", "getGraphFill", "fillColorEnable", "", "setGraphFill", "isEnableStylusSelectText", "enable", "setEnableStylusSelectText", "getEnableInkBeautifyOption", "getEnableInkBeautifyTypesetOption", "getInkLastBeautifyParamExpandOption", "getBackgroundFtsIndexEnabledOption", "getUserHwrSearchEnabledOption", "Lcom/onyx/android/sdk/data/utils/StringOption;", "getLastHwrLangOption", "resetLastHwrLangOption", "getUserSmartHwrEnabledOption", "getUserAiSearchConfirmedOption", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "Lcom/onyx/galaxy/note/category/data/SearchScope;", "getUserSearchScopeOption", "clickKey", "", "defaultValue", "getQuicklyClickOption", "", SavedStateHandle.f7923g, "", "getQuicklyClickMap", "([Ljava/lang/String;)Ljava/util/Map;", "getStylusQuicklyClickMap", "getGestureQuicklyClickMap", "stylusFunctionTipsOption", "getScreenOnOption", "getLongPressOfPageMenuOption", "getStatusBarHideOption", "", "text", "getFolderCounterStr", "getTagCounterStr", "Lcom/onyx/galaxy/note/editor/data/PenBoxLocationModel;", "getPenBoxLocation", "typeName", SettingsActivity.SETTING_MENU_NAME, "saveFrequentlyAnnotationMenu", "getFrequentlyAnnotationMenu", "Lcom/onyx/android/sdk/data/utils/FloatListOption;", "getScaleCollection", "getScaleCollectionCount", "getContainsCoverOption", "rawResId", "Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;", "getPreviewPointsData", "isInkBeautifyFeatureEnabled", "isAiSearchFeatureEnabled", "isSmartHwrFeatureEnabled", "Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;", "a", "Lkotlin/Lazy;", "getNoteEditConfigInfo", "()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;", "noteEditConfigInfo", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteConfigManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteConfigManager.kt\ncom/onyx/galaxy/note/settings/data/NoteConfigManager\n+ 2 MMKVUtils.kt\ncom/onyx/android/sdk/data/utils/MMKVUtils\n*L\n1#1,256:1\n323#2:257\n312#2:258\n*S KotlinDebug\n*F\n+ 1 NoteConfigManager.kt\ncom/onyx/galaxy/note/settings/data/NoteConfigManager\n*L\n148#1:257\n148#1:258\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteConfigManager {

    @NotNull
    public static final NoteConfigManager INSTANCE = new NoteConfigManager();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final Lazy noteEditConfigInfo;

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<NoteEditConfigInfo>() { // from class: com.onyx.galaxy.note.settings.data.NoteConfigManager$noteEditConfigInfo$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final NoteEditConfigInfo invoke() {
                return new NoteEditConfigInfo();
            }
        });
        noteEditConfigInfo = lazy;
    }

    public static /* synthetic */ IntOption getQuicklyClickOption$default(NoteConfigManager noteConfigManager, String str, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = -1;
        }
        return noteConfigManager.getQuicklyClickOption(str, i);
    }

    @NotNull
    public final BooleanOption getAutoAppendPage() {
        return MMKVUtils.INSTANCE.booleanOption(SettingsConfigConst.SETTINGS_DOC_AUTO_APPEND_PAGE, true);
    }

    @NotNull
    public final BooleanOption getBackgroundFtsIndexEnabledOption() {
        return MMKVUtils.INSTANCE.booleanOption(SettingsConfigConst.SETTINGS_BACKGROUND_FTS_INDEX_ENABLED, getNoteEditConfigInfo().isBackgroundFtsIndexEnabled());
    }

    @NotNull
    public final BooleanOption getContainsCoverOption() {
        return new BooleanOption(MMKVUtils.INSTANCE.get(), SettingsConfigConst.SETTINGS_CONTAINS_COVER, true);
    }

    @NotNull
    public final BooleanOption getEnableInkBeautifyOption() {
        return MMKVUtils.INSTANCE.booleanOption(SettingsConfigConst.SETTINGS_INK_BEAUTIFY_ENABLED, getNoteEditConfigInfo().isFontBeautifyEnable());
    }

    @NotNull
    public final BooleanOption getEnableInkBeautifyTypesetOption() {
        return MMKVUtils.INSTANCE.booleanOption(SettingsConfigConst.SETTINGS_INK_BEAUTIFY_TYPESET_ENABLED, getNoteEditConfigInfo().isInkBeautifyTypesetEnable());
    }

    @NotNull
    public final String getFolderCounterStr(@Nullable CharSequence text) {
        int integer = ResManager.INSTANCE.getInteger(C10651R.integer.folder_name_max_length);
        StringBuilder sb = new StringBuilder();
        sb.append(StringRuleLengthKt.getShowLength(text));
        sb.append('/');
        sb.append(integer);
        return sb.toString();
    }

    @NotNull
    public final StringListOption getFontCheckedDocumentListOption() {
        return new StringListOption(MMKVUtils.INSTANCE.get(), SettingsConfigConst.SETTINGS_FONT_CHECKED_DOCUMENT_LIST, null, 4, null);
    }

    @NotNull
    public final String getFrequentlyAnnotationMenu(@NotNull String typeName) {
        Intrinsics.checkNotNullParameter(typeName, "typeName");
        String string = MMKVUtils.INSTANCE.get().getString(SettingsConfigConst.SETTINGS_ANNOTATION_MENU + typeName, "");
        return string == null ? "" : string;
    }

    @NotNull
    public final Map<String, Integer> getGestureQuicklyClickMap() {
        return getQuicklyClickMap(QuicklyFunTypeConst.SETTINGS_GESTURE_TWO_FINGER_CLICK, QuicklyFunTypeConst.SETTINGS_GESTURE_THREE_FINGER_CLICK, QuicklyFunTypeConst.SETTINGS_GESTURE_DOUBLE_CLICK);
    }

    @NotNull
    public final BooleanOption getGraphConvert() {
        return MMKVNote.INSTANCE.getGraphConvert();
    }

    @NotNull
    public final BooleanOption getGraphConvertWithPressure() {
        return MMKVNote.INSTANCE.getGraphConvertWithPressure();
    }

    public final boolean getGraphFill() {
        return MMKVNote.INSTANCE.getGraphShapeOption().get().getFillColorEnable();
    }

    @NotNull
    public final BooleanOption getInkLastBeautifyParamExpandOption() {
        return MMKVUtils.INSTANCE.booleanOption(SettingsConfigConst.INK_BEAUTIFY_TYPESET_PARAM_EXPAND, true);
    }

    @NotNull
    public final StringOption getLastHwrLangOption() {
        return MMKVUtils.INSTANCE.stringOption(SettingsConfigConst.SETTINGS_HWR_LANG_LANG, HWREngineManager.INSTANCE.getDefaultLangByFunction(FunctionKey.HWR));
    }

    @NotNull
    public final BooleanOption getLongPressOfPageMenuOption() {
        return MMKVUtils.INSTANCE.booleanOption(SettingsConfigConst.SETTINGS_MORE_LONG_PRESS_OF_PAGE_MENU, true);
    }

    @NotNull
    public final NoteEditConfigInfo getNoteEditConfigInfo() {
        return (NoteEditConfigInfo) noteEditConfigInfo.getValue();
    }

    @NotNull
    public final BooleanOption getPaperMoveFree() {
        return MMKVUtils.INSTANCE.booleanOption("enable_free_move_paper", false);
    }

    @NotNull
    public final JSONObjectOption<PenBoxLocationModel> getPenBoxLocation() {
        return new JSONObjectOption<>(MMKVUtils.INSTANCE.get(), SettingsConfigConst.SETTINGS_PEN_BOX_LOCATION, new TypeReference<PenBoxLocationModel>() { // from class: com.onyx.galaxy.note.settings.data.NoteConfigManager$getPenBoxLocation$1
        }, new Function0<PenBoxLocationModel>() { // from class: com.onyx.galaxy.note.settings.data.NoteConfigManager$getPenBoxLocation$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PenBoxLocationModel invoke() {
                return new PenBoxLocationModel(null, null, false, 7, null);
            }
        });
    }

    @NotNull
    public final PreviewTouchDataBean getPreviewPointsData(@RawRes int rawResId) {
        Object parseObject = JSON.parseObject(RawResourceUtil.INSTANCE.contentOfRawResource(ResManager.INSTANCE.getAppContext(), rawResId), (Class<Object>) PreviewTouchDataBean.class);
        Intrinsics.checkNotNullExpressionValue(parseObject, "parseObject(...)");
        return (PreviewTouchDataBean) parseObject;
    }

    @NotNull
    public final IntOption getPronunciation() {
        return MMKVUtils.INSTANCE.intOption(SettingsConfigConst.SETTINGS_DOC_PRONUNCIATION, PronunciationType.BRITISH.getType());
    }

    @NotNull
    public final Map<String, Integer> getQuicklyClickMap(@NotNull String... keys) {
        List asList;
        Intrinsics.checkNotNullParameter(keys, "keys");
        asList = ArraysKt___ArraysJvmKt.asList(keys);
        return CollectionKt.toMap(asList, new Function1<String, String>() { // from class: com.onyx.galaxy.note.settings.data.NoteConfigManager$getQuicklyClickMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        }, new Function1<String, Integer>() { // from class: com.onyx.galaxy.note.settings.data.NoteConfigManager$getQuicklyClickMap$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Integer invoke(@NotNull String it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Integer.valueOf(NoteConfigManager.getQuicklyClickOption$default(NoteConfigManager.INSTANCE, it2, 0, 2, null).get());
            }
        });
    }

    @NotNull
    public final IntOption getQuicklyClickOption(@NotNull String clickKey, int defaultValue) {
        Intrinsics.checkNotNullParameter(clickKey, "clickKey");
        return MMKVUtils.INSTANCE.intOption(clickKey, defaultValue);
    }

    @NotNull
    public final FloatListOption getScaleCollection() {
        return getNoteEditConfigInfo().getScaleCollection();
    }

    @NotNull
    public final IntOption getScaleCollectionCount() {
        return new IntOption(MMKVUtils.INSTANCE.get(), SettingsConfigConst.SETTINGS_SCALE_COLLECTION_COUNT, ResManager.INSTANCE.getInteger(C10651R.integer.scale_collect_max_count));
    }

    @NotNull
    public final BooleanOption getScreenOnOption() {
        return MMKVUtils.INSTANCE.booleanOption(SettingsConfigConst.SETTINGS_MORE_KEEP_SCREEN_ON, false);
    }

    @NotNull
    public final BooleanOption getSlideToAdd() {
        return MMKVUtils.INSTANCE.booleanOption(SettingsConfigConst.SETTINGS_DOC_SLIDE_TO_ADD, true);
    }

    @NotNull
    public final BooleanOption getStatusBarHideOption() {
        return MMKVUtils.INSTANCE.booleanOption(SettingsConfigConst.SETTINGS_MORE_HIDE_STATUS_BAR, true);
    }

    @NotNull
    public final Map<String, Integer> getStylusQuicklyClickMap() {
        return getQuicklyClickMap("settings_stylus_double_click", "settings_stylus_primary_click", "settings_stylus_secondary_click", QuicklyFunTypeConst.SETTINGS_STYLUS_LONG_PRESS, QuicklyFunTypeConst.SETTINGS_STYLUS_PINCH, QuicklyFunTypeConst.SETTINGS_STYLUS_SLIDE_DOWN, QuicklyFunTypeConst.SETTINGS_STYLUS_SLIDE_UP);
    }

    @NotNull
    public final String getTagCounterStr(@Nullable CharSequence text) {
        int integer = ResManager.INSTANCE.getInteger(C10651R.integer.tag_name_max_length);
        StringBuilder sb = new StringBuilder();
        sb.append(StringRuleLengthKt.getShowLength(text));
        sb.append('/');
        sb.append(integer);
        return sb.toString();
    }

    @NotNull
    public final BooleanOption getUserAiSearchConfirmedOption() {
        return MMKVUtils.INSTANCE.booleanOption(getUserOptionKey(SettingsConfigConst.SETTINGS_AI_SEARCH_CONFIRMED), false);
    }

    @NotNull
    public final BooleanOption getUserHwrSearchEnabledOption() {
        return MMKVUtils.INSTANCE.booleanOption(getUserOptionKey(SettingsConfigConst.SETTINGS_HWR_SEARCH_ENABLED), getNoteEditConfigInfo().isHwrSearchEnabled());
    }

    @NotNull
    public final String getUserOptionKey(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return AccountDataBundle.INSTANCE.getSyncUserId() + '/' + key;
    }

    @NotNull
    public final JSONObjectOption<SearchScope> getUserSearchScopeOption() {
        String userOptionKey = getUserOptionKey(SettingsConfigConst.SETTINGS_USER_SEARCH_SCOPE);
        MMKVUtils mMKVUtils = MMKVUtils.INSTANCE;
        return new JSONObjectOption<>(mMKVUtils.get(), userOptionKey, new TypeReference<SearchScope>() { // from class: com.onyx.galaxy.note.settings.data.NoteConfigManager$getUserSearchScopeOption$$inlined$objectOption$1
        }, new Function0<SearchScope>() { // from class: com.onyx.galaxy.note.settings.data.NoteConfigManager$getUserSearchScopeOption$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SearchScope invoke() {
                return new SearchScope();
            }
        });
    }

    @NotNull
    public final BooleanOption getUserSmartHwrEnabledOption() {
        return MMKVUtils.INSTANCE.booleanOption(getUserOptionKey(SettingsConfigConst.SETTINGS_SMART_HWR_ENABLED), true);
    }

    public final boolean isAiSearchFeatureEnabled() {
        return getNoteEditConfigInfo().isAiSearchFeatureEnabled();
    }

    public final boolean isEnableStylusSelectText() {
        return MMKVNote.INSTANCE.getEnableStylusSelectTextOption().get();
    }

    public final boolean isInkBeautifyFeatureEnabled() {
        return getNoteEditConfigInfo().isAiSearchFeatureEnabled();
    }

    public final boolean isSmartHwrFeatureEnabled() {
        return getNoteEditConfigInfo().isSmartHwrFeatureEnabled();
    }

    public final void resetLastHwrLangOption() {
        getLastHwrLangOption().put(HWREngineManager.INSTANCE.getDefaultLangByFunction(FunctionKey.HWR));
    }

    public final void saveFrequentlyAnnotationMenu(@NotNull String typeName, @NotNull String menuName) {
        Intrinsics.checkNotNullParameter(typeName, "typeName");
        Intrinsics.checkNotNullParameter(menuName, "menuName");
        MMKVUtils.INSTANCE.putString(SettingsConfigConst.SETTINGS_ANNOTATION_MENU + typeName, menuName);
    }

    public final void setEnableStylusSelectText(boolean enable) {
        MMKVNote.INSTANCE.getEnableStylusSelectTextOption().put(enable);
    }

    public final void setGraphFill(final boolean fillColorEnable) {
        MMKVNote.INSTANCE.getGraphShapeOption().getAndPut(new Function1<UniversalShapeAttr, Unit>() { // from class: com.onyx.galaxy.note.settings.data.NoteConfigManager$setGraphFill$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(UniversalShapeAttr universalShapeAttr) {
                invoke2(universalShapeAttr);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable UniversalShapeAttr universalShapeAttr) {
                if (universalShapeAttr != null) {
                    universalShapeAttr.setFillColorEnable(fillColorEnable);
                }
                if (!fillColorEnable || universalShapeAttr == null) {
                    return;
                }
                universalShapeAttr.updateFillColorIfNotValid(new Function0<Integer>() { // from class: com.onyx.galaxy.note.settings.data.NoteConfigManager$setGraphFill$1.1
                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final Integer invoke() {
                        return Integer.valueOf(ResManager.INSTANCE.getColor(C10651R.color.shape_fill_color_default_01));
                    }
                });
            }
        });
    }

    @NotNull
    public final BooleanOption stylusFunctionTipsOption() {
        return MMKVUtils.INSTANCE.booleanOption(SettingsConfigConst.STYLUS_FUNCTION_TIPS, false);
    }
}
