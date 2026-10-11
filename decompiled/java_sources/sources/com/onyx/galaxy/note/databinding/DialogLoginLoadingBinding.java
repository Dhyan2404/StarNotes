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

/* loaded from: classes9.dex */
public abstract class DialogLoginLoadingBinding extends ViewDataBinding {

    /* renamed from: iv */
    @NonNull
    public final ImageView f56442iv;

    /* renamed from: tv */
    @NonNull
    public final TextView f56443tv;

    public DialogLoginLoadingBinding(Object obj, View view, int i, ImageView imageView, TextView textView) {
        super(obj, view, i);
        this.f56442iv = imageView;
        this.f56443tv = textView;
    }

    public static DialogLoginLoadingBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogLoginLoadingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogLoginLoadingBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogLoginLoadingBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_login_loading);
    }

    @NonNull
    @Deprecated
    public static DialogLoginLoadingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogLoginLoadingBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_login_loading, viewGroup, z, obj);
    }

    @NonNull
    public static DialogLoginLoadingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogLoginLoadingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogLoginLoadingBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_login_loading, null, false, obj);
    }
}
