package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.member.view.ChargeIndicatorView;

/* loaded from: classes9.dex */
public class DialogChargeFeatureBindingImpl extends DialogChargeFeatureBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f56330u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f56331v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f56332q0;

    /* renamed from: t0 */
    public long f56333t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f56331v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.iv_banner, 1);
        sparseIntArray.put(C10651R.id.view_top_gradient, 2);
        sparseIntArray.put(C10651R.id.lly_feature_content, 3);
        sparseIntArray.put(C10651R.id.tv_title, 4);
        sparseIntArray.put(C10651R.id.tv_sub_title, 5);
        sparseIntArray.put(C10651R.id.rv_features, 6);
        sparseIntArray.put(C10651R.id.rv_feature_resource, 7);
        sparseIntArray.put(C10651R.id.charge_indicator, 8);
        sparseIntArray.put(C10651R.id.lly_product, 9);
        sparseIntArray.put(C10651R.id.lly_charge, 10);
        sparseIntArray.put(C10651R.id.tvActive, 11);
        sparseIntArray.put(C10651R.id.tv_final_amount, 12);
        sparseIntArray.put(C10651R.id.tv_total_amount, 13);
        sparseIntArray.put(C10651R.id.tv_product_tag, 14);
        sparseIntArray.put(C10651R.id.tv_agreement, 15);
        sparseIntArray.put(C10651R.id.iv_close, 16);
    }

    public DialogChargeFeatureBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 17, f56330u0, f56331v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f56333t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f56333t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f56333t0 = 1L;
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

    public DialogChargeFeatureBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ChargeIndicatorView) objArr[8], (TintImageView) objArr[1], (TintImageView) objArr[16], (LinearLayout) objArr[10], (LinearLayout) objArr[3], (ConstraintLayout) objArr[9], (ViewPager2) objArr[7], (RecyclerView) objArr[6], (TintTextView) objArr[11], (TintTextView) objArr[15], (TintTextView) objArr[12], (TintTextView) objArr[14], (TintTextView) objArr[5], (TintTextView) objArr[4], (TintTextView) objArr[13], (TintView) objArr[2]);
        this.f56333t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f56332q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
