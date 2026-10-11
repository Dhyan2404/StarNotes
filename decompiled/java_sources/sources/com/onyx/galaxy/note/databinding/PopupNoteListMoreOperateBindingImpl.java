package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupNoteListMoreOperateBindingImpl extends PopupNoteListMoreOperateBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57733u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57734v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57735q0;

    /* renamed from: t0 */
    public long f57736t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57734v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_display_type, 1);
        sparseIntArray.put(C10651R.id.view_2, 2);
        sparseIntArray.put(C10651R.id.tv_sort, 3);
        sparseIntArray.put(C10651R.id.v_divider_sort, 4);
        sparseIntArray.put(C10651R.id.tv_multi_select, 5);
        sparseIntArray.put(C10651R.id.v_divide_sort, 6);
        sparseIntArray.put(C10651R.id.tv_cloud_sync, 7);
    }

    public PopupNoteListMoreOperateBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f57733u0, f57734v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57736t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57736t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57736t0 = 1L;
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

    public PopupNoteListMoreOperateBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[7], (TintTextView) objArr[1], (TintTextView) objArr[5], (TintTextView) objArr[3], (TintView) objArr[6], (TintView) objArr[4], (TintView) objArr[2]);
        this.f57736t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57735q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
