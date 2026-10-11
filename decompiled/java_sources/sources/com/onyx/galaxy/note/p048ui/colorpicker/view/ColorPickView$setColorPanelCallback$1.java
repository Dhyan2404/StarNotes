package com.onyx.galaxy.note.p048ui.colorpicker.view;

import android.content.Context;
import android.view.View;
import android.widget.PopupWindow;
import androidx.annotation.ColorInt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.replicator.colorset.data.ColorSetModel;
import com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickView;
import com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickView$setColorPanelCallback$1;
import com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback;
import com.onyx.galaxy.note.settings.data.PermissionRequestConst;
import com.onyx.galaxy.note.settings.utils.PermissionActionUtils;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, m61528d2 = {"com/onyx/galaxy/note/ui/colorpicker/view/ColorPickView$setColorPanelCallback$1", "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPickerCallback;", "onColorChange", "", "color", "", "onColorSelected", "startScreenCapture", "colorPanelView", "Lcom/onyx/galaxy/note/ui/colorpicker/view/ColorPanelView;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class ColorPickView$setColorPanelCallback$1 implements ColorPickerCallback {

    /* renamed from: e */
    public final /* synthetic */ ColorPickView f61981e;

    public ColorPickView$setColorPanelCallback$1(ColorPickView colorPickView) {
        this.f61981e = colorPickView;
    }

    /* renamed from: b */
    public static final void m51312b(ColorPickView this$0, boolean z) {
        ColorPickerCallback colorPickerCallback;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        colorPickerCallback = this$0.callback;
        if (colorPickerCallback != null) {
            ColorPanelView colorPanel = this$0.getBinding().colorPanel;
            Intrinsics.checkNotNullExpressionValue(colorPanel, "colorPanel");
            colorPickerCallback.startScreenCapture(colorPanel);
        }
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
    public void onColorChange(@ColorInt int color) {
        int i;
        i = this.f61981e.com.caverock.androidsvg.SVGParser.w java.lang.String;
        if (color != i) {
            this.f61981e.m51295I(color);
            this.f61981e.m51303r();
        }
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
    public void onColorSelected(int color) {
        ColorPickerCallback colorPickerCallback;
        colorPickerCallback = this.f61981e.callback;
        if (colorPickerCallback != null) {
            colorPickerCallback.onColorSelected(color);
        }
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
    public void onColorSetSelected(@NotNull ColorSetModel colorSetModel) {
        ColorPickerCallback.DefaultImpls.onColorSetSelected(this, colorSetModel);
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
    @Nullable
    public PopupWindow showDeleteDialog(@NotNull ColorPickView colorPickView, @NotNull View view) {
        return ColorPickerCallback.DefaultImpls.showDeleteDialog(this, colorPickView, view);
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
    public void showMessageDialog(@NotNull String str) {
        ColorPickerCallback.DefaultImpls.showMessageDialog(this, str);
    }

    @Override // com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickerCallback
    public void startScreenCapture(@NotNull ColorPanelView colorPanelView) {
        Intrinsics.checkNotNullParameter(colorPanelView, "colorPanelView");
        PermissionActionUtils permissionActionUtils = PermissionActionUtils.INSTANCE;
        Context context = this.f61981e.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        ResManager resManager = ResManager.INSTANCE;
        PermissionRequestConst permissionRequestConst = PermissionRequestConst.INSTANCE;
        Observable<Boolean> build = permissionActionUtils.requestFloatingWindowPermission(context, resManager.getStringSafely(permissionRequestConst.getPERMISSION_FLOATING_COLOR_PICKER_FUNCTION_NAME()), resManager.getStringSafely(permissionRequestConst.getPERMISSION_FLOATING_COLOR_PICKER_INTENT_NAME())).build();
        final ColorPickView colorPickView = this.f61981e;
        RxjavaKt.doOnNextIfTrue(build, new Consumer() { // from class: com.sunia.HTREnginev2.d2e
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                ColorPickView$setColorPanelCallback$1.m51312b(ColorPickView.this, ((Boolean) obj).booleanValue());
            }
        }).subscribe();
    }
}
