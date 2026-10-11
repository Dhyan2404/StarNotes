package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupPenCreateBinding extends ViewDataBinding {

    @NonNull
    public final TintConstraintLayout clEditContainer;

    @NonNull
    public final MaxLengthInputTextEdit editText;

    @NonNull
    public final TintImageView ivBack;

    @NonNull
    public final TintTextInputLayoutView tilName;

    @NonNull
    public final TintTextView tvConfirm;

    @NonNull
    public final TintTextView tvNameSize;

    @NonNull
    public final MediumTextView tvTitle;

    public PopupPenCreateBinding(Object obj, View view, int i, TintConstraintLayout tintConstraintLayout, MaxLengthInputTextEdit maxLengthInputTextEdit, TintImageView tintImageView, TintTextInputLayoutView tintTextInputLayoutView, TintTextView tintTextView, TintTextView tintTextView2, MediumTextView mediumTextView) {
        super(obj, view, i);
        this.clEditContainer = tintConstraintLayout;
        this.editText = maxLengthInputTextEdit;
        this.ivBack = tintImageView;
        this.tilName = tintTextInputLayoutView;
        this.tvConfirm = tintTextView;
        this.tvNameSize = tintTextView2;
        this.tvTitle = mediumTextView;
    }

    public static PopupPenCreateBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupPenCreateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupPenCreateBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupPenCreateBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_pen_create);
    }

    @NonNull
    @Deprecated
    public static PopupPenCreateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupPenCreateBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_pen_create, viewGroup, z, obj);
    }

    @NonNull
    public static PopupPenCreateBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupPenCreateBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupPenCreateBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_pen_create, null, false, obj);
    }
}
