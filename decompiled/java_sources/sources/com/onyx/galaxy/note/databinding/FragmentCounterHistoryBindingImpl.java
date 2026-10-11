package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ThemeRecyclerView;

/* loaded from: classes9.dex */
public class FragmentCounterHistoryBindingImpl extends FragmentCounterHistoryBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56631u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56632v0;

    /* renamed from: q0 */
    @NonNull
    public final TintLinearLayout f56633q0;

    /* renamed from: t0 */
    public long f56634t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56632v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.rv_history, 1);
        sparseIntArray.put(C10651R.id.selection, 2);
        sparseIntArray.put(C10651R.id.selection_layout, 3);
        sparseIntArray.put(C10651R.id.select_all, 4);
        sparseIntArray.put(C10651R.id.delete, 5);
        sparseIntArray.put(C10651R.id.finish, 6);
    }

    public FragmentCounterHistoryBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f56631u0, f56632v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56634t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56634t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56634t0 = 1L;
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

    public FragmentCounterHistoryBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[5], (TintTextView) objArr[6], (ThemeRecyclerView) objArr[1], (TintTextView) objArr[4], (TintTextView) objArr[2], (RelativeLayout) objArr[3]);
        this.f56634t0 = -1L;
        TintLinearLayout tintLinearLayout = (TintLinearLayout) objArr[0];
        this.f56633q0 = tintLinearLayout;
        tintLinearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
