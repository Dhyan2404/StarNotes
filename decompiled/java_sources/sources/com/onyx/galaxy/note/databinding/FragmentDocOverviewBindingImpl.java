package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.CommonEmptyView;
import com.onyx.galaxy.note.category.view.SwipeRecycleViewContainer;
import com.onyx.galaxy.note.editor.view.HideTextView;
import com.onyx.galaxy.note.editor.view.SelectionActionLayout;

/* loaded from: classes9.dex */
public class FragmentDocOverviewBindingImpl extends FragmentDocOverviewBinding {

    /* renamed from: v0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56652v0;

    /* renamed from: w0 */
    @Nullable
    public static final SparseIntArray f56653w0;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayout f56654q0;

    /* renamed from: t0 */
    @NonNull
    public final TintConstraintLayout f56655t0;

    /* renamed from: u0 */
    public long f56656u0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(15);
        f56652v0 = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"layout_doc_search"}, new int[]{2}, new int[]{C10651R.layout.layout_doc_search});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56653w0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.selection_action_layout, 3);
        sparseIntArray.put(C10651R.id.add_page_after_current_page, 4);
        sparseIntArray.put(C10651R.id.add_to_custom_paper, 5);
        sparseIntArray.put(C10651R.id.add_to_toc, 6);
        sparseIntArray.put(C10651R.id.export, 7);
        sparseIntArray.put(C10651R.id.rotate, 8);
        sparseIntArray.put(C10651R.id.copy, 9);
        sparseIntArray.put(C10651R.id.clone, 10);
        sparseIntArray.put(C10651R.id.paste, 11);
        sparseIntArray.put(C10651R.id.delete, 12);
        sparseIntArray.put(C10651R.id.swipe_container, 13);
        sparseIntArray.put(C10651R.id.search_empty_view, 14);
    }

    public FragmentDocOverviewBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 15, f56652v0, f56653w0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56656u0 = 0L;
        }
        ViewDataBinding.executeBindingsOn(this.layoutSearch);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f56656u0 != 0) {
                return true;
            }
            return this.layoutSearch.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56656u0 = 2L;
        }
        this.layoutSearch.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        return m45224r((LayoutDocSearchBinding) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45224r(LayoutDocSearchBinding layoutDocSearchBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56656u0 |= 1;
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

    public FragmentDocOverviewBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (HideTextView) objArr[4], (HideTextView) objArr[5], (HideTextView) objArr[6], (HideTextView) objArr[10], (HideTextView) objArr[9], (HideTextView) objArr[12], (HideTextView) objArr[7], (LayoutDocSearchBinding) objArr[2], (HideTextView) objArr[11], (HideTextView) objArr[8], (CommonEmptyView) objArr[14], (SelectionActionLayout) objArr[3], (SwipeRecycleViewContainer) objArr[13]);
        this.f56656u0 = -1L;
        setContainedBinding(this.layoutSearch);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f56654q0 = linearLayout;
        linearLayout.setTag(null);
        TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) objArr[1];
        this.f56655t0 = tintConstraintLayout;
        tintConstraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
