package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;

/* loaded from: classes9.dex */
public class PopupLayerBindingImpl extends PopupLayerBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57677t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57678u0;

    /* renamed from: q0 */
    public long f57679q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57678u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.select, 1);
        sparseIntArray.put(C10651R.id.close, 2);
        sparseIntArray.put(C10651R.id.finish, 3);
        sparseIntArray.put(C10651R.id.add_layer, 4);
        sparseIntArray.put(C10651R.id.selection_action_layout, 5);
        sparseIntArray.put(C10651R.id.delete, 6);
        sparseIntArray.put(C10651R.id.merge, 7);
        sparseIntArray.put(C10651R.id.clean, 8);
        sparseIntArray.put(C10651R.id.rename, 9);
        sparseIntArray.put(C10651R.id.recyclerView, 10);
    }

    public PopupLayerBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 11, f57677t0, f57678u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57679q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57679q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57679q0 = 1L;
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

    public PopupLayerBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[4], (TintTextView) objArr[8], (TintImageView) objArr[2], (TintTextView) objArr[6], (TintTextView) objArr[3], (TintFrameLayout) objArr[0], (TintTextView) objArr[7], (MaxHeightRecyclerView) objArr[10], (TintTextView) objArr[9], (TintImageView) objArr[1], (LinearLayoutCompat) objArr[5]);
        this.f57679q0 = -1L;
        this.flRoot.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
