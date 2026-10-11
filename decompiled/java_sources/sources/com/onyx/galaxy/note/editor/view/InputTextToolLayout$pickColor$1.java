package com.onyx.galaxy.note.editor.view;

import android.util.Size;
import android.view.View;
import android.widget.PopupWindow;
import com.onyx.android.sdk.base.extension.IntList;
import com.onyx.android.sdk.base.extension.TypeExtKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.colorset.data.ColorSetModel;
import com.onyx.android.sdk.textbox.event.EditorRestartInputEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.LayoutInputTextToolBinding;
import com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.InputTextToolLayout;
import com.onyx.galaxy.note.editor.view.InputTextToolLayout$pickColor$1;
import com.onyx.galaxy.note.editor.view.popup.ColorPickPopup;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\f"}, m61528d2 = {"com/onyx/galaxy/note/editor/view/InputTextToolLayout$pickColor$1", "Lcom/onyx/galaxy/note/editor/action/pen/ShowColorPickerAction;", "onColorSelected", "", "color", "", "onColorSetSelected", "colorSet", "Lcom/onyx/android/sdk/replicator/colorset/data/ColorSetModel;", "showPopupWindow", "popup", "Lcom/onyx/galaxy/note/editor/view/popup/ColorPickPopup;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class InputTextToolLayout$pickColor$1 extends ShowColorPickerAction {

    /* renamed from: q */
    public final /* synthetic */ ShapeColorPropertyLayout f59316q;

    /* renamed from: r */
    public final /* synthetic */ int f59317r;

    /* renamed from: s */
    public final /* synthetic */ InputTextToolLayout f59318s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InputTextToolLayout$pickColor$1(ShapeColorPropertyLayout shapeColorPropertyLayout, int i, int i2, InputTextToolLayout inputTextToolLayout, EditorBundle editorBundle, ShapeToolType shapeToolType, ShapeColorPropertyLayout shapeColorPropertyLayout2, List<Integer> list) {
        super(editorBundle, shapeToolType, shapeColorPropertyLayout2, shapeColorPropertyLayout, i, null, list, 32, null);
        this.f59316q = shapeColorPropertyLayout;
        this.f59317r = i2;
        this.f59318s = inputTextToolLayout;
        Intrinsics.checkNotNull(shapeColorPropertyLayout2);
    }

    /* renamed from: w */
    public static final void m47384w(ColorPickPopup popup, final InputTextToolLayout this$0) {
        LayoutInputTextToolBinding layoutInputTextToolBinding;
        LayoutInputTextToolBinding layoutInputTextToolBinding2;
        LayoutInputTextToolBinding layoutInputTextToolBinding3;
        Intrinsics.checkNotNullParameter(popup, "$popup");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        View contentView = popup.getContentView();
        Intrinsics.checkNotNullExpressionValue(contentView, "getContentView(...)");
        LayoutInputTextToolBinding layoutInputTextToolBinding4 = null;
        Size measureSize$default = ViewKt.getMeasureSize$default(contentView, 0, 0, 3, null);
        layoutInputTextToolBinding = this$0.binding;
        if (layoutInputTextToolBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding = null;
        }
        ShapeColorPropertyLayout colorLayout = layoutInputTextToolBinding.colorLayout;
        Intrinsics.checkNotNullExpressionValue(colorLayout, "colorLayout");
        Size measureSize$default2 = ViewKt.getMeasureSize$default(colorLayout, 0, 0, 3, null);
        layoutInputTextToolBinding2 = this$0.binding;
        if (layoutInputTextToolBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding2 = null;
        }
        ShapeColorPropertyLayout colorLayout2 = layoutInputTextToolBinding2.colorLayout;
        Intrinsics.checkNotNullExpressionValue(colorLayout2, "colorLayout");
        int[] locationOnScreen = ViewKt.getLocationOnScreen(colorLayout2);
        popup.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.sunia.HTREnginev2.nli
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                InputTextToolLayout$pickColor$1.m47385x(InputTextToolLayout.this);
            }
        });
        layoutInputTextToolBinding3 = this$0.binding;
        if (layoutInputTextToolBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutInputTextToolBinding4 = layoutInputTextToolBinding3;
        }
        ShapeColorPropertyLayout colorLayout3 = layoutInputTextToolBinding4.colorLayout;
        Intrinsics.checkNotNullExpressionValue(colorLayout3, "colorLayout");
        popup.showAtLocation(colorLayout3, 0, locationOnScreen[0], (locationOnScreen[1] - measureSize$default.getHeight()) - measureSize$default2.getHeight());
    }

    /* renamed from: x */
    public static final void m47385x(InputTextToolLayout this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m47379z(new EditorRestartInputEvent());
    }

    @Override // com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction, com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
    public void onColorSelected(int color) {
        this.f59316q.updateColorView(color, this.f59317r);
        this.f59318s.m47366m(color);
    }

    @Override // com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction, com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
    public void onColorSetSelected(@NotNull ColorSetModel colorSet) {
        Intrinsics.checkNotNullParameter(colorSet, "colorSet");
        IntList intList = TypeExtKt.toIntList(colorSet.getColors());
        Integer num = intList.get(this.f59317r);
        Intrinsics.checkNotNullExpressionValue(num, "get(...)");
        int intValue = num.intValue();
        this.f59316q.updateColorView(intList, this.f59317r);
        this.f59318s.m47366m(intValue);
    }

    @Override // com.onyx.galaxy.note.editor.action.pen.ShowColorPickerAction
    public void showPopupWindow(@NotNull final ColorPickPopup popup) {
        LayoutInputTextToolBinding layoutInputTextToolBinding;
        Intrinsics.checkNotNullParameter(popup, "popup");
        popup.setInputMethodMode(2);
        layoutInputTextToolBinding = this.f59318s.binding;
        if (layoutInputTextToolBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutInputTextToolBinding = null;
        }
        ShapeColorPropertyLayout shapeColorPropertyLayout = layoutInputTextToolBinding.colorLayout;
        final InputTextToolLayout inputTextToolLayout = this.f59318s;
        shapeColorPropertyLayout.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.oli
            @Override // java.lang.Runnable
            public final void run() {
                InputTextToolLayout$pickColor$1.m47384w(ColorPickPopup.this, inputTextToolLayout);
            }
        }, ResManager.INSTANCE.getInteger(C10651R.integer.show_color_picker_delay_time));
    }
}
