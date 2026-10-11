package com.onyx.galaxy.note.editor.view.popup;

import android.view.LayoutInflater;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeVelocityAmplifierEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeVelocityIgnoreThresholdEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeVelocityLowerBoundEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeVelocitySensitivityEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeVelocityUpperBoundEvent;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.databinding.PopupInkPenBinding;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.popup.InkPenPopup;
import com.onyx.galaxy.note.editor.view.popup.NormalPenPopup;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorArgsPropertyLayout;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u001bB\u001b\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u0019\u0010\u001aJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\n\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001b\u0010\u0016\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup;", "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;", "", "t", "Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;", "seekBar", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "penArgs", "s", C4921e.f26528e, "p", "q", "r", "Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;", "u", "Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;", "inkPenArgsChangeListener", "Lcom/onyx/galaxy/note/databinding/PopupInkPenBinding;", "v", "Lkotlin/Lazy;", GoogleApiAvailabilityLight.f29016b, "()Lcom/onyx/galaxy/note/databinding/PopupInkPenBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;", "penPopupContext", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;)V", "InkPenArgsChangeListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nInkPenPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InkPenPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/InkPenPopup\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,144:1\n256#2,2:145\n256#2,2:147\n256#2,2:149\n256#2,2:151\n*S KotlinDebug\n*F\n+ 1 InkPenPopup.kt\ncom/onyx/galaxy/note/editor/view/popup/InkPenPopup\n*L\n70#1:145,2\n104#1:147,2\n118#1:149,2\n132#1:151,2\n*E\n"})
/* loaded from: classes9.dex */
public final class InkPenPopup extends NormalPenPopup {

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public final InkPenArgsChangeListener inkPenArgsChangeListener;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0016J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0005H\u0016J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0005H\u0016¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/InkPenPopup$InkPenArgsChangeListener;", "", "onChangeVelocity", "", "velocity", "", "onChangeVelocityAmplifier", "velocityAmplifier", "onChangeVelocityIgnoreThreshold", "velocityIgnoreThreshold", "onChangeVelocityLowerBound", "velocityLowerBound", "onChangeVelocityUpperBound", "velocityUpperBound", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface InkPenArgsChangeListener {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes9.dex */
        public static final class DefaultImpls {
            public static void onChangeVelocity(@NotNull InkPenArgsChangeListener inkPenArgsChangeListener, float f) {
            }

            public static void onChangeVelocityAmplifier(@NotNull InkPenArgsChangeListener inkPenArgsChangeListener, float f) {
            }

            public static void onChangeVelocityIgnoreThreshold(@NotNull InkPenArgsChangeListener inkPenArgsChangeListener, float f) {
            }

            public static void onChangeVelocityLowerBound(@NotNull InkPenArgsChangeListener inkPenArgsChangeListener, float f) {
            }

            public static void onChangeVelocityUpperBound(@NotNull InkPenArgsChangeListener inkPenArgsChangeListener, float f) {
            }
        }

        void onChangeVelocity(float velocity);

        void onChangeVelocityAmplifier(float velocityAmplifier);

        void onChangeVelocityIgnoreThreshold(float velocityIgnoreThreshold);

        void onChangeVelocityLowerBound(float velocityLowerBound);

