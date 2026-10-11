package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.member.view.ChargeIndicatorView;

/* loaded from: classes9.dex */
public abstract class DialogMagnifierFeatureBinding extends ViewDataBinding {

    @NonNull
    public final ChargeIndicatorView chargeIndicator;

    @NonNull
    public final TintImageView ivClose;

    @NonNull
    public final LinearLayout llyFeatureContent;

    @NonNull
    public final ViewPager2 rvFeatureResource;

    @NonNull
    public final RecyclerView rvFeatures;

    @NonNull
    public final TintTextView tvContent;

    @NonNull
    public final TintTextView tvTitle;

    public DialogMagnifierFeatureBinding(Object obj, View view, int i, ChargeIndicatorView chargeIndicatorView, TintImageView tintImageView, LinearLayout linearLayout, ViewPager2 viewPager2, RecyclerView recyclerView, TintTextView tintTextView, TintTextView tintTextView2) {
        super(obj, view, i);
        this.chargeIndicator = chargeIndicatorView;
        this.ivClose = tintImageView;
        this.llyFeatureContent = linearLayout;
        this.rvFeatureResource = viewPager2;
        this.rvFeatures = recyclerView;
        this.tvContent = tintTextView;
        this.tvTitle = tintTextView2;
    }

    public static DialogMagnifierFeatureBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogMagnifierFeatureBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogMagnifierFeatureBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogMagnifierFeatureBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_magnifier_feature);
    }

    @NonNull
    @Deprecated
    public static DialogMagnifierFeatureBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogMagnifierFeatureBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_magnifier_feature, viewGroup, z, obj);
    }

    @NonNull
    public static DialogMagnifierFeatureBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogMagnifierFeatureBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogMagnifierFeatureBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_magnifier_feature, null, false, obj);
    }
}
