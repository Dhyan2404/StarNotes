package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupInkBeautifyHelpBindingImpl extends PopupInkBeautifyHelpBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57654t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57655u0;

    /* renamed from: q0 */
    public long f57656q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57655u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.inkHintText1, 1);
        sparseIntArray.put(C10651R.id.inkHintText2, 2);
        sparseIntArray.put(C10651R.id.inkHintText3, 3);
        sparseIntArray.put(C10651R.id.inkHintText4, 4);
        sparseIntArray.put(C10651R.id.ol1, 5);
        sparseIntArray.put(C10651R.id.ol2, 6);
        sparseIntArray.put(C10651R.id.ol3, 7);
        sparseIntArray.put(C10651R.id.ol4, 8);
    }

    public PopupInkBeautifyHelpBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f57654t0, f57655u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57656q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57656q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57656q0 = 1L;
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

    public PopupInkBeautifyHelpBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[1], (TextView) objArr[2], (TextView) objArr[3], (TextView) objArr[4], (TextView) objArr[5], (TextView) objArr[6], (TextView) objArr[7], (TextView) objArr[8], (ConstraintLayout) objArr[0]);
        this.f57656q0 = -1L;
        this.rootLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
