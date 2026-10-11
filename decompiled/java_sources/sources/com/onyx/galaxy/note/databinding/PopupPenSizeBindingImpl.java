package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;

/* loaded from: classes9.dex */
public class PopupPenSizeBindingImpl extends PopupPenSizeBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57775u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57776v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57777q0;

    /* renamed from: t0 */
    public long f57778t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57776v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.seek_bar_thickness, 1);
    }

    public PopupPenSizeBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 2, f57775u0, f57776v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57778t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57778t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57778t0 = 1L;
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

    public PopupPenSizeBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (StickSeekBarContainer) objArr[1]);
        this.f57778t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57777q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
