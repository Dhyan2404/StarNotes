package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class FragmentShareResourceBindingImpl extends FragmentShareResourceBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56869u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56870v0;

    /* renamed from: q0 */
    @NonNull
    public final TintFrameLayout f56871q0;

    /* renamed from: t0 */
    public long f56872t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56870v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.lly_content, 1);
        sparseIntArray.put(C10651R.id.tv_cancel, 2);
        sparseIntArray.put(C10651R.id.lly_import, 3);
        sparseIntArray.put(C10651R.id.fly_loading, 4);
        sparseIntArray.put(C10651R.id.iv_loading, 5);
        sparseIntArray.put(C10651R.id.tv_import, 6);
        sparseIntArray.put(C10651R.id.tv_file_count, 7);
        sparseIntArray.put(C10651R.id.rv_content, 8);
        sparseIntArray.put(C10651R.id.tv_content_tips, 9);
        sparseIntArray.put(C10651R.id.lly_download_tips, 10);
        sparseIntArray.put(C10651R.id.tv_download_tips, 11);
    }

    public FragmentShareResourceBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 12, f56869u0, f56870v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56872t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56872t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56872t0 = 1L;
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

    public FragmentShareResourceBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintFrameLayout) objArr[4], (TintImageView) objArr[5], (TintLinearLayout) objArr[1], (TintLinearLayout) objArr[10], (TintFrameLayout) objArr[3], (TintRecycleView) objArr[8], (TintTextView) objArr[2], (TintTextView) objArr[9], (TintTextView) objArr[11], (TintTextView) objArr[7], (TintTextView) objArr[6]);
        this.f56872t0 = -1L;
        TintFrameLayout tintFrameLayout = (TintFrameLayout) objArr[0];
        this.f56871q0 = tintFrameLayout;
        tintFrameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
