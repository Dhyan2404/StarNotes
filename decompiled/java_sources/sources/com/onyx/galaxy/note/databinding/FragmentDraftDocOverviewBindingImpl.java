package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.AutoFitRecycleView;
import com.onyx.galaxy.note.category.view.CommonEmptyView;

/* loaded from: classes9.dex */
public class FragmentDraftDocOverviewBindingImpl extends FragmentDraftDocOverviewBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56662u0;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56663v0;

    /* renamed from: q0 */
    @NonNull
    public final LinearLayout f56664q0;

    /* renamed from: t0 */
    public long f56665t0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(11);
        f56662u0 = includedLayouts;
        includedLayouts.setIncludes(0, new String[]{"layout_doc_search"}, new int[]{1}, new int[]{C10651R.layout.layout_doc_search});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56663v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.lly_normal_content, 2);
        sparseIntArray.put(C10651R.id.card, 3);
        sparseIntArray.put(C10651R.id.image, 4);
        sparseIntArray.put(C10651R.id.border, 5);
        sparseIntArray.put(C10651R.id.viewport, 6);
        sparseIntArray.put(C10651R.id.tv_description, 7);
        sparseIntArray.put(C10651R.id.cl_search_content, 8);
        sparseIntArray.put(C10651R.id.recyclerView, 9);
        sparseIntArray.put(C10651R.id.search_empty_view, 10);
    }

    public FragmentDraftDocOverviewBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 11, f56662u0, f56663v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56665t0 = 0L;
        }
        ViewDataBinding.executeBindingsOn(this.layoutSearch);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f56665t0 != 0) {
                return true;
            }
            return this.layoutSearch.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56665t0 = 2L;
        }
        this.layoutSearch.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        return m45226r((LayoutDocSearchBinding) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45226r(LayoutDocSearchBinding layoutDocSearchBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f56665t0 |= 1;
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

    public FragmentDraftDocOverviewBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (TintView) objArr[5], (TintFrameLayout) objArr[3], (TintConstraintLayout) objArr[8], (ImageView) objArr[4], (LayoutDocSearchBinding) objArr[1], (LinearLayout) objArr[2], (AutoFitRecycleView) objArr[9], (CommonEmptyView) objArr[10], (TintTextView) objArr[7], (TintView) objArr[6]);
        this.f56665t0 = -1L;
        setContainedBinding(this.layoutSearch);
        LinearLayout linearLayout = (LinearLayout) objArr[0];
        this.f56664q0 = linearLayout;
        linearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
