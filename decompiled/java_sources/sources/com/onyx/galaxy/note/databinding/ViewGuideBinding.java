package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.RippleAnimView;

/* loaded from: classes9.dex */
public abstract class ViewGuideBinding extends ViewDataBinding {

    @NonNull
    public final View circleBottom;

    @NonNull
    public final View circleLeft;

    @NonNull
    public final View circleRight;

    @NonNull
    public final View circleTop;

    @NonNull
    public final ConstraintLayout indicatorBottom;

    @NonNull
    public final ConstraintLayout indicatorLeft;

    @NonNull
    public final ConstraintLayout indicatorRight;

    @NonNull
    public final ConstraintLayout indicatorTop;

    @NonNull
    public final ImageView ivStyle01;

    @NonNull
    public final ImageView ivStyle02;

    @NonNull
    public final ImageView ivStyle03;

    @NonNull
    public final View lineBottom;

    @NonNull
    public final View lineRight;

    @NonNull
    public final RippleAnimView rippleBottom;

    @NonNull
    public final RippleAnimView rippleLeft;

    @NonNull
    public final RippleAnimView rippleRight;

    @NonNull
    public final RippleAnimView rippleTop;

    @NonNull
    public final ConstraintLayout tipsContent;

    @NonNull
    public final TextView tvContent;

    public ViewGuideBinding(Object obj, View view, int i, View view2, View view3, View view4, View view5, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ConstraintLayout constraintLayout3, ConstraintLayout constraintLayout4, ImageView imageView, ImageView imageView2, ImageView imageView3, View view6, View view7, RippleAnimView rippleAnimView, RippleAnimView rippleAnimView2, RippleAnimView rippleAnimView3, RippleAnimView rippleAnimView4, ConstraintLayout constraintLayout5, TextView textView) {
        super(obj, view, i);
        this.circleBottom = view2;
        this.circleLeft = view3;
        this.circleRight = view4;
        this.circleTop = view5;
        this.indicatorBottom = constraintLayout;
        this.indicatorLeft = constraintLayout2;
        this.indicatorRight = constraintLayout3;
        this.indicatorTop = constraintLayout4;
        this.ivStyle01 = imageView;
        this.ivStyle02 = imageView2;
        this.ivStyle03 = imageView3;
        this.lineBottom = view6;
        this.lineRight = view7;
        this.rippleBottom = rippleAnimView;
        this.rippleLeft = rippleAnimView2;
        this.rippleRight = rippleAnimView3;
        this.rippleTop = rippleAnimView4;
        this.tipsContent = constraintLayout5;
        this.tvContent = textView;
    }

    public static ViewGuideBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ViewGuideBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ViewGuideBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ViewGuideBinding) ViewDataBinding.bind(obj, view, C10651R.layout.view_guide);
    }

    @NonNull
    @Deprecated
    public static ViewGuideBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ViewGuideBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.view_guide, viewGroup, z, obj);
    }

    @NonNull
    public static ViewGuideBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ViewGuideBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ViewGuideBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.view_guide, null, false, obj);
    }
}
