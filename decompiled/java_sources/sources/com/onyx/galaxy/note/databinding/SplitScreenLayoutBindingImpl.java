package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.drag.EditorViewDragLayout;

/* loaded from: classes9.dex */
public class SplitScreenLayoutBindingImpl extends SplitScreenLayoutBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57932t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57933u0;

    /* renamed from: q0 */
    public long f57934q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57933u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.editor_view_drag_layout, 1);
        sparseIntArray.put(C10651R.id.split_screen_divider, 2);
        sparseIntArray.put(C10651R.id.layout_vertical_switch_layout, 3);
        sparseIntArray.put(C10651R.id.iv_vertical_switch_layout, 4);
        sparseIntArray.put(C10651R.id.layout_vertical_switch_screen_type, 5);
        sparseIntArray.put(C10651R.id.iv_vertical_switch_screen_type, 6);
        sparseIntArray.put(C10651R.id.layout_vertical_drag_indicator, 7);
        sparseIntArray.put(C10651R.id.layout_horizontal_switch_layout, 8);
        sparseIntArray.put(C10651R.id.iv_horizontal_switch_layout, 9);
        sparseIntArray.put(C10651R.id.layout_horizontal_switch_screen_type, 10);
        sparseIntArray.put(C10651R.id.iv_horizontal_switch_screen_type, 11);
        sparseIntArray.put(C10651R.id.layout_horizontal_drag_indicator, 12);
        sparseIntArray.put(C10651R.id.editor_view_drag_layout2, 13);
    }

    public SplitScreenLayoutBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 14, f57932t0, f57933u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57934q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57934q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57934q0 = 1L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        return true;
    }

    public SplitScreenLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (FrameLayout) objArr[0], (EditorViewDragLayout) objArr[1], (EditorViewDragLayout) objArr[13], (TintImageView) objArr[9], (TintImageView) objArr[11], (TintImageView) objArr[4], (TintImageView) objArr[6], (FrameLayout) objArr[12], (FrameLayout) objArr[8], (FrameLayout) objArr[10], (FrameLayout) objArr[7], (FrameLayout) objArr[3], (FrameLayout) objArr[5], (TintRelativeLayout) objArr[2]);
        this.f57934q0 = -1L;
        this.container.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
