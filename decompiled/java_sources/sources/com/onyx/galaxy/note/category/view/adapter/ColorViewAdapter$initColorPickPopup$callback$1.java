package com.onyx.galaxy.note.category.view.adapter;

import android.content.Context;
import android.view.View;
import android.widget.PopupWindow;
import androidx.annotation.ColorInt;
import com.onyx.android.sdk.base.data.DockPoint;
import com.onyx.android.sdk.base.extension.PopupLocator;
import com.onyx.android.sdk.replicator.colorset.data.ColorSetModel;
import com.onyx.galaxy.note.category.view.adapter.ColorViewAdapter$initColorPickPopup$callback$1;
import com.onyx.galaxy.note.editor.view.popup.CommonDeletePopup;
import com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPanelView;
import com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickView;
import com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00009\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H\u0016¨\u0006\u0012"}, m61528d2 = {"com/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$initColorPickPopup$callback$1", "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;", "onColorSelected", "", "color", "", "onColorSetSelected", "colorSet", "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;", "showDeleteDialog", "Landroid/widget/PopupWindow;", "colorPickView", "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;", "cellView", "Landroid/view/View;", "startScreenCapture", "colorPanelView", "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ColorViewAdapter$initColorPickPopup$callback$1 implements ColorPickerCallback {

    /* renamed from: e */
    public final /* synthetic */ ColorViewAdapter f55124e;

    public ColorViewAdapter$initColorPickPopup$callback$1(ColorViewAdapter colorViewAdapter) {
        this.f55124e = colorViewAdapter;
    }

    /* renamed from: b */
    public static final void m43981b(ColorPickView colorPickView) {
        Intrinsics.checkNotNullParameter(colorPickView, "$colorPickView");
        colorPickView.removeSelectedCell();
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
    public void onColorChange(@ColorInt int i) {
        ColorPickerCallback.DefaultImpls.onColorChange(this, i);
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
    public void onColorSelected(int color) {
        ColorViewAdapter colorViewAdapter = this.f55124e;
        colorViewAdapter.m43971D(color, colorViewAdapter.getSelectedPosition());
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
    public void onColorSetSelected(@NotNull ColorSetModel colorSet) {
        Intrinsics.checkNotNullParameter(colorSet, "colorSet");
        this.f55124e.submitList(colorSet.getColors());
        ColorViewAdapter colorViewAdapter = this.f55124e;
        colorViewAdapter.m43971D(colorViewAdapter.getItems().get(this.f55124e.getSelectedPosition()).intValue(), this.f55124e.getSelectedPosition());
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
    @NotNull
    public PopupWindow showDeleteDialog(@NotNull final ColorPickView colorPickView, @NotNull View cellView) {
        Intrinsics.checkNotNullParameter(colorPickView, "colorPickView");
        Intrinsics.checkNotNullParameter(cellView, "cellView");
        Context context = colorPickView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        CommonDeletePopup commonDeletePopup = new CommonDeletePopup(context, new Runnable() { // from class: com.sunia.HTREnginev2.e3e
            @Override // java.lang.Runnable
            public final void run() {
                ColorViewAdapter$initColorPickPopup$callback$1.m43981b(ColorPickView.this);
            }
        });
        View rootView = this.f55124e.getRecyclerView().getRootView();
        PopupLocator popupLocator = PopupLocator.INSTANCE;
        DockPoint dockPoint = DockPoint.TOP_CENTER;
        DockPoint dockPoint2 = DockPoint.BOTTOM_CENTER;
        Intrinsics.checkNotNull(rootView);
        popupLocator.show(commonDeletePopup, popupLocator.getWindowLocation((PopupLocator) commonDeletePopup, cellView, dockPoint, dockPoint2, 0, 0, rootView), rootView);
        return commonDeletePopup;
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
    public void showMessageDialog(@NotNull String str) {
        ColorPickerCallback.DefaultImpls.showMessageDialog(this, str);
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
    public void startScreenCapture(@NotNull ColorPanelView colorPanelView) {
        Intrinsics.checkNotNullParameter(colorPanelView, "colorPanelView");
        this.f55124e.m43970B(colorPanelView);
    }
}
