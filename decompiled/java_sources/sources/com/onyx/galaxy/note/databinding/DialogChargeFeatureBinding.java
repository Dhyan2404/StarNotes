package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.member.view.ChargeIndicatorView;

/* loaded from: classes9.dex */
public abstract class DialogChargeFeatureBinding extends ViewDataBinding {

    @NonNull
    public final ChargeIndicatorView chargeIndicator;

    @NonNull
    public final TintImageView ivBanner;

    @NonNull
    public final TintImageView ivClose;

    @NonNull
    public final LinearLayout llyCharge;

    @NonNull
    public final LinearLayout llyFeatureContent;

    @NonNull
    public final ConstraintLayout llyProduct;

    @NonNull
    public final ViewPager2 rvFeatureResource;

    @NonNull
    public final RecyclerView rvFeatures;

    @NonNull
    public final TintTextView tvActive;

    @NonNull
    public final TintTextView tvAgreement;

    @NonNull
    public final TintTextView tvFinalAmount;

    @NonNull
    public final TintTextView tvProductTag;

    @NonNull
    public final TintTextView tvSubTitle;

    @NonNull
    public final TintTextView tvTitle;

    @NonNull
    public final TintTextView tvTotalAmount;

    @NonNull
    public final TintView viewTopGradient;

    public DialogChargeFeatureBinding(Object obj, View view, int i, ChargeIndicatorView chargeIndicatorView, TintImageView tintImageView, TintImageView tintImageView2, LinearLayout linearLayout, LinearLayout linearLayout2, ConstraintLayout constraintLayout, ViewPager2 viewPager2, RecyclerView recyclerView, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5, TintTextView tintTextView6, TintTextView tintTextView7, TintView tintView) {
        super(obj, view, i);
        this.chargeIndicator = chargeIndicatorView;
        this.ivBanner = tintImageView;
        this.ivClose = tintImageView2;
        this.llyCharge = linearLayout;
        this.llyFeatureContent = linearLayout2;
        this.llyProduct = constraintLayout;
        this.rvFeatureResource = viewPager2;
        this.rvFeatures = recyclerView;
        this.tvActive = tintTextView;
        this.tvAgreement = tintTextView2;
        this.tvFinalAmount = tintTextView3;
        this.tvProductTag = tintTextView4;
        this.tvSubTitle = tintTextView5;
        this.tvTitle = tintTextView6;
        this.tvTotalAmount = tintTextView7;
        this.viewTopGradient = tintView;
    }

    public static DialogChargeFeatureBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogChargeFeatureBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogChargeFeatureBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogChargeFeatureBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_charge_feature);
    }

    @NonNull
    @Deprecated
    public static DialogChargeFeatureBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogChargeFeatureBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_charge_feature, viewGroup, z, obj);
    }

    @NonNull
    public static DialogChargeFeatureBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogChargeFeatureBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogChargeFeatureBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_charge_feature, null, false, obj);
    }
}
