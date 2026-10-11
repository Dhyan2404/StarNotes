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
public class PopupNoteListSortBindingImpl extends PopupNoteListSortBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57741u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57742v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57743q0;

    /* renamed from: t0 */
    public long f57744t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57742v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.btn_custom, 1);
        sparseIntArray.put(C10651R.id.view_12, 2);
        sparseIntArray.put(C10651R.id.btn_update_desc, 3);
        sparseIntArray.put(C10651R.id.view_2, 4);
        sparseIntArray.put(C10651R.id.btn_update_asc, 5);
        sparseIntArray.put(C10651R.id.view_3, 6);
        sparseIntArray.put(C10651R.id.btn_create_desc, 7);
        sparseIntArray.put(C10651R.id.view_4, 8);
        sparseIntArray.put(C10651R.id.btn_create_asc, 9);
        sparseIntArray.put(C10651R.id.view_5, 10);
        sparseIntArray.put(C10651R.id.btn_name_asc, 11);
        sparseIntArray.put(C10651R.id.view_6, 12);
        sparseIntArray.put(C10651R.id.btn_name_desc, 13);
    }

    public PopupNoteListSortBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 14, f57741u0, f57742v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57744t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57744t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57744t0 = 1L;
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

    public PopupNoteListSortBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[9], (TintTextView) objArr[7], (TintTextView) objArr[1], (TintTextView) objArr[11], (TintTextView) objArr[13], (TintTextView) objArr[5], (TintTextView) objArr[3], (TintView) objArr[2], (TintView) objArr[4], (TintView) objArr[6], (TintView) objArr[8], (TintView) objArr[10], (TintView) objArr[12]);
        this.f57744t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57743q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
