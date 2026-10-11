package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.github.chrisbanes.photoview.PhotoView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class DialogViewImageBindingImpl extends DialogViewImageBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56554u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56555v0;

    /* renamed from: q0 */
    @NonNull
    public final RelativeLayout f56556q0;

    /* renamed from: t0 */
    public long f56557t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56555v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.image, 1);
        sparseIntArray.put(C10651R.id.percent, 2);
        sparseIntArray.put(C10651R.id.scale_restore, 3);
        sparseIntArray.put(C10651R.id.scale_down, 4);
        sparseIntArray.put(C10651R.id.scale_up, 5);
        sparseIntArray.put(C10651R.id.quit, 6);
    }

    public DialogViewImageBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f56554u0, f56555v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56557t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56557t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56557t0 = 1L;
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

    public DialogViewImageBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (PhotoView) objArr[1], (TintTextView) objArr[2], (TintTextView) objArr[6], (TintImageView) objArr[4], (TintImageView) objArr[3], (TintImageView) objArr[5]);
        this.f56557t0 = -1L;
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.f56556q0 = relativeLayout;
        relativeLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
