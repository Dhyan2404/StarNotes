package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.GuideTipsView;

/* loaded from: classes9.dex */
public class PopupTipsGuideBindingImpl extends PopupTipsGuideBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57900u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57901v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57902q0;

    /* renamed from: t0 */
    public long f57903t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57901v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.guide_view, 1);
    }

    public PopupTipsGuideBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 2, f57900u0, f57901v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57903t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57903t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57903t0 = 1L;
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

    public PopupTipsGuideBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (GuideTipsView) objArr[1]);
        this.f57903t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57902q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
