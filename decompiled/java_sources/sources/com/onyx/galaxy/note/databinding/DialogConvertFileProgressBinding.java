package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintProgressBar;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogConvertFileProgressBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView downloadingButton;

    @NonNull
    public final TintImageView ivClose;

    @NonNull
    public final TintProgressBar progressBar;

    @NonNull
    public final LinearLayout progressContainer;

    @NonNull
    public final ConstraintLayout progressValueContainer;

    @NonNull
    public final TintTextView tvProgress;

    @NonNull
    public final TintTextView tvProgressTitle;

    @NonNull
    public final MediumTextView tvTitle;

    @NonNull
    public final TintTextView tvWaitTips;

    @NonNull
    public final TintTextView tvWaitWarning;

    @NonNull
    public final LinearLayout waitContainer;

    public DialogConvertFileProgressBinding(Object obj, View view, int i, TintImageView tintImageView, TintImageView tintImageView2, TintProgressBar tintProgressBar, LinearLayout linearLayout, ConstraintLayout constraintLayout, TintTextView tintTextView, TintTextView tintTextView2, MediumTextView mediumTextView, TintTextView tintTextView3, TintTextView tintTextView4, LinearLayout linearLayout2) {
        super(obj, view, i);
        this.downloadingButton = tintImageView;
        this.ivClose = tintImageView2;
        this.progressBar = tintProgressBar;
        this.progressContainer = linearLayout;
        this.progressValueContainer = constraintLayout;
        this.tvProgress = tintTextView;
        this.tvProgressTitle = tintTextView2;
        this.tvTitle = mediumTextView;
        this.tvWaitTips = tintTextView3;
        this.tvWaitWarning = tintTextView4;
        this.waitContainer = linearLayout2;
    }

    public static DialogConvertFileProgressBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogConvertFileProgressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogConvertFileProgressBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogConvertFileProgressBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_convert_file_progress);
    }

    @NonNull
    @Deprecated
    public static DialogConvertFileProgressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogConvertFileProgressBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_convert_file_progress, viewGroup, z, obj);
    }

    @NonNull
    public static DialogConvertFileProgressBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogConvertFileProgressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogConvertFileProgressBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_convert_file_progress, null, false, obj);
    }
}
