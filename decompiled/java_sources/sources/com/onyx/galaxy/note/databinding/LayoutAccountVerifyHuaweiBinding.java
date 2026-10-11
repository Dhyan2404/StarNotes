package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.usercenter.viewmodel.AccountVerifyHuaweiViewModel;

/* loaded from: classes9.dex */
public abstract class LayoutAccountVerifyHuaweiBinding extends ViewDataBinding {

    @Bindable
    protected AccountVerifyHuaweiViewModel mHuaweiViewModel;

    @NonNull
    public final TintTextView nextButton;

    public LayoutAccountVerifyHuaweiBinding(Object obj, View view, int i, TintTextView tintTextView) {
        super(obj, view, i);
        this.nextButton = tintTextView;
    }

    public static LayoutAccountVerifyHuaweiBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutAccountVerifyHuaweiBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public AccountVerifyHuaweiViewModel getHuaweiViewModel() {
        return this.mHuaweiViewModel;
    }

    public abstract void setHuaweiViewModel(@Nullable AccountVerifyHuaweiViewModel accountVerifyHuaweiViewModel);

    @Deprecated
    public static LayoutAccountVerifyHuaweiBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutAccountVerifyHuaweiBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_account_verify_huawei);
    }

    @NonNull
    @Deprecated
    public static LayoutAccountVerifyHuaweiBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutAccountVerifyHuaweiBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_account_verify_huawei, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutAccountVerifyHuaweiBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutAccountVerifyHuaweiBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutAccountVerifyHuaweiBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_account_verify_huawei, null, false, obj);
    }
}
