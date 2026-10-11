package com.onyx.galaxy.note.editor.data;

import androidx.annotation.RawRes;
import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.TypeReference;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.RawResourceUtil;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.cloud.service.WebpageService;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.data.utils.ConfigLoader;
import com.onyx.android.sdk.data.utils.FloatListOption;
import com.onyx.android.sdk.data.utils.IntOption;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.MMKVUtils;
import com.onyx.android.sdk.data.utils.StringOption;
import com.onyx.android.sdk.note.common.data.shape.ShapeType;
import com.onyx.android.sdk.universal.editor.data.LassoPropertyOption;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.category.action.p127import.ImportUserManualNoteAction;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.settings.data.NoteConfigConst;
import com.onyx.galaxy.note.settings.data.SettingsConfigConst;
import com.onyx.galaxy.note.utils.ShapeToolUtils;
import com.sun.org.apache.bcel.internal.Constants;
import com.tencent.mmkv.MMKV;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000 m2\u00020\u0001:\u0001mB\u0007¢\u0006\u0004\bk\u0010lJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u000e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\tH\u0002J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\tH\u0002J\u0006\u0010\f\u001a\u00020\u0004J\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u0010\u001a\u00020\u000fJ\u0006\u0010\u0011\u001a\u00020\u000fJ\u0006\u0010\u0012\u001a\u00020\u000fJ\u0006\u0010\u0013\u001a\u00020\u000fJ\u0006\u0010\u0015\u001a\u00020\u0014J\u000e\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0014J\u0006\u0010\u0018\u001a\u00020\u0014J\u0006\u0010\u001a\u001a\u00020\u0019J\u000e\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u0019J\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00140\u001dJ\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00140\u001dJ\u0006\u0010 \u001a\u00020\u0006J\u0006\u0010!\u001a\u00020\u0002J\u000e\u0010\"\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010#\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010'\u001a\u00020&2\b\b\u0001\u0010%\u001a\u00020$J\f\u0010)\u001a\b\u0012\u0004\u0012\u00020(0\u001dJ\f\u0010*\u001a\b\u0012\u0004\u0012\u00020(0\u001dJ\f\u0010+\u001a\b\u0012\u0004\u0012\u00020(0\u001dJ\u0006\u0010,\u001a\u00020(J\u0006\u0010-\u001a\u00020(J\u0006\u0010.\u001a\u00020\u0004J\u0006\u0010/\u001a\u00020\u0004J\u0006\u00100\u001a\u00020\u0004J\u0006\u00101\u001a\u00020\u0004J\u0006\u00102\u001a\u00020\u0004J\u0006\u00103\u001a\u00020\u0004J\u0006\u00104\u001a\u00020(J\u0006\u00105\u001a\u00020\u0004J\u0006\u00106\u001a\u00020\u0004J\u0006\u00107\u001a\u00020\u0004J\f\u00108\u001a\b\u0012\u0004\u0012\u00020(0\u001dR\u001b\u0010=\u001a\u0002098FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010:\u001a\u0004\b;\u0010<R\u001b\u0010A\u001a\u00020>8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010:\u001a\u0004\b?\u0010@R\u0017\u0010G\u001a\u00020B8\u0006¢\u0006\f\n\u0004\bC\u0010D\u001a\u0004\bE\u0010FR\u0017\u0010L\u001a\u00020H8\u0006¢\u0006\f\n\u0004\b\b\u0010I\u001a\u0004\bJ\u0010KR\u0017\u0010Q\u001a\u00020M8\u0006¢\u0006\f\n\u0004\b\u0005\u0010N\u001a\u0004\bO\u0010PR!\u0010U\u001a\b\u0012\u0004\u0012\u00020\u00020\t8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bR\u0010:\u001a\u0004\bS\u0010TR!\u0010X\u001a\b\u0012\u0004\u0012\u00020\u00060\t8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bV\u0010:\u001a\u0004\bW\u0010TR!\u0010Z\u001a\b\u0012\u0004\u0012\u00020\u00140\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bY\u0010:\u001a\u0004\bC\u0010TR\u0016\u0010^\u001a\u0004\u0018\u00010[8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\\\u0010]R\u0017\u0010d\u001a\u00020_8\u0006¢\u0006\f\n\u0004\b`\u0010a\u001a\u0004\bb\u0010cR\u0017\u0010g\u001a\u00020_8\u0006¢\u0006\f\n\u0004\be\u0010a\u001a\u0004\bf\u0010cR\u0017\u0010j\u001a\u00020B8\u0006¢\u0006\f\n\u0004\bh\u0010D\u001a\u0004\bi\u0010F¨\u0006n"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;", "", "Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;", "shortcutBarData", "", "e", "Lcom/onyx/galaxy/note/editor/data/ShapeToolbarData;", "shapeToolbarData", "d", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "b", "a", "isTabOptionShow", "", "toggleTabShowOption", "Lcom/onyx/galaxy/note/editor/data/ThumbnailSizeType;", "getDocOverViewThumbnailSizeType", "toggleDocOverViewThumbnailSize", "getExportPagesThumbnailSizeType", "toggleExportPagesThumbnailSize", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "ensureSelectShapeType", "shapeToolType", "saveSelectShapeType", "ensurePenShapeToolType", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "ensureDockType", "dockType", "saveDockType", "", "getShapeShowList", "getShapeHideList", "getShapeToolbarData", "getShortcutBarData", "saveShapeToolbarData", "saveShortcutBarData", "", "rawResId", "Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;", "getPreviewPointsData", "", "getTapeNameList", "getUnDisplayShapeToolList", "getEnableSwitchBrushList", "getDefaultSelectShapeTool", "getDataRepositoryPath", "isDataRepositoryNeedRedirection", "isFontBeautifyEnable", "isInkBeautifyTypesetEnable", "isAiLabEnable", "isBackgroundFtsIndexEnabled", "isHwrSearchEnabled", "getUserManualName", "isInkBeautifyFeatureEnabled", "isAiSearchFeatureEnabled", "isSmartHwrFeatureEnabled", "getLanguageList", "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "Lkotlin/Lazy;", "getPenProperty", "()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "penProperty", "Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;", "getLassoProperty", "()Lcom/onyx/android/sdk/universal/editor/data/LassoPropertyOption;", "lassoProperty", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "c", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "getTabShowOption", "()Lcom/onyx/android/sdk/data/utils/BooleanOption;", "tabShowOption", "Lcom/onyx/android/sdk/data/utils/IntOption;", "Lcom/onyx/android/sdk/data/utils/IntOption;", "getTabCountOption", "()Lcom/onyx/android/sdk/data/utils/IntOption;", "tabCountOption", "Lcom/onyx/android/sdk/data/utils/FloatListOption;", "Lcom/onyx/android/sdk/data/utils/FloatListOption;", "getScaleCollection", "()Lcom/onyx/android/sdk/data/utils/FloatListOption;", "scaleCollection", C6997f.f39671c, "getShortcutBarDataOption", "()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "shortcutBarDataOption", C6998g.f39679a, "getShapeToolbarDataOption", "shapeToolbarDataOption", C6999h.f39688c, "shapeToolTypeOption", "Lcom/onyx/galaxy/note/editor/data/EditorConfig;", "i", "Lcom/onyx/galaxy/note/editor/data/EditorConfig;", "editJsonConfig", "Lcom/onyx/android/sdk/data/utils/StringOption;", "j", "Lcom/onyx/android/sdk/data/utils/StringOption;", "getDocOverViewThumbnailSizeOption", "()Lcom/onyx/android/sdk/data/utils/StringOption;", "docOverViewThumbnailSizeOption", C4921e.f26537n, "getExportPagesThumbnailSizeOption", "exportPagesThumbnailSizeOption", "l", "getMagnifierAutoForwardMoveOption", "magnifierAutoForwardMoveOption", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteEditConfigInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteEditConfigInfo.kt\ncom/onyx/galaxy/note/editor/data/NoteEditConfigInfo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,327:1\n1603#2,9:328\n1855#2:337\n1856#2:339\n1612#2:340\n1603#2,9:341\n1855#2:350\n1856#2:352\n1612#2:353\n1549#2:354\n1620#2,3:355\n1855#2,2:358\n1855#2,2:360\n1549#2:362\n1620#2,3:363\n766#2:366\n857#2,2:367\n766#2:369\n857#2,2:370\n1855#2:372\n288#2,2:373\n1856#2:375\n1#3:338\n1#3:351\n*S KotlinDebug\n*F\n+ 1 NoteEditConfigInfo.kt\ncom/onyx/galaxy/note/editor/data/NoteEditConfigInfo\n*L\n149#1:328,9\n149#1:337\n149#1:339\n149#1:340\n154#1:341,9\n154#1:350\n154#1:352\n154#1:353\n167#1:354\n167#1:355,3\n171#1:358,2\n179#1:360,2\n200#1:362\n200#1:363,3\n201#1:366\n201#1:367,2\n202#1:369\n202#1:370,2\n209#1:372\n210#1:373,2\n209#1:375\n149#1:338\n154#1:351\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteEditConfigInfo {

    /* renamed from: m */
    @NotNull
    public static final String f58522m = "editor_config";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Lazy penProperty;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Lazy lassoProperty;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final BooleanOption tabShowOption;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final IntOption tabCountOption;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final FloatListOption scaleCollection;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy shortcutBarDataOption;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy shapeToolbarDataOption;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final Lazy shapeToolTypeOption;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public final EditorConfig editJsonConfig;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final StringOption docOverViewThumbnailSizeOption;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final StringOption exportPagesThumbnailSizeOption;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final BooleanOption magnifierAutoForwardMoveOption;

    public NoteEditConfigInfo() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Lazy lazy5;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PenPropertyBean>() { // from class: com.onyx.galaxy.note.editor.data.NoteEditConfigInfo$penProperty$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PenPropertyBean invoke() {
                return new PenPropertyBean();
            }
        });
        this.penProperty = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<LassoPropertyOption>() { // from class: com.onyx.galaxy.note.editor.data.NoteEditConfigInfo$lassoProperty$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LassoPropertyOption invoke() {
                return new LassoPropertyOption();
            }
        });
        this.lassoProperty = lazy2;
        MMKVUtils mMKVUtils = MMKVUtils.INSTANCE;
        this.tabShowOption = new BooleanOption(mMKVUtils.get(), NoteConfigConst.ONYX_NOTE_EDIT_TAB_SHOW, true);
        this.tabCountOption = new IntOption(mMKVUtils.get(), NoteConfigConst.ONYX_NOTE_EDIT_TAB_COUNT, -1);
        this.scaleCollection = new FloatListOption(mMKVUtils.get(), SettingsConfigConst.SETTINGS_SCALE_COLLECTION, null, 4, null);
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<JSONObjectOption<ShortcutBarData>>() { // from class: com.onyx.galaxy.note.editor.data.NoteEditConfigInfo$shortcutBarDataOption$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final JSONObjectOption<ShortcutBarData> invoke() {
                JSONObjectOption<ShortcutBarData> m46003b;
                m46003b = NoteEditConfigInfo.this.m46003b();
                return m46003b;
            }
        });
        this.shortcutBarDataOption = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<JSONObjectOption<ShapeToolbarData>>() { // from class: com.onyx.galaxy.note.editor.data.NoteEditConfigInfo$shapeToolbarDataOption$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final JSONObjectOption<ShapeToolbarData> invoke() {
                JSONObjectOption<ShapeToolbarData> m46002a;
                m46002a = NoteEditConfigInfo.this.m46002a();
                return m46002a;
            }
        });
        this.shapeToolbarDataOption = lazy4;
        lazy5 = LazyKt__LazyJVMKt.lazy(new Function0<JSONObjectOption<ShapeToolType>>() { // from class: com.onyx.galaxy.note.editor.data.NoteEditConfigInfo$shapeToolTypeOption$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final JSONObjectOption<ShapeToolType> invoke() {
                return new JSONObjectOption<>(MMKVUtils.INSTANCE.get(), NoteConfigConst.ONYX_NOTE_EDIT_SELECT_SHAPE_TYPE, new TypeReference<ShapeToolType>() { // from class: com.onyx.galaxy.note.editor.data.NoteEditConfigInfo$shapeToolTypeOption$2.1
                }, new Function0<ShapeToolType>() { // from class: com.onyx.galaxy.note.editor.data.NoteEditConfigInfo$shapeToolTypeOption$2.2
                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final ShapeToolType invoke() {
                        ShapeToolUtils shapeToolUtils = ShapeToolUtils.INSTANCE;
                        return shapeToolUtils.getSelectShapeToolType(MMKVNote.INSTANCE.getLastSelectShapeType(), shapeToolUtils.getDefaultSelectShapeToolType());
                    }
                });
            }
        });
        this.shapeToolTypeOption = lazy5;
        this.editJsonConfig = (EditorConfig) ConfigLoader.INSTANCE.load(EditorConfig.class, f58522m);
        MMKV mmkv = mMKVUtils.get();
        ThumbnailSizeType thumbnailSizeType = ThumbnailSizeType.SMALL;
        this.docOverViewThumbnailSizeOption = new StringOption(mmkv, NoteConfigConst.ONYX_NOTE_EDIT_DOC_OVER_VIEW_THUMBNAIL_SIZE, thumbnailSizeType.name());
        this.exportPagesThumbnailSizeOption = new StringOption(mMKVUtils.get(), NoteConfigConst.ONYX_NOTE_EDIT_EXPORT_PAGES_THUMBNAIL_SIZE, thumbnailSizeType.name());
        this.magnifierAutoForwardMoveOption = new BooleanOption(mMKVUtils.get(), NoteConfigConst.ONYX_NOTE_EDIT_MAGNIFIER_AUTO_FORWARD_MOVE, true);
    }

    /* renamed from: a */
    public final JSONObjectOption<ShapeToolbarData> m46002a() {
        JSONObjectOption<ShapeToolbarData> jSONObjectOption = new JSONObjectOption<>(MMKVUtils.INSTANCE.get(), NoteConfigConst.ONYX_NOTE_EDIT_CONFIG_SHAPE_TOOL_LIST_KEY, new TypeReference<ShapeToolbarData>() { // from class: com.onyx.galaxy.note.editor.data.NoteEditConfigInfo$ensureShapeToolbarDataOption$option$1
        }, new Function0<ShapeToolbarData>() { // from class: com.onyx.galaxy.note.editor.data.NoteEditConfigInfo$ensureShapeToolbarDataOption$option$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ShapeToolbarData invoke() {
                ShapeToolbarData shapeToolbarData = new ShapeToolbarData();
                shapeToolbarData.resetConfig();
                return shapeToolbarData;
            }
        });
        ShapeToolbarData shapeToolbarData = jSONObjectOption.get();
        if (m46005d(shapeToolbarData)) {
            jSONObjectOption.put(shapeToolbarData);
        }
        return jSONObjectOption;
    }

    /* renamed from: b */
    public final JSONObjectOption<ShortcutBarData> m46003b() {
        JSONObjectOption<ShortcutBarData> jSONObjectOption = new JSONObjectOption<>(MMKVUtils.INSTANCE.get(), NoteConfigConst.ONYX_NOTE_EDIT_CONFIG_SHORTCUT_BAR_LIST_KEY, new TypeReference<ShortcutBarData>() { // from class: com.onyx.galaxy.note.editor.data.NoteEditConfigInfo$ensureShortcutBarDataOption$option$1
        }, new Function0<ShortcutBarData>() { // from class: com.onyx.galaxy.note.editor.data.NoteEditConfigInfo$ensureShortcutBarDataOption$option$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ShortcutBarData invoke() {
                return ShortcutBarData.INSTANCE.createDefaultShortcutBarData();
            }
        });
        ShortcutBarData shortcutBarData = jSONObjectOption.get();
        if (m46006e(shortcutBarData)) {
            jSONObjectOption.put(shortcutBarData);
        }
        return jSONObjectOption;
    }

    /* renamed from: c */
    public final JSONObjectOption<ShapeToolType> m46004c() {
        return (JSONObjectOption) this.shapeToolTypeOption.getValue();
    }

    /* renamed from: d */
    public final boolean m46005d(ShapeToolbarData shapeToolbarData) {
        int collectionSizeOrDefault;
        List list;
        List<String> list2;
        Object obj;
        shapeToolbarData.distinct();
        List<ShapeToolType> defaultValues = ShapeToolUtils.INSTANCE.getDefaultValues();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(defaultValues, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = defaultValues.iterator();
        while (it2.hasNext()) {
            arrayList.add(((ShapeToolType) it2.next()).name());
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list) {
            if (true ^ shapeToolbarData.getDisabledList().contains((String) obj2)) {
                arrayList2.add(obj2);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj3 : arrayList2) {
            if (!shapeToolbarData.getEnabledList().contains((String) obj3)) {
                arrayList3.add(obj3);
            }
        }
        list2 = CollectionsKt___CollectionsKt.toList(arrayList3);
        if (list2.isEmpty()) {
            return false;
        }
        for (String str : list2) {
            Iterator<E> it3 = ShapeToolType.getEntries().iterator();
            while (true) {
                if (!it3.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it3.next();
                if (Intrinsics.areEqual(str, ((ShapeToolType) obj).name())) {
                    break;
                }
            }
            ShapeToolType shapeToolType = (ShapeToolType) obj;
            if (shapeToolType != null) {
                CollectionKt.safeAdd(shapeToolbarData.getEnabledList(), ShapeToolType.INSTANCE.getClosestIndex(shapeToolType, shapeToolbarData.getEnabledList()), str);
                Debug.INSTANCE.m32035d(NoteEditConfigInfo.class, "new tool type: " + str, new Object[0]);
            } else {
                Debug.INSTANCE.m32035d(NoteEditConfigInfo.class, "new tool type do not contain ShapeToolType.entries: " + str, new Object[0]);
            }
        }
        return true;
    }

    /* renamed from: e */
    public final boolean m46006e(ShortcutBarData shortcutBarData) {
        List plus;
        List plus2;
        int collectionSizeOrDefault;
        Set mutableSet;
        Set set;
        Set minus;
        Set set2;
        Set minus2;
        plus = CollectionsKt___CollectionsKt.plus((Collection) shortcutBarData.getCandidateList(), (Iterable) shortcutBarData.getLeftSideList());
        plus2 = CollectionsKt___CollectionsKt.plus((Collection) plus, (Iterable) shortcutBarData.getRightSideList());
        List<ShortcutType> enableShortcutTypes = ShortcutType.INSTANCE.getEnableShortcutTypes();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(enableShortcutTypes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = enableShortcutTypes.iterator();
        while (it2.hasNext()) {
            arrayList.add(Integer.valueOf(((ShortcutType) it2.next()).getShortcutType()));
        }
        mutableSet = CollectionsKt___CollectionsKt.toMutableSet(arrayList);
        List list = plus2;
        set = CollectionsKt___CollectionsKt.toSet(list);
        minus = SetsKt___SetsKt.minus(set, (Iterable) mutableSet);
        set2 = CollectionsKt___CollectionsKt.toSet(list);
        minus2 = SetsKt___SetsKt.minus(mutableSet, (Iterable) set2);
        if (!minus.isEmpty()) {
            Iterator it3 = minus.iterator();
            while (it3.hasNext()) {
                int intValue = ((Number) it3.next()).intValue();
                shortcutBarData.getLeftSideList().remove(Integer.valueOf(intValue));
                shortcutBarData.getRightSideList().remove(Integer.valueOf(intValue));
                shortcutBarData.getCandidateList().remove(Integer.valueOf(intValue));
            }
        }
        if (!minus2.isEmpty()) {
            ShortcutBarData createDefaultShortcutBarData = ShortcutBarData.INSTANCE.createDefaultShortcutBarData();
            Iterator it4 = minus2.iterator();
            while (it4.hasNext()) {
                int intValue2 = ((Number) it4.next()).intValue();
                if (createDefaultShortcutBarData.getLeftSideList().contains(Integer.valueOf(intValue2))) {
                    shortcutBarData.getLeftSideList().add(Integer.valueOf(intValue2));
                } else if (createDefaultShortcutBarData.getRightSideList().contains(Integer.valueOf(intValue2))) {
                    shortcutBarData.getRightSideList().add(Integer.valueOf(intValue2));
                } else if (createDefaultShortcutBarData.getCandidateList().contains(Integer.valueOf(intValue2))) {
                    shortcutBarData.getCandidateList().add(Integer.valueOf(intValue2));
                }
            }
        }
        return (minus.isEmpty() ^ true) || (minus2.isEmpty() ^ true);
    }

    @NotNull
    public final DockType ensureDockType() {
        DockType dockType = (DockType) JSONUtils.INSTANCE.parseObject(MMKVUtils.INSTANCE.getString(NoteConfigConst.ONYX_NOTE_EDIT_SELECT_DOCK_TYPE, ""), DockType.class);
        if (dockType != null) {
            return dockType;
        }
        DockType dockType2 = DockType.TOP;
        saveDockType(dockType2);
        return dockType2;
    }

    @NotNull
    public final ShapeToolType ensurePenShapeToolType() {
        return ShapeType.INSTANCE.isValid(MMKVNote.INSTANCE.getLastWriteGroupShapeType(-1)) ? ShapeToolType.WRITE_PEN_GROUP : ShapeToolType.INK_PEN;
    }

    @NotNull
    public final ShapeToolType ensureSelectShapeType() {
        return m46004c().get();
    }

    @NotNull
    public final String getDataRepositoryPath() {
        WebConfig webConfig;
        String dataRepositoryPath;
        EditorConfig editorConfig = this.editJsonConfig;
        return (editorConfig == null || (webConfig = editorConfig.getWebConfig()) == null || (dataRepositoryPath = webConfig.getDataRepositoryPath()) == null) ? WebpageService.PATH_DATA_REPOSITORY_MATERIAL : dataRepositoryPath;
    }

    @NotNull
    public final String getDefaultSelectShapeTool() {
        ShapeToolConfig shapeToolConfig;
        String defaultSelectShapeTool;
        EditorConfig editorConfig = this.editJsonConfig;
        return (editorConfig == null || (shapeToolConfig = editorConfig.getShapeToolConfig()) == null || (defaultSelectShapeTool = shapeToolConfig.getDefaultSelectShapeTool()) == null) ? ShapeToolType.INK_PEN.name() : defaultSelectShapeTool;
    }

    @NotNull
    public final StringOption getDocOverViewThumbnailSizeOption() {
        return this.docOverViewThumbnailSizeOption;
    }

    @NotNull
    public final ThumbnailSizeType getDocOverViewThumbnailSizeType() {
        return ThumbnailSizeType.INSTANCE.getTypeByName(this.docOverViewThumbnailSizeOption.get());
    }

    @NotNull
    public final List<String> getEnableSwitchBrushList() {
        ShapeToolConfig shapeToolConfig;
        List<String> enableSwitchBrushList;
        EditorConfig editorConfig = this.editJsonConfig;
        return (editorConfig == null || (shapeToolConfig = editorConfig.getShapeToolConfig()) == null || (enableSwitchBrushList = shapeToolConfig.getEnableSwitchBrushList()) == null) ? new ArrayList() : enableSwitchBrushList;
    }

    @NotNull
    public final StringOption getExportPagesThumbnailSizeOption() {
        return this.exportPagesThumbnailSizeOption;
    }

    @NotNull
    public final ThumbnailSizeType getExportPagesThumbnailSizeType() {
        return ThumbnailSizeType.INSTANCE.getTypeByName(this.exportPagesThumbnailSizeOption.get());
    }

    @NotNull
    public final List<String> getLanguageList() {
        List<String> languageList;
        EditorConfig editorConfig = this.editJsonConfig;
        return (editorConfig == null || (languageList = editorConfig.getLanguageList()) == null) ? new ArrayList() : languageList;
    }

    @NotNull
    public final LassoPropertyOption getLassoProperty() {
        return (LassoPropertyOption) this.lassoProperty.getValue();
    }

    @NotNull
    public final BooleanOption getMagnifierAutoForwardMoveOption() {
        return this.magnifierAutoForwardMoveOption;
    }

    @NotNull
    public final PenPropertyBean getPenProperty() {
        return (PenPropertyBean) this.penProperty.getValue();
    }

    @NotNull
    public final PreviewTouchDataBean getPreviewPointsData(@RawRes int rawResId) {
        Object parseObject = JSON.parseObject(RawResourceUtil.INSTANCE.contentOfRawResource(ResManager.INSTANCE.getAppContext(), rawResId), (Class<Object>) PreviewTouchDataBean.class);
        Intrinsics.checkNotNullExpressionValue(parseObject, "parseObject(...)");
        return (PreviewTouchDataBean) parseObject;
    }

    @NotNull
    public final FloatListOption getScaleCollection() {
        return this.scaleCollection;
    }

    @NotNull
    public final List<ShapeToolType> getShapeHideList() {
        List<ShapeToolType> list;
        List<String> disabledList = getShapeToolbarData().getDisabledList();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = disabledList.iterator();
        while (it2.hasNext()) {
            ShapeToolType safetyValueOf = ShapeToolType.INSTANCE.safetyValueOf((String) it2.next());
            if (safetyValueOf != null) {
                arrayList.add(safetyValueOf);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        return list;
    }

    @NotNull
    public final List<ShapeToolType> getShapeShowList() {
        List<ShapeToolType> list;
        List<String> enabledList = getShapeToolbarData().getEnabledList();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = enabledList.iterator();
        while (it2.hasNext()) {
            ShapeToolType safetyValueOf = ShapeToolType.INSTANCE.safetyValueOf((String) it2.next());
            if (safetyValueOf != null) {
                arrayList.add(safetyValueOf);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        return list;
    }

    @NotNull
    public final ShapeToolbarData getShapeToolbarData() {
        return getShapeToolbarDataOption().get();
    }

    @NotNull
    public final JSONObjectOption<ShapeToolbarData> getShapeToolbarDataOption() {
        return (JSONObjectOption) this.shapeToolbarDataOption.getValue();
    }

    @NotNull
    public final ShortcutBarData getShortcutBarData() {
        return getShortcutBarDataOption().get();
    }

    @NotNull
    public final JSONObjectOption<ShortcutBarData> getShortcutBarDataOption() {
        return (JSONObjectOption) this.shortcutBarDataOption.getValue();
    }

    @NotNull
    public final IntOption getTabCountOption() {
        return this.tabCountOption;
    }

    @NotNull
    public final BooleanOption getTabShowOption() {
        return this.tabShowOption;
    }

    @NotNull
    public final List<String> getTapeNameList() {
        List<String> tapeList;
        EditorConfig editorConfig = this.editJsonConfig;
        return (editorConfig == null || (tapeList = editorConfig.getTapeList()) == null) ? new ArrayList() : tapeList;
    }

    @NotNull
    public final List<String> getUnDisplayShapeToolList() {
        ShapeToolConfig shapeToolConfig;
        List<String> unDisplayShapeToolList;
        EditorConfig editorConfig = this.editJsonConfig;
        return (editorConfig == null || (shapeToolConfig = editorConfig.getShapeToolConfig()) == null || (unDisplayShapeToolList = shapeToolConfig.getUnDisplayShapeToolList()) == null) ? new ArrayList() : unDisplayShapeToolList;
    }

    @NotNull
    public final String getUserManualName() {
        String userManualName;
        EditorConfig editorConfig = this.editJsonConfig;
        return (editorConfig == null || (userManualName = editorConfig.getUserManualName()) == null) ? ImportUserManualNoteAction.DEFAULT_USER_MANUAL_NAME : userManualName;
    }

    public final boolean isAiLabEnable() {
        EditorConfig editorConfig = this.editJsonConfig;
        if (editorConfig != null) {
            return editorConfig.getAiLabEnable();
        }
        return false;
    }

    public final boolean isAiSearchFeatureEnabled() {
        EditorConfig editorConfig = this.editJsonConfig;
        return editorConfig != null && editorConfig.getAiSearchFeatureEnabled();
    }

    public final boolean isBackgroundFtsIndexEnabled() {
        EditorConfig editorConfig = this.editJsonConfig;
        if (editorConfig != null) {
            return editorConfig.getEnableBackgroundFtsIndex();
        }
        return false;
    }

    public final boolean isDataRepositoryNeedRedirection() {
        WebConfig webConfig;
        EditorConfig editorConfig = this.editJsonConfig;
        if (editorConfig == null || (webConfig = editorConfig.getWebConfig()) == null) {
            return false;
        }
        return webConfig.getDataRepositoryRedirection();
    }

    public final boolean isFontBeautifyEnable() {
        EditorConfig editorConfig = this.editJsonConfig;
        if (editorConfig != null) {
            return editorConfig.getFontBeautifyEnable();
        }
        return false;
    }

    public final boolean isHwrSearchEnabled() {
        EditorConfig editorConfig = this.editJsonConfig;
        if (editorConfig != null) {
            return editorConfig.getEnableHwrSearch();
        }
        return false;
    }

    public final boolean isInkBeautifyFeatureEnabled() {
        EditorConfig editorConfig = this.editJsonConfig;
        return editorConfig != null && editorConfig.getInkBeautifyFeatureEnabled();
    }

    public final boolean isInkBeautifyTypesetEnable() {
        EditorConfig editorConfig = this.editJsonConfig;
        if (editorConfig != null) {
            return editorConfig.getInkBeautifyTypesetEnable();
        }
        return false;
    }

    public final boolean isSmartHwrFeatureEnabled() {
        EditorConfig editorConfig = this.editJsonConfig;
        return editorConfig != null && editorConfig.getSmartHwrFeatureEnabled();
    }

    public final boolean isTabOptionShow() {
        return this.tabShowOption.get();
    }

    public final void saveDockType(@NotNull DockType dockType) {
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        MMKVUtils.INSTANCE.putString(NoteConfigConst.ONYX_NOTE_EDIT_SELECT_DOCK_TYPE, String.valueOf(JSONUtils.INSTANCE.toJson(dockType)));
    }

    public final void saveSelectShapeType(@NotNull ShapeToolType shapeToolType) {
        Intrinsics.checkNotNullParameter(shapeToolType, "shapeToolType");
        m46004c().put(shapeToolType);
        if (shapeToolType == ShapeToolType.WRITE_PEN_GROUP) {
            MMKVNote.INSTANCE.saveLastWriteGroupShapeType(shapeToolType.getShapeType());
        }
    }

    public final void saveShapeToolbarData(@NotNull ShapeToolbarData shapeToolbarData) {
        Intrinsics.checkNotNullParameter(shapeToolbarData, "shapeToolbarData");
        getShapeToolbarDataOption().put(shapeToolbarData);
    }

    public final void saveShortcutBarData(@NotNull ShortcutBarData shortcutBarData) {
        Intrinsics.checkNotNullParameter(shortcutBarData, "shortcutBarData");
        getShortcutBarDataOption().put(shortcutBarData);
    }

    @NotNull
    public final ThumbnailSizeType toggleDocOverViewThumbnailSize() {
        ThumbnailSizeType switchNext = getDocOverViewThumbnailSizeType().switchNext();
        this.docOverViewThumbnailSizeOption.put(switchNext.name());
        return switchNext;
    }

    @NotNull
    public final ThumbnailSizeType toggleExportPagesThumbnailSize() {
        ThumbnailSizeType switchNext = getExportPagesThumbnailSizeType().switchNext();
        this.exportPagesThumbnailSizeOption.put(switchNext.name());
        return switchNext;
    }

    public final void toggleTabShowOption() {
        this.tabShowOption.toggle();
    }
}
