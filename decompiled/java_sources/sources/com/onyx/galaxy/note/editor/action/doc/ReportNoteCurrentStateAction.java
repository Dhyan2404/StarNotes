package com.onyx.galaxy.note.editor.action.doc;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.BooleanKt;
import com.onyx.android.sdk.base.utils.ColorUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.pen.utils.PenUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.statistics.C7998R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.layer.LoadNotePageLayersAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.galaxy.note.common.base.RxBaseNoteAppAction;
import com.onyx.galaxy.note.common.extension.StatisticsExtKt;
import com.onyx.galaxy.note.editor.data.PensizeConvertExtKt;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\"\u001a\u00020\u001f¢\u0006\u0004\b*\u0010+J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0014\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007H\u0002J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0016\u0010\u0017\u001a\u00020\b2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0002J\u0010\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0015H\u0002J\u0010\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u000fH\u0002J\u0010\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002R\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010%\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010'\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010$R\u0016\u0010)\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010$¨\u0006,"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/doc/ReportNoteCurrentStateAction;", "Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "v", "u", "t", "", "", "", "l", "", "penType", GoogleApiAvailabilityLight.f29016b, "m", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "getDockType", "", "value", "s", "", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "list", C4921e.f26528e, "shapeToolType", "r", "dockType", "p", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "penArgs", "q", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", C6998g.f39679a, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", C6999h.f39688c, "I", "tabSize", "i", "layerCount", "j", "audioCount", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nReportNoteCurrentStateAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReportNoteCurrentStateAction.kt\ncom/onyx/galaxy/note/editor/action/doc/ReportNoteCurrentStateAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,179:1\n1855#2,2:180\n*S KotlinDebug\n*F\n+ 1 ReportNoteCurrentStateAction.kt\ncom/onyx/galaxy/note/editor/action/doc/ReportNoteCurrentStateAction\n*L\n127#1:180,2\n*E\n"})
/* loaded from: classes9.dex */
public final class ReportNoteCurrentStateAction extends RxBaseNoteAppAction<ReportNoteCurrentStateAction> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: h, reason: from kotlin metadata */
    public int tabSize;

    /* renamed from: i, reason: from kotlin metadata */
    public int layerCount;

    /* renamed from: j, reason: from kotlin metadata */
    public int audioCount;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[ShapeToolType.values().length];
            try {
                iArr[ShapeToolType.INK_PEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ShapeToolType.BALLPOINT_PEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ShapeToolType.MARKER_PEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ShapeToolType.PENCIL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ShapeToolType.ERASER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ShapeToolType.LASSO.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ShapeToolType.IMAGE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ShapeToolType.EDIT_TEXT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ShapeToolType.EXCERPT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ShapeToolType.TAG.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[ShapeToolType.GRAPH_PEN.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[ShapeToolType.IMAGE_STICKER.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[ShapeToolType.TAPE_PEN.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[ShapeToolType.LASER_PEN.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[ShapeToolType.CUSTOM.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[ShapeToolType.RULER.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[ShapeToolType.CALLIGRAPHY_PEN.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[ShapeToolType.SOFT_PAINT_PEN.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[ShapeToolType.WRITE_PEN_GROUP.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[ShapeToolType.MAGNIFIER.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[DockType.values().length];
            try {
                iArr2[DockType.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr2[DockType.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr2[DockType.LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr2[DockType.RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused24) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.doc.ReportNoteCurrentStateAction$a */
    /* loaded from: classes9.dex */
    public static final class C11902a<T, R> implements Function {
        public C11902a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ReportNoteCurrentStateAction> apply(@NotNull ReportNoteCurrentStateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ReportNoteCurrentStateAction.this.m45809v();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.doc.ReportNoteCurrentStateAction$b */
    /* loaded from: classes9.dex */
    public static final class C11903b<T, R> implements Function {
        public C11903b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ReportNoteCurrentStateAction> apply(@NotNull ReportNoteCurrentStateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ReportNoteCurrentStateAction.this.m45808u();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.doc.ReportNoteCurrentStateAction$c */
    /* loaded from: classes9.dex */
    public static final class C11904c<T, R> implements Function {
        public C11904c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ReportNoteCurrentStateAction> apply(@NotNull ReportNoteCurrentStateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ReportNoteCurrentStateAction.this.m45807t();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.doc.ReportNoteCurrentStateAction$d */
    /* loaded from: classes9.dex */
    public static final class C11905d<T, R> implements Function {
        public C11905d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<String, Object> apply(@NotNull ReportNoteCurrentStateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ReportNoteCurrentStateAction.this.m45799l();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.doc.ReportNoteCurrentStateAction$e */
    /* loaded from: classes9.dex */
    public static final class C11906e<T> implements Consumer {
        public C11906e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Map<String, ? extends Object> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            StatisticsExtKt.reportNoteEvent(ReportNoteCurrentStateAction.this.editorBundle, OnyxStatisticConstant.ID_NOTE_VIEW, it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.doc.ReportNoteCurrentStateAction$f */
    /* loaded from: classes9.dex */
    public static final class C11907f<T, R> implements Function {
        public C11907f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ReportNoteCurrentStateAction apply(@NotNull Map<String, ? extends Object> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ReportNoteCurrentStateAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.doc.ReportNoteCurrentStateAction$g */
    /* loaded from: classes9.dex */
    public static final class C11908g<T> implements Consumer {
        public C11908g() {
        }

        /* renamed from: a */
        public final void m45816a(int i) {
            ReportNoteCurrentStateAction.this.audioCount = i;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m45816a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.doc.ReportNoteCurrentStateAction$h */
    /* loaded from: classes9.dex */
    public static final class C11909h<T, R> implements Function {
        public C11909h() {
        }

        @NotNull
        /* renamed from: a */
        public final ReportNoteCurrentStateAction m45817a(int i) {
            return ReportNoteCurrentStateAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m45817a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.doc.ReportNoteCurrentStateAction$i */
    /* loaded from: classes9.dex */
    public static final class C11910i<T> implements Consumer {
        public C11910i() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull PageInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ReportNoteCurrentStateAction.this.layerCount = it2.getLayerCount();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.doc.ReportNoteCurrentStateAction$j */
    /* loaded from: classes9.dex */
    public static final class C11911j<T, R> implements Function {
        public C11911j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ReportNoteCurrentStateAction apply(@NotNull PageInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ReportNoteCurrentStateAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.doc.ReportNoteCurrentStateAction$k */
    /* loaded from: classes9.dex */
    public static final class C11912k<T, R> implements Function {

        /* renamed from: e */
        public static final C11912k<T, R> f58305e = new C11912k<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer apply(@NotNull ReportNoteCurrentStateAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Integer.valueOf(KSyncBundle.INSTANCE.getUserNoteTabProvider().queryTabCount());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.doc.ReportNoteCurrentStateAction$l */
    /* loaded from: classes9.dex */
    public static final class C11913l<T> implements Consumer {
        public C11913l() {
        }

        /* renamed from: a */
        public final void m45821a(int i) {
            ReportNoteCurrentStateAction.this.tabSize = i;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m45821a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.doc.ReportNoteCurrentStateAction$m */
    /* loaded from: classes9.dex */
    public static final class C11914m<T, R> implements Function {
        public C11914m() {
        }

        @NotNull
        /* renamed from: a */
        public final ReportNoteCurrentStateAction m45822a(int i) {
            return ReportNoteCurrentStateAction.this;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m45822a(((Number) obj).intValue());
        }
    }

    public ReportNoteCurrentStateAction(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ReportNoteCurrentStateAction> create() {
        Observable<ReportNoteCurrentStateAction> map = Observable.just(this).flatMap(new C11902a()).flatMap(new C11903b()).flatMap(new C11904c()).observeOn(getObserveOn()).map(new C11905d()).observeOn(getMainUIScheduler()).doOnNext(new C11906e()).map(new C11907f());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final DockType getDockType() {
        return NoteConfigManager.INSTANCE.getNoteEditConfigInfo().ensureDockType();
    }

    /* renamed from: l */
    public final Map<String, Object> m45799l() {
        Map<String, Object> mutableMapOf;
        Pair m61535to = TuplesKt.m61535to(OnyxStatisticConstant.KEY_NOTE_BAR_AMOUNT, Integer.valueOf(this.tabSize));
        NoteConfigManager noteConfigManager = NoteConfigManager.INSTANCE;
        Pair m61535to2 = TuplesKt.m61535to(OnyxStatisticConstant.KEY_NOTE_BAR_STATE, Integer.valueOf(BooleanKt.toInteger(Boolean.valueOf(noteConfigManager.getNoteEditConfigInfo().isTabOptionShow()))));
        Pair m61535to3 = TuplesKt.m61535to(OnyxStatisticConstant.KEY_NOTE_TOOL_BAR_SITE, m45803p(getDockType()));
        Pair m61535to4 = TuplesKt.m61535to("note_tool_bar_sort", m45802o(noteConfigManager.getNoteEditConfigInfo().getShapeShowList()));
        Pair m61535to5 = TuplesKt.m61535to("note_tool_bar_hide", m45802o(noteConfigManager.getNoteEditConfigInfo().getShapeHideList()));
        Pair m61535to6 = TuplesKt.m61535to("record_amount", Integer.valueOf(this.audioCount));
        Pair m61535to7 = TuplesKt.m61535to(OnyxStatisticConstant.KEY_LAYER_AMOUNT, Integer.valueOf(this.layerCount));
        Pair m61535to8 = TuplesKt.m61535to("pen_data", m45801n(ShapeToolType.INK_PEN.getShapeType()));
        Pair m61535to9 = TuplesKt.m61535to("ballpen_data", m45801n(ShapeToolType.BALLPOINT_PEN.getShapeType()));
        Pair m61535to10 = TuplesKt.m61535to("markerpen_data", m45800m(ShapeToolType.MARKER_PEN.getShapeType()));
        Pair m61535to11 = TuplesKt.m61535to("pencil_data", m45801n(ShapeToolType.PENCIL.getShapeType()));
        String lowerCase = MMKVNote.getEditTouchMode$default(MMKVNote.INSTANCE, null, 1, null).name().toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(m61535to, m61535to2, m61535to3, m61535to4, m61535to5, m61535to6, m61535to7, m61535to8, m61535to9, m61535to10, m61535to11, TuplesKt.m61535to(OnyxStatisticConstant.KEY_WRITING_MODE_STATE, lowerCase));
        return mutableMapOf;
    }

    /* renamed from: m */
    public final String m45800m(int penType) {
        Map mutableMapOf;
        PenArgs penArgs = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty().getPenArgsOption(penType).get();
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to("color", ColorUtils.INSTANCE.toRgbaColor(penArgs.getColor())), TuplesKt.m61535to("thickness", m45806s(PensizeConvertExtKt.sizeToValue(penArgs.getWidth())) + "mm"), TuplesKt.m61535to("shape", m45804q(penArgs)));
        String json = JSONUtils.INSTANCE.toJson(mutableMapOf);
        return json == null ? "" : json;
    }

    /* renamed from: n */
    public final String m45801n(int penType) {
        Map mutableMapOf;
        PenArgs penArgs = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty().getPenArgsOption(penType).get();
        mutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.m61535to("color", ColorUtils.INSTANCE.toRgbaColor(penArgs.getColor())), TuplesKt.m61535to("thickness", m45806s(PensizeConvertExtKt.sizeToValue(penArgs.getWidth())) + "mm"), TuplesKt.m61535to("pressure", m45806s(PenUtils.INSTANCE.toPercentPressureSensitivity(penArgs.getPressureSensitivity()))), TuplesKt.m61535to("nib", m45806s(penArgs.getNib()) + "mm"));
        String json = JSONUtils.INSTANCE.toJson(mutableMapOf);
        return json == null ? "" : json;
    }

    /* renamed from: o */
    public final String m45802o(List<? extends ShapeToolType> list) {
        StringBuilder sb = new StringBuilder();
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            sb.append(ResManager.INSTANCE.getString(m45805r((ShapeToolType) it2.next())));
            sb.append("_");
        }
        if (sb.length() > 0) {
            Intrinsics.checkNotNullExpressionValue(sb.deleteCharAt(sb.length() - 1), "deleteCharAt(...)");
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    /* renamed from: p */
    public final String m45803p(DockType dockType) {
        int i;
        ResManager resManager = ResManager.INSTANCE;
        int i2 = WhenMappings.$EnumSwitchMapping$1[dockType.ordinal()];
        if (i2 == 1) {
            i = C7998R.string.dock_type_name_top;
        } else if (i2 == 2) {
            i = C7998R.string.dock_type_name_bottom;
        } else if (i2 == 3) {
            i = C7998R.string.dock_type_name_left;
        } else {
            if (i2 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            i = C7998R.string.dock_type_name_right;
        }
        String string = resManager.getString(i);
        return string == null ? "" : string;
    }

    /* renamed from: q */
    public final String m45804q(PenArgs penArgs) {
        String string = penArgs.getRoundCorner() ? ResManager.INSTANCE.getString(C7998R.string.marker_pen_circle) : ResManager.INSTANCE.getString(C7998R.string.marker_pen_right_angle);
        return string == null ? "" : string;
    }

    /* renamed from: r */
    public final int m45805r(ShapeToolType shapeToolType) {
        switch (WhenMappings.$EnumSwitchMapping$0[shapeToolType.ordinal()]) {
            case 1:
                return C7998R.string.shape_tool_fountain_pen;
            case 2:
                return C7998R.string.shape_tool_ballpoint_pen;
            case 3:
                return C7998R.string.shape_tool_marker_pen;
            case 4:
                return C7998R.string.shape_tool_pencil;
            case 5:
                return C7998R.string.shape_tool_eraser;
            case 6:
                return C7998R.string.shape_tool_lasso;
            case 7:
                return C7998R.string.shape_tool_image;
            case 8:
                return C7998R.string.shape_tool_text;
            case 9:
                return C7998R.string.shape_tool_excerpt;
            case 10:
                return C7998R.string.shape_tool_tag;
            case 11:
                return C7998R.string.shape_tool_graph;
            case 12:
                return C7998R.string.shape_tool_stickers;
            case 13:
                return C7998R.string.shape_tool_tape;
            case 14:
                return C7998R.string.shape_tool_laser_pen;
            case 15:
                return C7998R.string.shape_tool_custom;
            case 16:
                return C7998R.string.shape_tool_ruler;
            case 17:
                return C7998R.string.shape_tool_calligraphy_pen;
            case 18:
                return C7998R.string.shape_tool_soft_paint_pen;
            case 19:
                return C7998R.string.shape_tool_write_pen;
            case 20:
                return C7998R.string.shape_tool_magnifier;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* renamed from: s */
    public final String m45806s(float value) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(Locale.getDefault(), "%.2f", Arrays.copyOf(new Object[]{Float.valueOf(value)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    /* renamed from: t */
    public final Observable<ReportNoteCurrentStateAction> m45807t() {
        Observable<ReportNoteCurrentStateAction> map = DocCommonActionsKt.createNoteObservable(this.editorBundle, new Function1<NoteBundle, Integer>() { // from class: com.onyx.galaxy.note.editor.action.doc.ReportNoteCurrentStateAction$getAudioCount$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Integer invoke(@NotNull NoteBundle it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Integer.valueOf(EditorBundleKt.noteBundle(ReportNoteCurrentStateAction.this.editorBundle).getAudioShapeBeanList().size());
            }
        }).doOnNext(new C11908g()).map(new C11909h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: u */
    public final Observable<ReportNoteCurrentStateAction> m45808u() {
        Observable map = new LoadNotePageLayersAction(this.editorBundle).build().doOnNext(new C11910i()).map(new C11911j());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: v */
    public final Observable<ReportNoteCurrentStateAction> m45809v() {
        Observable<ReportNoteCurrentStateAction> map = Observable.just(this).observeOn(getObserveOn()).map(C11912k.f58305e).observeOn(getMainUIScheduler()).doOnNext(new C11913l()).map(new C11914m());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
