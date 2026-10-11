package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogProgressBinding extends ViewDataBinding {

    @NonNull
    public final ImageView closeButton;

    @NonNull
    public final TextView leftText;

    @NonNull
    public final ProgressBar progressBar;

    @NonNull
    public final TextView rightText;

    @NonNull
    public final TextView titleText;

    public DialogProgressBinding(Object obj, View view, int i, ImageView imageView, TextView textView, ProgressBar progressBar, TextView textView2, TextView textView3) {
        super(obj, view, i);
        this.closeButton = imageView;
        this.leftText = textView;
        this.progressBar = progressBar;
        this.rightText = textView2;
        this.titleText = textView3;
    }

    public static DialogProgressBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogProgressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogProgressBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogProgressBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_progress);
    }

    @NonNull
    @Deprecated
    public static DialogProgressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogProgressBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_progress, viewGroup, z, obj);
    }

    @NonNull
    public static DialogProgressBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogProgressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogProgressBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_progress, null, false, obj);
    }
}
