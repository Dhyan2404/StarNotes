package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class ItemScaleBindingImpl extends ItemScaleBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57150u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57151v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57152q0;

    /* renamed from: t0 */
    public long f57153t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57151v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.ll_bg, 1);
        sparseIntArray.put(C10651R.id.tv_content, 2);
        sparseIntArray.put(C10651R.id.iv_delete, 3);
    }

    public ItemScaleBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f57150u0, f57151v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57153t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57153t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57153t0 = 1L;
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

    public ItemScaleBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[3], (LinearLayout) objArr[1], (TintTextView) objArr[2]);
        this.f57153t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57152q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
