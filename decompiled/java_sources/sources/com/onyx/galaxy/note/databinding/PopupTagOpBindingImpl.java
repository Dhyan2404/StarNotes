package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupTagOpBindingImpl extends PopupTagOpBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57863u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57864v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57865q0;

    /* renamed from: t0 */
    public long f57866t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57864v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_title, 1);
        sparseIntArray.put(C10651R.id.view_1, 2);
        sparseIntArray.put(C10651R.id.btn_create_sub_tag, 3);
        sparseIntArray.put(C10651R.id.view_2, 4);
        sparseIntArray.put(C10651R.id.btn_edt_tag, 5);
        sparseIntArray.put(C10651R.id.view_3, 6);
        sparseIntArray.put(C10651R.id.btn_move_tag, 7);
        sparseIntArray.put(C10651R.id.view_4, 8);
        sparseIntArray.put(C10651R.id.btn_delete_tag, 9);
        sparseIntArray.put(C10651R.id.group_create_sub_tag, 10);
    }

    public PopupTagOpBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 11, f57863u0, f57864v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57866t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57866t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57866t0 = 1L;
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

    public PopupTagOpBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintLinearLayout) objArr[3], (TintLinearLayout) objArr[9], (TintLinearLayout) objArr[5], (TintLinearLayout) objArr[7], (Group) objArr[10], (TintTextView) objArr[1], (TintView) objArr[2], (TintView) objArr[4], (TintView) objArr[6], (TintView) objArr[8]);
        this.f57866t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57865q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
