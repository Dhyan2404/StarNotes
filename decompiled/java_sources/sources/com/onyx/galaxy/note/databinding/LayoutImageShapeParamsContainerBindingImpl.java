package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class LayoutImageShapeParamsContainerBindingImpl extends LayoutImageShapeParamsContainerBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57359t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57360u0;

    /* renamed from: q0 */
    public long f57361q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57360u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.add, 1);
        sparseIntArray.put(C10651R.id.listview, 2);
    }

    public LayoutImageShapeParamsContainerBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f57359t0, f57360u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57361q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57361q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57361q0 = 1L;
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

    public LayoutImageShapeParamsContainerBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[1], (RecyclerView) objArr[2], (LinearLayout) objArr[0]);
        this.f57361q0 = -1L;
        this.f57358ll.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
