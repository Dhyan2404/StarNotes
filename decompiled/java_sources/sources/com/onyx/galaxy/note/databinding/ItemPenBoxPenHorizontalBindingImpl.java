package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.BindingAdapterUtils;
import com.onyx.galaxy.note.editor.view.toolbar.PhysicalShapeIconView;

/* loaded from: classes9.dex */
public class ItemPenBoxPenHorizontalBindingImpl extends ItemPenBoxPenHorizontalBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57141u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57142v0;

    /* renamed from: q0 */
    @NonNull
    public final TintFrameLayout f57143q0;

    /* renamed from: t0 */
    public long f57144t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57142v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.cl_content, 2);
        sparseIntArray.put(C10651R.id.value, 3);
        sparseIntArray.put(C10651R.id.iv_selected_arrow, 4);
        sparseIntArray.put(C10651R.id.v_selected_horizontal, 5);
    }

    public ItemPenBoxPenHorizontalBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f57141u0, f57142v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        synchronized (this) {
            j = this.f57144t0;
            this.f57144t0 = 0L;
        }
        PenArgs penArgs = this.mModel;
        if ((j & 3) != 0) {
            BindingAdapterUtils.setShapeTool(this.iconView, penArgs);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57144t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57144t0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // com.onyx.galaxy.note.databinding.ItemPenBoxPenHorizontalBinding
    public void setModel(@Nullable PenArgs penArgs) {
        this.mModel = penArgs;
        synchronized (this) {
            this.f57144t0 |= 1;
        }
        notifyPropertyChanged(7);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (7 != i) {
            return false;
        }
        setModel((PenArgs) obj);
        return true;
    }

    public ItemPenBoxPenHorizontalBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintConstraintLayout) objArr[2], (PhysicalShapeIconView) objArr[1], (TintImageView) objArr[4], (TintView) objArr[5], (TintTextView) objArr[3]);
        this.f57144t0 = -1L;
        this.iconView.setTag(null);
        TintFrameLayout tintFrameLayout = (TintFrameLayout) objArr[0];
        this.f57143q0 = tintFrameLayout;
        tintFrameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
