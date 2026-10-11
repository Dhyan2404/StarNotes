package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.note.common.utils.PenUtils;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupPenSizeBinding;
import com.onyx.galaxy.note.editor.data.PenPropertyBean;
import com.onyx.galaxy.note.editor.data.PensizeConvertExtKt;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.editor.viewmodel.PenViewModel;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010/\u001a\u00020.\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\u0013\u001a\u00020\f\u0012\u0006\u0010\u001b\u001a\u00020\u0014\u0012\u0006\u00101\u001a\u000200¢\u0006\u0004\b2\u00103J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\"\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u001b\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001b\u0010!\u001a\u00020\u001c8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0017\u0010'\u001a\u00020\"8\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R!\u0010-\u001a\b\u0012\u0004\u0012\u00020)0(8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010\u001e\u001a\u0004\b+\u0010,¨\u00064"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/PenSizePopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "m", "l", C4921e.f26537n, "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "q", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "getViewShapeType", "()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "viewShapeType", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "r", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "editorBundle", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "s", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "getPenViewModel", "()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "setPenViewModel", "(Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V", "penViewModel", "Lcom/onyx/galaxy/note/databinding/PopupPenSizeBinding;", "t", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupPenSizeBinding;", "binding", "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "u", "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "getPenProperty", "()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "penProperty", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "v", "getPenArgsOption", "()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "penArgsOption", "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PenSizePopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final ShapeToolType viewShapeType;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public EditorBundle editorBundle;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public PenViewModel penViewModel;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final PenPropertyBean penProperty;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final Lazy penArgsOption;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PenSizePopup(@NotNull final Context context, @NotNull ShapeToolType viewShapeType, @NotNull EditorBundle editorBundle, @NotNull PenViewModel penViewModel, @NotNull DockType dockType) {
        super(context, dockType);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(viewShapeType, "viewShapeType");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(penViewModel, "penViewModel");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        this.viewShapeType = viewShapeType;
        this.editorBundle = editorBundle;
        this.penViewModel = penViewModel;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupPenSizeBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenSizePopup$binding$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupPenSizeBinding invoke() {
                PopupPenSizeBinding inflate = PopupPenSizeBinding.inflate(LayoutInflater.from(context));
                Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
                return inflate;
            }
        });
        this.binding = lazy;
        this.penProperty = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty();
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<JSONObjectOption<PenArgs>>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenSizePopup$penArgsOption$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final JSONObjectOption<PenArgs> invoke() {
                return PenSizePopup.this.getPenProperty().getPenArgsOption(PenSizePopup.this.getViewShapeType().getShapeType());
            }
        });
        this.penArgsOption = lazy2;
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m49324m();
        m49323l();
        m49322k();
    }

    @NotNull
    public final PopupPenSizeBinding getBinding() {
        return (PopupPenSizeBinding) this.binding.getValue();
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    public final JSONObjectOption<PenArgs> getPenArgsOption() {
        return (JSONObjectOption) this.penArgsOption.getValue();
    }

    @NotNull
    public final PenPropertyBean getPenProperty() {
        return this.penProperty;
    }

    @NotNull
    public final PenViewModel getPenViewModel() {
        return this.penViewModel;
    }

    @NotNull
    public final ShapeToolType getViewShapeType() {
        return this.viewShapeType;
    }

    /* renamed from: k */
    public final void m49322k() {
        getContentView().addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.onyx.galaxy.note.editor.view.popup.PenSizePopup$initAttachStateReportListener$1

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
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            /* renamed from: a */
            public static final JSONObjectOption<PenArgs> m49325a(Lazy<? extends JSONObjectOption<PenArgs>> lazy) {
                return lazy.getValue();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(@NotNull View v) {
                Intrinsics.checkNotNullParameter(v, "v");
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(@NotNull View v) {
                Lazy lazy;
                String str;
                Intrinsics.checkNotNullParameter(v, "v");
                final PenPropertyBean penProperty = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty();
                final PenSizePopup penSizePopup = PenSizePopup.this;
                lazy = LazyKt__LazyJVMKt.lazy(new Function0<JSONObjectOption<PenArgs>>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenSizePopup$initAttachStateReportListener$1$onViewDetachedFromWindow$penArgsOption$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final JSONObjectOption<PenArgs> invoke() {
                        return PenPropertyBean.this.getPenArgsOption(penSizePopup.getViewShapeType().getShapeType());
                    }
                });
                ShapeToolType viewShapeType = PenSizePopup.this.getViewShapeType();
                int[] iArr = WhenMappings.$EnumSwitchMapping$0;
                String str2 = "";
                switch (iArr[viewShapeType.ordinal()]) {
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
                    default:
                        str = "";
                        break;
                }
                switch (iArr[PenSizePopup.this.getViewShapeType().ordinal()]) {
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
                }
                StatisticsBundle.INSTANCE.reportShowPopupMenuEvent(PenSizePopup.this.getEditorBundle(), str2, str, m49325a(lazy).get());
            }
        });
    }

    /* renamed from: l */
    public final void m49323l() {
        getBinding().seekBarThickness.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PenSizePopup$initListener$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                if (z) {
                    return;
                }
                float valueToSize = PensizeConvertExtKt.valueToSize(f2);
                PenSizePopup.this.getPenProperty().saveSelectPenStrokeWidth(PenSizePopup.this.getViewShapeType().getShapeType(), valueToSize);
                PenSizePopup.this.getPenProperty().getStrokeWidthOption(PenSizePopup.this.getViewShapeType().getShapeType()).put(valueToSize);
                PenSizePopup.this.getPenProperty().updateSizeList(PenSizePopup.this.getViewShapeType().getShapeType(), valueToSize);
                PenSizePopup.this.getPenViewModel().getSize().postValue(Float.valueOf(valueToSize));
            }
        });
    }

    /* renamed from: m */
    public final void m49324m() {
        ResManager resManager;
        int i;
        if (this.viewShapeType == ShapeToolType.ERASER) {
            resManager = ResManager.INSTANCE;
            i = C10651R.string.eraser_thickness;
        } else {
            resManager = ResManager.INSTANCE;
            i = C10651R.string.thickness;
        }
        getBinding().seekBarThickness.setTitle(resManager.getStringSafely(i));
        StickSeekBarContainer stickSeekBarContainer = getBinding().seekBarThickness;
        PenUtils penUtils = PenUtils.INSTANCE;
        float maxStrokeWidth = penUtils.getMaxStrokeWidth(this.viewShapeType.getShapeType());
        ResManager resManager2 = ResManager.INSTANCE;
        Range<Float> between = Range.between(Float.valueOf(maxStrokeWidth / resManager2.getInteger(C10651R.integer.times_10)), Float.valueOf(penUtils.getMinStrokeWidth(this.viewShapeType.getShapeType()) / resManager2.getInteger(C10651R.integer.times_10)));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        stickSeekBarContainer.setRange(between);
        getBinding().seekBarThickness.setProgressValue(PensizeConvertExtKt.sizeToValue(getPenArgsOption().get().getWidth()));
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }

    public final void setPenViewModel(@NotNull PenViewModel penViewModel) {
        Intrinsics.checkNotNullParameter(penViewModel, "<set-?>");
        this.penViewModel = penViewModel;
    }
}
