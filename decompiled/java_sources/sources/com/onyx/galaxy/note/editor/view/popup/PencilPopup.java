package com.onyx.galaxy.note.editor.view.popup;

import android.view.LayoutInflater;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.universal.editor.events.note.ChangeStrokeAlphaFactorEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.databinding.PopupPencilBinding;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.popup.NormalPenPopup;
import com.onyx.galaxy.note.editor.view.popup.PencilPopup;
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
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0015B\u001b\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0016\u0010\n\u001a\u0004\u0018\u00010\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001b\u0010\u0010\u001a\u00020\u000b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup;", "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;", "", C4921e.f26528e, "Lcom/onyx/galaxy/note/editor/view/custom/StickSeekBarContainer;", "seekBar", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;", "u", "Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;", "pencilArgsChangeListener", "Lcom/onyx/galaxy/note/databinding/PopupPencilBinding;", "v", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupPencilBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;", "penPopupContext", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;)V", "PencilArgsChangeListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class PencilPopup extends NormalPenPopup {

    /* renamed from: u, reason: from kotlin metadata */
    @Nullable
    public final PencilArgsChangeListener pencilArgsChangeListener;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/PencilPopup$PencilArgsChangeListener;", "", "onChangeAlphaFactor", "", "alphaFactor", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface PencilArgsChangeListener {

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes9.dex */
        public static final class DefaultImpls {
            public static void onChangeAlphaFactor(@NotNull PencilArgsChangeListener pencilArgsChangeListener, float f) {
            }
        }

        void onChangeAlphaFactor(float alphaFactor);
    }

    public /* synthetic */ PencilPopup(NormalPenPopup.NormalPenPopupContext normalPenPopupContext, PencilArgsChangeListener pencilArgsChangeListener, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(normalPenPopupContext, (i & 2) != 0 ? null : pencilArgsChangeListener);
    }

    @NotNull
    public final PopupPencilBinding getBinding() {
        return (PopupPencilBinding) this.binding.getValue();
    }

    /* renamed from: n */
    public final void m49326n(StickSeekBarContainer seekBar) {
        Range<Float> between = Range.between(Float.valueOf(0.0f), Float.valueOf(100.0f));
        Intrinsics.checkNotNullExpressionValue(between, "between(...)");
        seekBar.setRange(between);
        seekBar.setProgressValue(alphaToProgressValue());
        seekBar.setProgressChangeCallback(new Function3<Float, Float, Boolean, Unit>() { // from class: com.onyx.galaxy.note.editor.view.popup.PencilPopup$initStrokeAlphaView$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Float f, Float f2, Boolean bool) {
                invoke(f.floatValue(), f2.floatValue(), bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(float f, float f2, boolean z) {
                PencilPopup.PencilArgsChangeListener pencilArgsChangeListener;
                if (z) {
                    return;
                }
                float progressToAlpha = PencilPopup.this.progressToAlpha(f);
                pencilArgsChangeListener = PencilPopup.this.pencilArgsChangeListener;
                if (pencilArgsChangeListener != null) {
                    pencilArgsChangeListener.onChangeAlphaFactor(progressToAlpha);
                }
                PenArgs penArgs = EditorBundleKt.uiDrawingArgs(PencilPopup.this.getPenPopupContext().getEditorBundle()).getPenArgs();
                if (penArgs != null) {
                    penArgs.setAlphaFactor(progressToAlpha);
                }
                DocCollectionBundle.INSTANCE.postEvent(new ChangeStrokeAlphaFactorEvent(progressToAlpha));
            }
        });
    }

    /* renamed from: o */
    public final void m49327o() {
        ShapeColorArgsPropertyLayout colorLayout = getBinding().colorLayout;
        Intrinsics.checkNotNullExpressionValue(colorLayout, "colorLayout");
        initColorLayout(colorLayout);
        StickSeekBarContainer seekBarThickness = getBinding().seekBarThickness;
        Intrinsics.checkNotNullExpressionValue(seekBarThickness, "seekBarThickness");
        initStrokeWidthView(seekBarThickness);
        StickSeekBarContainer seekBarPressure = getBinding().seekBarPressure;
        Intrinsics.checkNotNullExpressionValue(seekBarPressure, "seekBarPressure");
        initStrokePressureView(seekBarPressure);
        StickSeekBarContainer seekBarAlpha = getBinding().seekBarAlpha;
        Intrinsics.checkNotNullExpressionValue(seekBarAlpha, "seekBarAlpha");
        m49326n(seekBarAlpha);
        TintTextView addToPenBox = getBinding().addToPenBox;
        Intrinsics.checkNotNullExpressionValue(addToPenBox, "addToPenBox");
        initPenBoxOperateView(addToPenBox);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PencilPopup(@NotNull NormalPenPopup.NormalPenPopupContext penPopupContext, @Nullable PencilArgsChangeListener pencilArgsChangeListener) {
        super(penPopupContext);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(penPopupContext, "penPopupContext");
        this.pencilArgsChangeListener = pencilArgsChangeListener;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupPencilBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.PencilPopup$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupPencilBinding invoke() {
                return PopupPencilBinding.inflate(LayoutInflater.from(PencilPopup.this.getContext()));
            }
        });
        this.binding = lazy;
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m49327o();
    }
}
