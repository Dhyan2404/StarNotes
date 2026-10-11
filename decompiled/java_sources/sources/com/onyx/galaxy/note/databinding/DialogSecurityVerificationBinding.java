package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogSecurityVerificationBinding extends ViewDataBinding {

    @NonNull
    public final Button btnClose;

    @NonNull
    public final TextView loading;

    @NonNull
    public final TextView tvTitle;

    @NonNull
    public final WebView webView;

    public DialogSecurityVerificationBinding(Object obj, View view, int i, Button button, TextView textView, TextView textView2, WebView webView) {
        super(obj, view, i);
        this.btnClose = button;
        this.loading = textView;
        this.tvTitle = textView2;
        this.webView = webView;
    }

    public static DialogSecurityVerificationBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogSecurityVerificationBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogSecurityVerificationBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogSecurityVerificationBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_security_verification);
    }

    @NonNull
    @Deprecated
    public static DialogSecurityVerificationBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogSecurityVerificationBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_security_verification, viewGroup, z, obj);
    }

    @NonNull
    public static DialogSecurityVerificationBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogSecurityVerificationBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogSecurityVerificationBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_security_verification, null, false, obj);
    }
}
