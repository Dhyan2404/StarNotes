package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;
import com.onyx.galaxy.note.p048ui.view.BubbleLayout;

/* loaded from: classes9.dex */
public class PopupTagsListBindingImpl extends PopupTagsListBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57868u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57869v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57870q0;

    /* renamed from: t0 */
    public long f57871t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57869v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.bubbleLayout, 1);
        sparseIntArray.put(C10651R.id.f53355rv, 2);
    }

    public PopupTagsListBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 3, f57868u0, f57869v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57871t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57871t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57871t0 = 1L;
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

    public PopupTagsListBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (BubbleLayout) objArr[1], (MaxHeightRecyclerView) objArr[2]);
        this.f57871t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57870q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
