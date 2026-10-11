package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CompoundButton;
import com.onyx.android.sdk.data.utils.BooleanOption;
import com.onyx.android.sdk.universal.editor.events.app.MagnifierAutoForwardMoveEvent;
import com.onyx.galaxy.note.category.data.DocCollectionBundle;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupMagnifierBinding;
import com.onyx.galaxy.note.editor.view.popup.MagnifierToolPopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.editor.viewmodel.PenViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0003\u001a\u00020\u0002H\u0002R\u0016\u0010\u0007\u001a\u00020\u00048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0016\u0010\u000b\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/MagnifierToolPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "l", "Lcom/onyx/galaxy/note/databinding/PopupMagnifierBinding;", "q", "Lcom/onyx/galaxy/note/databinding/PopupMagnifierBinding;", "binding", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "r", "Lcom/onyx/android/sdk/data/utils/BooleanOption;", "magnifierOption", "Landroid/content/Context;", "context", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "penViewModel", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class MagnifierToolPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    public PopupMagnifierBinding binding;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public BooleanOption magnifierOption;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MagnifierToolPopup(@NotNull Context context, @NotNull PenViewModel penViewModel, @NotNull DockType dockType) {
        super(context, dockType);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(penViewModel, "penViewModel");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        this.magnifierOption = penViewModel.getNoteConfig().getMagnifierAutoForwardMoveOption();
        m49050l();
    }

    /* renamed from: m */
    public static final void m49049m(MagnifierToolPopup this$0, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.magnifierOption.toggle();
        DocCollectionBundle.INSTANCE.postEvent(new MagnifierAutoForwardMoveEvent(z));
    }

    /* renamed from: l */
    public final void m49050l() {
        PopupMagnifierBinding inflate = PopupMagnifierBinding.inflate(LayoutInflater.from(getContext()));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        PopupMagnifierBinding popupMagnifierBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
        setOutsideTouchable(true);
        setFocusable(true);
        setBackgroundDrawable(null);
        PopupMagnifierBinding popupMagnifierBinding2 = this.binding;
        if (popupMagnifierBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupMagnifierBinding2 = null;
        }
        popupMagnifierBinding2.switchAutoForwardMove.setChecked(this.magnifierOption.get());
        PopupMagnifierBinding popupMagnifierBinding3 = this.binding;
        if (popupMagnifierBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupMagnifierBinding = popupMagnifierBinding3;
        }
        popupMagnifierBinding.switchAutoForwardMove.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.sunia.HTREnginev2.c7j
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                MagnifierToolPopup.m49049m(MagnifierToolPopup.this, compoundButton, z);
            }
        });
    }
}
