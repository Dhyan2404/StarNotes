package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.button.MaterialButton;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupShapeLinkBindingImpl extends PopupShapeLinkBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57816u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57817v0;

    /* renamed from: q0 */
    @NonNull
    public final CardView f57818q0;

    /* renamed from: t0 */
    public long f57819t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57817v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.delete, 1);
        sparseIntArray.put(C10651R.id.cut, 2);
        sparseIntArray.put(C10651R.id.copy, 3);
        sparseIntArray.put(C10651R.id.topping, 4);
        sparseIntArray.put(C10651R.id.bottoming, 5);
        sparseIntArray.put(C10651R.id.edit, 6);
        sparseIntArray.put(C10651R.id.goto_link, 7);
    }

    public PopupShapeLinkBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f57816u0, f57817v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57819t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57819t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57819t0 = 1L;
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

    public PopupShapeLinkBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (MaterialButton) objArr[5], (MaterialButton) objArr[3], (MaterialButton) objArr[2], (MaterialButton) objArr[1], (MaterialButton) objArr[6], (MaterialButton) objArr[7], (MaterialButton) objArr[4]);
        this.f57819t0 = -1L;
        CardView cardView = (CardView) objArr[0];
        this.f57818q0 = cardView;
        cardView.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
