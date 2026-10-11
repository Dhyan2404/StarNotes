package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class LayoutScaleIndicatorBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView ivArrow;

    @NonNull
    public final TintImageView ivCollection;

    @NonNull
    public final LinearLayout llPercent;

    @NonNull
    public final TintLinearLayout llScaleContainer;

    @NonNull
    public final ImageView lock;

    @NonNull
    public final TintTextView percent;

    @NonNull
    public final TintImageView reset;

    public LayoutScaleIndicatorBinding(Object obj, View view, int i, TintImageView tintImageView, TintImageView tintImageView2, LinearLayout linearLayout, TintLinearLayout tintLinearLayout, ImageView imageView, TintTextView tintTextView, TintImageView tintImageView3) {
        super(obj, view, i);
        this.ivArrow = tintImageView;
        this.ivCollection = tintImageView2;
        this.llPercent = linearLayout;
        this.llScaleContainer = tintLinearLayout;
        this.lock = imageView;
        this.percent = tintTextView;
        this.reset = tintImageView3;
    }

    public static LayoutScaleIndicatorBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutScaleIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutScaleIndicatorBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutScaleIndicatorBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_scale_indicator);
    }

    @NonNull
    @Deprecated
    public static LayoutScaleIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutScaleIndicatorBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_scale_indicator, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutScaleIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutScaleIndicatorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutScaleIndicatorBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_scale_indicator, null, false, obj);
    }
}
