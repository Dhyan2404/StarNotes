package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogInputPasswordBinding extends ViewDataBinding {

    @NonNull
    public final TintEditText edtFilePassword;

    @NonNull
    public final TintImageView ivFilePasswordToggle;

    @NonNull
    public final TintTextView tvCancel;

    @NonNull
    public final MediumTextView tvConfirm;

    @NonNull
    public final TintTextView tvErrorTip;

    @NonNull
    public final TintTextView tvFileName;

    @NonNull
    public final MediumTextView tvTitle;

    public DialogInputPasswordBinding(Object obj, View view, int i, TintEditText tintEditText, TintImageView tintImageView, TintTextView tintTextView, MediumTextView mediumTextView, TintTextView tintTextView2, TintTextView tintTextView3, MediumTextView mediumTextView2) {
        super(obj, view, i);
        this.edtFilePassword = tintEditText;
        this.ivFilePasswordToggle = tintImageView;
        this.tvCancel = tintTextView;
        this.tvConfirm = mediumTextView;
        this.tvErrorTip = tintTextView2;
        this.tvFileName = tintTextView3;
        this.tvTitle = mediumTextView2;
    }

    public static DialogInputPasswordBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogInputPasswordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogInputPasswordBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogInputPasswordBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_input_password);
    }

    @NonNull
    @Deprecated
    public static DialogInputPasswordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogInputPasswordBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_input_password, viewGroup, z, obj);
    }

    @NonNull
    public static DialogInputPasswordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogInputPasswordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogInputPasswordBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_input_password, null, false, obj);
    }
}
