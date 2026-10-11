package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextInputEditTextView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class DialogUpdateTocEntryTitleBindingImpl extends DialogUpdateTocEntryTitleBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56550u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56551v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56552q0;

    /* renamed from: t0 */
    public long f56553t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56551v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_title, 1);
        sparseIntArray.put(C10651R.id.tv_cancel, 2);
        sparseIntArray.put(C10651R.id.tv_confirm, 3);
        sparseIntArray.put(C10651R.id.tv_desc, 4);
        sparseIntArray.put(C10651R.id.tv_toc_title, 5);
        sparseIntArray.put(C10651R.id.tv_name_size, 6);
        sparseIntArray.put(C10651R.id.title_input_layout, 7);
        sparseIntArray.put(C10651R.id.title_edit, 8);
        sparseIntArray.put(C10651R.id.tv_page_number_title, 9);
        sparseIntArray.put(C10651R.id.page_input_layout, 10);
        sparseIntArray.put(C10651R.id.page_edit, 11);
    }

    public DialogUpdateTocEntryTitleBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 12, f56550u0, f56551v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56553t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56553t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56553t0 = 1L;
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

    public DialogUpdateTocEntryTitleBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextInputEditTextView) objArr[11], (TintTextInputLayoutView) objArr[10], (TintTextInputEditTextView) objArr[8], (TintTextInputLayoutView) objArr[7], (TintTextView) objArr[2], (TintTextView) objArr[3], (TintTextView) objArr[4], (TintTextView) objArr[6], (TintTextView) objArr[9], (TintTextView) objArr[1], (TintTextView) objArr[5]);
        this.f56553t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56552q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
