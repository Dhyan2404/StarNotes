package com.onyx.galaxy.note.editor.view.popup;

import android.view.LayoutInflater;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.databinding.PopupCalligraphyPenBinding;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.popup.NormalPenPopup;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorArgsPropertyLayout;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0002R\u001b\u0010\t\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/CalligraphyPenPopup;", "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;", "", C4921e.f26528e, "Lcom/onyx/galaxy/note/databinding/PopupCalligraphyPenBinding;", "u", "Lkotlin/Lazy;", GoogleApiAvailabilityLight.f29016b, "()Lcom/onyx/galaxy/note/databinding/PopupCalligraphyPenBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;", "penPopupContext", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class CalligraphyPenPopup extends NormalPenPopup {

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CalligraphyPenPopup(@NotNull NormalPenPopup.NormalPenPopupContext penPopupContext) {
        super(penPopupContext);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(penPopupContext, "penPopupContext");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupCalligraphyPenBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.CalligraphyPenPopup$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupCalligraphyPenBinding invoke() {
                return PopupCalligraphyPenBinding.inflate(LayoutInflater.from(CalligraphyPenPopup.this.getContext()));
            }
        });
        this.binding = lazy;
        View root = m48575n().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m48576o();
    }

    /* renamed from: n */
    public final PopupCalligraphyPenBinding m48575n() {
        return (PopupCalligraphyPenBinding) this.binding.getValue();
    }

    /* renamed from: o */
    public final void m48576o() {
        ShapeColorArgsPropertyLayout colorLayout = m48575n().colorLayout;
        Intrinsics.checkNotNullExpressionValue(colorLayout, "colorLayout");
        initColorLayout(colorLayout);
        StickSeekBarContainer seekBarThickness = m48575n().seekBarThickness;
        Intrinsics.checkNotNullExpressionValue(seekBarThickness, "seekBarThickness");
        initStrokeWidthView(seekBarThickness);
        StickSeekBarContainer seekBarSmooth = m48575n().seekBarSmooth;
        Intrinsics.checkNotNullExpressionValue(seekBarSmooth, "seekBarSmooth");
        initSmoothLevelView(seekBarSmooth);
        TintTextView addToPenBox = m48575n().addToPenBox;
        Intrinsics.checkNotNullExpressionValue(addToPenBox, "addToPenBox");
        initPenBoxOperateView(addToPenBox);
        StickSeekBarContainer seekBarSmooth2 = m48575n().seekBarSmooth;
        Intrinsics.checkNotNullExpressionValue(seekBarSmooth2, "seekBarSmooth");
        initSmoothLevelView(seekBarSmooth2);
    }
}
