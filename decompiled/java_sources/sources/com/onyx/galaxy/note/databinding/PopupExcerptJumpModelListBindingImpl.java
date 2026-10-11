package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupExcerptJumpModelListBindingImpl extends PopupExcerptJumpModelListBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57619u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57620v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57621q0;

    /* renamed from: t0 */
    public long f57622t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57620v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_jump_quote, 1);
        sparseIntArray.put(C10651R.id.view_divider, 2);
        sparseIntArray.put(C10651R.id.recyclerView, 3);
    }

    public PopupExcerptJumpModelListBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f57619u0, f57620v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57622t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57622t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57622t0 = 1L;
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

    public PopupExcerptJumpModelListBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintRecycleView) objArr[3], (TintTextView) objArr[1], (TintView) objArr[2]);
        this.f57622t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57621q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
