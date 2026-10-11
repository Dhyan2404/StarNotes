package com.onyx.galaxy.note.editor.view.popup;

import android.view.LayoutInflater;
import android.view.View;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.databinding.PopupBallpointPenBinding;
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

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0002R\u001b\u0010\t\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/BallpointPenPopup;", "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup;", "", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/galaxy/note/databinding/PopupBallpointPenBinding;", "u", "Lkotlin/Lazy;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/PopupBallpointPenBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;", "penPopupContext", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/view/popup/NormalPenPopup$NormalPenPopupContext;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class BallpointPenPopup extends NormalPenPopup {

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final Lazy binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BallpointPenPopup(@NotNull NormalPenPopup.NormalPenPopupContext penPopupContext) {
        super(penPopupContext);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(penPopupContext, "penPopupContext");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PopupBallpointPenBinding>() { // from class: com.onyx.galaxy.note.editor.view.popup.BallpointPenPopup$binding$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PopupBallpointPenBinding invoke() {
                return PopupBallpointPenBinding.inflate(LayoutInflater.from(BallpointPenPopup.this.getContext()));
            }
        });
        this.binding = lazy;
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        m48558n();
    }

    @NotNull
    public final PopupBallpointPenBinding getBinding() {
        return (PopupBallpointPenBinding) this.binding.getValue();
    }

    /* renamed from: n */
    public final void m48558n() {
        ShapeColorArgsPropertyLayout colorLayout = getBinding().colorLayout;
        Intrinsics.checkNotNullExpressionValue(colorLayout, "colorLayout");
        initColorLayout(colorLayout);
        StickSeekBarContainer seekBarThickness = getBinding().seekBarThickness;
        Intrinsics.checkNotNullExpressionValue(seekBarThickness, "seekBarThickness");
        initStrokeWidthView(seekBarThickness);
        StickSeekBarContainer seekBarSmooth = getBinding().seekBarSmooth;
        Intrinsics.checkNotNullExpressionValue(seekBarSmooth, "seekBarSmooth");
        initSmoothLevelView(seekBarSmooth);
        TintTextView addToPenBox = getBinding().addToPenBox;
        Intrinsics.checkNotNullExpressionValue(addToPenBox, "addToPenBox");
        initPenBoxOperateView(addToPenBox);
    }
}