        void onChangeVelocityUpperBound(float velocityUpperBound);
    }

    public /* synthetic */ InkPenPopup(NormalPenPopup.NormalPenPopupContext normalPenPopupContext, InkPenArgsChangeListener inkPenArgsChangeListener, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(normalPenPopupContext, (i & 2) != 0 ? null : inkPenArgsChangeListener);
    }

    /* renamed from: n */
    public final PopupInkPenBinding m48830n() {
        return (PopupInkPenBinding) this.binding.getValue();
    }

    /* renamed from: o */
    public final void m48831o(StickSeekBarContainer seekBar, PenArgs penArgs) {
        Range<Float> between = Range.between(Float.valueOf(0.0f), Float.valueOf(100.0f));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        seekBar.setRange(between);
        seekBar.setProgressValue(penArgs.getVelocityAmplifier() * ResManager.INSTANCE.getInteger(C10651R.integer.times_100));
        seekBar.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.InkPenPopup$initStrokeVelocityAmplifierView$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                InkPenPopup.InkPenArgsChangeListener inkPenArgsChangeListener;
                if (z) {
                    return;
                }
                float integer = f2 / ResManager.INSTANCE.getInteger(C10651R.integer.times_100);
                inkPenArgsChangeListener = InkPenPopup.this.inkPenArgsChangeListener;
                if (inkPenArgsChangeListener != null) {
                    inkPenArgsChangeListener.onChangeVelocityAmplifier(integer);
                }
                DocCollectionBundle.INSTANCE.postEvent(new ChangeStrokeVelocityAmplifierEvent(integer));
            }
        });
    }

    /* renamed from: p */
    public final void m48832p(StickSeekBarContainer seekBar, PenArgs penArgs) {
        if (ResManager.INSTANCE.isAppDebuggable()) {
            seekBar.setVisibility(0);
        }
        Range<Float> between = Range.between(Float.valueOf(0.0f), Float.valueOf(50.0f));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        seekBar.setRange(between);
        seekBar.setProgressValue(penArgs.getVelocityIgnoreThreshold());
        seekBar.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.InkPenPopup$initStrokeVelocityIgnoreThresholdView$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                InkPenPopup.InkPenArgsChangeListener inkPenArgsChangeListener;
                if (z) {
                    return;
                }
                inkPenArgsChangeListener = InkPenPopup.this.inkPenArgsChangeListener;
                if (inkPenArgsChangeListener != null) {
                    inkPenArgsChangeListener.onChangeVelocityIgnoreThreshold(f2);
                }
                DocCollectionBundle.INSTANCE.postEvent(new ChangeStrokeVelocityIgnoreThresholdEvent(f2));
            }
        });
    }

    /* renamed from: q */
    public final void m48833q(StickSeekBarContainer seekBar, PenArgs penArgs) {
        if (ResManager.INSTANCE.isAppDebuggable()) {
            seekBar.setVisibility(0);
        }
        Range<Float> between = Range.between(Float.valueOf(0.0f), Float.valueOf(50.0f));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        seekBar.setRange(between);
        seekBar.setProgressValue(penArgs.getVelocityLowerBound());
        seekBar.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.InkPenPopup$initStrokeVelocityLowerBoundView$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                InkPenPopup.InkPenArgsChangeListener inkPenArgsChangeListener;
                if (z) {
                    return;
                }
                inkPenArgsChangeListener = InkPenPopup.this.inkPenArgsChangeListener;
                if (inkPenArgsChangeListener != null) {
                    inkPenArgsChangeListener.onChangeVelocityLowerBound(f2);
                }
                DocCollectionBundle.INSTANCE.postEvent(new ChangeStrokeVelocityLowerBoundEvent(f2));
            }
        });
    }

    /* renamed from: r */
    public final void m48834r(StickSeekBarContainer seekBar, PenArgs penArgs) {
        if (ResManager.INSTANCE.isAppDebuggable()) {
            seekBar.setVisibility(0);
        }
        Range<Float> between = Range.between(Float.valueOf(0.0f), Float.valueOf(50.0f));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        seekBar.setRange(between);
        seekBar.setProgressValue(penArgs.getVelocityUpperBound());
        seekBar.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.InkPenPopup$initStrokeVelocityUpperBoundView$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                InkPenPopup.InkPenArgsChangeListener inkPenArgsChangeListener;
                if (z) {
                    return;
                }
                inkPenArgsChangeListener = InkPenPopup.this.inkPenArgsChangeListener;
                if (inkPenArgsChangeListener != null) {
                    inkPenArgsChangeListener.onChangeVelocityUpperBound(f2);
                }
                DocCollectionBundle.INSTANCE.postEvent(new ChangeStrokeVelocityUpperBoundEvent(f2));
            }
        });
    }

    /* renamed from: s */
    public final void m48835s(StickSeekBarContainer seekBar, PenArgs penArgs) {
        if (ResManager.INSTANCE.isAppDebuggable()) {
            seekBar.setVisibility(0);
        }
        Range<Float> between = Range.between(Float.valueOf(0.0f), Float.valueOf(1.0f));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        seekBar.setRange(between);
        seekBar.setProgressValue(penArgs.getVelocitySensitivity());
        seekBar.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.InkPenPopup$initStrokeVelocityView$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                InkPenPopup.InkPenArgsChangeListener inkPenArgsChangeListener;
                if (z) {
                    return;
                }
                inkPenArgsChangeListener = InkPenPopup.this.inkPenArgsChangeListener;
                if (inkPenArgsChangeListener != null) {
                    inkPenArgsChangeListener.onChangeVelocity(f2);
                }
                DocCollectionBundle.INSTANCE.postEvent(new ChangeStrokeVelocitySensitivityEvent(f2));
            }
        });
    }

    /* renamed from: t */
    public final void m48836t() {
        ShapeColorArgsPropertyLayout colorLayout = m48830n().colorLayout;
        Intrinsics.checkNotNullExpressionValue(colorLayout, "colorLayout");
        initColorLayout(colorLayout);
        StickSeekBarContainer seekBarVelocity = m48830n().seekBarVelocity;
        Intrinsics.checkNotNullExpressionValue(seekBarVelocity, "seekBarVelocity");
        m48835s(seekBarVelocity, getPenPopupContext().getInitPenArgs());
        StickSeekBarContainer seekBarVelocityAmplifier = m48830n().seekBarVelocityAmplifier;
        Intrinsics.checkNotNullExpressionValue(seekBarVelocityAmplifier, "seekBarVelocityAmplifier");
        m48831o(seekBarVelocityAmplifier, getPenPopupContext().getInitPenArgs());
        StickSeekBarContainer seekBarVelocityIgnoreThreshold = m48830n().seekBarVelocityIgnoreThreshold;
        Intrinsics.checkNotNullExpressionValue(seekBarVelocityIgnoreThreshold, "seekBarVelocityIgnoreThreshold");
        m48832p(seekBarVelocityIgnoreThreshold, getPenPopupContext().getInitPenArgs());
        StickSeekBarContainer seekBarVelocityLowerBound = m48830n().seekBarVelocityLowerBound;
        Intrinsics.checkNotNullExpressionValue(seekBarVelocityLowerBound, "seekBarVelocityLowerBound");
        m48833q(seekBarVelocityLowerBound, getPenPopupContext().getInitPenArgs());
        StickSeekBarContainer seekBarVelocityUpperBound = m48830n().seekBarVelocityUpperBound;
        Intrinsics.checkNotNullExpressionValue(seekBarVelocityUpperBound, "seekBarVelocityUpperBound");
        m48834r(seekBarVelocityUpperBound, getPenPopupContext().getInitPenArgs());
        StickSeekBarContainer seekBarThickness = m48830n().seekBarThickness;
        Intrinsics.checkNotNullExpressionValue(seekBarThickness, "seekBarThickness");
        initStrokeWidthView(seekBarThickness);
        StickSeekBarContainer seekBarPressure = m48830n().seekBarPressure;
        Intrinsics.checkNotNullExpressionValue(seekBarPressure, "seekBarPressure");
        initStrokePressureView(seekBarPressure);
        StickSeekBarContainer seekBarNib = m48830n().seekBarNib;
        Intrinsics.checkNotNullExpressionValue(seekBarNib, "seekBarNib");
        initStrokeNibView(seekBarNib);
        StickSeekBarContainer seekBarSmooth = m48830n().seekBarSmooth;
        Intrinsics.checkNotNullExpressionValue(seekBarSmooth, "seekBarSmooth");
        initSmoothLevelView(seekBarSmooth);
        TintTextView addToPenBox = m48830n().addToPenBox;
        Intrinsics.checkNotNullExpressionValue(addToPenBox, "addToPenBox");
        initPenBoxOperateView(addToPenBox);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InkPenPopup(@NotNull NormalPenPopup.NormalPenPopupContext penPopupContext, @Nullable InkPenArgsChangeListener inkPenArgsChangeListener) {
        super(penPopupContext);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(penPopupContext, "penPopupContext");
        this.inkPenArgsChangeListener = inkPenArgsChangeListener;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupInkPenBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.InkPenPopup$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupInkPenBinding invoke() {
                return PopupInkPenBinding.inflate(LayoutInflater.from(InkPenPopup.this.getContext()));
            }
        });
        this.binding = lazy;
        View root = m48830n().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m48836t();
    }
}
