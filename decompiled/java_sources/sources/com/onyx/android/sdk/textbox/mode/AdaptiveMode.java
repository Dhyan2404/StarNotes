package com.onyx.android.sdk.textbox.mode;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.textbox.data.TextBoxModeType;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J \u0010\f\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u000f\u001a\u00020\rH\u0016J\b\u0010\u0010\u001a\u00020\tH\u0016J\b\u0010\u0011\u001a\u00020\tH\u0016J\b\u0010\u0012\u001a\u00020\u0006H\u0002¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/mode/AdaptiveMode;", "Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;", "Lcom/onyx/android/sdk/textbox/data/TextBoxModeType;", "getType", "", "isVertical", "", "onOrientationChanged", "newAdded", "", "width", "height", "resetMinimumSize", "", "getEditorContentWidth", "getEditorContentHeight", "getRenderWidth", "getRenderHeight", "a", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "textBox", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class AdaptiveMode extends TextBoxMode {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdaptiveMode(@NotNull TextBoxView textBox) {
        super(textBox);
        Intrinsics.checkNotNullParameter(textBox, "textBox");
    }

    /* renamed from: a */
    public final void m36157a() {
        ViewGroup.LayoutParams layoutParams = getViewBinding().btnMove.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        if (getTextBox().isVertical()) {
            layoutParams2.gravity = 8388691;
        } else {
            layoutParams2.gravity = 8388661;
        }
    }

    @Override // com.onyx.android.sdk.textbox.mode.TextBoxMode
    public float getEditorContentHeight() {
        View richEditor = getEditor().getRichEditor();
        float editorContentHeight = getEditor().getEditorContentHeight();
        if (!(editorContentHeight == getTextBox().getEditorScaleHeight())) {
            Debug.INSTANCE.m32035d(AdaptiveMode.class, "editor content height: " + editorContentHeight + ", view height: " + richEditor.getHeight(), new Object[0]);
        }
        return getTextBox().isVertical() ? getTextBox().getEditorViewHeight() : editorContentHeight / getTextBox().getScaleY();
    }

    @Override // com.onyx.android.sdk.textbox.mode.TextBoxMode
    public float getEditorContentWidth() {
        View richEditor = getEditor().getRichEditor();
        float editorContentWidth = getEditor().getEditorContentWidth();
        if (!(editorContentWidth == getTextBox().getEditorScaleWidth())) {
            Debug.INSTANCE.m32035d(AdaptiveMode.class, "editor content width: " + editorContentWidth + ", view width: " + richEditor.getWidth(), new Object[0]);
        }
        return getTextBox().isVertical() ? editorContentWidth / getTextBox().getScaleX() : getTextBox().getEditorViewWidth();
    }

    @Override // com.onyx.android.sdk.textbox.mode.TextBoxMode
    public int getRenderHeight() {
        int roundToInt;
        if (getTextBox().isVertical()) {
            return getTextBox().getEditorScaleHeightInt();
        }
        roundToInt = MathKt__MathJVMKt.roundToInt(getEditor().getEditorContentHeight());
        return roundToInt;
    }

    @Override // com.onyx.android.sdk.textbox.mode.TextBoxMode
    public int getRenderWidth() {
        int roundToInt;
        if (!getTextBox().isVertical()) {
            return getTextBox().getEditorScaleWidthInt();
        }
        roundToInt = MathKt__MathJVMKt.roundToInt(getEditor().getEditorContentWidth());
        return roundToInt;
    }

    @Override // com.onyx.android.sdk.textbox.mode.TextBoxMode
    @NotNull
    public TextBoxModeType getType() {
        return TextBoxModeType.ADAPTIVE;
    }

    @Override // com.onyx.android.sdk.textbox.mode.TextBoxMode
    public void onOrientationChanged(boolean isVertical) {
        ViewKt.setViewVisibleOrGone(getViewBinding().selectionLeftHandle, !isVertical);
        ViewKt.setViewVisibleOrGone(getViewBinding().selectionRightHandle, !isVertical);
        ViewKt.setViewVisibleOrGone(getViewBinding().selectionTopHandle, isVertical);
        ViewKt.setViewVisibleOrGone(getViewBinding().selectionBottomHandle, isVertical);
        m36157a();
    }

    @Override // com.onyx.android.sdk.textbox.mode.TextBoxMode
    public void resetMinimumSize(boolean newAdded, int width, int height) {
        View editorView = getTextBox().getEditorView();
        if (getTextBox().isVertical()) {
            editorView.setMinimumHeight(0);
            if (!newAdded) {
                width = 0;
            }
            editorView.setMinimumWidth(width);
            return;
        }
        editorView.setMinimumWidth(0);
        if (!newAdded) {
            height = 0;
        }
        editorView.setMinimumHeight(height);
    }
}
