package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogSplashPolicyBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView btnCancel;

    @NonNull
    public final TintTextView btnOk;

    @NonNull
    public final FrameLayout flPrivacy;

    @NonNull
    public final TintCheckBox tvDialogTitle;

    public DialogSplashPolicyBinding(Object obj, View view, int i, TintTextView tintTextView, TintTextView tintTextView2, FrameLayout frameLayout, TintCheckBox tintCheckBox) {
        super(obj, view, i);
        this.btnCancel = tintTextView;
        this.btnOk = tintTextView2;
        this.flPrivacy = frameLayout;
        this.tvDialogTitle = tintCheckBox;
    }

    public static DialogSplashPolicyBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogSplashPolicyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogSplashPolicyBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogSplashPolicyBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_splash_policy);
    }

    @NonNull
    @Deprecated
    public static DialogSplashPolicyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogSplashPolicyBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_splash_policy, viewGroup, z, obj);
    }

    @NonNull
    public static DialogSplashPolicyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogSplashPolicyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogSplashPolicyBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_splash_policy, null, false, obj);
    }
}
