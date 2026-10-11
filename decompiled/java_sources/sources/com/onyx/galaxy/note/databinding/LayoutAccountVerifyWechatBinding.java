package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.imageview.ShapeableImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.view.WechatLoadWebWidget;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyWechatViewModel;

/* loaded from: classes9.dex */
public abstract class LayoutAccountVerifyWechatBinding extends ViewDataBinding {

    @Bindable
    protected AccountVerifyWechatViewModel mWechatViewModel;

    @NonNull
    public final TintTextView nextButton;

    @NonNull
    public final ShapeableImageView qrCodeImage;

    @NonNull
    public final WechatLoadWebWidget webWidget;

    public LayoutAccountVerifyWechatBinding(Object obj, View view, int i, TintTextView tintTextView, ShapeableImageView shapeableImageView, WechatLoadWebWidget wechatLoadWebWidget) {
        super(obj, view, i);
        this.nextButton = tintTextView;
        this.qrCodeImage = shapeableImageView;
        this.webWidget = wechatLoadWebWidget;
    }

    public static LayoutAccountVerifyWechatBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutAccountVerifyWechatBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public AccountVerifyWechatViewModel getWechatViewModel() {
        return this.mWechatViewModel;
    }

    public abstract void setWechatViewModel(@Nullable AccountVerifyWechatViewModel accountVerifyWechatViewModel);

    @Deprecated
    public static LayoutAccountVerifyWechatBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutAccountVerifyWechatBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_account_verify_wechat);
    }

    @NonNull
    @Deprecated
    public static LayoutAccountVerifyWechatBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutAccountVerifyWechatBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_account_verify_wechat, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutAccountVerifyWechatBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutAccountVerifyWechatBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutAccountVerifyWechatBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_account_verify_wechat, null, false, obj);
    }
}
