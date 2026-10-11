package com.onyx.android.sdk.pay.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.pay.C7520R;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;

/* loaded from: classes8.dex */
public abstract class DialogThemePayBinding extends ViewDataBinding {

    @NonNull
    public final TintView divider;

    @NonNull
    public final RecyclerView listView;

    @NonNull
    public final MediumTextView tvCancel;

    @NonNull
    public final MediumTextView tvConfirm;

    @NonNull
    public final TintTextView tvPaymentTips;

    @NonNull
    public final MediumTextView tvTitle;

    public DialogThemePayBinding(Object obj, View view, int i, TintView tintView, RecyclerView recyclerView, MediumTextView mediumTextView, MediumTextView mediumTextView2, TintTextView tintTextView, MediumTextView mediumTextView3) {
        super(obj, view, i);
        this.divider = tintView;
        this.listView = recyclerView;
        this.tvCancel = mediumTextView;
        this.tvConfirm = mediumTextView2;
        this.tvPaymentTips = tintTextView;
        this.tvTitle = mediumTextView3;
    }

    public static DialogThemePayBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogThemePayBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogThemePayBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogThemePayBinding) ViewDataBinding.bind(obj, view, C7520R.layout.dialog_theme_pay);
    }

    @NonNull
    @Deprecated
    public static DialogThemePayBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogThemePayBinding) ViewDataBinding.inflateInternal(layoutInflater, C7520R.layout.dialog_theme_pay, viewGroup, z, obj);
    }

    @NonNull
    public static DialogThemePayBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogThemePayBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogThemePayBinding) ViewDataBinding.inflateInternal(layoutInflater, C7520R.layout.dialog_theme_pay, null, false, obj);
    }
}
