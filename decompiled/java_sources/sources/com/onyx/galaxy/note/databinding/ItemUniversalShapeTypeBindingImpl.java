package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.data.UniversalShapeType;

/* loaded from: classes9.dex */
public class ItemUniversalShapeTypeBindingImpl extends ItemUniversalShapeTypeBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57248t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57249u0;

    /* renamed from: q0 */
    public long f57250q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57249u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.title, 1);
    }

    public ItemUniversalShapeTypeBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 2, f57248t0, f57249u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57250q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57250q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57250q0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // com.onyx.galaxy.note.databinding.ItemUniversalShapeTypeBinding
    public void setModel(@Nullable UniversalShapeType universalShapeType) {
        this.mModel = universalShapeType;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (7 != i) {
            return false;
        }
        setModel((UniversalShapeType) obj);
        return true;
    }

    public ItemUniversalShapeTypeBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintFrameLayout) objArr[0], (TintImageView) objArr[1]);
        this.f57250q0 = -1L;
        this.content.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
