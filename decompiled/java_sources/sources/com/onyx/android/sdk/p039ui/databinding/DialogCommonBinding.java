package com.onyx.android.sdk.p039ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.C8037R;
import com.onyx.android.sdk.p039ui.MaxLengthInputTextEdit;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextInputLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;

/* loaded from: classes8.dex */
public abstract class DialogCommonBinding extends ViewDataBinding {

    @NonNull
    public final TintConstraintLayout clEditContainer;

    @NonNull
    public final LinearLayout contentContainer;

    @NonNull
    public final MaxLengthInputTextEdit editText;

    @NonNull
    public final ImageView ivLoadingAnim;

    @NonNull
    public final TintImageView ivWarning;

    @NonNull
    public final LinearLayout loadingContainer;

    @NonNull
    public final TintLinearLayout textContainer;

    @NonNull
    public final TintTextInputLayoutView tilName;

    @NonNull
    public final MediumTextView tvCancel;

    @NonNull
    public final MediumTextView tvConfirm;

    @NonNull
    public final TintTextView tvContent;

    @NonNull
    public final TintTextView tvEditLengthDisplay;

    @NonNull
    public final TextView tvProgress;

    @NonNull
    public final MediumTextView tvTitle;

    @NonNull
    public final LinearLayout tvTitleContainer;

    public DialogCommonBinding(Object obj, View view, int i, TintConstraintLayout tintConstraintLayout, LinearLayout linearLayout, MaxLengthInputTextEdit maxLengthInputTextEdit, ImageView imageView, TintImageView tintImageView, LinearLayout linearLayout2, TintLinearLayout tintLinearLayout, TintTextInputLayoutView tintTextInputLayoutView, MediumTextView mediumTextView, MediumTextView mediumTextView2, TintTextView tintTextView, TintTextView tintTextView2, TextView textView, MediumTextView mediumTextView3, LinearLayout linearLayout3) {
        super(obj, view, i);
        this.clEditContainer = tintConstraintLayout;
        this.contentContainer = linearLayout;
        this.editText = maxLengthInputTextEdit;
        this.ivLoadingAnim = imageView;
        this.ivWarning = tintImageView;
        this.loadingContainer = linearLayout2;
        this.textContainer = tintLinearLayout;
        this.tilName = tintTextInputLayoutView;
        this.tvCancel = mediumTextView;
        this.tvConfirm = mediumTextView2;
        this.tvContent = tintTextView;
        this.tvEditLengthDisplay = tintTextView2;
        this.tvProgress = textView;
        this.tvTitle = mediumTextView3;
        this.tvTitleContainer = linearLayout3;
    }

    public static DialogCommonBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogCommonBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogCommonBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogCommonBinding) ViewDataBinding.bind(obj, view, C8037R.layout.dialog_common);
    }

    @NonNull
    @Deprecated
    public static DialogCommonBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogCommonBinding) ViewDataBinding.inflateInternal(layoutInflater, C8037R.layout.dialog_common, viewGroup, z, obj);
    }

    @NonNull
    public static DialogCommonBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogCommonBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogCommonBinding) ViewDataBinding.inflateInternal(layoutInflater, C8037R.layout.dialog_common, null, false, obj);
    }
}
