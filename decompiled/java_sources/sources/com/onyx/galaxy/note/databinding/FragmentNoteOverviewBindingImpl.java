package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.category.view.CustomScrollBarRecycleView;

/* loaded from: classes9.dex */
public class FragmentNoteOverviewBindingImpl extends FragmentNoteOverviewBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56771u0;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56772v0;

    /* renamed from: q0 */
    @NonNull
    public final TintConstraintLayout f56773q0;

    /* renamed from: t0 */
    public long f56774t0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(7);
        f56771u0 = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"layout_doc_search"}, new int[]{2}, new int[]{C10651R.layout.layout_doc_search});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56772v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.iv_close, 3);
        sparseIntArray.put(C10651R.id.rv_content, 4);
        sparseIntArray.put(C10651R.id.search_empty_view, 5);
        sparseIntArray.put(C10651R.id.lly_quick_create, 6);
    }

    public FragmentNoteOverviewBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f56771u0, f56772v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56774t0 = 0L;
        }
        ViewDataBinding.executeBindingsOn(this.layoutSearch);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f56774t0 != 0) {
                return true;
            }
            return this.layoutSearch.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56774t0 = 2L;
        }
        this.layoutSearch.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        return m45265r((LayoutDocSearchBinding) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45265r(LayoutDocSearchBinding layoutDocSearchBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56774t0 |= 1;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.layoutSearch.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        return true;
    }

    public FragmentNoteOverviewBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (TintImageView) objArr[3], (LayoutDocSearchBinding) objArr[2], (TintLinearLayout) objArr[1], (TintLinearLayout) objArr[6], (CustomScrollBarRecycleView) objArr[4], (CommonEmptyView) objArr[5]);
        this.f56774t0 = -1L;
        setContainedBinding(this.layoutSearch);
        this.llyContent.setTag(null);
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) objArr[0];
        this.f56773q0 = tintConstraintLayout;
        tintConstraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
