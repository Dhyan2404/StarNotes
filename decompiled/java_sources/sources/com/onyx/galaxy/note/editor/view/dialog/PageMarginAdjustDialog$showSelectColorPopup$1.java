package com.onyx.galaxy.note.editor.view.dialog;

import android.content.Context;
import android.view.View;
import android.widget.PopupWindow;
import com.onyx.android.sdk.base.data.DockPoint;
import com.onyx.android.sdk.base.data.WindowLocation;
import com.onyx.android.sdk.base.extension.PopupExtKt;
import com.onyx.android.sdk.base.extension.PopupLocator;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction;
import com.onyx.galaxy.note.editor.view.dialog.PageMarginAdjustDialog$showSelectColorPopup$1;
import com.onyx.galaxy.note.editor.view.popup.ColorPickPopup;
import com.onyx.galaxy.note.editor.view.popup.CommonDeletePopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0016¨\u0006\u000f"}, m61528d2 = {"com/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog$showSelectColorPopup$1", "Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;", "onColorSelected", "", "color", "", "showDeleteDialog", "Landroid/widget/PopupWindow;", "colorPickView", "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickView;", "cellView", "Landroid/view/View;", "showPopupWindow", "popup", "Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class PageMarginAdjustDialog$showSelectColorPopup$1 extends ShowColorPickerAction {

    /* renamed from: q */
    public final /* synthetic */ PageMarginAdjustDialog f59934q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageMarginAdjustDialog$showSelectColorPopup$1(PageMarginAdjustDialog pageMarginAdjustDialog, EditorBundle editorBundle, View view, View view2, int i, DockType dockType) {
        super(editorBundle, null, view, view2, i, dockType, null, 64, null);
        this.f59934q = pageMarginAdjustDialog;
        Intrinsics.checkNotNull(view);
        Intrinsics.checkNotNull(view2);
    }

    /* renamed from: v */
    public static final void m48197v(ColorPickView colorPickView) {
        Intrinsics.checkNotNullParameter(colorPickView, "$colorPickView");
        colorPickView.removeSelectedCell();
    }

    @Override // com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction, com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
    public void onColorSelected(int color) {
        this.f59934q.m48178o(color);
    }

    @Override // com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction, com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
    @NotNull
    public PopupWindow showDeleteDialog(@NotNull final ColorPickView colorPickView, @NotNull View cellView) {
        Intrinsics.checkNotNullParameter(colorPickView, "colorPickView");
        Intrinsics.checkNotNullParameter(cellView, "cellView");
        Context context = colorPickView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        CommonDeletePopup commonDeletePopup = new CommonDeletePopup(context, new Runnable() { // from class: com.sunia.HTREnginev2.wsk
            @Override // java.lang.Runnable
            public final void run() {
                PageMarginAdjustDialog$showSelectColorPopup$1.m48197v(ColorPickView.this);
            }
        });
        PopupLocator popupLocator = PopupLocator.INSTANCE;
        DockPoint dockPoint = DockPoint.TOP_CENTER;
        DockPoint dockPoint2 = DockPoint.BOTTOM_CENTER;
        View root = this.f59934q.getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        WindowLocation windowLocation = popupLocator.getWindowLocation((PopupLocator) commonDeletePopup, cellView, dockPoint, dockPoint2, 0, 0, root);
        View root2 = this.f59934q.getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root2, "getRoot(...)");
        popupLocator.show(commonDeletePopup, windowLocation, root2);
        return commonDeletePopup;
    }

    @Override // com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction
    public void showPopupWindow(@NotNull ColorPickPopup popup) {
        Intrinsics.checkNotNullParameter(popup, "popup");
        popup.setSelectColorTabOnly();
        popup.setOpaqueColorOnly();
        View rootView = this.f59934q.getBinding().getRoot().getRootView();
        Intrinsics.checkNotNullExpressionValue(rootView, "getRootView(...)");
        View root = this.f59934q.getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        PopupExtKt.showRightAsideAndTopAlign$default(popup, rootView, root, null, Integer.valueOf(-ResManager.INSTANCE.getDimensionPixelSize(C7384R.dimen.dp_10)), 4, null);
    }
}
