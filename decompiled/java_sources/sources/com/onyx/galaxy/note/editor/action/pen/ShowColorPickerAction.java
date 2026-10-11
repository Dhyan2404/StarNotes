package com.onyx.galaxy.note.editor.action.pen;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.PopupWindow;
import androidx.annotation.ColorInt;
import com.blankj.utilcode.util.StringUtils;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.DockPoint;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.extension.PopupLocator;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.replicator.colorset.data.ColorSetModel;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.common.action.ScreenPixelCaptureColorAction;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction;
import com.onyx.galaxy.note.editor.data.PenPropertyBean;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.popup.ColorPickPopup;
import com.onyx.galaxy.note.editor.view.popup.CommonDeletePopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPanelView;
import com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickView;
import com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.onyx.galaxy.note.settings.data.PermissionRequestConst;
import com.onyx.galaxy.note.settings.utils.PermissionActionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003BM\u0012\u0006\u0010J\u001a\u00020I\u0012\b\u0010&\u001a\u0004\u0018\u00010!\u0012\u0006\u0010+\u001a\u00020\u0015\u0012\u0006\u0010.\u001a\u00020\u0015\u0012\b\b\u0002\u00101\u001a\u00020\n\u0012\b\b\u0002\u00107\u001a\u000202\u0012\u000e\b\u0002\u0010;\u001a\b\u0012\u0004\u0012\u00020\n08¢\u0006\u0004\bK\u0010LJ\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004H\u0014J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u000e\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u0019J\u0010\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016J\b\u0010\u001d\u001a\u00020\bH\u0002J\b\u0010\u001e\u001a\u00020\bH\u0002J\b\u0010\u001f\u001a\u00020\bH\u0002J\u0010\u0010 \u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0002R\u001c\u0010&\u001a\u0004\u0018\u00010!8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u001a\u0010+\u001a\u00020\u00158\u0004X\u0084\u0004¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u001a\u0010.\u001a\u00020\u00158\u0004X\u0084\u0004¢\u0006\f\n\u0004\b,\u0010(\u001a\u0004\b-\u0010*R\u0016\u00101\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0017\u00107\u001a\u0002028\u0006¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\u001a\u0010;\u001a\b\u0012\u0004\u0012\u00020\n088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:R\u0017\u0010@\u001a\u00020<8\u0006¢\u0006\f\n\u0004\b\u001e\u0010=\u001a\u0004\b>\u0010?R\u0019\u0010E\u001a\u0004\u0018\u00010A8\u0006¢\u0006\f\n\u0004\b\u001f\u0010B\u001a\u0004\bC\u0010DR\u0016\u0010H\u001a\u00020\u00068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bF\u0010G¨\u0006N²\u0006\u0012\u0010E\u001a\b\u0012\u0004\u0012\u00020A0M8\nX\u008a\u0084\u0002"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;", "popup", "", "showPopupWindow", "", "color", "onColorSelected", "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;", "colorSet", "onColorSetSelected", "", "message", "showMessageDialog", "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;", "colorPickView", "Landroid/view/View;", "cellView", "Landroid/widget/PopupWindow;", "showDeleteDialog", "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;", "colorPanelView", "screenCapture", "startScreenCapture", "q", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "s", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", C6999h.f39688c, "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "getShapeToolType", "()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "shapeToolType", "i", "Landroid/view/View;", "getRootView", "()Landroid/view/View;", "rootView", "j", "getAnchor", Constants.ELEMNAME_ANCHOR_STRING, C4921e.f26537n, "I", "originColor", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "l", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "getDockType", "()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", "", "m", "Ljava/util/List;", CouchFieldKey.KEY_COLORS, "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "getPenProperty", "()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "penProperty", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "getPenArgsOption", "()Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "penArgsOption", "p", "Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;", "colorPickPopup", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Landroid/view/View;Landroid/view/View;ILcom/onyx/galaxy/note/editor/view/toolbar/DockType;Ljava/util/List;)V", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class ShowColorPickerAction extends RxBaseAppAction<Boolean> implements ColorPickerCallback {

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public final ShapeToolType shapeToolType;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final View rootView;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final View anchor;

    /* renamed from: k, reason: from kotlin metadata */
    public int originColor;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final DockType dockType;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> colors;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final PenPropertyBean penProperty;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public final PenArgs penArgsOption;

    /* renamed from: p, reason: from kotlin metadata */
    public ColorPickPopup colorPickPopup;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

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
                iArr[ShapeToolType.TAPE_PEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ShapeToolType.LASER_PEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ShapeToolType.GRAPH_PEN.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ShapeToolType.ERASER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ShapeToolType.LASSO.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction$a */
    /* loaded from: classes9.dex */
    public static final class C11985a<T> implements Consumer {
        public C11985a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ShowColorPickerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ShowColorPickerAction.this.m45948q();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction$b */
    /* loaded from: classes9.dex */
    public static final class C11986b<T, R> implements Function {

        /* renamed from: e */
        public static final C11986b<T, R> f58432e = new C11986b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean apply(@NotNull ShowColorPickerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction$c */
    /* loaded from: classes9.dex */
    public static final class C11987c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ ColorPanelView f58433e;

        /* renamed from: f */
        public final /* synthetic */ ShowColorPickerAction f58434f;

        public C11987c(ColorPanelView colorPanelView, ShowColorPickerAction showColorPickerAction) {
            this.f58433e = colorPanelView;
            this.f58434f = showColorPickerAction;
        }

        /* renamed from: a */
        public final void m45952a(int i) {
            this.f58433e.setSelectionColor(i);
            this.f58434f.onColorSelected(i);
            this.f58434f.originColor = i;
            this.f58434f.m45948q();
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public /* bridge */ /* synthetic */ void accept(Object obj) {
            m45952a(((Number) obj).intValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction$d */
    /* loaded from: classes9.dex */
    public static final class C11988d<T> implements Consumer {
        public C11988d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ShowColorPickerAction.this.m45948q();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ ShowColorPickerAction(com.onyx.android.sdk.universal.editor.EditorBundle r10, com.onyx.galaxy.note.editor.data.ShapeToolType r11, android.view.View r12, android.view.View r13, int r14, com.onyx.galaxy.note.editor.view.toolbar.DockType r15, java.util.List r16, int r17, kotlin.jvm.internal.DefaultConstructorMarker r18) {
        /*
            r9 = this;
            r0 = r17 & 16
            if (r0 == 0) goto L10
            com.onyx.android.sdk.replicator.colorset.data.ColorPickerValues r0 = com.onyx.android.sdk.replicator.colorset.data.ColorPickerValues.INSTANCE
            com.onyx.android.sdk.data.utils.IntOption r0 = r0.getRecentColorOption()
            int r0 = r0.get()
            r6 = r0
            goto L11
        L10:
            r6 = r14
        L11:
            r0 = r17 & 32
            if (r0 == 0) goto L19
            com.onyx.galaxy.note.editor.view.toolbar.DockType r0 = com.onyx.galaxy.note.editor.view.toolbar.DockType.BOTTOM
            r7 = r0
            goto L1a
        L19:
            r7 = r15
        L1a:
            r0 = r17 & 64
            if (r0 == 0) goto L24
            java.util.List r0 = kotlin.collections.CollectionsKt.emptyList()
            r8 = r0
            goto L26
        L24:
            r8 = r16
        L26:
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r12
            r5 = r13
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction.<init>(com.onyx.android.sdk.universal.editor.EditorBundle, com.onyx.galaxy.note.editor.data.ShapeToolType, android.view.View, android.view.View, int, com.onyx.galaxy.note.editor.view.toolbar.DockType, java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* renamed from: p */
    public static final JSONObjectOption<PenArgs> m45943p(Lazy<? extends JSONObjectOption<PenArgs>> lazy) {
        return lazy.getValue();
    }

    /* renamed from: r */
    public static final void m45944r(ColorPickView colorPickView) {
        Intrinsics.checkNotNullParameter(colorPickView, "$colorPickView");
        colorPickView.removeSelectedCell();
    }

    /* renamed from: t */
    public static final void m45945t(ShowColorPickerAction this$0, ColorPanelView colorPanelView, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(colorPanelView, "$colorPanelView");
        this$0.screenCapture(colorPanelView);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> onErrorReturnItem = Observable.just(this).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C11985a()).map(C11986b.f58432e).onErrorReturnItem(Boolean.FALSE);
        Intrinsics.checkNotNullExpressionValue(onErrorReturnItem, "onErrorReturnItem(...)");
        return onErrorReturnItem;
    }

    @NotNull
    public final View getAnchor() {
        return this.anchor;
    }

    @NotNull
    public final DockType getDockType() {
        return this.dockType;
    }

    @Nullable
    public final PenArgs getPenArgsOption() {
        return this.penArgsOption;
    }

    @NotNull
    public final PenPropertyBean getPenProperty() {
        return this.penProperty;
    }

    @NotNull
    public final View getRootView() {
        return this.rootView;
    }

    @Nullable
    public final ShapeToolType getShapeToolType() {
        return this.shapeToolType;
    }

    /* renamed from: n */
    public final void m45946n() {
        ColorPickPopup colorPickPopup = this.colorPickPopup;
        if (colorPickPopup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorPickPopup");
            colorPickPopup = null;
        }
        colorPickPopup.getContentView().addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction$initAttachStateReportListener$1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(@NotNull View v) {
                Intrinsics.checkNotNullParameter(v, "v");
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(@NotNull View v) {
                Intrinsics.checkNotNullParameter(v, "v");
                ShowColorPickerAction.this.m45947o();
            }
        });
    }

    /* renamed from: o */
    public final void m45947o() {
        Lazy lazy;
        String str;
        final ShapeToolType shapeToolType = this.shapeToolType;
        if (shapeToolType == null) {
            return;
        }
        final PenPropertyBean penProperty = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<JSONObjectOption<PenArgs>>() { // from class: com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction$reportEvent$penArgsOption$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final JSONObjectOption<PenArgs> invoke() {
                return PenPropertyBean.this.getPenArgsOption(shapeToolType.getShapeType());
            }
        });
        int[] iArr = WhenMappings.$EnumSwitchMapping$0;
        String str2 = "";
        switch (iArr[shapeToolType.ordinal()]) {
            case 1:
                str = "click_galaxy_pen_param_0002";
                break;
            case 2:
                str = "click_galaxy_ballpen_param_0002";
                break;
            case 3:
                str = OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_RIGHT_MARK_PEN_SHORTCUT_MENU_CLICK;
                break;
            case 4:
                str = OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_RIGHT_PENCIL_SHORTCUT_MENU_CLICK;
                break;
            case 5:
                str = "click_galaxy_tap_param_0002";
                break;
            case 6:
                str = "click_galaxy_laserpointer_param_0002";
                break;
            case 7:
                str = "click_galaxy_shape_param_0002";
                break;
            case 8:
                str = OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_RIGHT_ERASER_SHORTCUT_MENU_CLICK;
                break;
            case 9:
                str = OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_RIGHT_LASSO_SHORTCUT_MENU_CLICK;
                break;
            default:
                str = "";
                break;
        }
        switch (iArr[shapeToolType.ordinal()]) {
            case 1:
                str2 = "pen_data";
                break;
            case 2:
                str2 = "ballpen_data";
                break;
            case 3:
                str2 = "markerpen_data";
                break;
            case 4:
                str2 = "pencil_data";
                break;
            case 5:
                str2 = OnyxStatisticConstant.KEY_NOTE_TAPE_DATA;
                break;
            case 6:
                str2 = OnyxStatisticConstant.KEY_NOTE_LASER_DATA;
                break;
            case 7:
                str2 = "figure_data";
                break;
            case 8:
                str2 = OnyxStatisticConstant.KEY_NOTE_ERASER_DATA;
                break;
            case 9:
                str2 = OnyxStatisticConstant.KEY_NOTE_LASSO_DATA;
                break;
        }
        if (StringUtils.isEmpty(str2) && StringUtils.isEmpty(str)) {
            return;
        }
        StatisticsBundle.INSTANCE.reportShowPopupMenuEvent(getEditorBundle(), str2, str, m45943p(lazy).get());
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
    public void onColorChange(@ColorInt int i) {
        ColorPickerCallback.DefaultImpls.onColorChange(this, i);
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
    public void onColorSelected(int color) {
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
    public void onColorSetSelected(@NotNull ColorSetModel colorSet) {
        Intrinsics.checkNotNullParameter(colorSet, "colorSet");
    }

    /* renamed from: q */
    public final void m45948q() {
        List mutableList;
        Activity activity = getActivity();
        if (activity == null) {
            return;
        }
        if (this.colorPickPopup == null) {
            DockType dockType = this.dockType;
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.colors);
            this.colorPickPopup = new ColorPickPopup(activity, this, dockType, mutableList, this.colors.indexOf(Integer.valueOf(this.originColor)));
        }
        ColorPickPopup colorPickPopup = this.colorPickPopup;
        ColorPickPopup colorPickPopup2 = null;
        if (colorPickPopup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorPickPopup");
            colorPickPopup = null;
        }
        colorPickPopup.setOriginColor(this.originColor);
        if (this.shapeToolType == ShapeToolType.TAPE_PEN) {
            ColorPickPopup colorPickPopup3 = this.colorPickPopup;
            if (colorPickPopup3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("colorPickPopup");
                colorPickPopup3 = null;
            }
            colorPickPopup3.setOpaqueColorOnly();
        }
        m45946n();
        ColorPickPopup colorPickPopup4 = this.colorPickPopup;
        if (colorPickPopup4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorPickPopup");
        } else {
            colorPickPopup2 = colorPickPopup4;
        }
        showPopupWindow(colorPickPopup2);
    }

    /* renamed from: s */
    public final void m45949s(final ColorPanelView colorPanelView) {
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = colorPanelView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        RxjavaKt.doOnNextIfTrue(permissionActionUtils.requestFloatingWindowPermission(context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_FLOATING_COLOR_PICKER_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_FLOATING_COLOR_PICKER_INTENT_NAME())).build(), new Consumer() { // from class: com.sunia.HTREnginev2.mpm
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ShowColorPickerAction.m45945t(ShowColorPickerAction.this, colorPanelView, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }

    public final void screenCapture(@NotNull ColorPanelView colorPanelView) {
        Intrinsics.checkNotNullParameter(colorPanelView, "colorPanelView");
        long j = ResManager.INSTANCE.getLong(C7373R.integer.delay_time_dialog_close);
        ColorPickPopup colorPickPopup = this.colorPickPopup;
        if (colorPickPopup == null) {
            Intrinsics.throwUninitializedPropertyAccessException("colorPickPopup");
            colorPickPopup = null;
        }
        colorPickPopup.dismiss();
        Activity activity = getActivity();
        Intrinsics.checkNotNull(activity);
        new ScreenPixelCaptureColorAction(activity).build().delay(j, TimeUnit.MILLISECONDS).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C11987c(colorPanelView, this)).doOnError(new C11988d()).subscribe();
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
    @Nullable
    public PopupWindow showDeleteDialog(@NotNull final ColorPickView colorPickView, @NotNull View cellView) {
        WindowLocation windowLocation;
        Intrinsics.checkNotNullParameter(colorPickView, "colorPickView");
        Intrinsics.checkNotNullParameter(cellView, "cellView");
        Context context = colorPickView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        CommonDeletePopup commonDeletePopup = new CommonDeletePopup(context, new Runnable() { // from class: com.sunia.HTREnginev2.npm
            @Override // java.lang.Runnable
            public final void run() {
                ShowColorPickerAction.m45944r(ColorPickView.this);
            }
        });
        PopupLocator popupLocator = PopupLocator.INSTANCE;
        windowLocation = popupLocator.getWindowLocation((PopupLocator) commonDeletePopup, cellView, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.TOP_CENTER, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.BOTTOM_CENTER, (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? com.onyx.android.sdk.base.extension.Activity.INSTANCE.getTopContentView() : null);
        PopupLocator.show$default(popupLocator, commonDeletePopup, windowLocation, null, 2, null);
        return commonDeletePopup;
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
    public void showMessageDialog(@NotNull String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) message, false, 2, (Object) null);
    }

    public void showPopupWindow(@NotNull ColorPickPopup popup) {
        Intrinsics.checkNotNullParameter(popup, "popup");
        popup.show(this.anchor);
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
    public void startScreenCapture(@NotNull ColorPanelView colorPanelView) {
        Intrinsics.checkNotNullParameter(colorPanelView, "colorPanelView");
        m45949s(colorPanelView);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShowColorPickerAction(@NotNull EditorBundle editorBundle, @Nullable ShapeToolType shapeToolType, @NotNull View rootView, @NotNull View anchor, int i, @NotNull DockType dockType, @NotNull List<Integer> colors) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(rootView, "rootView");
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        Intrinsics.checkNotNullParameter(colors, "colors");
        this.shapeToolType = shapeToolType;
        this.rootView = rootView;
        this.anchor = anchor;
        this.originColor = i;
        this.dockType = dockType;
        this.colors = colors;
        this.penProperty = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty();
        this.penArgsOption = EditorBundleKt.uiDrawingArgs(editorBundle).getPenArgs();
        Context context = anchor.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        setActivityContext(context);
    }
}
