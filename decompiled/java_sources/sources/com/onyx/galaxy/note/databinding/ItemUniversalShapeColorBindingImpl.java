package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemUniversalShapeColorBindingImpl extends ItemUniversalShapeColorBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57244u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57245v0;

    /* renamed from: q0 */
    @NonNull
    public final RelativeLayout f57246q0;

    /* renamed from: t0 */
    public long f57247t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57245v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.content, 1);
        sparseIntArray.put(C10651R.id.image, 2);
    }

    public ItemUniversalShapeColorBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f57244u0, f57245v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57247t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57247t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57247t0 = 1L;
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

    public ItemUniversalShapeColorBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[1], (ImageView) objArr[2]);
        this.f57247t0 = -1L;
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.f57246q0 = relativeLayout;
        relativeLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
