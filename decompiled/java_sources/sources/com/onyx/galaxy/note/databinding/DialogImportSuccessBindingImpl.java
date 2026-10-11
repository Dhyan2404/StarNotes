package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Barrier;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.LabelLayout;

/* loaded from: classes9.dex */
public class DialogImportSuccessBindingImpl extends DialogImportSuccessBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56411u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56412v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56413q0;

    /* renamed from: t0 */
    public long f56414t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56412v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.imageView1, 1);
        sparseIntArray.put(C10651R.id.tv_success, 2);
        sparseIntArray.put(C10651R.id.tv_total_count, 3);
        sparseIntArray.put(C10651R.id.textView1, 4);
        sparseIntArray.put(C10651R.id.divider1, 5);
        sparseIntArray.put(C10651R.id.ll_all_note, 6);
        sparseIntArray.put(C10651R.id.ll_folders, 7);
        sparseIntArray.put(C10651R.id.ll_tags, 8);
        sparseIntArray.put(C10651R.id.barrier, 9);
        sparseIntArray.put(C10651R.id.btn_finish, 10);
    }

    public DialogImportSuccessBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 11, f56411u0, f56412v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56414t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56414t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56414t0 = 1L;
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

    public DialogImportSuccessBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (Barrier) objArr[9], (TintTextView) objArr[10], (TintView) objArr[5], (TintImageView) objArr[1], (LabelLayout) objArr[6], (LabelLayout) objArr[7], (LabelLayout) objArr[8], (TintTextView) objArr[4], (TintTextView) objArr[2], (TintTextView) objArr[3]);
        this.f56414t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56413q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
