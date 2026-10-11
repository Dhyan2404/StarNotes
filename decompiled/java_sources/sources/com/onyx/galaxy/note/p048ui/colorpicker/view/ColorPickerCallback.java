package com.onyx.galaxy.note.p048ui.colorpicker.view;

import android.view.View;
import android.widget.PopupWindow;
import androidx.annotation.ColorInt;
import com.onyx.android.sdk.replicator.colorset.data.ColorSetModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH\u0016J\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H\u0016¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;", "", "onColorChange", "", "color", "", "onColorSelected", "onColorSetSelected", "colorSet", "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;", "showDeleteDialog", "Landroid/widget/PopupWindow;", "colorPickView", "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;", "cellView", "Landroid/view/View;", "showMessageDialog", "message", "", "startScreenCapture", "colorPanelView", "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public interface ColorPickerCallback {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public static final class DefaultImpls {
        public static void onColorChange(@NotNull ColorPickerCallback colorPickerCallback, @ColorInt int i) {
        }

        public static void onColorSelected(@NotNull ColorPickerCallback colorPickerCallback, @ColorInt int i) {
        }

        public static void onColorSetSelected(@NotNull ColorPickerCallback colorPickerCallback, @NotNull ColorSetModel colorSet) {
            Intrinsics.checkNotNullParameter(colorSet, "colorSet");
        }

        @Nullable
        public static PopupWindow showDeleteDialog(@NotNull ColorPickerCallback colorPickerCallback, @NotNull ColorPickView colorPickView, @NotNull View cellView) {
            Intrinsics.checkNotNullParameter(colorPickView, "colorPickView");
            Intrinsics.checkNotNullParameter(cellView, "cellView");
            return null;
        }

        public static void showMessageDialog(@NotNull ColorPickerCallback colorPickerCallback, @NotNull String message) {
            Intrinsics.checkNotNullParameter(message, "message");
        }

        public static void startScreenCapture(@NotNull ColorPickerCallback colorPickerCallback, @NotNull ColorPanelView colorPanelView) {
            Intrinsics.checkNotNullParameter(colorPanelView, "colorPanelView");
        }
    }

    void onColorChange(@ColorInt int color);

    void onColorSelected(@ColorInt int color);

    void onColorSetSelected(@NotNull ColorSetModel colorSet);

    @Nullable
    PopupWindow showDeleteDialog(@NotNull ColorPickView colorPickView, @NotNull View cellView);

    void showMessageDialog(@NotNull String message);

    void startScreenCapture(@NotNull ColorPanelView colorPanelView);
}
