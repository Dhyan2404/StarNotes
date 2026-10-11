package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.MaxHeightFrameLayout;

/* loaded from: classes9.dex */
public class PopupTabManagmentBindingImpl extends PopupTabManagmentBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57856t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57857u0;

    /* renamed from: q0 */
    public long f57858q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57857u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.fl_content_wrapper, 1);
        sparseIntArray.put(C10651R.id.ll_tabs_operations, 2);
        sparseIntArray.put(C10651R.id.toggle_tab, 3);
        sparseIntArray.put(C10651R.id.close_tab, 4);
        sparseIntArray.put(C10651R.id.list_view_container, 5);
        sparseIntArray.put(C10651R.id.listview, 6);
    }

    public PopupTabManagmentBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f57856t0, f57857u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57858q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57858q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57858q0 = 1L;
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

    public PopupTabManagmentBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[4], (FrameLayout) objArr[0], (FrameLayout) objArr[1], (MaxHeightFrameLayout) objArr[5], (TintRecycleView) objArr[6], (LinearLayout) objArr[2], (TintTextView) objArr[3]);
        this.f57858q0 = -1L;
        this.flContainer.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
