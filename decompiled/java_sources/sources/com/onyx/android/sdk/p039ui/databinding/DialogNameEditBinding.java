package com.onyx.android.sdk.p039ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.C8037R;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;

/* loaded from: classes8.dex */
public abstract class DialogNameEditBinding extends ViewDataBinding {

    @NonNull
    public final MaxLengthInputTextEdit tieName;

    @NonNull
    public final TintTextInputLayoutView tilName;

    @NonNull
    public final TintTextView tvCancel;

    @NonNull
    public final MediumTextView tvConfirm;

    @NonNull
    public final TintTextView tvCounter;

    @NonNull
    public final TintTextView tvEditTitle;

    @NonNull
    public final TintTextView tvErrorTips;

    @NonNull
    public final MediumTextView tvTitle;

    public DialogNameEditBinding(Object obj, View view, int i, MaxLengthInputTextEdit maxLengthInputTextEdit, TintTextInputLayoutView tintTextInputLayoutView, TintTextView tintTextView, MediumTextView mediumTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, MediumTextView mediumTextView2) {
        super(obj, view, i);
        this.tieName = maxLengthInputTextEdit;
        this.tilName = tintTextInputLayoutView;
        this.tvCancel = tintTextView;
        this.tvConfirm = mediumTextView;
        this.tvCounter = tintTextView2;
        this.tvEditTitle = tintTextView3;
        this.tvErrorTips = tintTextView4;
        this.tvTitle = mediumTextView2;
    }

    public static DialogNameEditBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogNameEditBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogNameEditBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogNameEditBinding) ViewDataBinding.bind(obj, view, C8037R.layout.dialog_name_edit);
    }

    @NonNull
    @Deprecated
    public static DialogNameEditBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogNameEditBinding) ViewDataBinding.inflateInternal(layoutInflater, C8037R.layout.dialog_name_edit, viewGroup, z, obj);
    }

    @NonNull
    public static DialogNameEditBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogNameEditBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogNameEditBinding) ViewDataBinding.inflateInternal(layoutInflater, C8037R.layout.dialog_name_edit, null, false, obj);
    }
}
