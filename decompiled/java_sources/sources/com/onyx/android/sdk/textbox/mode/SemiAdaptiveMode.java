package com.onyx.android.sdk.textbox.mode;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.math.MathUtils;
import com.onyx.android.sdk.textbox.data.EditorLayoutInfo;
import com.onyx.android.sdk.textbox.data.TextBoxModeType;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\bH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0006H\u0016J\u0010\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0015H\u0016¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/mode/SemiAdaptiveMode;", "Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;", "textBox", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V", "canUpdateEditorHeight", "", "newHeight", "", "canUpdateEditorWidth", "newWidth", "getEditorContentHeight", "", "getEditorContentWidth", "getType", "Lcom/onyx/android/sdk/textbox/data/TextBoxModeType;", "onOrientationChanged", "", "isVertical", "resizeEditorHeight", "sizeInfo", "Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;", "resizeEditorWidth", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SemiAdaptiveMode extends TextBoxMode {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SemiAdaptiveMode(@NotNull TextBoxView textBox) {
        super(textBox);
        Intrinsics.checkNotNullParameter(textBox, "textBox");
    }

    @Override // com.onyx.android.sdk.textbox.mode.TextBoxMode
    public boolean canUpdateEditorHeight(int newHeight) {
        float f = newHeight;
        if (f <= getTextBox().getEditorMinHeight()) {
            return false;
        }
        if (f <= getEditor().getEditorContentHeight()) {
            return getTextBox().isVertical();
        }
        return true;
    }

    @Override // com.onyx.android.sdk.textbox.mode.TextBoxMode
    public boolean canUpdateEditorWidth(int newWidth) {
        float f = newWidth;
        if (f <= getTextBox().getEditorMinWidth()) {
            return false;
        }
        if (f <= getEditor().getEditorContentWidth()) {
            return !getTextBox().isVertical();
        }
        return true;
    }

    @Override // com.onyx.android.sdk.textbox.mode.TextBoxMode
    public float getEditorContentHeight() {
        return getTextBox().getEditor().getEditorContentHeight() / getTextBox().getScaleY();
    }

    @Override // com.onyx.android.sdk.textbox.mode.TextBoxMode
    public float getEditorContentWidth() {
        return getTextBox().getEditor().getEditorContentWidth() / getTextBox().getScaleX();
    }

    @Override // com.onyx.android.sdk.textbox.mode.TextBoxMode
    @NotNull
    public TextBoxModeType getType() {
        return TextBoxModeType.SEMI_ADAPTIVE;
    }

    @Override // com.onyx.android.sdk.textbox.mode.TextBoxMode
    public void onOrientationChanged(boolean isVertical) {
        ViewGroup.LayoutParams layoutParams = getViewBinding().btnMove.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        if (getTextBox().isVertical()) {
            layoutParams2.gravity = 81;
        } else {
            layoutParams2.gravity = 49;
        }
        getViewBinding().btnMove.setLayoutParams(layoutParams2);
    }

    @Override // com.onyx.android.sdk.textbox.mode.TextBoxMode
    public boolean resizeEditorHeight(@NotNull EditorLayoutInfo sizeInfo) {
        Intrinsics.checkNotNullParameter(sizeInfo, "sizeInfo");
        if (!shouldResizeHeight(sizeInfo)) {
            return false;
        }
        int minimumHeight = getTextBox().getEditorView().getMinimumHeight();
        Context context = getTextBox().getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        int clamp = MathUtils.clamp(sizeInfo.getContentHeight(context), minimumHeight, getOriginLimitHeight());
        if (clamp <= getTextBox().getEditorViewHeight()) {
            return false;
        }
        return getEditor().adjustEditorHeight(sizeInfo, clamp);
    }

    @Override // com.onyx.android.sdk.textbox.mode.TextBoxMode
    public boolean resizeEditorWidth(@NotNull EditorLayoutInfo sizeInfo) {
        Intrinsics.checkNotNullParameter(sizeInfo, "sizeInfo");
        if (!shouldResizeWidth(sizeInfo)) {
            return false;
        }
        int minimumWidth = getTextBox().getEditorView().getMinimumWidth();
        Context context = getTextBox().getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        int clamp = MathUtils.clamp(sizeInfo.getContentWidth(context), minimumWidth, getOriginLimitWidth());
        if (clamp <= getTextBox().getEditorViewWidth()) {
            return false;
        }
        return getEditor().adjustEditorWidth(sizeInfo, clamp);
    }
}
