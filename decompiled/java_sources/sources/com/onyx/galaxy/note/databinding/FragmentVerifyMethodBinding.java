package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class FragmentVerifyMethodBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView backButton;

    @NonNull
    public final TintImageView emailImage;

    @NonNull
    public final TintLinearLayout emailLayout;

    @NonNull
    public final TintTextView emailText;

    @NonNull
    public final TintImageView huaweiImage;

    @NonNull
    public final TintLinearLayout huaweiLayout;

    @NonNull
    public final TintTextView huaweiText;

    @NonNull
    public final TintLinearLayout methodLayout;

    @NonNull
    public final TintTextView nextButton;

    @NonNull
    public final TintImageView passwordImage;

    @NonNull
    public final TintLinearLayout passwordLayout;

    @NonNull
    public final TintTextView passwordText;

    @NonNull
    public final TintImageView phoneImage;

    @NonNull
    public final TintLinearLayout phoneLayout;

    @NonNull
    public final TintTextView phoneText;

    @NonNull
    public final TintConstraintLayout rootLayout;

    @NonNull
    public final FrameLayout titleBar;

    @NonNull
    public final TintTextView titleText;

    @NonNull
    public final TintImageView wechatImage;

    @NonNull
    public final TintLinearLayout wechatLayout;

    @NonNull
    public final TintTextView wechatText;

    public FragmentVerifyMethodBinding(Object obj, View view, int i, TintImageView tintImageView, TintImageView tintImageView2, TintLinearLayout tintLinearLayout, TintTextView tintTextView, TintImageView tintImageView3, TintLinearLayout tintLinearLayout2, TintTextView tintTextView2, TintLinearLayout tintLinearLayout3, TintTextView tintTextView3, TintImageView tintImageView4, TintLinearLayout tintLinearLayout4, TintTextView tintTextView4, TintImageView tintImageView5, TintLinearLayout tintLinearLayout5, TintTextView tintTextView5, TintConstraintLayout tintConstraintLayout, FrameLayout frameLayout, TintTextView tintTextView6, TintImageView tintImageView6, TintLinearLayout tintLinearLayout6, TintTextView tintTextView7) {
        super(obj, view, i);
        this.backButton = tintImageView;
        this.emailImage = tintImageView2;
        this.emailLayout = tintLinearLayout;
        this.emailText = tintTextView;
        this.huaweiImage = tintImageView3;
        this.huaweiLayout = tintLinearLayout2;
        this.huaweiText = tintTextView2;
        this.methodLayout = tintLinearLayout3;
        this.nextButton = tintTextView3;
        this.passwordImage = tintImageView4;
        this.passwordLayout = tintLinearLayout4;
        this.passwordText = tintTextView4;
        this.phoneImage = tintImageView5;
        this.phoneLayout = tintLinearLayout5;
        this.phoneText = tintTextView5;
        this.rootLayout = tintConstraintLayout;
        this.titleBar = frameLayout;
        this.titleText = tintTextView6;
        this.wechatImage = tintImageView6;
        this.wechatLayout = tintLinearLayout6;
        this.wechatText = tintTextView7;
    }

    public static FragmentVerifyMethodBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentVerifyMethodBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentVerifyMethodBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentVerifyMethodBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_verify_method);
    }

    @NonNull
    @Deprecated
    public static FragmentVerifyMethodBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentVerifyMethodBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_verify_method, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentVerifyMethodBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentVerifyMethodBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentVerifyMethodBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_verify_method, null, false, obj);
    }
}
