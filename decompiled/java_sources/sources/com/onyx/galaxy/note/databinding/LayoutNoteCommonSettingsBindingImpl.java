package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class LayoutNoteCommonSettingsBindingImpl extends LayoutNoteCommonSettingsBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57383u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57384v0;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayout f57385q0;

    /* renamed from: t0 */
    public long f57386t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57384v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_common_settings_title, 1);
        sparseIntArray.put(C10651R.id.tv_common_settings_sub_title, 2);
        sparseIntArray.put(C10651R.id.toolbar, 3);
        sparseIntArray.put(C10651R.id.toolbar_top, 4);
        sparseIntArray.put(C10651R.id.toolbar_left, 5);
        sparseIntArray.put(C10651R.id.toolbar_right, 6);
        sparseIntArray.put(C10651R.id.toolbar_bottom, 7);
        sparseIntArray.put(C10651R.id.page_orientation, 8);
        sparseIntArray.put(C10651R.id.layout_type_horizontal, 9);
        sparseIntArray.put(C10651R.id.layout_type_vertical, 10);
        sparseIntArray.put(C10651R.id.page_number_panel_direction, 11);
        sparseIntArray.put(C10651R.id.page_number_panel_direction_start, 12);
        sparseIntArray.put(C10651R.id.page_number_panel_direction_end, 13);
        sparseIntArray.put(C10651R.id.item_single_paging, 14);
        sparseIntArray.put(C10651R.id.single_paging, 15);
        sparseIntArray.put(C10651R.id.item_two_page_browsing, 16);
        sparseIntArray.put(C10651R.id.two_page_browsing, 17);
        sparseIntArray.put(C10651R.id.item_adapt_stroke_width, 18);
        sparseIntArray.put(C10651R.id.tv_adapt_stroke_width, 19);
        sparseIntArray.put(C10651R.id.iv_adapt_stroke_width_guide, 20);
        sparseIntArray.put(C10651R.id.adapt_stroke_width, 21);
        sparseIntArray.put(C10651R.id.change_theme, 22);
        sparseIntArray.put(C10651R.id.more_settings, 23);
    }

    public LayoutNoteCommonSettingsBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 24, f57383u0, f57384v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57386t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57386t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57386t0 = 1L;
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

    public LayoutNoteCommonSettingsBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintSwitchCompat) objArr[21], (TintFrameLayout) objArr[22], (ConstraintLayout) objArr[18], (ConstraintLayout) objArr[14], (ConstraintLayout) objArr[16], (TintImageView) objArr[20], (TintImageView) objArr[9], (TintImageView) objArr[10], (TintFrameLayout) objArr[23], (ConstraintLayout) objArr[11], (TintImageView) objArr[13], (TintImageView) objArr[12], (ConstraintLayout) objArr[8], (TintSwitchCompat) objArr[15], (ConstraintLayout) objArr[3], (TintImageView) objArr[7], (TintImageView) objArr[5], (TintImageView) objArr[6], (TintImageView) objArr[4], (TintTextView) objArr[19], (TintTextView) objArr[2], (TintTextView) objArr[1], (TintSwitchCompat) objArr[17]);
        this.f57386t0 = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f57385q0 = linearLayout;
        linearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
