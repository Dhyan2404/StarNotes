package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintProgressBar;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogCommonProgressBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView ivClose;

    @NonNull
    public final LinearLayout llProgress;

    @NonNull
    public final TintProgressBar progressBar;

    @NonNull
    public final LinearLayout progressContainer;

    @NonNull
    public final TintTextView tvProgress;

    @NonNull
    public final TintTextView tvSubTitle;

    @NonNull
    public final MediumTextView tvTitle;

    public DialogCommonProgressBinding(Object obj, View view, int i, TintImageView tintImageView, LinearLayout linearLayout, TintProgressBar tintProgressBar, LinearLayout linearLayout2, TintTextView tintTextView, TintTextView tintTextView2, MediumTextView mediumTextView) {
        super(obj, view, i);
        this.ivClose = tintImageView;
        this.llProgress = linearLayout;
        this.progressBar = tintProgressBar;
        this.progressContainer = linearLayout2;
        this.tvProgress = tintTextView;
        this.tvSubTitle = tintTextView2;
        this.tvTitle = mediumTextView;
    }

    public static DialogCommonProgressBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogCommonProgressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogCommonProgressBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogCommonProgressBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_common_progress);
    }

    @NonNull
    @Deprecated
    public static DialogCommonProgressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogCommonProgressBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_common_progress, viewGroup, z, obj);
    }

    @NonNull
    public static DialogCommonProgressBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogCommonProgressBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogCommonProgressBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_common_progress, null, false, obj);
    }
}
