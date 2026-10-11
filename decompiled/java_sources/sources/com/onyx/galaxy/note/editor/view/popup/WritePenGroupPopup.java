package com.onyx.galaxy.note.editor.view.popup;

import android.view.LayoutInflater;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.events.note.ChangePenArgsEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeAlphaFactorEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeVelocityAmplifierEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeVelocityIgnoreThresholdEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeVelocityLowerBoundEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeVelocitySensitivityEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeVelocityUpperBoundEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.databinding.PopupWritePenGroupBinding;
import com.onyx.galaxy.note.editor.data.PenPropertyBean;
import com.onyx.galaxy.note.editor.data.ShapeDrawableBean;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.popup.InkPenPopup;
import com.onyx.galaxy.note.editor.view.popup.MarkPenPopup;
import com.onyx.galaxy.note.editor.view.popup.NormalPenPopup;
import com.onyx.galaxy.note.editor.view.popup.PencilPopup;
import com.onyx.galaxy.note.editor.view.popup.WritePenGroupPopup;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorArgsPropertyLayout;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.Range;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u00011B/\u0012\u0006\u0010.\u001a\u00020-\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001c\u0012\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00020\u001f¢\u0006\u0004\b/\u00100J\b\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\b\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\b\u0010\u000e\u001a\u00020\u0002H\u0002J\b\u0010\u000f\u001a\u00020\u0002H\u0002J\b\u0010\u0010\u001a\u00020\u0002H\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0018\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0018\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0018\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0018\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002R\u0016\u0010\u001e\u001a\u0004\u0018\u00010\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001dR \u0010\"\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010!R\u001b\u0010'\u001a\u00020#8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010$\u001a\u0004\b%\u0010&R\u0017\u0010,\u001a\u00020(8\u0006¢\u0006\f\n\u0004\b\u000f\u0010)\u001a\u0004\b*\u0010+¨\u00062"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup;", "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;", "", "onShow", "onDismiss", "Lcom/onyx/android/sdk/universal/editor/events/note/ChangePenArgsEvent;", NotificationCompat.CATEGORY_EVENT, "onChangePenArgsEvent", "p", "z", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "A", "B", "w", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "x", C4921e.f26528e, "y", "Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;", "seekBar", "q", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "penArgs", "v", "r", "s", "t", "u", "Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;", "Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;", "writePenGroupArgsChangeListener", "Lkotlin/Function1;", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "Lkotlin/jvm/functions/Function1;", "penTypeChangeCallback", "Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;", "Lkotlin/Lazy;", GoogleApiAvailabilityLight.f29016b, "()Lcom/onyx/galaxy/note/databinding/PopupWritePenGroupBinding;", "binding", "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "getPenProperty", "()Lcom/onyx/galaxy/note/editor/data/PenPropertyBean;", "penProperty", "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;", "penPopupContext", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;Lkotlin/jvm/functions/Function1;)V", "WritePenGroupChangeListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nWritePenGroupPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WritePenGroupPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,257:1\n256#2,2:258\n256#2,2:260\n256#2,2:262\n256#2,2:264\n256#2,2:266\n256#2,2:268\n256#2,2:270\n256#2,2:272\n256#2,2:274\n256#2,2:276\n256#2,2:278\n*S KotlinDebug\n*F\n+ 1 WritePenGroupPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup\n*L\n116#1:258,2\n124#1:260,2\n131#1:262,2\n137#1:264,2\n144#1:266,2\n145#1:268,2\n146#1:270,2\n147#1:272,2\n148#1:274,2\n152#1:276,2\n179#1:278,2\n*E\n"})
/* loaded from: classes9.dex */
public final class WritePenGroupPopup extends NormalPenPopup {

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public final WritePenGroupChangeListener writePenGroupArgsChangeListener;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final Function1<ShapeToolType, Unit> penTypeChangeCallback;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public final PenPropertyBean penProperty;

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
                iArr[ShapeToolType.CALLIGRAPHY_PEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ShapeToolType.PENCIL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ShapeToolType.SOFT_PAINT_PEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/WritePenGroupPopup$WritePenGroupChangeListener;", "Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;", "Lcom/onyx/galaxy/note/editor/view/popup/MarkPenPopup$MarkPenArgsChangeListener;", "Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;", "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$PenArgsChangeListener;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface WritePenGroupChangeListener extends InkPenPopup.InkPenArgsChangeListener, MarkPenPopup.MarkPenArgsChangeListener, PencilPopup.PencilArgsChangeListener, NormalPenPopup.PenArgsChangeListener {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes9.dex */
        public static final class DefaultImpls {
            public static void onAddPenArgs(@NotNull WritePenGroupChangeListener writePenGroupChangeListener) {
                NormalPenPopup.PenArgsChangeListener.DefaultImpls.onAddPenArgs(writePenGroupChangeListener);
            }

            public static void onChangeAlphaFactor(@NotNull WritePenGroupChangeListener writePenGroupChangeListener, float f) {
                PencilPopup.PencilArgsChangeListener.DefaultImpls.onChangeAlphaFactor(writePenGroupChangeListener, f);
            }

            public static void onChangeLineDrawing(@NotNull WritePenGroupChangeListener writePenGroupChangeListener, int i) {
                MarkPenPopup.MarkPenArgsChangeListener.DefaultImpls.onChangeLineDrawing(writePenGroupChangeListener, i);
            }

            public static void onChangeRoundCorner(@NotNull WritePenGroupChangeListener writePenGroupChangeListener, boolean z) {
                MarkPenPopup.MarkPenArgsChangeListener.DefaultImpls.onChangeRoundCorner(writePenGroupChangeListener, z);
            }

            public static void onChangeSmoothLevel(@NotNull WritePenGroupChangeListener writePenGroupChangeListener, float f) {
                NormalPenPopup.PenArgsChangeListener.DefaultImpls.onChangeSmoothLevel(writePenGroupChangeListener, f);
            }

            public static void onChangeStrokeNib(@NotNull WritePenGroupChangeListener writePenGroupChangeListener, float f) {
                NormalPenPopup.PenArgsChangeListener.DefaultImpls.onChangeStrokeNib(writePenGroupChangeListener, f);
            }

            public static void onChangeStrokePressure(@NotNull WritePenGroupChangeListener writePenGroupChangeListener, float f) {
                NormalPenPopup.PenArgsChangeListener.DefaultImpls.onChangeStrokePressure(writePenGroupChangeListener, f);
            }

            public static void onChangeStrokeWidth(@NotNull WritePenGroupChangeListener writePenGroupChangeListener, float f) {
                NormalPenPopup.PenArgsChangeListener.DefaultImpls.onChangeStrokeWidth(writePenGroupChangeListener, f);
            }

            public static void onChangeVelocity(@NotNull WritePenGroupChangeListener writePenGroupChangeListener, float f) {
                InkPenPopup.InkPenArgsChangeListener.DefaultImpls.onChangeVelocity(writePenGroupChangeListener, f);
            }

            public static void onChangeVelocityAmplifier(@NotNull WritePenGroupChangeListener writePenGroupChangeListener, float f) {
                InkPenPopup.InkPenArgsChangeListener.DefaultImpls.onChangeVelocityAmplifier(writePenGroupChangeListener, f);
            }

            public static void onChangeVelocityIgnoreThreshold(@NotNull WritePenGroupChangeListener writePenGroupChangeListener, float f) {
                InkPenPopup.InkPenArgsChangeListener.DefaultImpls.onChangeVelocityIgnoreThreshold(writePenGroupChangeListener, f);
            }

            public static void onChangeVelocityLowerBound(@NotNull WritePenGroupChangeListener writePenGroupChangeListener, float f) {
                InkPenPopup.InkPenArgsChangeListener.DefaultImpls.onChangeVelocityLowerBound(writePenGroupChangeListener, f);
            }

            public static void onChangeVelocityUpperBound(@NotNull WritePenGroupChangeListener writePenGroupChangeListener, float f) {
                InkPenPopup.InkPenArgsChangeListener.DefaultImpls.onChangeVelocityUpperBound(writePenGroupChangeListener, f);
            }

            public static void onRemovePenArgs(@NotNull WritePenGroupChangeListener writePenGroupChangeListener) {
                NormalPenPopup.PenArgsChangeListener.DefaultImpls.onRemovePenArgs(writePenGroupChangeListener);
            }

            public static void onSelectedColor(@NotNull WritePenGroupChangeListener writePenGroupChangeListener, int i, int i2) {
                NormalPenPopup.PenArgsChangeListener.DefaultImpls.onSelectedColor(writePenGroupChangeListener, i, i2);
            }

            public static void onSelectedColorDismiss(@NotNull WritePenGroupChangeListener writePenGroupChangeListener) {
                NormalPenPopup.PenArgsChangeListener.DefaultImpls.onSelectedColorDismiss(writePenGroupChangeListener);
            }

            public static void onSelectedColorList(@NotNull WritePenGroupChangeListener writePenGroupChangeListener, @NotNull IntList colorList, int i) {
                Intrinsics.checkNotNullParameter(colorList, "colorList");
                NormalPenPopup.PenArgsChangeListener.DefaultImpls.onSelectedColorList(writePenGroupChangeListener, colorList, i);
            }
        }
    }

    public /* synthetic */ WritePenGroupPopup(NormalPenPopup.NormalPenPopupContext normalPenPopupContext, WritePenGroupChangeListener writePenGroupChangeListener, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(normalPenPopupContext, (i & 2) != 0 ? null : writePenGroupChangeListener, function1);
    }

    /* renamed from: A */
    public final void m49787A() {
        ShapeDrawableBean drawableRes;
        ShapeToolType shapeToolType$default = ShapeToolType.Companion.getShapeToolType$default(ShapeToolType.INSTANCE, getPenPopupContext().getViewShapeType().getShapeType(), null, 2, null);
        m49791n().tvTitle.setText((shapeToolType$default == null || (drawableRes = shapeToolType$default.getDrawableRes()) == null) ? C10651R.string.write_pen : drawableRes.getTitleRes());
    }

    /* renamed from: B */
    public final void m49788B() {
        View root = m49791n().pencilParams.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        root.setVisibility(0);
        ShapeColorArgsPropertyLayout colorLayout = m49791n().colorLayout;
        Intrinsics.checkNotNullExpressionValue(colorLayout, "colorLayout");
        initColorLayout(colorLayout);
        StickSeekBarContainer seekBarThickness = m49791n().pencilParams.seekBarThickness;
        Intrinsics.checkNotNullExpressionValue(seekBarThickness, "seekBarThickness");
        initStrokeWidthView(seekBarThickness);
        StickSeekBarContainer seekBarPressure = m49791n().pencilParams.seekBarPressure;
        Intrinsics.checkNotNullExpressionValue(seekBarPressure, "seekBarPressure");
        initStrokePressureView(seekBarPressure);
        StickSeekBarContainer seekBarAlpha = m49791n().pencilParams.seekBarAlpha;
        Intrinsics.checkNotNullExpressionValue(seekBarAlpha, "seekBarAlpha");
        m49794q(seekBarAlpha);
    }

    /* renamed from: C */
    public final void m49789C() {
        m49787A();
        m49803z();
        m49792o();
        ShapeToolType shapeToolType$default = ShapeToolType.Companion.getShapeToolType$default(ShapeToolType.INSTANCE, getPenPopupContext().getViewShapeType().getShapeType(), null, 2, null);
        int i = shapeToolType$default == null ? -1 : WhenMappings.$EnumSwitchMapping$0[shapeToolType$default.ordinal()];
        if (i == 1) {
            m49802y();
            return;
        }
        if (i == 2) {
            m49801x();
            return;
        }
        if (i == 3) {
            m49800w();
            return;
        }
        if (i == 4) {
            m49788B();
        } else if (i != 5) {
            m49802y();
        } else {
            m49790D();
        }
    }

    /* renamed from: D */
    public final void m49790D() {
        View root = m49791n().softPaintPenParams.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        root.setVisibility(0);
        ShapeColorArgsPropertyLayout colorLayout = m49791n().colorLayout;
        Intrinsics.checkNotNullExpressionValue(colorLayout, "colorLayout");
        initColorLayout(colorLayout);
        StickSeekBarContainer seekBarThickness = m49791n().softPaintPenParams.seekBarThickness;
        Intrinsics.checkNotNullExpressionValue(seekBarThickness, "seekBarThickness");
        initStrokeWidthView(seekBarThickness);
    }

    @NotNull
    public final PenPropertyBean getPenProperty() {
        return this.penProperty;
    }

    /* renamed from: n */
    public final PopupWritePenGroupBinding m49791n() {
        return (PopupWritePenGroupBinding) this.binding.getValue();
    }

    /* renamed from: o */
    public final void m49792o() {
        View root = m49791n().pencilParams.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        root.setVisibility(8);
        View root2 = m49791n().artPenParams.getRoot();
        Intrinsics.checkNotNullExpressionValue(root2, "getRoot(...)");
        root2.setVisibility(8);
        View root3 = m49791n().inkParams.getRoot();
        Intrinsics.checkNotNullExpressionValue(root3, "getRoot(...)");
        root3.setVisibility(8);
        View root4 = m49791n().ballpointPenParams.getRoot();
        Intrinsics.checkNotNullExpressionValue(root4, "getRoot(...)");
        root4.setVisibility(8);
        View root5 = m49791n().softPaintPenParams.getRoot();
        Intrinsics.checkNotNullExpressionValue(root5, "getRoot(...)");
        root5.setVisibility(8);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onChangePenArgsEvent(@NotNull ChangePenArgsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getFromPenBox()) {
            return;
        }
        m49791n().shapeToolContainer.onChangePenArgs(event.getPenArgs());
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onDismiss() {
        super.onDismiss();
        DocCollectionBundle.INSTANCE.ensureUnRegister(this);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onShow() {
        super.onShow();
        DocCollectionBundle.INSTANCE.ensureRegister(this);
    }

    /* renamed from: p */
    public final void m49793p() {
        m49791n().shapeToolContainer.setViewSelected(ShapeToolType.Companion.getShapeToolType$default(ShapeToolType.INSTANCE, getPenPopupContext().getViewShapeType().getShapeType(), null, 2, null));
        m49791n().shapeToolContainer.setShapeTypeClickCallback(new Function1<ShapeToolType, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.WritePenGroupPopup$initShapeContainer$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ShapeToolType shapeToolType) {
                invoke2(shapeToolType);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ShapeToolType it2) {
                Function1 function1;
                Intrinsics.checkNotNullParameter(it2, "it");
                WritePenGroupPopup.this.getPenPopupContext().getViewShapeType().setShapeType(it2.getShapeType());
                function1 = WritePenGroupPopup.this.penTypeChangeCallback;
                function1.invoke(WritePenGroupPopup.this.getPenPopupContext().getViewShapeType());
                WritePenGroupPopup.this.m49789C();
            }
        });
        m49789C();
    }

    /* renamed from: q */
    public final void m49794q(StickSeekBarContainer seekBar) {
        if (ResManager.INSTANCE.isAppDebuggable()) {
            seekBar.setVisibility(0);
        }
        Range<Float> between = Range.between(Float.valueOf(0.0f), Float.valueOf(100.0f));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        seekBar.setRange(between);
        seekBar.setProgressValue(alphaToProgressValue());
        seekBar.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.WritePenGroupPopup$initStrokeAlphaView$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                WritePenGroupPopup.WritePenGroupChangeListener writePenGroupChangeListener;
                if (z) {
                    return;
                }
                float progressToAlpha = WritePenGroupPopup.this.progressToAlpha(f);
                writePenGroupChangeListener = WritePenGroupPopup.this.writePenGroupArgsChangeListener;
                if (writePenGroupChangeListener != null) {
                    writePenGroupChangeListener.onChangeAlphaFactor(progressToAlpha);
                }
                PenArgs penArgs = EditorBundleKt.uiDrawingArgs(WritePenGroupPopup.this.getPenPopupContext().getEditorBundle()).getPenArgs();
                if (penArgs != null) {
                    penArgs.setAlphaFactor(progressToAlpha);
                }
                DocCollectionBundle.INSTANCE.postEvent(new ChangeStrokeAlphaFactorEvent(progressToAlpha));
            }
        });
    }

    /* renamed from: r */
    public final void m49795r(StickSeekBarContainer seekBar, PenArgs penArgs) {
        Range<Float> between = Range.between(Float.valueOf(0.0f), Float.valueOf(100.0f));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        seekBar.setRange(between);
        seekBar.setProgressValue(penArgs.getVelocityAmplifier() * ResManager.INSTANCE.getInteger(C10651R.integer.times_100));
        seekBar.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.WritePenGroupPopup$initStrokeVelocityAmplifierView$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                WritePenGroupPopup.WritePenGroupChangeListener writePenGroupChangeListener;
                if (z) {
                    return;
                }
                float integer = f2 / ResManager.INSTANCE.getInteger(C10651R.integer.times_100);
                writePenGroupChangeListener = WritePenGroupPopup.this.writePenGroupArgsChangeListener;
                if (writePenGroupChangeListener != null) {
                    writePenGroupChangeListener.onChangeVelocityAmplifier(integer);
                }
                DocCollectionBundle.INSTANCE.postEvent(new ChangeStrokeVelocityAmplifierEvent(integer));
            }
        });
    }

    /* renamed from: s */
    public final void m49796s(StickSeekBarContainer seekBar, PenArgs penArgs) {
        Range<Float> between = Range.between(Float.valueOf(0.0f), Float.valueOf(50.0f));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        seekBar.setRange(between);
        seekBar.setProgressValue(penArgs.getVelocityIgnoreThreshold());
        seekBar.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.WritePenGroupPopup$initStrokeVelocityIgnoreThresholdView$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                WritePenGroupPopup.WritePenGroupChangeListener writePenGroupChangeListener;
                if (z) {
                    return;
                }
                writePenGroupChangeListener = WritePenGroupPopup.this.writePenGroupArgsChangeListener;
                if (writePenGroupChangeListener != null) {
                    writePenGroupChangeListener.onChangeVelocityIgnoreThreshold(f2);
                }
                DocCollectionBundle.INSTANCE.postEvent(new ChangeStrokeVelocityIgnoreThresholdEvent(f2));
            }
        });
    }

    /* renamed from: t */
    public final void m49797t(StickSeekBarContainer seekBar, PenArgs penArgs) {
        Range<Float> between = Range.between(Float.valueOf(0.0f), Float.valueOf(50.0f));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        seekBar.setRange(between);
        seekBar.setProgressValue(penArgs.getVelocityLowerBound());
        seekBar.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.WritePenGroupPopup$initStrokeVelocityLowerBoundView$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                WritePenGroupPopup.WritePenGroupChangeListener writePenGroupChangeListener;
                if (z) {
                    return;
                }
                writePenGroupChangeListener = WritePenGroupPopup.this.writePenGroupArgsChangeListener;
                if (writePenGroupChangeListener != null) {
                    writePenGroupChangeListener.onChangeVelocityLowerBound(f2);
                }
                DocCollectionBundle.INSTANCE.postEvent(new ChangeStrokeVelocityLowerBoundEvent(f2));
            }
        });
    }

    /* renamed from: u */
    public final void m49798u(StickSeekBarContainer seekBar, PenArgs penArgs) {
        Range<Float> between = Range.between(Float.valueOf(0.0f), Float.valueOf(50.0f));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        seekBar.setRange(between);
        seekBar.setProgressValue(penArgs.getVelocityUpperBound());
        seekBar.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.WritePenGroupPopup$initStrokeVelocityUpperBoundView$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                WritePenGroupPopup.WritePenGroupChangeListener writePenGroupChangeListener;
                if (z) {
                    return;
                }
                writePenGroupChangeListener = WritePenGroupPopup.this.writePenGroupArgsChangeListener;
                if (writePenGroupChangeListener != null) {
                    writePenGroupChangeListener.onChangeVelocityUpperBound(f2);
                }
                DocCollectionBundle.INSTANCE.postEvent(new ChangeStrokeVelocityUpperBoundEvent(f2));
            }
        });
    }

    /* renamed from: v */
    public final void m49799v(StickSeekBarContainer seekBar, PenArgs penArgs) {
        Range<Float> between = Range.between(Float.valueOf(0.0f), Float.valueOf(1.0f));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        seekBar.setRange(between);
        seekBar.setProgressValue(penArgs.getVelocitySensitivity());
        seekBar.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.WritePenGroupPopup$initStrokeVelocityView$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                WritePenGroupPopup.WritePenGroupChangeListener writePenGroupChangeListener;
                if (z) {
                    return;
                }
                writePenGroupChangeListener = WritePenGroupPopup.this.writePenGroupArgsChangeListener;
                if (writePenGroupChangeListener != null) {
                    writePenGroupChangeListener.onChangeVelocity(f2);
                }
                DocCollectionBundle.INSTANCE.postEvent(new ChangeStrokeVelocitySensitivityEvent(f2));
            }
        });
    }

    /* renamed from: w */
    public final void m49800w() {
        View root = m49791n().artPenParams.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        root.setVisibility(0);
        ShapeColorArgsPropertyLayout colorLayout = m49791n().colorLayout;
        Intrinsics.checkNotNullExpressionValue(colorLayout, "colorLayout");
        initColorLayout(colorLayout);
        StickSeekBarContainer seekBarThickness = m49791n().artPenParams.seekBarThickness;
        Intrinsics.checkNotNullExpressionValue(seekBarThickness, "seekBarThickness");
        initStrokeWidthView(seekBarThickness);
        StickSeekBarContainer seekBarSmooth = m49791n().artPenParams.seekBarSmooth;
        Intrinsics.checkNotNullExpressionValue(seekBarSmooth, "seekBarSmooth");
        initSmoothLevelView(seekBarSmooth);
    }

    /* renamed from: x */
    public final void m49801x() {
        View root = m49791n().ballpointPenParams.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        root.setVisibility(0);
        ShapeColorArgsPropertyLayout colorLayout = m49791n().colorLayout;
        Intrinsics.checkNotNullExpressionValue(colorLayout, "colorLayout");
        initColorLayout(colorLayout);
        StickSeekBarContainer seekBarThickness = m49791n().ballpointPenParams.seekBarThickness;
        Intrinsics.checkNotNullExpressionValue(seekBarThickness, "seekBarThickness");
        initStrokeWidthView(seekBarThickness);
        StickSeekBarContainer seekBarSmooth = m49791n().ballpointPenParams.seekBarSmooth;
        Intrinsics.checkNotNullExpressionValue(seekBarSmooth, "seekBarSmooth");
        initSmoothLevelView(seekBarSmooth);
    }

    /* renamed from: y */
    public final void m49802y() {
        View root = m49791n().inkParams.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        root.setVisibility(0);
        ShapeColorArgsPropertyLayout colorLayout = m49791n().colorLayout;
        Intrinsics.checkNotNullExpressionValue(colorLayout, "colorLayout");
        initColorLayout(colorLayout);
        StickSeekBarContainer seekBarVelocity = m49791n().inkParams.seekBarVelocity;
        Intrinsics.checkNotNullExpressionValue(seekBarVelocity, "seekBarVelocity");
        m49799v(seekBarVelocity, getPenPopupContext().getInitPenArgs());
        StickSeekBarContainer seekBarVelocityAmplifier = m49791n().inkParams.seekBarVelocityAmplifier;
        Intrinsics.checkNotNullExpressionValue(seekBarVelocityAmplifier, "seekBarVelocityAmplifier");
        m49795r(seekBarVelocityAmplifier, getPenPopupContext().getInitPenArgs());
        StickSeekBarContainer seekBarVelocityIgnoreThreshold = m49791n().inkParams.seekBarVelocityIgnoreThreshold;
        Intrinsics.checkNotNullExpressionValue(seekBarVelocityIgnoreThreshold, "seekBarVelocityIgnoreThreshold");
        m49796s(seekBarVelocityIgnoreThreshold, getPenPopupContext().getInitPenArgs());
        StickSeekBarContainer seekBarVelocityLowerBound = m49791n().inkParams.seekBarVelocityLowerBound;
        Intrinsics.checkNotNullExpressionValue(seekBarVelocityLowerBound, "seekBarVelocityLowerBound");
        m49797t(seekBarVelocityLowerBound, getPenPopupContext().getInitPenArgs());
        StickSeekBarContainer seekBarVelocityUpperBound = m49791n().inkParams.seekBarVelocityUpperBound;
        Intrinsics.checkNotNullExpressionValue(seekBarVelocityUpperBound, "seekBarVelocityUpperBound");
        m49798u(seekBarVelocityUpperBound, getPenPopupContext().getInitPenArgs());
        StickSeekBarContainer seekBarThickness = m49791n().inkParams.seekBarThickness;
        Intrinsics.checkNotNullExpressionValue(seekBarThickness, "seekBarThickness");
        initStrokeWidthView(seekBarThickness);
        StickSeekBarContainer seekBarPressure = m49791n().inkParams.seekBarPressure;
        Intrinsics.checkNotNullExpressionValue(seekBarPressure, "seekBarPressure");
        initStrokePressureView(seekBarPressure);
        StickSeekBarContainer seekBarNib = m49791n().inkParams.seekBarNib;
        Intrinsics.checkNotNullExpressionValue(seekBarNib, "seekBarNib");
        initStrokeNibView(seekBarNib);
        StickSeekBarContainer seekBarSmooth = m49791n().inkParams.seekBarSmooth;
        Intrinsics.checkNotNullExpressionValue(seekBarSmooth, "seekBarSmooth");
        initSmoothLevelView(seekBarSmooth);
    }

    /* renamed from: z */
    public final void m49803z() {
        IntList value = this.penProperty.getColorListOption(getPenPopupContext().getViewShapeType().getShapeType()).getValue();
        int i = this.penProperty.getColorIndexOption(getPenPopupContext().getViewShapeType().getShapeType()).get();
        getPenPopupContext().setInitPenArgs(this.penProperty.getPenArgsOption(getPenPopupContext().getViewShapeType().getShapeType()).get().m72358clone());
        getPenPopupContext().setColorList(value);
        getPenPopupContext().setColorIndex(i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public WritePenGroupPopup(@NotNull NormalPenPopup.NormalPenPopupContext penPopupContext, @Nullable WritePenGroupChangeListener writePenGroupChangeListener, @NotNull Function1<? super ShapeToolType, Unit> penTypeChangeCallback) {
        super(penPopupContext);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(penPopupContext, "penPopupContext");
        Intrinsics.checkNotNullParameter(penTypeChangeCallback, "penTypeChangeCallback");
        this.writePenGroupArgsChangeListener = writePenGroupChangeListener;
        this.penTypeChangeCallback = penTypeChangeCallback;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupWritePenGroupBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.WritePenGroupPopup$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupWritePenGroupBinding invoke() {
                return PopupWritePenGroupBinding.inflate(LayoutInflater.from(WritePenGroupPopup.this.getContext()));
            }
        });
        this.binding = lazy;
        this.penProperty = NoteConfigManager.INSTANCE.getNoteEditConfigInfo().getPenProperty();
        View root = m49791n().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m49793p();
        TintTextView addToPenBox = m49791n().addToPenBox;
        Intrinsics.checkNotNullExpressionValue(addToPenBox, "addToPenBox");
        initPenBoxOperateView(addToPenBox);
    }
}
