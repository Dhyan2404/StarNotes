package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupExcerptMenuBindingImpl extends PopupExcerptMenuBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57623u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57624v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57625q0;

    /* renamed from: t0 */
    public long f57626t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57624v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_delete, 1);
        sparseIntArray.put(C10651R.id.tv_jump_quote, 2);
        sparseIntArray.put(C10651R.id.tv_comment, 3);
    }

    public PopupExcerptMenuBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 4, f57623u0, f57624v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57626t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57626t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57626t0 = 1L;
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

    public PopupExcerptMenuBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[3], (TextView) objArr[1], (TextView) objArr[2]);
        this.f57626t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57625q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
