package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.NotificationRichTextView;

/* loaded from: classes9.dex */
public class PopupUpgradeTextBindingImpl extends PopupUpgradeTextBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57917u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57918v0;

    /* renamed from: q0 */
    @NonNull
    public final ConstraintLayout f57919q0;

    /* renamed from: t0 */
    public long f57920t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57918v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.dialogRoot, 1);
        sparseIntArray.put(C10651R.id.titleText, 2);
        sparseIntArray.put(C10651R.id.contentText, 3);
        sparseIntArray.put(C10651R.id.confirmButton, 4);
        sparseIntArray.put(C10651R.id.cancelButton, 5);
        sparseIntArray.put(C10651R.id.dialogTop, 6);
    }

    public PopupUpgradeTextBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f57917u0, f57918v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57920t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57920t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57920t0 = 1L;
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

    public PopupUpgradeTextBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintTextView) objArr[5], (TextView) objArr[4], (NotificationRichTextView) objArr[3], (TintLinearLayout) objArr[1], (View) objArr[6], (TintTextView) objArr[2]);
        this.f57920t0 = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.f57919q0 = constraintLayout;
        constraintLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
