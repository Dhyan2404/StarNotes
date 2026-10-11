package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.category.view.CustomScrollBarRecycleView;
import com.onyx.galaxy.note.editor.view.SelectionActionLayout;

/* loaded from: classes9.dex */
public class FragmentDocBookmarkBindingImpl extends FragmentDocBookmarkBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56644u0;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56645v0;

    /* renamed from: q0 */
    @NonNull
    public final TintConstraintLayout f56646q0;

    /* renamed from: t0 */
    public long f56647t0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(9);
        f56644u0 = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"layout_doc_search"}, new int[]{2}, new int[]{C10651R.layout.layout_doc_search});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56645v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.selection_action_layout, 3);
        sparseIntArray.put(C10651R.id.edit, 4);
        sparseIntArray.put(C10651R.id.delete, 5);
        sparseIntArray.put(C10651R.id.recyclerViewContainer, 6);
        sparseIntArray.put(C10651R.id.empty_view, 7);
        sparseIntArray.put(C10651R.id.search_empty_view, 8);
    }

    public FragmentDocBookmarkBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 9, f56644u0, f56645v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56647t0 = 0L;
        }
        ViewDataBinding.executeBindingsOn(this.layoutSearch);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f56647t0 != 0) {
                return true;
            }
            return this.layoutSearch.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56647t0 = 2L;
        }
        this.layoutSearch.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        return m45222r((LayoutDocSearchBinding) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45222r(LayoutDocSearchBinding layoutDocSearchBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56647t0 |= 1;
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

    public FragmentDocBookmarkBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (LinearLayoutCompat) objArr[0], (TintTextView) objArr[5], (TintTextView) objArr[4], (CommonEmptyView) objArr[7], (LayoutDocSearchBinding) objArr[2], (CustomScrollBarRecycleView) objArr[6], (CommonEmptyView) objArr[8], (SelectionActionLayout) objArr[3]);
        this.f56647t0 = -1L;
        this.contentContainer.setTag(null);
        setContainedBinding(this.layoutSearch);
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) objArr[1];
        this.f56646q0 = tintConstraintLayout;
        tintConstraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
