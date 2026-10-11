package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.replicator.note.data.pen.PencilBox;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemPenBoxBindingImpl extends ItemPenBoxBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57133u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57134v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57135q0;

    /* renamed from: t0 */
    public long f57136t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57134v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.iv_select, 1);
        sparseIntArray.put(C10651R.id.name, 2);
        sparseIntArray.put(C10651R.id.pen_list, 3);
        sparseIntArray.put(C10651R.id.v_line, 4);
    }

    public ItemPenBoxBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f57133u0, f57134v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57136t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57136t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57136t0 = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // com.onyx.galaxy.note.databinding.ItemPenBoxBinding
    public void setModel(@Nullable PencilBox pencilBox) {
        this.mModel = pencilBox;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (7 != i) {
            return false;
        }
        setModel((PencilBox) obj);
        return true;
    }

    public ItemPenBoxBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[1], (TintTextView) objArr[2], (RecyclerView) objArr[3], (TintView) objArr[4]);
        this.f57136t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57135q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
