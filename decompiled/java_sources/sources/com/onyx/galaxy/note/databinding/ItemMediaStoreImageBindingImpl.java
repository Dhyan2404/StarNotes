package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.RoundImageView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemMediaStoreImageBindingImpl extends ItemMediaStoreImageBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57068t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57069u0;

    /* renamed from: q0 */
    public long f57070q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57069u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.image, 1);
    }

    public ItemMediaStoreImageBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 2, f57068t0, f57069u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57070q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57070q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57070q0 = 1L;
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

    public ItemMediaStoreImageBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RoundImageView) objArr[1], (RelativeLayout) objArr[0]);
        this.f57070q0 = -1L;
        this.f57067rl.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
