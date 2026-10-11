package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.ResizableRecyclerView;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public class LayoutPenBoxBindingImpl extends LayoutPenBoxBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57411t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57412u0;

    /* renamed from: q0 */
    public long f57413q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57412u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.shadow_content, 1);
        sparseIntArray.put(C10651R.id.lly_content, 2);
        sparseIntArray.put(C10651R.id.icon, 3);
        sparseIntArray.put(C10651R.id.iv_pen_box, 4);
        sparseIntArray.put(C10651R.id.listview, 5);
        sparseIntArray.put(C10651R.id.iv_operation, 6);
    }

    public LayoutPenBoxBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f57411t0, f57412u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57413q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57413q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57413q0 = 1L;
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

    public LayoutPenBoxBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (FrameLayout) objArr[0], (TintFrameLayout) objArr[3], (TintImageView) objArr[6], (TintImageView) objArr[4], (ResizableRecyclerView) objArr[5], (TintLinearLayout) objArr[2], (ShadowLayout) objArr[1]);
        this.f57413q0 = -1L;
        this.flyContent.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
