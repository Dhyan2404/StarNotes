package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public class ItemDocDraftOverviewPageBindingImpl extends ItemDocDraftOverviewPageBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56983u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56984v0;

    /* renamed from: q0 */
    @NonNull
    public final TintLinearLayout f56985q0;

    /* renamed from: t0 */
    public long f56986t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56984v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.imageContainer, 1);
        sparseIntArray.put(C10651R.id.card, 2);
        sparseIntArray.put(C10651R.id.image, 3);
        sparseIntArray.put(C10651R.id.checkbox, 4);
        sparseIntArray.put(C10651R.id.title, 5);
    }

    public ItemDocDraftOverviewPageBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f56983u0, f56984v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56986t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56986t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56986t0 = 1L;
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

    public ItemDocDraftOverviewPageBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ShadowLayout) objArr[2], (TintCheckBox) objArr[4], (ImageView) objArr[3], (LinearLayout) objArr[1], (TintTextView) objArr[5]);
        this.f56986t0 = -1L;
        TintLinearLayout tintLinearLayout = (TintLinearLayout) objArr[0];
        this.f56985q0 = tintLinearLayout;
        tintLinearLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
