package com.onyx.galaxy.note.editor.view.popup;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupSeekBarBinding;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u001e\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004J*\u0010\u000e\u001a\u00020\u00022\"\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00020\tj\u0002`\fJ\u000e\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fR\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/SeekBarPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "initContentView", "", "min", "max", "origin", "setBound", "Lkotlin/Function3;", "", "", "Lcom/onyx/galaxy/note/editor/view/popup/ProgressListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setProgressChangeListener", "", "text", "setValueText", "Lcom/onyx/galaxy/note/databinding/PopupSeekBarBinding;", "q", "Lcom/onyx/galaxy/note/databinding/PopupSeekBarBinding;", "binding", "Landroid/content/Context;", "activityContext", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class SeekBarPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    public PopupSeekBarBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeekBarPopup(@NotNull Context activityContext) {
        super(activityContext, null, 2, null);
        Intrinsics.checkNotNullParameter(activityContext, "activityContext");
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void initContentView() {
        setFocusable(true);
        setOutsideTouchable(true);
        PopupSeekBarBinding inflate = PopupSeekBarBinding.inflate(LayoutInflater.from(getContext()));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        View root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
    }

    public final void setBound(@NotNull Number min, @NotNull Number max, @NotNull Number origin) {
        Intrinsics.checkNotNullParameter(min, "min");
        Intrinsics.checkNotNullParameter(max, "max");
        Intrinsics.checkNotNullParameter(origin, "origin");
        PopupSeekBarBinding popupSeekBarBinding = this.binding;
        PopupSeekBarBinding popupSeekBarBinding2 = null;
        if (popupSeekBarBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupSeekBarBinding = null;
        }
        popupSeekBarBinding.seekBar.setMinValue(min.floatValue());
        PopupSeekBarBinding popupSeekBarBinding3 = this.binding;
        if (popupSeekBarBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupSeekBarBinding3 = null;
        }
        popupSeekBarBinding3.seekBar.setMaxValue(max.floatValue());
        PopupSeekBarBinding popupSeekBarBinding4 = this.binding;
        if (popupSeekBarBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            popupSeekBarBinding2 = popupSeekBarBinding4;
        }
        popupSeekBarBinding2.seekBar.setProgress((100 * (origin.floatValue() - min.floatValue())) / (max.floatValue() - min.floatValue()));
    }

    public final void setProgressChangeListener(@NotNull Function3<? super Float, ? super Float, ? super Boolean, Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        PopupSeekBarBinding popupSeekBarBinding = this.binding;
        if (popupSeekBarBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupSeekBarBinding = null;
        }
        popupSeekBarBinding.seekBar.setProgressChangeCallback(listener);
    }

    public final void setValueText(@NotNull String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        PopupSeekBarBinding popupSeekBarBinding = this.binding;
        if (popupSeekBarBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            popupSeekBarBinding = null;
        }
        popupSeekBarBinding.valueText.setText(text);
    }
}
