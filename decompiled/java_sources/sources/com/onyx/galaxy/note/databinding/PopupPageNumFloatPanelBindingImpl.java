package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupPageNumFloatPanelBindingImpl extends PopupPageNumFloatPanelBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57754u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57755v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57756q0;

    /* renamed from: t0 */
    public long f57757t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57755v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.pageJumpContainer, 1);
        sparseIntArray.put(C10651R.id.pageGoTo, 2);
        sparseIntArray.put(C10651R.id.pageCount, 3);
        sparseIntArray.put(C10651R.id.pageJump, 4);
    }

    public PopupPageNumFloatPanelBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f57754u0, f57755v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57757t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57757t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57757t0 = 1L;
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

    public PopupPageNumFloatPanelBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[3], (TintEditText) objArr[2], (TintTextView) objArr[4], (TintLinearLayout) objArr[1]);
        this.f57757t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57756q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
