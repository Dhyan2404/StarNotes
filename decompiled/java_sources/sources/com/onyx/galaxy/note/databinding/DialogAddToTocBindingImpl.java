package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextInputEditTextView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class DialogAddToTocBindingImpl extends DialogAddToTocBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56317u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56318v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56319q0;

    /* renamed from: t0 */
    public long f56320t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56318v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.content_view, 1);
        sparseIntArray.put(C10651R.id.tv_title, 2);
        sparseIntArray.put(C10651R.id.tv_cancel, 3);
        sparseIntArray.put(C10651R.id.tv_confirm, 4);
        sparseIntArray.put(C10651R.id.tv_desc, 5);
        sparseIntArray.put(C10651R.id.tv_toc_title, 6);
        sparseIntArray.put(C10651R.id.tv_name_size, 7);
        sparseIntArray.put(C10651R.id.title_input_layout, 8);
        sparseIntArray.put(C10651R.id.title_edit, 9);
        sparseIntArray.put(C10651R.id.tv_page_number_title, 10);
        sparseIntArray.put(C10651R.id.page_input_layout, 11);
        sparseIntArray.put(C10651R.id.page_edit, 12);
    }

    public DialogAddToTocBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 13, f56317u0, f56318v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56320t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56320t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56320t0 = 1L;
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

    public DialogAddToTocBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintConstraintLayout) objArr[1], (TintTextInputEditTextView) objArr[12], (TintTextInputLayoutView) objArr[11], (TintTextInputEditTextView) objArr[9], (TintTextInputLayoutView) objArr[8], (TintTextView) objArr[3], (MediumTextView) objArr[4], (TintTextView) objArr[5], (TintTextView) objArr[7], (TintTextView) objArr[10], (MediumTextView) objArr[2], (TintTextView) objArr[6]);
        this.f56320t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56319q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
