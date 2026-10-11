package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemSelectionMenuBindingImpl extends ItemSelectionMenuBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57179t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57180u0;

    /* renamed from: q0 */
    public long f57181q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57180u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.content, 1);
        sparseIntArray.put(C10651R.id.title, 2);
    }

    public ItemSelectionMenuBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f57179t0, f57180u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57181q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57181q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57181q0 = 1L;
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

    public ItemSelectionMenuBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[1], (RelativeLayout) objArr[0], (TextView) objArr[2]);
        this.f57181q0 = -1L;
        this.f57178rl.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
