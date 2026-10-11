package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.imageview.ShapeableImageView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.view.WechatLoadWebWidget;
import com.onyx.galaxy.note.usercenter.viewmodel.WechatVerifyViewModel;

/* loaded from: classes9.dex */
public abstract class FragmentWechatVerifyBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView backButton;

    @NonNull
    public final View blankBottom;

    @NonNull
    public final View blankTop;

    @Bindable
    protected WechatVerifyViewModel mVerifyViewModel;

    @NonNull
    public final TintTextView orTipText;

    @NonNull
    public final ShapeableImageView qrCodeImage;

    @NonNull
    public final TintConstraintLayout rootLayout;

    @NonNull
    public final TintTextView scanTipText;

    @NonNull
    public final MaterialButton startAppButton;

    @NonNull
    public final FrameLayout titleBar;

    @NonNull
    public final TintTextView titleText;

    @NonNull
    public final WechatLoadWebWidget webWidget;

    public FragmentWechatVerifyBinding(Object obj, View view, int i, TintImageView tintImageView, View view2, View view3, TintTextView tintTextView, ShapeableImageView shapeableImageView, TintConstraintLayout tintConstraintLayout, TintTextView tintTextView2, MaterialButton materialButton, FrameLayout frameLayout, TintTextView tintTextView3, WechatLoadWebWidget wechatLoadWebWidget) {
        super(obj, view, i);
        this.backButton = tintImageView;
        this.blankBottom = view2;
        this.blankTop = view3;
        this.orTipText = tintTextView;
        this.qrCodeImage = shapeableImageView;
        this.rootLayout = tintConstraintLayout;
        this.scanTipText = tintTextView2;
        this.startAppButton = materialButton;
        this.titleBar = frameLayout;
        this.titleText = tintTextView3;
        this.webWidget = wechatLoadWebWidget;
    }

    public static FragmentWechatVerifyBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentWechatVerifyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public WechatVerifyViewModel getVerifyViewModel() {
        return this.mVerifyViewModel;
    }

    public abstract void setVerifyViewModel(@Nullable WechatVerifyViewModel wechatVerifyViewModel);

    @Deprecated
    public static FragmentWechatVerifyBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentWechatVerifyBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_wechat_verify);
    }

    @NonNull
    @Deprecated
    public static FragmentWechatVerifyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentWechatVerifyBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_wechat_verify, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentWechatVerifyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentWechatVerifyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentWechatVerifyBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_wechat_verify, null, false, obj);
    }
}
