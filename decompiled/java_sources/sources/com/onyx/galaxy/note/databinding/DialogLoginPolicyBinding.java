package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Guideline;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogLoginPolicyBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView btnCancel;

    @NonNull
    public final TintTextView btnOk;

    @NonNull
    public final Guideline guideline2;

    @NonNull
    public final TintTextView tvDialogTitle;

    @NonNull
    public final TintTextView tvPrivacyPolicy;

    @NonNull
    public final TintTextView tvServicePolicy;

    public DialogLoginPolicyBinding(Object obj, View view, int i, TintTextView tintTextView, TintTextView tintTextView2, Guideline guideline, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5) {
        super(obj, view, i);
        this.btnCancel = tintTextView;
        this.btnOk = tintTextView2;
        this.guideline2 = guideline;
        this.tvDialogTitle = tintTextView3;
        this.tvPrivacyPolicy = tintTextView4;
        this.tvServicePolicy = tintTextView5;
    }

    public static DialogLoginPolicyBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogLoginPolicyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogLoginPolicyBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogLoginPolicyBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_login_policy);
    }

    @NonNull
    @Deprecated
    public static DialogLoginPolicyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogLoginPolicyBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_login_policy, viewGroup, z, obj);
    }

    @NonNull
    public static DialogLoginPolicyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogLoginPolicyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogLoginPolicyBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_login_policy, null, false, obj);
    }
}
