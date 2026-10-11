package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.category.view.CustomScrollBarRecycleView;
import com.onyx.galaxy.note.editor.view.SelectionActionLayout;
import com.scwang.smart.refresh.layout.SmartRefreshLayout;

/* loaded from: classes9.dex */
public class FragmentDocTocBindingImpl extends FragmentDocTocBinding {

    /* renamed from: v0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56657v0;

    /* renamed from: w0 */
    @Nullable
    public static final SparseIntArray f56658w0;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayout f56659q0;

    /* renamed from: t0 */
    @NonNull
    public final TintConstraintLayout f56660t0;

    /* renamed from: u0 */
    public long f56661u0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(13);
        f56657v0 = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"layout_doc_search"}, new int[]{2}, new int[]{C10651R.layout.layout_doc_search});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56658w0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.buttonLayout, 3);
        sparseIntArray.put(C10651R.id.add_toc, 4);
        sparseIntArray.put(C10651R.id.selection_action_layout, 5);
        sparseIntArray.put(C10651R.id.add_child_toc, 6);
        sparseIntArray.put(C10651R.id.edit_child_toc, 7);
        sparseIntArray.put(C10651R.id.delete_child_toc, 8);
        sparseIntArray.put(C10651R.id.refresh_layout, 9);
        sparseIntArray.put(C10651R.id.rv_toc_container, 10);
        sparseIntArray.put(C10651R.id.empty_view, 11);
        sparseIntArray.put(C10651R.id.search_view, 12);
    }

    public FragmentDocTocBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 13, f56657v0, f56658w0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56661u0 = 0L;
        }
        ViewDataBinding.executeBindingsOn(this.layoutSearch);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f56661u0 != 0) {
                return true;
            }
            return this.layoutSearch.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56661u0 = 2L;
        }
        this.layoutSearch.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        return m45225r((LayoutDocSearchBinding) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45225r(LayoutDocSearchBinding layoutDocSearchBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56661u0 |= 1;
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

    public FragmentDocTocBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (TintTextView) objArr[6], (TintTextView) objArr[4], (FrameLayout) objArr[3], (TintTextView) objArr[8], (TintTextView) objArr[7], (CommonEmptyView) objArr[11], (LayoutDocSearchBinding) objArr[2], (SmartRefreshLayout) objArr[9], (CustomScrollBarRecycleView) objArr[10], (CommonEmptyView) objArr[12], (SelectionActionLayout) objArr[5]);
        this.f56661u0 = -1L;
        setContainedBinding(this.layoutSearch);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f56659q0 = linearLayout;
        linearLayout.setTag(null);
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) objArr[1];
        this.f56660t0 = tintConstraintLayout;
        tintConstraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
