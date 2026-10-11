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
public class PopupShapeTagBindingImpl extends PopupShapeTagBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57824u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57825v0;

    /* renamed from: q0 */
    @NonNull
    public final CardView f57826q0;

    /* renamed from: t0 */
    public long f57827t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57825v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.copy, 1);
        sparseIntArray.put(C10651R.id.delete, 2);
    }

    public PopupShapeTagBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f57824u0, f57825v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57827t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57827t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57827t0 = 1L;
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

    public PopupShapeTagBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (MaterialButton) objArr[1], (MaterialButton) objArr[2]);
        this.f57827t0 = -1L;
        CardView cardView = (CardView) objArr[0];
        this.f57826q0 = cardView;
        cardView.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
