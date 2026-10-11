package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class IncludeStylusPinchSlideContainerBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final LinearLayout f56927e;

    @NonNull
    public final TintFrameLayout pinchContainer;

    @NonNull
    public final LinearLayout pinchSlideContainer;

    @NonNull
    public final TintFrameLayout slideDownContainer;

    @NonNull
    public final TintFrameLayout slideUpContainer;

    @NonNull
    public final TintTextView tvPinchFun;

    @NonNull
    public final TintTextView tvPinchName;

    @NonNull
    public final TintTextView tvPinchTitle;

    @NonNull
    public final TintTextView tvSlideDownFun;

    @NonNull
    public final TintTextView tvSlideDownName;

    @NonNull
    public final TintTextView tvSlideUpFun;

    @NonNull
    public final TintTextView tvSlideUpName;

    public IncludeStylusPinchSlideContainerBinding(@NonNull LinearLayout linearLayout, @NonNull TintFrameLayout tintFrameLayout, @NonNull LinearLayout linearLayout2, @NonNull TintFrameLayout tintFrameLayout2, @NonNull TintFrameLayout tintFrameLayout3, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2, @NonNull TintTextView tintTextView3, @NonNull TintTextView tintTextView4, @NonNull TintTextView tintTextView5, @NonNull TintTextView tintTextView6, @NonNull TintTextView tintTextView7) {
        this.f56927e = linearLayout;
        this.pinchContainer = tintFrameLayout;
        this.pinchSlideContainer = linearLayout2;
        this.slideDownContainer = tintFrameLayout2;
        this.slideUpContainer = tintFrameLayout3;
        this.tvPinchFun = tintTextView;
        this.tvPinchName = tintTextView2;
        this.tvPinchTitle = tintTextView3;
        this.tvSlideDownFun = tintTextView4;
        this.tvSlideDownName = tintTextView5;
        this.tvSlideUpFun = tintTextView6;
        this.tvSlideUpName = tintTextView7;
    }

    @NonNull
    public static IncludeStylusPinchSlideContainerBinding bind(@NonNull View view) {
        int i = C10651R.id.pinch_container;
        TintFrameLayout tintFrameLayout = (TintFrameLayout) ViewBindings.findChildViewById(view, i);
        if (tintFrameLayout != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i = C10651R.id.slide_down_container;
            TintFrameLayout tintFrameLayout2 = (TintFrameLayout) ViewBindings.findChildViewById(view, i);
            if (tintFrameLayout2 != null) {
                i = C10651R.id.slide_up_container;
                TintFrameLayout tintFrameLayout3 = (TintFrameLayout) ViewBindings.findChildViewById(view, i);
                if (tintFrameLayout3 != null) {
                    i = C10651R.id.tv_pinch_fun;
                    TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                    if (tintTextView != null) {
                        i = C10651R.id.tv_pinch_name;
                        TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                        if (tintTextView2 != null) {
                            i = C10651R.id.tv_pinch_title;
                            TintTextView tintTextView3 = (TintTextView) ViewBindings.findChildViewById(view, i);
                            if (tintTextView3 != null) {
                                i = C10651R.id.tv_slide_down_fun;
                                TintTextView tintTextView4 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                if (tintTextView4 != null) {
                                    i = C10651R.id.tv_slide_down_name;
                                    TintTextView tintTextView5 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                    if (tintTextView5 != null) {
                                        i = C10651R.id.tv_slide_up_fun;
                                        TintTextView tintTextView6 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                        if (tintTextView6 != null) {
                                            i = C10651R.id.tv_slide_up_name;
                                            TintTextView tintTextView7 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                            if (tintTextView7 != null) {
                                                return new IncludeStylusPinchSlideContainerBinding(linearLayout, tintFrameLayout, linearLayout, tintFrameLayout2, tintFrameLayout3, tintTextView, tintTextView2, tintTextView3, tintTextView4, tintTextView5, tintTextView6, tintTextView7);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static IncludeStylusPinchSlideContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static IncludeStylusPinchSlideContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.include_stylus_pinch_slide_container, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.f56927e;
    }
}
