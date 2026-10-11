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
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupLassoBindingImpl extends PopupLassoBinding {

    /* renamed from: v0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57672v0;

    /* renamed from: w0 */
    @Nullable
    public static final SparseIntArray f57673w0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57674q0;

    /* renamed from: t0 */
    @NonNull
    public final LinearLayout f57675t0;

    /* renamed from: u0 */
    public long f57676u0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(5);
        f57672v0 = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"include_popup_lasso_container"}, new int[]{2}, new int[]{C10651R.layout.include_popup_lasso_container});
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57673w0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_title, 3);
        sparseIntArray.put(C10651R.id.divider, 4);
    }

    public PopupLassoBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f57672v0, f57673w0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57676u0 = 0L;
        }
        ViewDataBinding.executeBindingsOn(this.lassoContainer);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f57676u0 != 0) {
                return true;
            }
            return this.lassoContainer.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57676u0 = 2L;
        }
        this.lassoContainer.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        return m45365r((IncludePopupLassoContainerBinding) obj, i2);
    }

    /* renamed from: r */
    public final boolean m45365r(IncludePopupLassoContainerBinding includePopupLassoContainerBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f57676u0 |= 1;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.lassoContainer.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        return true;
    }

    public PopupLassoBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (TintView) objArr[4], (IncludePopupLassoContainerBinding) objArr[2], (MediumTextView) objArr[3]);
        this.f57676u0 = -1L;
        setContainedBinding(this.lassoContainer);
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57674q0 = frameLayout;
        frameLayout.setTag(null);
        LinearLayout linearLayout = (LinearLayout) objArr[1];
        this.f57675t0 = linearLayout;
        linearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
