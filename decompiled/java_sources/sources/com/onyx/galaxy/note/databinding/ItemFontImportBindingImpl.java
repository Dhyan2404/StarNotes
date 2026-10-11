package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemFontImportBindingImpl extends ItemFontImportBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57032u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57033v0;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayout f57034q0;

    /* renamed from: t0 */
    public long f57035t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57033v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.ic_check, 1);
        sparseIntArray.put(C10651R.id.menu_icon, 2);
        sparseIntArray.put(C10651R.id.tv_title, 3);
        sparseIntArray.put(C10651R.id.tv_size, 4);
        sparseIntArray.put(C10651R.id.tv_time, 5);
    }

    public ItemFontImportBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f57032u0, f57033v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57035t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57035t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57035t0 = 1L;
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

    public ItemFontImportBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintCheckBox) objArr[1], (TintImageView) objArr[2], (TintTextView) objArr[4], (TintTextView) objArr[5], (TintTextView) objArr[3]);
        this.f57035t0 = -1L;
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f57034q0 = linearLayout;
        linearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
