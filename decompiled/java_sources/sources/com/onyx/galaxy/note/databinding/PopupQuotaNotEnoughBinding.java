package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupQuotaNotEnoughBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView closeButton;

    @NonNull
    public final TintTextView confirmButton;

    @NonNull
    public final TintTextView contentText;

    @NonNull
    public final TintLinearLayout dialogRoot;

    @NonNull
    public final TintTextView titleText;

    public PopupQuotaNotEnoughBinding(Object obj, View view, int i, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintLinearLayout tintLinearLayout, TintTextView tintTextView4) {
        super(obj, view, i);
        this.closeButton = tintTextView;
        this.confirmButton = tintTextView2;
        this.contentText = tintTextView3;
        this.dialogRoot = tintLinearLayout;
        this.titleText = tintTextView4;
    }

    public static PopupQuotaNotEnoughBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupQuotaNotEnoughBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupQuotaNotEnoughBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupQuotaNotEnoughBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_quota_not_enough);
    }

    @NonNull
    @Deprecated
    public static PopupQuotaNotEnoughBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupQuotaNotEnoughBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_quota_not_enough, viewGroup, z, obj);
    }

    @NonNull
    public static PopupQuotaNotEnoughBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupQuotaNotEnoughBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupQuotaNotEnoughBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_quota_not_enough, null, false, obj);
    }
}
