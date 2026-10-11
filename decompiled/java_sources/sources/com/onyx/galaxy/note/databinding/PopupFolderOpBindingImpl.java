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
public class PopupFolderOpBindingImpl extends PopupFolderOpBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57631u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57632v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57633q0;

    /* renamed from: t0 */
    public long f57634t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57632v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_folder_title, 1);
        sparseIntArray.put(C10651R.id.view_1, 2);
        sparseIntArray.put(C10651R.id.btn_create_sub_folder, 3);
        sparseIntArray.put(C10651R.id.view_2, 4);
        sparseIntArray.put(C10651R.id.btn_edt_folder, 5);
        sparseIntArray.put(C10651R.id.view_3, 6);
        sparseIntArray.put(C10651R.id.btn_move_folder, 7);
        sparseIntArray.put(C10651R.id.view_4, 8);
        sparseIntArray.put(C10651R.id.btn_delete_folder, 9);
        sparseIntArray.put(C10651R.id.group_create_sub_folder, 10);
    }

    public PopupFolderOpBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 11, f57631u0, f57632v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57634t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57634t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57634t0 = 1L;
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

    public PopupFolderOpBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintLinearLayout) objArr[3], (TintLinearLayout) objArr[9], (TintLinearLayout) objArr[5], (TintLinearLayout) objArr[7], (Group) objArr[10], (TintTextView) objArr[1], (TintView) objArr[2], (TintView) objArr[4], (TintView) objArr[6], (TintView) objArr[8]);
        this.f57634t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57633q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
