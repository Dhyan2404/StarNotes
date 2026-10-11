package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupShortcutBarMoreFunctionsBindingImpl extends PopupShortcutBarMoreFunctionsBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57836u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57837v0;

    /* renamed from: q0 */
    @NonNull
    public final TintFrameLayout f57838q0;

    /* renamed from: t0 */
    public long f57839t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57837v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.iv_close, 1);
        sparseIntArray.put(C10651R.id.list, 2);
        sparseIntArray.put(C10651R.id.cls_custom_shortcut, 3);
        sparseIntArray.put(C10651R.id.iv_icon, 4);
        sparseIntArray.put(C10651R.id.tv_title, 5);
    }

    public PopupShortcutBarMoreFunctionsBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f57836u0, f57837v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57839t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57839t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57839t0 = 1L;
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

    public PopupShortcutBarMoreFunctionsBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintConstraintLayout) objArr[3], (TintImageView) objArr[1], (TintImageView) objArr[4], (TintRecycleView) objArr[2], (TintTextView) objArr[5]);
        this.f57839t0 = -1L;
        TintFrameLayout tintFrameLayout = (TintFrameLayout) objArr[0];
        this.f57838q0 = tintFrameLayout;
        tintFrameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
