package com.onyx.galaxy.note.editor.view.popup;

import android.app.Activity;
import android.view.View;
import androidx.appcompat.widget.ActivityChooserModel;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.onyx.android.sdk.extension.ViewKt;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.galaxy.note.common.view.BasePopupWindow;
import com.onyx.galaxy.note.databinding.PopupLineStyleSelectBinding;
import com.onyx.galaxy.note.editor.view.popup.LineStyleSelectPopup;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.editor.viewmodel.PenViewModel;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\f\u001a\u00020\n\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\f\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/popup/LineStyleSelectPopup;", "Lcom/onyx/galaxy/note/common/view/BasePopupWindow;", "", "onShow", GoogleApiAvailabilityLight.f29016b, "r", "Landroid/app/Activity;", "q", "Landroid/app/Activity;", ActivityChooserModel.f1429r, "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;", "penViewModel", "Lcom/onyx/galaxy/note/databinding/PopupLineStyleSelectBinding;", "s", "Lcom/onyx/galaxy/note/databinding/PopupLineStyleSelectBinding;", "binding", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", Constants.CONSTRUCTOR_NAME, "(Landroid/app/Activity;Lcom/onyx/galaxy/note/editor/viewmodel/PenViewModel;Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LineStyleSelectPopup extends BasePopupWindow {

    /* renamed from: q, reason: from kotlin metadata */
    @NotNull
    public final Activity activity;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public final PenViewModel penViewModel;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final PopupLineStyleSelectBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LineStyleSelectPopup(@NotNull Activity activity, @NotNull PenViewModel penViewModel, @NotNull DockType dockType) {
        super(activity, dockType);
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(penViewModel, "penViewModel");
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        this.activity = activity;
        this.penViewModel = penViewModel;
        PopupLineStyleSelectBinding inflate = PopupLineStyleSelectBinding.inflate(activity.getLayoutInflater());
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        setOutsideTouchable(true);
        setFocusable(true);
        TintLinearLayout root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        setContentView(root);
    }

    /* renamed from: o */
    public static final void m49005o(LineStyleSelectPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.penViewModel.getLineStyleType().setValue(0);
        this$0.m49009r();
    }

    /* renamed from: p */
    public static final void m49006p(LineStyleSelectPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.penViewModel.getLineStyleType().setValue(1);
        this$0.m49009r();
    }

    /* renamed from: q */
    public static final void m49007q(LineStyleSelectPopup this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.penViewModel.getLineStyleType().setValue(2);
        this$0.m49009r();
    }

    /* renamed from: n */
    public final void m49008n() {
        m49009r();
        TintImageView solidStyle = this.binding.lineStyle.solidStyle;
        Intrinsics.checkNotNullExpressionValue(solidStyle, "solidStyle");
        ViewKt.click$default(solidStyle, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.qyi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LineStyleSelectPopup.m49005o(LineStyleSelectPopup.this, view);
            }
        }, 1, null);
        TintImageView dashStyle = this.binding.lineStyle.dashStyle;
        Intrinsics.checkNotNullExpressionValue(dashStyle, "dashStyle");
        ViewKt.click$default(dashStyle, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.ryi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LineStyleSelectPopup.m49006p(LineStyleSelectPopup.this, view);
            }
        }, 1, null);
        TintImageView dotStyle = this.binding.lineStyle.dotStyle;
        Intrinsics.checkNotNullExpressionValue(dotStyle, "dotStyle");
        ViewKt.click$default(dotStyle, 0L, new View.OnClickListener() { // from class: com.sunia.HTREnginev2.syi
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LineStyleSelectPopup.m49007q(LineStyleSelectPopup.this, view);
            }
        }, 1, null);
    }

    @Override // com.onyx.galaxy.note.common.view.BasePopupWindow
    public void onShow() {
        super.onShow();
        m49008n();
    }

    /* renamed from: r */
    public final void m49009r() {
        Integer value = this.penViewModel.getLineStyleType().getValue();
        if (value == null) {
            value = 0;
        }
        int intValue = value.intValue();
        this.binding.lineStyle.solidStyle.setSelected(intValue == 0);
        this.binding.lineStyle.dashStyle.setSelected(intValue == 1);
        this.binding.lineStyle.dotStyle.setSelected(intValue == 2);
    }
}
