package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.toolbar.PhysicalMarkPenGroup;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorArgsPropertyLayout;

/* loaded from: classes9.dex */
public class PopupMarkPenBindingImpl extends PopupMarkPenBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57717u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57718v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57719q0;

    /* renamed from: t0 */
    public long f57720t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57718v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_title, 1);
        sparseIntArray.put(C10651R.id.divider, 2);
        sparseIntArray.put(C10651R.id.ll_mark_type_container, 3);
        sparseIntArray.put(C10651R.id.right_angle_type, 4);
        sparseIntArray.put(C10651R.id.round_corner_type, 5);
        sparseIntArray.put(C10651R.id.seek_bar_thickness, 6);
        sparseIntArray.put(C10651R.id.line_drawing_container, 7);
        sparseIntArray.put(C10651R.id.switch_line_drawing, 8);
        sparseIntArray.put(C10651R.id.tv_color_title, 9);
        sparseIntArray.put(C10651R.id.color_layout, 10);
        sparseIntArray.put(C10651R.id.add_to_pen_box, 11);
    }

    public PopupMarkPenBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 12, f57717u0, f57718v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57720t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57720t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57720t0 = 1L;
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

    public PopupMarkPenBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[11], (ShapeColorArgsPropertyLayout) objArr[10], (TintView) objArr[2], (FrameLayout) objArr[7], (LinearLayout) objArr[3], (PhysicalMarkPenGroup) objArr[4], (PhysicalMarkPenGroup) objArr[5], (StickSeekBarContainer) objArr[6], (TintSwitchCompat) objArr[8], (TintTextView) objArr[9], (MediumTextView) objArr[1]);
        this.f57720t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57719q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
