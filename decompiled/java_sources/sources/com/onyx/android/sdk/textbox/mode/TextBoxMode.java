package com.onyx.android.sdk.textbox.mode;

import android.content.Context;
import androidx.core.math.MathUtils;
import com.onyx.android.sdk.textbox.data.EditorLayoutInfo;
import com.onyx.android.sdk.textbox.data.TextBoxModeType;
import com.onyx.android.sdk.textbox.databinding.LayoutTextBoxBinding;
import com.onyx.android.sdk.textbox.editor.IEditor;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010'\u001a\u00020\"¢\u0006\u0004\b(\u0010)J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\b\u0010\u0007\u001a\u00020\u0006H&J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH&J \u0010\u0010\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0016J\b\u0010\u0012\u001a\u00020\u0011H\u0016J\b\u0010\u0013\u001a\u00020\u0011H\u0016J\b\u0010\u0014\u001a\u00020\rH\u0016J\b\u0010\u0015\u001a\u00020\rH\u0016J\u0010\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\rH\u0016J\u0010\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\rH\u0016J\u0010\u0010\u001c\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016J\u000e\u0010\u001d\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\u001aJ\u0010\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016J\u000e\u0010\u001f\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\u001aJ\u0006\u0010 \u001a\u00020\rJ\u0006\u0010!\u001a\u00020\rR\u0017\u0010'\u001a\u00020\"8\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;", "", "Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;", "getViewBinding", "Lcom/onyx/android/sdk/textbox/editor/IEditor;", "getEditor", "Lcom/onyx/android/sdk/textbox/data/TextBoxModeType;", "getType", "", "isVertical", "", "onOrientationChanged", "newAdded", "", "width", "height", "resetMinimumSize", "", "getEditorContentWidth", "getEditorContentHeight", "getRenderWidth", "getRenderHeight", "newWidth", "canUpdateEditorWidth", "newHeight", "canUpdateEditorHeight", "Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;", "sizeInfo", "resizeEditorWidth", "shouldResizeWidth", "resizeEditorHeight", "shouldResizeHeight", "getOriginLimitWidth", "getOriginLimitHeight", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "a", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "getTextBox", "()Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "textBox", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public abstract class TextBoxMode {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final TextBoxView textBox;

    public TextBoxMode(@NotNull TextBoxView textBox) {
        Intrinsics.checkNotNullParameter(textBox, "textBox");
        this.textBox = textBox;
    }

    public boolean canUpdateEditorHeight(int newHeight) {
        return ((float) newHeight) > this.textBox.getEditorMinHeight();
    }

    public boolean canUpdateEditorWidth(int newWidth) {
        return ((float) newWidth) > this.textBox.getEditorMinWidth();
    }

    @NotNull
    public final IEditor getEditor() {
        return this.textBox.getEditor();
    }

    public float getEditorContentHeight() {
        return this.textBox.getEditorViewHeight();
    }

    public float getEditorContentWidth() {
        return this.textBox.getEditorViewWidth();
    }

    public final int getOriginLimitHeight() {
        return (int) (getEditor().getLimitRect().height() / this.textBox.getScaleY());
    }

    public final int getOriginLimitWidth() {
        return (int) (getEditor().getLimitRect().width() / this.textBox.getScaleX());
    }

    public int getRenderHeight() {
        return this.textBox.getEditorScaleHeightInt();
    }

    public int getRenderWidth() {
        return this.textBox.getEditorScaleWidthInt();
    }

    @NotNull
    public final TextBoxView getTextBox() {
        return this.textBox;
    }

    @NotNull
    public abstract TextBoxModeType getType();

    @NotNull
    public final LayoutTextBoxBinding getViewBinding() {
        return this.textBox.getViewBinding();
    }

    public abstract void onOrientationChanged(boolean isVertical);

    public void resetMinimumSize(boolean newAdded, int width, int height) {
        this.textBox.getEditorView().setMinimumHeight(0);
        this.textBox.getEditorView().setMinimumWidth(0);
    }

    public boolean resizeEditorHeight(@NotNull EditorLayoutInfo sizeInfo) {
        Intrinsics.checkNotNullParameter(sizeInfo, "sizeInfo");
        if (!shouldResizeHeight(sizeInfo)) {
            return false;
        }
        int minimumHeight = this.textBox.getEditorView().getMinimumHeight();
        Context context = this.textBox.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        return getEditor().adjustEditorHeight(sizeInfo, MathUtils.clamp(sizeInfo.getContentHeight(context), minimumHeight, getOriginLimitHeight()));
    }

    public boolean resizeEditorWidth(@NotNull EditorLayoutInfo sizeInfo) {
        Intrinsics.checkNotNullParameter(sizeInfo, "sizeInfo");
        if (!shouldResizeWidth(sizeInfo)) {
            return false;
        }
        int minimumWidth = this.textBox.getEditorView().getMinimumWidth();
        Context context = this.textBox.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        return getEditor().adjustEditorWidth(sizeInfo, MathUtils.clamp(sizeInfo.getContentWidth(context), minimumWidth, getOriginLimitWidth()));
    }

    public final boolean shouldResizeHeight(@NotNull EditorLayoutInfo sizeInfo) {
        Intrinsics.checkNotNullParameter(sizeInfo, "sizeInfo");
        if (getEditor().getLimitRect().isEmpty()) {
            return false;
        }
        Context context = this.textBox.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        return sizeInfo.getContentHeight(context) > 0;
    }

    public final boolean shouldResizeWidth(@NotNull EditorLayoutInfo sizeInfo) {
        Intrinsics.checkNotNullParameter(sizeInfo, "sizeInfo");
        if (getEditor().getLimitRect().isEmpty()) {
            return false;
        }
        Context context = this.textBox.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        return sizeInfo.getContentWidth(context) > 0;
    }
}
