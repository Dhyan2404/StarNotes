package com.onyx.galaxy.note.editor.view.toolbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.data.PreviewTouchDataBean;
import com.onyx.galaxy.note.editor.data.ShapeToolType;
import com.onyx.galaxy.note.editor.view.IShapeViewOpt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0013\b\u0016\u0012\b\u0010,\u001a\u0004\u0018\u00010+¢\u0006\u0004\b-\u0010.B\u001d\b\u0016\u0012\b\u0010,\u001a\u0004\u0018\u00010+\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b-\u0010/B%\b\u0016\u0012\b\u0010,\u001a\u0004\u0018\u00010+\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u00100\u001a\u00020\b¢\u0006\u0004\b-\u00101J\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\b\u0010\u0007\u001a\u00020\u0005H\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\u0016\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fJ\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\bH\u0016J\u0010\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0018\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0016J\b\u0010\u0018\u001a\u00020\nH\u0016J\b\u0010\u0019\u001a\u00020\u0014H\u0016J\b\u0010\u001a\u001a\u00020\u0014H\u0016J\u0010\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0014H\u0016J\u000e\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001dR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b!\u0010\"R\"\u0010%\u001a\u00020$8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*¨\u00062"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconGroup;", "Landroid/widget/LinearLayout;", "Lcom/onyx/galaxy/note/editor/view/IShapeViewOpt;", "Landroid/util/AttributeSet;", "attrs", "", "initParams", "initView", "", "getLayoutRes", "Lcom/onyx/galaxy/note/editor/data/ShapeToolType;", "shapeToolType", "Lcom/onyx/galaxy/note/editor/data/PreviewTouchDataBean;", "previewTouchDataBean", "setShapeData", "color", "setHintColor", "Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;", "dockType", "setDockType", "", "isSelected", "isFromClick", "setViewSelect", "getViewShapeType", "isViewSelected", "isVipType", "enable", "enableShapeView", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "penArgs", "onPenArgsChanged", "Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;", "e", "Lcom/onyx/galaxy/note/editor/view/toolbar/PenShapeView;", "penShapeView", "Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;", "shapeToolIconView", "Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;", "getShapeToolIconView", "()Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;", "setShapeToolIconView", "(Lcom/onyx/galaxy/note/editor/view/toolbar/PhysicalShapeIconView;)V", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public class PhysicalShapeIconGroup extends LinearLayout implements IShapeViewOpt {

    /* renamed from: e, reason: from kotlin metadata */
    public PenShapeView penShapeView;
    public PhysicalShapeIconView shapeToolIconView;

    public PhysicalShapeIconGroup(@Nullable Context context) {
        this(context, null);
    }

    public void enableShapeView(boolean enable) {
    }

    public int getLayoutRes() {
        return C10651R.layout.layout_physical_shape_group;
    }

    @NotNull
    public final PhysicalShapeIconView getShapeToolIconView() {
        PhysicalShapeIconView physicalShapeIconView = this.shapeToolIconView;
        if (physicalShapeIconView != null) {
            return physicalShapeIconView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("shapeToolIconView");
        return null;
    }

    @Override // com.onyx.galaxy.note.editor.view.IShapeViewOpt
    @NotNull
    public ShapeToolType getViewShapeType() {
        return getShapeToolIconView().getViewShapeType();
    }

    public void initParams(@Nullable AttributeSet attrs) {
    }

    public void initView() {
        View inflate = LayoutInflater.from(getContext()).inflate(getLayoutRes(), (ViewGroup) this, true);
        View findViewById = inflate.findViewById(C10651R.id.ivShape);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        this.penShapeView = (PenShapeView) findViewById;
        View findViewById2 = inflate.findViewById(C10651R.id.phyShapeTool);
        Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById(...)");
        setShapeToolIconView((PhysicalShapeIconView) findViewById2);
    }

    @Override // com.onyx.galaxy.note.editor.view.IShapeViewOpt
    /* renamed from: isViewSelected */
    public boolean getIsViewSelected() {
        return getShapeToolIconView().getIsViewSelected();
    }

    @Override // com.onyx.galaxy.note.editor.view.IShapeViewOpt
    public boolean isVipType() {
        return getShapeToolIconView().isVipType();
    }

    public final void onPenArgsChanged(@NotNull PenArgs penArgs) {
        Intrinsics.checkNotNullParameter(penArgs, "penArgs");
        PenShapeView penShapeView = this.penShapeView;
        if (penShapeView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penShapeView");
            penShapeView = null;
        }
        penShapeView.onPenArgsChanged(penArgs);
        getShapeToolIconView().onPenArgsChanged(penArgs);
    }

    @Override // com.onyx.galaxy.note.editor.view.IShapeViewOpt
    public void setDockType(@NotNull DockType dockType) {
        Intrinsics.checkNotNullParameter(dockType, "dockType");
    }

    @Override // com.onyx.galaxy.note.editor.view.IShapeViewOpt
    public void setHintColor(int color) {
        getShapeToolIconView().setHintColor(color);
    }

    public final void setShapeData(@NotNull ShapeToolType shapeToolType, @NotNull PreviewTouchDataBean previewTouchDataBean) {
        Intrinsics.checkNotNullParameter(shapeToolType, "shapeToolType");
        Intrinsics.checkNotNullParameter(previewTouchDataBean, "previewTouchDataBean");
        getShapeToolIconView().setShapeTool(shapeToolType);
        PenShapeView penShapeView = this.penShapeView;
        if (penShapeView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penShapeView");
            penShapeView = null;
        }
        penShapeView.initShapeData(shapeToolType, previewTouchDataBean);
    }

    public final void setShapeToolIconView(@NotNull PhysicalShapeIconView physicalShapeIconView) {
        Intrinsics.checkNotNullParameter(physicalShapeIconView, "<set-?>");
        this.shapeToolIconView = physicalShapeIconView;
    }

    @Override // com.onyx.galaxy.note.editor.view.IShapeViewOpt
    public void setViewSelect(boolean isSelected, boolean isFromClick) {
        getShapeToolIconView().setViewSelect(isSelected, isFromClick);
        PenShapeView penShapeView = this.penShapeView;
        if (penShapeView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("penShapeView");
            penShapeView = null;
        }
        penShapeView.setViewSelect(isSelected, isFromClick);
    }

    public PhysicalShapeIconGroup(@Nullable Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public PhysicalShapeIconGroup(@Nullable Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        initParams(attributeSet);
        initView();
    }
}
