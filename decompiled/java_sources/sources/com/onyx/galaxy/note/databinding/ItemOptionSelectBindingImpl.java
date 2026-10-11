package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemOptionSelectBindingImpl extends ItemOptionSelectBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57119t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57120u0;

    /* renamed from: q0 */
    public long f57121q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57120u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.title_text, 1);
        sparseIntArray.put(C10651R.id.select_image, 2);
    }

    public ItemOptionSelectBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f57119t0, f57120u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57121q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57121q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57121q0 = 1L;
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

    public ItemOptionSelectBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RelativeLayout) objArr[0], (ImageView) objArr[2], (TextView) objArr[1]);
        this.f57121q0 = -1L;
        this.itemView.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
