package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.data.DockPoint;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.extension.Activity;
import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.base.extension.PopupLocator;
import com.onyx.android.sdk.base.extension.TypeExtKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.ToastUtils;
import com.onyx.android.sdk.data.OnyxStatisticConstant;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.note.common.utils.PenUtils;
import com.onyx.android.sdk.replicator.colorset.data.ColorSetModel;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.penbox.ActivatePenBoxViewAction;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokePressureSensitivityEvent;
import com.onyx.android.sdk.universal.editor.helper.PencilBoxManager;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.statistics.StatisticsBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction;
import com.onyx.galaxy.note.editor.data.PenPropertyBean;
import com.onyx.galaxy.note.editor.data.PensizeConvertExtKt;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.popup.BasePenPopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout;
import com.onyx.galaxy.note.editor.viewmodel.PenViewModel;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010U\u001a\u00020T\u0012\u0006\u00102\u001a\u00020-\u0012\u0006\u00109\u001a\u000203\u0012\u0006\u0010A\u001a\u00020:\u0012\u0006\u0010W\u001a\u00020V¢\u0006\u0004\bX\u0010YJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002JG\u0010\u0011\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2%\b\u0002\u0010\u0010\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u0002\u0018\u00010\fH\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0002JG\u0010\u0019\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2%\b\u0002\u0010\u0010\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u0002\u0018\u00010\fH\u0002J\u0018\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0002J\u0018\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0002J7\u0010\u001c\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072%\b\u0002\u0010\u0010\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u0002\u0018\u00010\fH\u0004J\u0018\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0005\u001a\u00020\u0004H\u0004J\u0018\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001d2\u0006\u0010\u0005\u001a\u00020\u0004H\u0004J\u0018\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020\u001d2\u0006\u0010\u0005\u001a\u00020\u0004H\u0004J\u0010\u0010%\u001a\u00020\u00022\u0006\u0010$\u001a\u00020\u0015H\u0004J\u0010\u0010&\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0016J(\u0010+\u001a\u00020\u00022\u0006\u0010'\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\t2\u0006\u0010)\u001a\u00020\t2\u0006\u0010*\u001a\u00020\tH\u0016J\b\u0010,\u001a\u00020\u0002H\u0016R\u0017\u00102\u001a\u00020-8\u0006¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\"\u00109\u001a\u0002038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\"\u0010A\u001a\u00020:8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u0017\u0010F\u001a\u00020B8\u0006¢\u0006\f\n\u0004\b\u0003\u0010C\u001a\u0004\bD\u0010ER!\u0010K\u001a\b\u0012\u0004\u0012\u00020\u00040G8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010H\u001a\u0004\bI\u0010JR$\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010L\u001a\u0004\bM\u0010N\"\u0004\bO\u0010PR\u0016\u0010S\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010R¨\u0006Z"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/BasePenPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "t", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "penArgs", "l", "Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeColorPropertyLayout;", "colorLayout", "", "originColor", "colorIndex", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "color", "colorSelected", "r", "Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;", "popup", "u", "Landroid/view/View;", "anchorView", "", C4921e.f26528e, "p", "v", GoogleApiAvailabilityLight.f29016b, "initColorLayout", "Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;", "seekBarThickness", "initStrokeWidthView", "seekBarPressure", "initStrokePressureView", "seekBarNib", "initStrokeNibView", "view", "initAddToPenBoxView", "onShowColorPickerPopup", "parent", NotificationCompat.WearableExtender.f5060z, "x", "y", "showAtLocation", "dismiss", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "q", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "getViewShapeType", "()Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "viewShapeType", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "editorBundle", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "s", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "getPenViewModel", "()Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "setPenViewModel", "(Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;)V", "penViewModel", "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "getPenProperty", "()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "penProperty", "Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "Lkotlin/Lazy;", "getPenArgsOption", "()Lcom/onyx/android/sdk/data/utils/JSONObjectOption;", "penArgsOption", "Landroid/view/View;", "getAnchorView", "()Landroid/view/View;", "setAnchorView", "(Landroid/view/View;)V", "w", Constants.HASIDCALL_INDEX_SIG, "hasSelectedColor", "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/data/ShapeToolType;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class BasePenPopup extends BasePopupWindow {

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
    public final PenPropertyBean penProperty;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final Lazy penArgsOption;

    /* renamed from: v, reason: from kotlin metadata */
    @Nullable
    public View anchorView;

    /* renamed from: w, reason: from kotlin metadata */
    public boolean hasSelectedColor;

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
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[DockType.values().length];
            try {
                iArr2[DockType.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[DockType.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[DockType.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[DockType.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BasePenPopup(@NotNull Context context, @NotNull ShapeToolType viewShapeType, @NotNull EditorBundle editorBundle, @NotNull PenViewModel penViewModel, @NotNull DockType dockType) {
        super(context, dockType);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(viewShapeType, "viewShapeType");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(penViewModel, "penViewModel");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        this.viewShapeType = viewShapeType;
        this.editorBundle = editorBundle;
        this.penViewModel = penViewModel;
        this.penProperty = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty();
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<JSONObjectOption<PenArgs>>() { // from class: com.onyx.galaxy.note.editor.view.popup.BasePenPopup$penArgsOption$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final JSONObjectOption<PenArgs> invoke() {
                return BasePenPopup.this.getPenProperty().getPenArgsOption(BasePenPopup.this.getViewShapeType().getShapeType());
            }
        });
        this.penArgsOption = lazy;
        setFocusable(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void initColorLayout$default(BasePenPopup basePenPopup, ShapeColorPropertyLayout shapeColorPropertyLayout, Function1 function1, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: initColorLayout");
        }
        if ((i & 2) != 0) {
            function1 = null;
        }
        basePenPopup.initColorLayout(shapeColorPropertyLayout, function1);
    }

    /* renamed from: m */
    public static final void m48560m(BasePenPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m48563l(this$0.getPenArgsOption().get());
        this$0.m48568t();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: q */
    public static /* synthetic */ void m48561q(BasePenPopup basePenPopup, ShapeColorPropertyLayout shapeColorPropertyLayout, int i, int i2, Function1 function1, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onColorSelected");
        }
        if ((i3 & 8) != 0) {
            function1 = null;
        }
        basePenPopup.m48566p(shapeColorPropertyLayout, i, i2, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: s */
    public static /* synthetic */ void m48562s(BasePenPopup basePenPopup, ShapeColorPropertyLayout shapeColorPropertyLayout, int i, int i2, Function1 function1, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: pickColor");
        }
        if ((i3 & 8) != 0) {
            function1 = null;
        }
        basePenPopup.m48567r(shapeColorPropertyLayout, i, i2, function1);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow, android.widget.PopupWindow
    public void dismiss() {
        List<Integer> listOf;
        super.dismiss();
        if (this.hasSelectedColor) {
            PenPropertyBean penProperty = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty();
            int shapeType = this.viewShapeType.getShapeType();
            listOf = CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(getPenArgsOption().get().getColor()));
            penProperty.addHistoryColorList(shapeType, listOf);
        }
    }

    @Nullable
    public final View getAnchorView() {
        return this.anchorView;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        return this.editorBundle;
    }

    @NotNull
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

    public final void initAddToPenBoxView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.vn
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BasePenPopup.m48560m(BasePenPopup.this, view2);
            }
        });
    }

    public final void initColorLayout(@NotNull final ShapeColorPropertyLayout colorLayout, @Nullable final Function1<? super Integer, Unit> colorSelected) {
        Intrinsics.checkNotNullParameter(colorLayout, "colorLayout");
        colorLayout.setShape(this.viewShapeType.getShapeType());
        colorLayout.setListener(new ShapeColorPropertyLayout.ColorSelectedListener() { // from class: com.onyx.galaxy.note.editor.view.popup.BasePenPopup$initColorLayout$1
            @Override // com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout.ColorSelectedListener
            public void onSelected(int color, int colorIndex) {
                boolean m48564n;
                m48564n = BasePenPopup.this.m48564n(color, colorIndex);
                if (m48564n) {
                    BasePenPopup.this.m48567r(colorLayout, color, colorIndex, colorSelected);
                } else {
                    BasePenPopup.this.m48566p(colorLayout, color, colorIndex, colorSelected);
                }
            }
        });
    }

    public final void initStrokeNibView(@NotNull StickSeekBarContainer seekBarNib, @NotNull PenArgs penArgs) {
        Intrinsics.checkNotNullParameter(seekBarNib, "seekBarNib");
        Intrinsics.checkNotNullParameter(penArgs, "penArgs");
        PenUtils penUtils = PenUtils.INSTANCE;
        Range<Float> between = Range.between(Float.valueOf(penUtils.getMaxStrokeNib(this.viewShapeType.getShapeType())), Float.valueOf(penUtils.getMinStrokeNib(this.viewShapeType.getShapeType())));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        seekBarNib.setRange(between);
        seekBarNib.setProgressValue(PensizeConvertExtKt.valueToPercent(penArgs.getNib()));
        seekBarNib.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.BasePenPopup$initStrokeNibView$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, final float f2, boolean z) {
                if (z) {
                    return;
                }
                BasePenPopup.this.getPenArgsOption().getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.BasePenPopup$initStrokeNibView$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs2) {
                        invoke2(penArgs2);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@Nullable PenArgs penArgs2) {
                        if (penArgs2 == null) {
                            return;
                        }
                        penArgs2.setNib(PensizeConvertExtKt.percentToValue(f2));
                    }
                });
            }
        });
    }

    public final void initStrokePressureView(@NotNull StickSeekBarContainer seekBarPressure, @NotNull PenArgs penArgs) {
        Intrinsics.checkNotNullParameter(seekBarPressure, "seekBarPressure");
        Intrinsics.checkNotNullParameter(penArgs, "penArgs");
        PenUtils penUtils = PenUtils.INSTANCE;
        Range<Float> between = Range.between(Float.valueOf(penUtils.getMaxStrokePressure(this.viewShapeType.getShapeType())), Float.valueOf(penUtils.getMinStrokePressure(this.viewShapeType.getShapeType())));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        seekBarPressure.setRange(between);
        seekBarPressure.setProgressValue(PensizeConvertExtKt.valueToPercent(com.onyx.android.sdk.pen.utils.PenUtils.INSTANCE.toPercentPressureSensitivity(penArgs.getPressureSensitivity())));
        seekBarPressure.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.BasePenPopup$initStrokePressureView$1
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
                final float normalizedPressureSensitivity = com.onyx.android.sdk.pen.utils.PenUtils.INSTANCE.toNormalizedPressureSensitivity(PensizeConvertExtKt.percentToValue(f2));
                BasePenPopup.this.getPenArgsOption().getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.BasePenPopup$initStrokePressureView$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs2) {
                        invoke2(penArgs2);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@Nullable PenArgs penArgs2) {
                        if (penArgs2 == null) {
                            return;
                        }
                        penArgs2.setPressureSensitivity(normalizedPressureSensitivity);
                    }
                });
                DocCollectionBundle.INSTANCE.postEvent(new ChangeStrokePressureSensitivityEvent(normalizedPressureSensitivity));
            }
        });
    }

    public final void initStrokeWidthView(@NotNull StickSeekBarContainer seekBarThickness, @NotNull PenArgs penArgs) {
        Intrinsics.checkNotNullParameter(seekBarThickness, "seekBarThickness");
        Intrinsics.checkNotNullParameter(penArgs, "penArgs");
        PenUtils penUtils = PenUtils.INSTANCE;
        Range<Float> between = Range.between(Float.valueOf(PensizeConvertExtKt.sizeToValue(penUtils.getMaxStrokeWidth(this.viewShapeType.getShapeType()))), Float.valueOf(PensizeConvertExtKt.sizeToValue(penUtils.getMinStrokeWidth(this.viewShapeType.getShapeType()))));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        seekBarThickness.setRange(between);
        seekBarThickness.setProgressValue(PensizeConvertExtKt.sizeToValue(penArgs.getWidth()));
        seekBarThickness.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.BasePenPopup$initStrokeWidthView$1
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
                final float valueToSize = PensizeConvertExtKt.valueToSize(f2);
                BasePenPopup.this.getPenArgsOption().getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.BasePenPopup$initStrokeWidthView$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs2) {
                        invoke2(penArgs2);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@Nullable PenArgs penArgs2) {
                        if (penArgs2 == null) {
                            return;
                        }
                        penArgs2.setWidth(valueToSize);
                    }
                });
                BasePenPopup.this.getPenProperty().updateSizeList(BasePenPopup.this.getViewShapeType().getShapeType(), valueToSize);
                BasePenPopup.this.getPenViewModel().getSize().postValue(Float.valueOf(valueToSize));
            }
        });
    }

    /* renamed from: l */
    public final void m48563l(PenArgs penArgs) {
        List listOf;
        ResManager resManager = ResManager.INSTANCE;
        int integer = resManager.getInteger(C10651R.integer.pen_box_pens_max_count_limit);
        PencilBoxManager.Companion companion = PencilBoxManager.INSTANCE;
        if (PencilBoxManager.Companion.getPenCount$default(companion, null, 1, null) >= integer) {
            ToastUtils.show$default(ToastUtils.INSTANCE, (CharSequence) resManager.getString(C10651R.string.pen_box_pens_full_quantity_tip, Integer.valueOf(integer)), false, 2, (Object) null);
            return;
        }
        penArgs.setColorList(this.penProperty.getHistoryColorList(penArgs.getType(), penArgs.getColor()));
        listOf = CollectionsKt__CollectionsJVMKt.listOf(penArgs.clone(UUIDUtils.INSTANCE.shortUUID()));
        PencilBoxManager.Companion.addPencilBox$default(companion, listOf, null, 2, null);
        RxBaseAction.execute$default(new ActivatePenBoxViewAction(this.editorBundle, true), null, null, null, 7, null);
    }

    /* renamed from: n */
    public final boolean m48564n(int color, int colorIndex) {
        Integer value;
        Integer value2 = this.penViewModel.getColor().getValue();
        return value2 != null && value2.intValue() == color && (value = this.penViewModel.getColorIndex().getValue()) != null && colorIndex == value.intValue();
    }

    /* renamed from: o */
    public final boolean m48565o(View anchorView) {
        ViewLocator viewLocator = ViewLocator.INSTANCE;
        Rect rectInActivity = viewLocator.rectInActivity(anchorView);
        Rect rectInWindow = viewLocator.rectInWindow(viewLocator.getActivityDecorView(getContext()));
        return rectInWindow.right - rectInActivity.right > rectInActivity.left - rectInWindow.left;
    }

    public void onShowColorPickerPopup(@NotNull ColorPickPopup popup) {
        Intrinsics.checkNotNullParameter(popup, "popup");
    }

    /* renamed from: p */
    public final void m48566p(ShapeColorPropertyLayout colorLayout, final int color, int colorIndex, Function1<? super Integer, Unit> colorSelected) {
        this.hasSelectedColor = true;
        getPenArgsOption().getAndPut(new Function1<PenArgs, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.BasePenPopup$onColorSelected$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(PenArgs penArgs) {
                invoke2(penArgs);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable PenArgs penArgs) {
                if (penArgs == null) {
                    return;
                }
                penArgs.setColor(color);
            }
        });
        colorLayout.saveColorProperty(color, colorIndex);
        m48570v(color, colorIndex);
        if (colorSelected != null) {
            colorSelected.invoke(Integer.valueOf(color));
        }
    }

    /* renamed from: r */
    public final void m48567r(final ShapeColorPropertyLayout colorLayout, final int originColor, final int colorIndex, final Function1<? super Integer, Unit> colorSelected) {
        final View view = this.anchorView;
        if (view == null) {
            return;
        }
        final EditorBundle editorBundle = this.editorBundle;
        final ShapeToolType shapeToolType = this.viewShapeType;
        final DockType dockType = getDockType();
        final List<Integer> viewColors = colorLayout.getViewColors();
        RxBaseAction.execute$default(new ShowColorPickerAction(view, colorLayout, originColor, colorIndex, this, colorSelected, editorBundle, shapeToolType, dockType, viewColors) { // from class: com.onyx.galaxy.note.editor.view.popup.BasePenPopup$pickColor$1

            /* renamed from: q */
            public final /* synthetic */ ShapeColorPropertyLayout f60137q;

            /* renamed from: r */
            public final /* synthetic */ int f60138r;

            /* renamed from: s */
            public final /* synthetic */ BasePenPopup f60139s;

            /* renamed from: t */
            public final /* synthetic */ Function1<Integer, Unit> f60140t;

            /* JADX WARN: Multi-variable type inference failed */
            {
                this.f60137q = colorLayout;
                this.f60138r = colorIndex;
                this.f60139s = this;
                this.f60140t = colorSelected;
            }

            @Override // com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction, com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
            public void onColorSelected(int color) {
                this.f60137q.updateColorView(color, this.f60138r);
                this.f60139s.m48566p(this.f60137q, color, this.f60138r, this.f60140t);
            }

            @Override // com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction, com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
            public void onColorSetSelected(@NotNull ColorSetModel colorSet) {
                Intrinsics.checkNotNullParameter(colorSet, "colorSet");
                IntList intList = TypeExtKt.toIntList(colorSet.getColors());
                Integer num = intList.get(this.f60138r);
                Intrinsics.checkNotNullExpressionValue(num, "get(...)");
                int intValue = num.intValue();
                getPenProperty().getColorListOption(this.f60139s.getViewShapeType().getShapeType()).set(intList);
                this.f60139s.getPenViewModel().getColorSet().postValue(intList);
                this.f60137q.updateColorView(intList, this.f60138r);
                this.f60139s.m48566p(this.f60137q, intValue, this.f60138r, this.f60140t);
            }

            @Override // com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction
            public void showPopupWindow(@NotNull ColorPickPopup popup) {
                Intrinsics.checkNotNullParameter(popup, "popup");
                this.f60139s.m48569u(popup);
            }
        }, null, null, null, 7, null);
    }

    public final void setAnchorView(@Nullable View view) {
        this.anchorView = view;
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }

    public final void setPenViewModel(@NotNull PenViewModel penViewModel) {
        Intrinsics.checkNotNullParameter(penViewModel, "<set-?>");
        this.penViewModel = penViewModel;
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow, android.widget.PopupWindow
    public void showAtLocation(@NotNull View parent, int gravity, int x, int y) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        super.showAtLocation(parent, gravity, x, y);
        this.anchorView = parent;
    }

    /* renamed from: t */
    public final void m48568t() {
        String str;
        String str2;
        int i = WhenMappings.$EnumSwitchMapping$0[this.viewShapeType.ordinal()];
        if (i == 1) {
            str = "pen_data";
            str2 = OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_ADD_PEN_CASE_BTN_CLICK;
        } else if (i == 2) {
            str = "ballpen_data";
            str2 = OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_ADD_BALL_PEN_CASE_BTN_CLICK;
        } else if (i == 3) {
            str = "markerpen_data";
            str2 = OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_ADD_HIGHLIGHTER_CASE_BTN_CLICK;
        } else if (i != 4) {
            str = null;
            str2 = null;
        } else {
            str = "pencil_data";
            str2 = OnyxStatisticConstant.ID_NOTE_EDIT_PAGE_SHAPE_TOOL_ADD_PENCIL_CASE_BTN_CLICK;
        }
        if (str == null || str2 == null) {
            return;
        }
        StatisticsBundle.INSTANCE.reportShowPopupMenuEvent(this.editorBundle, str, str2, getPenArgsOption().get());
    }

    /* renamed from: u */
    public final void m48569u(ColorPickPopup popup) {
        WindowLocation windowLocation;
        ViewLocator viewLocator = ViewLocator.INSTANCE;
        View contentView = getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        View windowDecorView = viewLocator.getWindowDecorView(contentView);
        Intrinsics.checkNotNull(windowDecorView);
        boolean m48565o = m48565o(windowDecorView);
        int i = WhenMappings.$EnumSwitchMapping$1[getDockType().ordinal()];
        if (i == 1) {
            windowLocation = PopupLocator.INSTANCE.getWindowLocation((PopupLocator) this, windowDecorView, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.TOP_LEFT, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.TOP_RIGHT, (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : null);
        } else if (i == 2) {
            windowLocation = PopupLocator.INSTANCE.getWindowLocation((PopupLocator) this, windowDecorView, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.TOP_RIGHT, (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.TOP_LEFT, (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : null);
        } else if (i == 3) {
            windowLocation = PopupLocator.INSTANCE.getWindowLocation((PopupLocator) this, windowDecorView, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.reverse$default(DockPoint.BOTTOM_RIGHT, !m48565o, false, 2, null), (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.reverse$default(DockPoint.BOTTOM_LEFT, !m48565o, false, 2, null), (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : null);
        } else {
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            windowLocation = PopupLocator.INSTANCE.getWindowLocation((PopupLocator) this, windowDecorView, (r17 & 2) != 0 ? DockPoint.BOTTOM_CENTER : DockPoint.reverse$default(DockPoint.TOP_RIGHT, !m48565o, false, 2, null), (r17 & 4) != 0 ? DockPoint.TOP_CENTER : DockPoint.reverse$default(DockPoint.TOP_LEFT, !m48565o, false, 2, null), (r17 & 8) != 0 ? 0 : 0, (r17 & 16) != 0 ? 0 : 0, (r17 & 32) != 0 ? Activity.INSTANCE.getTopContentView() : null);
        }
        PopupLocator.show$default(PopupLocator.INSTANCE, popup, windowLocation, null, 2, null);
    }

    /* renamed from: v */
    public final void m48570v(int color, int colorIndex) {
        this.penViewModel.updateIndexAndColor(colorIndex, color);
    }
}
