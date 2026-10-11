package com.onyx.galaxy.note.editor.view.popup;

import android.graphics.Point;
import android.widget.FrameLayout;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.data.utils.JSONObjectOption;
import com.onyx.galaxy.note.databinding.LayoutPenBoxBinding;
import com.onyx.galaxy.note.editor.data.PenBoxLocationModel;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n¢\u0006\u0002\b\u0006"}, m61528d2 = {"<anonymous>", "", "dockType", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "locationPoint", "Landroid/graphics/Point;", "invoke"}, m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class PenBoxPopup$show$1 extends Lambda implements Function2<DockType, Point, Unit> {
    final /* synthetic */ PenBoxPopup this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PenBoxPopup$show$1(PenBoxPopup penBoxPopup) {
        super(2);
        this.this$0 = penBoxPopup;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(PenBoxPopup this$0) {
        LayoutPenBoxBinding layoutPenBoxBinding;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        layoutPenBoxBinding = this$0.binding;
        if (layoutPenBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding = null;
        }
        ViewKt.setViewVisibleOrInvisible(layoutPenBoxBinding.flyContent, true);
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull DockType dockType, @NotNull Point locationPoint) {
        PenBoxLocationModel penBoxLocationModel;
        PenBoxLocationModel penBoxLocationModel2;
        PenBoxLocationModel penBoxLocationModel3;
        LayoutPenBoxBinding layoutPenBoxBinding;
        LayoutPenBoxBinding layoutPenBoxBinding2;
        boolean z;
        LayoutPenBoxBinding layoutPenBoxBinding3;
        Intrinsics.checkNotNullParameter(dockType, "dockType");
        Intrinsics.checkNotNullParameter(locationPoint, "locationPoint");
        this.this$0.currentDockType = dockType;
        this.this$0.m49235P();
        this.this$0.m49234O();
        penBoxLocationModel = this.this$0.penBoxLocation;
        penBoxLocationModel.setLocationPoint(locationPoint);
        penBoxLocationModel2 = this.this$0.penBoxLocation;
        penBoxLocationModel2.setDockType(dockType);
        JSONObjectOption<PenBoxLocationModel> penBoxLocation = NoteConfigManager.INSTANCE.getPenBoxLocation();
        penBoxLocationModel3 = this.this$0.penBoxLocation;
        penBoxLocation.put(penBoxLocationModel3);
        layoutPenBoxBinding = this.this$0.binding;
        LayoutPenBoxBinding layoutPenBoxBinding4 = null;
        if (layoutPenBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutPenBoxBinding = null;
        }
        if (!ViewKt.isVisible(layoutPenBoxBinding.flyContent)) {
            z = this.this$0.isVisible;
            if (z) {
                layoutPenBoxBinding3 = this.this$0.binding;
                if (layoutPenBoxBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    layoutPenBoxBinding3 = null;
                }
                FrameLayout frameLayout = layoutPenBoxBinding3.flyContent;
                final PenBoxPopup penBoxPopup = this.this$0;
                frameLayout.postDelayed(new Runnable() { // from class: com.onyx.galaxy.note.editor.view.popup.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        PenBoxPopup$show$1.invoke$lambda$0(PenBoxPopup.this);
                    }
                }, 300L);
            }
        }
        layoutPenBoxBinding2 = this.this$0.binding;
        if (layoutPenBoxBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutPenBoxBinding4 = layoutPenBoxBinding2;
        }
        layoutPenBoxBinding4.listview.restoreScrollOffset();
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(DockType dockType, Point point) {
        invoke2(dockType, point);
        return Unit.INSTANCE;
    }
}
