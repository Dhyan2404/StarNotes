package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.p039ui.TouchModeMaxLengthEditText;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.MaxWidthLinearLayout;
import com.onyx.galaxy.note.editor.view.custom.TemplateThumbnailView;

/* loaded from: classes9.dex */
public class LayoutTemplateTitleOrientationContainerBindingImpl extends LayoutTemplateTitleOrientationContainerBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57499t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57500u0;

    /* renamed from: q0 */
    public long f57501q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57500u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.ll_cover_container, 1);
        sparseIntArray.put(C10651R.id.iv_title_thumb_cover, 2);
        sparseIntArray.put(C10651R.id.tv_cover_type, 3);
        sparseIntArray.put(C10651R.id.ll_paper_container, 4);
        sparseIntArray.put(C10651R.id.iv_title_thumb_paper, 5);
        sparseIntArray.put(C10651R.id.tv_paper_type, 6);
        sparseIntArray.put(C10651R.id.ll_note_setting_container, 7);
        sparseIntArray.put(C10651R.id.ll_params_container, 8);
        sparseIntArray.put(C10651R.id.et_note_name, 9);
        sparseIntArray.put(C10651R.id.ll_params_tag_container, 10);
        sparseIntArray.put(C10651R.id.tv_bench_mark_title, 11);
        sparseIntArray.put(C10651R.id.cl_tag_container, 12);
        sparseIntArray.put(C10651R.id.iv_bench_mark_add, 13);
        sparseIntArray.put(C10651R.id.view_params_tag_divider, 14);
        sparseIntArray.put(C10651R.id.ll_params_cover_container, 15);
        sparseIntArray.put(C10651R.id.switch_cover, 16);
        sparseIntArray.put(C10651R.id.view_params_cover_divider, 17);
        sparseIntArray.put(C10651R.id.ll_params_format_container, 18);
        sparseIntArray.put(C10651R.id.ll_orientation_size_container, 19);
        sparseIntArray.put(C10651R.id.tv_orientation_size, 20);
        sparseIntArray.put(C10651R.id.iv_format_arrow, 21);
    }

    public LayoutTemplateTitleOrientationContainerBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 22, f57499t0, f57500u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57501q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57501q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57501q0 = 1L;
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

    public LayoutTemplateTitleOrientationContainerBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RecyclerView) objArr[12], (TouchModeMaxLengthEditText) objArr[9], (TintImageView) objArr[13], (TintImageView) objArr[21], (TemplateThumbnailView) objArr[2], (TemplateThumbnailView) objArr[5], (TintConstraintLayout) objArr[1], (LinearLayout) objArr[7], (LinearLayout) objArr[19], (TintConstraintLayout) objArr[4], (MaxWidthLinearLayout) objArr[8], (FrameLayout) objArr[15], (FrameLayout) objArr[18], (LinearLayout) objArr[10], (TintSwitchCompat) objArr[16], (LinearLayout) objArr[0], (TintTextView) objArr[11], (MediumTextView) objArr[3], (TintTextView) objArr[20], (MediumTextView) objArr[6], (TintView) objArr[17], (View) objArr[14]);
        this.f57501q0 = -1L;
        this.templateCreateLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
