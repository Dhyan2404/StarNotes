package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupQuoteMenuBindingImpl extends PopupQuoteMenuBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57787u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57788v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57789q0;

    /* renamed from: t0 */
    public long f57790t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57788v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_delete, 1);
        sparseIntArray.put(C10651R.id.view_divider, 2);
        sparseIntArray.put(C10651R.id.tv_jump_source, 3);
    }

    public PopupQuoteMenuBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f57787u0, f57788v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57790t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57790t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57790t0 = 1L;
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

    public PopupQuoteMenuBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[1], (TextView) objArr[3], (View) objArr[2]);
        this.f57790t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57789q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
