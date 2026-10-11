package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.imageview.ShapeableImageView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.view.WechatLoadWebWidget;

/* loaded from: classes9.dex */
public abstract class DialogWechatLoginBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView btnAppLogin;

    @NonNull
    public final TintImageView btnBack;

    @NonNull
    public final ShapeableImageView ivQr;

    @NonNull
    public final TintTextView textView;

    @NonNull
    public final TintTextView textView13;

    @NonNull
    public final TintTextView textView3;

    @NonNull
    public final TintTextView tvDialogTitle;

    @NonNull
    public final WechatLoadWebWidget webLoadWidget;

    public DialogWechatLoginBinding(Object obj, View view, int i, TintTextView tintTextView, TintImageView tintImageView, ShapeableImageView shapeableImageView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5, WechatLoadWebWidget wechatLoadWebWidget) {
        super(obj, view, i);
        this.btnAppLogin = tintTextView;
        this.btnBack = tintImageView;
        this.ivQr = shapeableImageView;
        this.textView = tintTextView2;
        this.textView13 = tintTextView3;
        this.textView3 = tintTextView4;
        this.tvDialogTitle = tintTextView5;
        this.webLoadWidget = wechatLoadWebWidget;
    }

    public static DialogWechatLoginBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogWechatLoginBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogWechatLoginBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogWechatLoginBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_wechat_login);
    }

    @NonNull
    @Deprecated
    public static DialogWechatLoginBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogWechatLoginBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_wechat_login, viewGroup, z, obj);
    }

    @NonNull
    public static DialogWechatLoginBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogWechatLoginBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogWechatLoginBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_wechat_login, null, false, obj);
    }
}
