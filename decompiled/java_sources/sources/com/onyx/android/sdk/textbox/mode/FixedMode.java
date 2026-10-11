package com.onyx.android.sdk.textbox.mode;

import com.onyx.android.sdk.textbox.data.EditorLayoutInfo;
import com.onyx.android.sdk.textbox.data.TextBoxModeType;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\rH\u0016¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/mode/FixedMode;", "Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;", "textBox", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "(Lcom/onyx/android/sdk/textbox/widget/TextBoxView;)V", "getType", "Lcom/onyx/android/sdk/textbox/data/TextBoxModeType;", "onOrientationChanged", "", "isVertical", "", "resizeEditorHeight", "sizeInfo", "Lcom/onyx/android/sdk/textbox/data/EditorLayoutInfo;", "resizeEditorWidth", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class FixedMode extends TextBoxMode {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FixedMode(@NotNull TextBoxView textBox) {
        super(textBox);
        Intrinsics.checkNotNullParameter(textBox, "textBox");
    }

    @Override // com.onyx.android.sdk.textbox.mode.TextBoxMode
    @NotNull
    public TextBoxModeType getType() {
        return TextBoxModeType.FIXED;
    }

    @Override // com.onyx.android.sdk.textbox.mode.TextBoxMode
    public void onOrientationChanged(boolean isVertical) {
    }

    @Override // com.onyx.android.sdk.textbox.mode.TextBoxMode
    public boolean resizeEditorHeight(@NotNull EditorLayoutInfo sizeInfo) {
        Intrinsics.checkNotNullParameter(sizeInfo, "sizeInfo");
        return false;
    }

    @Override // com.onyx.android.sdk.textbox.mode.TextBoxMode
    public boolean resizeEditorWidth(@NotNull EditorLayoutInfo sizeInfo) {
        Intrinsics.checkNotNullParameter(sizeInfo, "sizeInfo");
        return false;
    }
}
