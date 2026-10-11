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
public abstract class DialogLoadingBinding extends ViewDataBinding {

    /* renamed from: iv */
    @NonNull
    public final ImageView f56419iv;

    /* renamed from: tv */
    @NonNull
    public final TextView f56420tv;

    public DialogLoadingBinding(Object obj, View view, int i, ImageView imageView, TextView textView) {
        super(obj, view, i);
        this.f56419iv = imageView;
        this.f56420tv = textView;
    }

    public static DialogLoadingBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogLoadingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogLoadingBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogLoadingBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_loading);
    }

    @NonNull
    @Deprecated
    public static DialogLoadingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogLoadingBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_loading, viewGroup, z, obj);
    }

    @NonNull
    public static DialogLoadingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogLoadingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogLoadingBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_loading, null, false, obj);
    }
}
