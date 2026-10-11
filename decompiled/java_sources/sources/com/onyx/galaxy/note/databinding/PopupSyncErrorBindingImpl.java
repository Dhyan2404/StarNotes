package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public class PopupSyncErrorBindingImpl extends PopupSyncErrorBinding {

    /* renamed from: t0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57853t0 = null;

    /* renamed from: u0 */
    @Nullable
    public static final SparseIntArray f57854u0;

    /* renamed from: q0 */
    public long f57855q0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57854u0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.content, 1);
        sparseIntArray.put(C10651R.id.tv_error_code, 2);
        sparseIntArray.put(C10651R.id.tv_retry, 3);
        sparseIntArray.put(C10651R.id.arrowView, 4);
    }

    public PopupSyncErrorBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 5, f57853t0, f57854u0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57855q0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57855q0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57855q0 = 1L;
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

    public PopupSyncErrorBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintImageView) objArr[4], (TintTextView) objArr[1], (TintTextView) objArr[2], (TextView) objArr[3], (LinearLayout) objArr[0]);
        this.f57855q0 = -1L;
        this.wrapper.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
