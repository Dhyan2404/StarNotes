package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class LayoutNotePageSettingsBindingImpl extends LayoutNotePageSettingsBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57391u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57392v0;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayout f57393q0;

    /* renamed from: t0 */
    public long f57394t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57392v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.page, 1);
        sparseIntArray.put(C10651R.id.change_template, 2);
        sparseIntArray.put(C10651R.id.change_new_page_template, 3);
        sparseIntArray.put(C10651R.id.whitespace_adjustment, 4);
        sparseIntArray.put(C10651R.id.guide_divider, 5);
        sparseIntArray.put(C10651R.id.ll_jump_page, 6);
        sparseIntArray.put(C10651R.id.page_edittext, 7);
        sparseIntArray.put(C10651R.id.page_suffix, 8);
        sparseIntArray.put(C10651R.id.add_to_outline, 9);
        sparseIntArray.put(C10651R.id.create_page_link, 10);
        sparseIntArray.put(C10651R.id.rotate_page, 11);
        sparseIntArray.put(C10651R.id.delete_current_page, 12);
        sparseIntArray.put(C10651R.id.page_recycle_bin, 13);
    }

    public LayoutNotePageSettingsBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 14, f57391u0, f57392v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57394t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57394t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57394t0 = 1L;
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

    public LayoutNotePageSettingsBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintFrameLayout) objArr[9], (TintFrameLayout) objArr[3], (TintFrameLayout) objArr[2], (TintFrameLayout) objArr[10], (FrameLayout) objArr[12], (View) objArr[5], (ConstraintLayout) objArr[6], (TintTextView) objArr[1], (TintEditText) objArr[7], (TintFrameLayout) objArr[13], (TintTextView) objArr[8], (TintFrameLayout) objArr[11], (TintFrameLayout) objArr[4]);
        this.f57394t0 = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f57393q0 = linearLayout;
        linearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
