package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.OnyxWebView;

/* loaded from: classes9.dex */
public abstract class DialogPolicyBinding extends ViewDataBinding {

    @NonNull
    public final ImageView btnBack;

    @NonNull
    public final TextView tvDialogTitle;

    @NonNull
    public final OnyxWebView webView;

    public DialogPolicyBinding(Object obj, View view, int i, ImageView imageView, TextView textView, OnyxWebView onyxWebView) {
        super(obj, view, i);
        this.btnBack = imageView;
        this.tvDialogTitle = textView;
        this.webView = onyxWebView;
    }

    public static DialogPolicyBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogPolicyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogPolicyBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogPolicyBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_policy);
    }

    @NonNull
    @Deprecated
    public static DialogPolicyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogPolicyBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_policy, viewGroup, z, obj);
    }

    @NonNull
    public static DialogPolicyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogPolicyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogPolicyBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_policy, null, false, obj);
    }
}
