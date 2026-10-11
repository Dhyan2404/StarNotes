package com.onyx.android.sdk.pay.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.pay.C7520R;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;

/* loaded from: classes8.dex */
public abstract class DialogPayBinding extends ViewDataBinding {

    @NonNull
    public final FrameLayout flyHeader;

    @NonNull
    public final FrameLayout flyLoading;

    @NonNull
    public final FrameLayout flyQrcode;

    @NonNull
    public final FrameLayout flyQrcodeLoading;

    @NonNull
    public final FrameLayout flyStatus;

    @NonNull
    public final TintImageView ivClose;

    @NonNull
    public final TintImageView ivLoading;

    @NonNull
    public final TintImageView ivPayStatus;

    @NonNull
    public final TintImageView ivQrcode;

    @NonNull
    public final TintImageView ivQrcodeLoading;

    @NonNull
    public final LinearLayout llyAliPay;

    @NonNull
    public final LinearLayout llyPayContain;

    @NonNull
    public final LinearLayout llyPayStatus;

    @NonNull
    public final TintLinearLayout llyQrcodeInvalid;

    @NonNull
    public final LinearLayout llyWechatPay;

    @NonNull
    public final TintTextView tvActualPrice;

    @NonNull
    public final TintTextView tvAgreement;

    @NonNull
    public final TintTextView tvLoading;

    @NonNull
    public final TintTextView tvOrderName;

    @NonNull
    public final TintTextView tvOriginalPrice;

    @NonNull
    public final TintTextView tvPay;

    @NonNull
    public final TintTextView tvPayErrorMessage;

    @NonNull
    public final TintTextView tvPayStatus;

    @NonNull
    public final TintTextView tvPayStatusTips;

    @NonNull
    public final TintTextView tvQrcodeTips;

    @NonNull
    public final TintTextView tvRetry;

    @NonNull
    public final View viewAliLine;

    @NonNull
    public final View viewWechatLine;

    @NonNull
    public final WebView wvQrcode;

    public DialogPayBinding(Object obj, View view, int i, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, FrameLayout frameLayout4, FrameLayout frameLayout5, TintImageView tintImageView, TintImageView tintImageView2, TintImageView tintImageView3, TintImageView tintImageView4, TintImageView tintImageView5, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, TintLinearLayout tintLinearLayout, LinearLayout linearLayout4, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5, TintTextView tintTextView6, TintTextView tintTextView7, TintTextView tintTextView8, TintTextView tintTextView9, TintTextView tintTextView10, TintTextView tintTextView11, View view2, View view3, WebView webView) {
        super(obj, view, i);
        this.flyHeader = frameLayout;
        this.flyLoading = frameLayout2;
        this.flyQrcode = frameLayout3;
        this.flyQrcodeLoading = frameLayout4;
        this.flyStatus = frameLayout5;
        this.ivClose = tintImageView;
        this.ivLoading = tintImageView2;
        this.ivPayStatus = tintImageView3;
        this.ivQrcode = tintImageView4;
        this.ivQrcodeLoading = tintImageView5;
        this.llyAliPay = linearLayout;
        this.llyPayContain = linearLayout2;
        this.llyPayStatus = linearLayout3;
        this.llyQrcodeInvalid = tintLinearLayout;
        this.llyWechatPay = linearLayout4;
        this.tvActualPrice = tintTextView;
        this.tvAgreement = tintTextView2;
        this.tvLoading = tintTextView3;
        this.tvOrderName = tintTextView4;
        this.tvOriginalPrice = tintTextView5;
        this.tvPay = tintTextView6;
        this.tvPayErrorMessage = tintTextView7;
        this.tvPayStatus = tintTextView8;
        this.tvPayStatusTips = tintTextView9;
        this.tvQrcodeTips = tintTextView10;
        this.tvRetry = tintTextView11;
        this.viewAliLine = view2;
        this.viewWechatLine = view3;
        this.wvQrcode = webView;
    }

    public static DialogPayBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogPayBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogPayBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogPayBinding) ViewDataBinding.bind(obj, view, C7520R.layout.dialog_pay);
    }

    @NonNull
    @Deprecated
    public static DialogPayBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogPayBinding) ViewDataBinding.inflateInternal(layoutInflater, C7520R.layout.dialog_pay, viewGroup, z, obj);
    }

    @NonNull
    public static DialogPayBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogPayBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogPayBinding) ViewDataBinding.inflateInternal(layoutInflater, C7520R.layout.dialog_pay, null, false, obj);
    }
}
