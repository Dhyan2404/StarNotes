package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.member.view.ChargeIndicatorView;

/* loaded from: classes9.dex */
public class DialogMagnifierFeatureBindingImpl extends DialogMagnifierFeatureBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56452u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56453v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56454q0;

    /* renamed from: t0 */
    public long f56455t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56453v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.lly_feature_content, 1);
        sparseIntArray.put(C10651R.id.tv_title, 2);
        sparseIntArray.put(C10651R.id.rv_features, 3);
        sparseIntArray.put(C10651R.id.tv_content, 4);
        sparseIntArray.put(C10651R.id.rv_feature_resource, 5);
        sparseIntArray.put(C10651R.id.charge_indicator, 6);
        sparseIntArray.put(C10651R.id.iv_close, 7);
    }

    public DialogMagnifierFeatureBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 8, f56452u0, f56453v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56455t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56455t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56455t0 = 1L;
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

    public DialogMagnifierFeatureBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ChargeIndicatorView) objArr[6], (TintImageView) objArr[7], (LinearLayout) objArr[1], (ViewPager2) objArr[5], (RecyclerView) objArr[3], (TintTextView) objArr[4], (TintTextView) objArr[2]);
        this.f56455t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56454q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
